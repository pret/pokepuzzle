SECTION "NULL", ROM0
NULL::

; rst vectors
SECTION "rst00", ROM0
	rst $38

SECTION "rst08", ROM0
	rst $38

SECTION "rst10", ROM0
	rst $38

SECTION "rst18", ROM0
	rst $38

SECTION "rst20", ROM0
	rst $38

SECTION "rst28", ROM0
	rst $38

SECTION "rst30", ROM0
	rst $38

SECTION "rst38", ROM0
	rst $38

; interrupts
SECTION "vblank", ROM0
	jp wVBlankHandler

SECTION "lcdc", ROM0
	jp wHBlankHandler

SECTION "timer", ROM0
	jp TimerHandler

SECTION "serial", ROM0
	jp SerialHandler

SECTION "joypad", ROM0
	reti

SECTION "romheader", ROM0
	nop
	jp Start

SECTION "start", ROM0

Start:
	di
	; setup stack
	ld sp, wStack - $1

	ldh [hInitialA], a
	cp BOOTUP_A_CGB
	jr z, .cgb
	cp BOOTUP_A_DMG
	jr z, .dmg_or_mgb
	cp BOOTUP_A_MGB
	jr z, .dmg_or_mgb
.cgb
	ld a, TRUE
	jr .got_compatible_bool
.dmg_or_mgb
	xor a ; FALSE
	jr .got_compatible_bool ; useless jump
.got_compatible_bool
	ldh [hCompatibleConsole], a

	farcall Func_6a7b4
	farcall Func_10996

	xor a
	ld [wc601], a
	ld [wc7ce], a
	ld a, LY_VBLANK + 1
	ld hl, rLY
.wait_vblank
	cp [hl]
	jr nc, .wait_vblank

Reset:
	; reset stack
	di
	ld sp, wStack - $1

	; enable double speed on CGB
	ld b, SPD_DOUBLE
	call SetClockSpeed

	disable_sram

	; switch to default banks
	xor a
	bankswitch ; Bank 1
	ldh [hHighROMBank], a
	ld [rROMB1 + $100], a
	sramswitch ; SRAM0
	vramswitch ; VRAM0
	wramswitch ; WRAM0

	xor a
	ldh [hGameState], a ; GAMESTATE_00
	ldh [rLCDC], a
	ldh [hLCDC], a
	ldh [rIF], a
	ldh [rIE], a
	ldh [rRP], a
	ldh [hIE], a
	ldh [hJoypadDown], a
	ldh [hJoypadPressed], a
	ldh [hJoypadHeld], a
	ldh [hVBlankPending], a
	ld [$c59e], a
	ldh [hVirtualOAMSize], a
	ldh [hVBlankTrampolinePtr + 0], a
	ldh [hVBlankTrampolinePtr + 1], a

	; init window coordinates
	ld a, SCREEN_WIDTH_PX
	ldh [rWX], a
	ld a, SCREEN_HEIGHT_PX
	ldh [rWY], a

	; init scroll
	ld a, 8
	ldh [rSCY], a
	ldh [hSCY], a
	xor a
	ldh [rSCX], a
	ldh [hSCX], a

	ld a, 10
	ldh [hJoypadRepeatDelay], a
	ld a, 1
	ldh [hJoypadRepeatInterval], a

	; init H-Blank handler
	ld a, $d9 ; reti
	ld [wHBlankHandler], a

	; init V-Blank handler
	ld hl, wVBlankHandler
	ld [hl], $c3 ; jp
	inc hl
	ld [hl], LOW(VBlankHandler)
	inc hl
	ld [hl], HIGH(VBlankHandler)

	ldh a, [hROMBank]
	push af
	ld a, BANK(InitTransferVirtualOAM)
	bankswitch
	call InitTransferVirtualOAM
	pop af
	bankswitch

	ld a, [wc7ce]
	ld l, a
	ld a, [wc601]
	ld h, a
	push hl
	call Func_137a
	pop hl
	ld a, h
	ld [wc601], a
	ld a, l
	ld [wc7ce], a

	call ClearOAM
	call Func_d91

	; enable LYC stat interrupt
	xor a
	ldh [rIF], a
	ld a, STAT_LYC
	ldh [rSTAT], a

	; enable V-Blank interrupt
	xor a
	ldh [rIF], a
	ld a, IE_VBLANK
	ldh [hIE], a
	ldh [rIE], a

	ei
	farcall Func_109c0
	farcall Func_10c000

.loop
	call DoGameState
	jr .loop

DoGameState:
	ldh a, [hGameState]
	ld e, a
	ld d, $00
	ld hl, GameStateTable + $2
	add hl, de
	add hl, de
	add hl, de ; *3
	ld a, [hld]
	bankswitch
	ld a, [hld]
	ld l, [hl]
	ld h, a
	jp hl

DoFrame::
	push bc
	push de
	push hl
	ldh a, [hffb8]
	push af
	call Func_532
	call ReadJoypad
	call ClearOAM
	call Func_e31
	pop af
	inc a
.asm_272
	push af
	ldh a, [hffeb]
	and a
	call nz, Func_13eb
	pop af
	dec a
	jr nz, .asm_272
	pop hl
	pop de
	pop bc
	ret

VBlankHandler::
	push af
	push bc
	push de
	push hl

	; did we finish processing the frame?
	ldh a, [hVBlankPending]
	and a
	jr z, .not_pending

	; do we have a V-Blank trampoline function?
	ldh a, [hVBlankTrampolinePtr + 1]
	and a
	jr z, .no_vblank_trampoline
	; yes, call it
	ld h, a
	ldh a, [hVBlankTrampolinePtr + 0]
	ld l, a
	ldh a, [hROMBank]
	push af
	ldh a, [hVBlankTrampolineBank]
	bankswitch
	call .jp_hl
	pop af
	bankswitch

.no_vblank_trampoline
	; push OAM
	call hTransferVirtualOAM

	ei
	xor a
	ldh [hVBlankPending], a
	call Func_504
	ldh a, [hffeb]
	and a
	call z, Func_13eb
	ld hl, hffb7
	inc [hl]
	ld hl, hffb8
	ld [hl], $00
	pop hl
	pop de
	pop bc
	pop af
	reti

.jp_hl
	jp hl

.not_pending
	; being here means we didn't finish our processing
	; in time for V-Blank
	ld b, $01
.asm_2c7
	dec b
	jr nz, .asm_2c7
	ei
	call Func_51d
	ldh a, [hffeb]
	and a
	call z, Func_13eb
	ld hl, hffb8
	inc [hl]
	pop hl
	pop de
	pop bc
	pop af
	reti
; 0x2dd

SECTION "Bank 0@2f4", ROM0[$2f4]

CallIndirect:
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

; add OAM data given in hl, offset by (b, c) pixels
Func_2f8::
	ldh a, [hVirtualOAMSize]
	ld e, a
	srl a
	srl a ; *4
	ld d, a
	ld a, OAM_COUNT
	sub d
	ret z ; already full
	; do we have space for all OAM in input data?
	cp [hl]
	jr nc, .enough_space ; yes
	; oops, too big, process only number of OAM that we can process
	ldh [hff8b], a
	inc hl
	jr .got_oam_count
.enough_space
	; is it 0?
	ld a, [hli]
	and a
	ret z ; exit
	ldh [hff8b], a

.got_oam_count
	ld d, HIGH(wVirtualOAM)
.loop
	ld a, [hli]
	add c
	ld [de], a ; y
	inc e
	ld a, [hli]
	add b
	ld [de], a ; x
	inc e
	ld a, [hli]
	ld [de], a ; tile
	inc e
	ld a, [hli]
	ld [de], a ; attributes
	inc e
	ldh a, [hff8b]
	dec a
	ldh [hff8b], a
	jr nz, .loop

	ld a, e
	ldh [hVirtualOAMSize], a
	ret

Func_32c::
	ldh a, [hROMBank]
	push af
	ld a, e
	bankswitch
	call Func_2f8
	pop af
	bankswitch
	ret
; 0x33f

SECTION "Bank 0@38c", ROM0[$38c]

; clears all virtual OAM
ClearOAM::
	ld hl, wVirtualOAM
	ld de, OBJ_SIZE
	ld c, OAM_COUNT
	xor a
	ldh [hVirtualOAMSize], a
.loop_oam
	ld [hl], a
	add hl, de
	dec c
	jr nz, .loop_oam
	ret

Func_39d::
	ldh a, [hVirtualOAMSize]
	cp OAM_SIZE
	jr nc, .full_oam
	rrca
	ld c, a
	xor a
	ld b, a ; 0
	ld hl, .clear_ops
	add hl, bc
	push hl
	ldh [hVirtualOAMSize], a ; 0
	ld hl, wVirtualOAMEnd
	ld de, -OBJ_SIZE
	ret
.full_oam
	xor a
	ldh [hVirtualOAMSize], a
	ret

.clear_ops
REPT OAM_COUNT
	add hl, de
	ld [hl], a
ENDR
	ret

; outputs hl = a * hl
ATimesHL:
	push af
	push de
	; h == 0?
	inc h
	dec h
	jr nz, .a_smaller_or_equal_to_l ; no
	; yes, a >= l?
	cp l
	jr c, .a_smaller_or_equal_to_l ; no
	; yes, swap a and l
	ld e, a
	ld a, l
	ld l, e
.a_smaller_or_equal_to_l
	; here, a <= l
	ld e, l
	ld d, h
	ld l, $00
	ld h, l
	; hl = 0
	and a
	jr z, .done
.loop
	add hl, de
	dec a
	jr z, .done
	add hl, de
	dec a
	jr z, .done
	add hl, de
	dec a
	jr nz, .loop
.done
	pop de
	pop af
	ret
; 0x42d

SECTION "Bank 0@42d", ROM0[$42d]

ReadJoypad::
	ld a, [$c59e]
	bit 7, a
	ret nz

	; read d-pad input first
	ld a, JOYP_GET_CTRL_PAD
	ldh [rJOYP], a
	; wait some cycles
REPT 5
	push hl
	pop hl
ENDR
	ldh a, [rJOYP]
	and JOYP_INPUTS
	ld c, a

	; read button input nest
	ld a, JOYP_GET_BUTTONS
	ldh [rJOYP], a
	; wait some cycles
REPT 5
	push hl
	pop hl
ENDR
	ldh a, [rJOYP]
	and JOYP_INPUTS
	swap c
	or c
	; buttons that are input are read as 0
	; so we get the compliment of the value
	; to get bit set to each input instead
	cpl
	ldh [hJoypadDown], a
	ld c, a

	; which ones were pressed only this frame?
	ldh a, [hPrevJoypadInput]
	xor c
	and c
	ldh [hJoypadPressed], a
	ldh [hJoypadHeld], a

	; is there any input?
	ld a, c
	or a
	jr z, .reset_timer ; no
	; is it same as last joypad read?
	ld hl, hPrevJoypadInput
	cp [hl]
	jr nz, .reset_timer ; no
	; same input as last frame, decrement timer
	ld hl, hJoypadRepeatTimer
	dec [hl]
	jr nz, .update_prev_joypad
	ldh [hJoypadHeld], a
	ldh a, [hJoypadRepeatInterval]
	ldh [hJoypadRepeatTimer], a
	jr .update_prev_joypad
.reset_timer
	ldh a, [hJoypadRepeatDelay]
	ldh [hJoypadRepeatTimer], a
.update_prev_joypad
	ld a, c
	ldh [hPrevJoypadInput], a

	ld a, JOYP_GET_NONE
	ldh [rJOYP], a

	ldh a, [hJoypadDown]
	cp PAD_BUTTONS
	jr nz, .no_soft_reset
	ldh a, [hJoypadPressed]
	and PAD_BUTTONS
	jr z, .no_soft_reset

	; do a soft-reset
	ld hl, $c59e
	set 7, [hl]
	ei
	ld a, [wc7ce]
	ld l, a
	ld a, [wc601]
	ld h, a
	push hl
	call Func_137a
	pop hl
	ld a, h
	ld [wc601], a
	ld a, l
	ld [wc7ce], a
	call TurnLCDOff
	xor a
	ldh [hVBlankTrampolinePtr + 1], a
	jp Reset

.no_soft_reset
	ret
; 0x4bb

SECTION "Bank 0@4c4", ROM0[$4c4]

TurnLCDOff::
	ldh a, [rLCDC]
	bit B_LCDC_ENABLE, a
	jr nz, .lcd_on

	; turn LCD off
	ldh a, [hLCDC]
	res B_LCDC_ENABLE, a
	ldh [hLCDC], a
	ldh [rLCDC], a
	ret

.lcd_on
	; LCD is on, so to turn LCD off, we're setting
	; V-Blank trampoline to a function that disables LCD safely

	; backup ptr
	ldh a, [hVBlankTrampolinePtr + 1]
	push af
	ldh a, [hVBlankTrampolineBank]
	push af
	ldh a, [hVBlankTrampolinePtr + 0]
	push af
	; first set ptr as invalid
	xor a
	ldh [hVBlankTrampolinePtr + 1], a
	; next set it to .TurnLCDOffFunc
	ld a, LOW(.TurnLCDOffFunc)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(.TurnLCDOffFunc)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(.TurnLCDOffFunc)
	ldh [hVBlankTrampolinePtr + 1], a
	call DoFrame
	; then before restoring ptr, set it as invalid again
	xor a
	ldh [hVBlankTrampolinePtr + 1], a
	pop af
	ldh [hVBlankTrampolinePtr + 0], a
	pop af
	ldh [hVBlankTrampolineBank], a
	pop af
	ldh [hVBlankTrampolinePtr + 1], a
	ret

.TurnLCDOffFunc:
	ldh a, [hLCDC]
	res B_LCDC_ENABLE, a
	ldh [hLCDC], a
	ldh [rLCDC], a
	ret

Func_504::
	ldh a, [hLCDC]
	ldh [rLCDC], a
	ldh a, [hSCX]
	ldh [rSCX], a
	ldh [hLastSCX], a
	ldh a, [hSCY]
	ldh [rSCY], a
	ldh [hLastSCY], a
	ldh a, [hWX]
	ldh [rWX], a
	ldh a, [hWY]
	ldh [rWY], a
	ret

Func_51d:
	ldh a, [hLCDC]
	ldh [rLCDC], a
	ldh a, [hLastSCX]
	ldh [rSCX], a
	ldh a, [hLastSCY]
	ldh [rSCY], a
	ldh a, [hWX]
	ldh [rWX], a
	ldh a, [hWY]
	ldh [rWY], a
	ret

Func_532::
	ld hl, hVBlankPending
	ld a, TRUE
	ld [hl], a
	xor a
.wait_vblank
	cp [hl]
	jr nz, .wait_vblank
	ret
; 0x53d

SECTION "Bank 0@545", ROM0[$545]

FlushPalettes::
	ld hl, wBGPals
	ld b, 8 palettes
	ld c, LOW(rBGPD)
	ld a, BGPI_AUTOINC
	ldh [rBGPI], a
.loop_bg
	ld a, [hli]
	ld [$ff00+c], a
	dec b
	jr nz, .loop_bg

	; hl = wOBPals
	ld b, 8 palettes
	ld a, OBPI_AUTOINC
	ldh [rOBPI], a
	ld c, LOW(rOBPD)
.loop_ob
	ld a, [hli]
	ld [$ff00+c], a
	dec b
	jr nz, .loop_ob
	ret

; copies bc bytes from hl to de
CopyHLtoDE::
	dec bc
	inc b
	inc c
.loop
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .loop
	dec b
	jr nz, .loop
	ret

; clear bc bytes from de
ClearMemory::
	xor a
;	fallthrough

; fills bc bytes in de with input a
FillMemory::
	ld l, e
	ld h, d
	dec bc
	inc b
	inc c
.loop
	ld [hli], a
	dec c
	jr nz, .loop
	dec b
	jr nz, .loop
	ret

; compares bc bytes starting from hl to bytes in de
; if all of them are equal, return z, else return nz
CompareHLtoDE::
	dec bc
	inc b
	inc c
.loop
	ld a, [de]
	cp [hl]
	ret nz
	inc hl
	inc de
	dec c
	jr nz, .loop
	dec b
	jr nz, .loop
	ret

; input:
; - a = ?
; - b:de = destination address
Func_58d::
	; adjust stack pointer to skip data on call site
	pop hl
	inc hl
	inc hl
	inc hl
	inc hl
	push hl

	ld c, a

	; backup banks
	ldh a, [hVRAMBank]
	push af
	ldh a, [hSRAMBank]
	push af
	ldh a, [hWRAMBank]
	push af

	; backup HRAM variables
	ldh a, [$ff8a]
	push af
	ldh a, [$ff8b]
	push af
	ldh a, [$ff8c]
	push af

	ld a, c
	ldh [$ff8c], a
	ld a, d
	call Func_8ef
	push de
	dec hl
	ld a, [hld] ; number iterations
	ld d, a
	ld a, [hld] ; interval
	ld e, a
	ld a, [hld] ; length
	ld b, a     ;
	ld c, [hl]  ;
	dec bc
	inc b
	inc c
	ld a, b
	ldh [$ff8b], a
	ld a, c
	ldh [$ff8a], a
	pop hl
	; hl = destination
.loop_outer
	ldh a, [$ff8a]
	ld c, a
	ldh a, [$ff8b]
	ld b, a
	ldh a, [$ff8c]
.loop_fill
	ld [hli], a
	dec c
	jr nz, .loop_fill
	dec b
	jr nz, .loop_fill
	ld a, l
	add e
	ld l, a
	jr nc, .asm_5d5
	inc h
.asm_5d5
	dec d
	jr nz, .loop_outer

	; restore HRAM variables
	pop af
	ldh [$ff8c], a
	pop af
	ldh [$ff8b], a
	pop af
	ldh [$ff8a], a

	; restore banks
	pop af
	wramswitch
	pop af
	sramswitch
	pop af
	vramswitch
	ret

; performs copy given input arguments at call site
; input:
; - destination address:bank
; - source address:bank
; - 2-byte copy length
CopyData::
	; adjust stack pointer to skip data on call site
	pop de
	ld hl, $8
	add hl, de
	push hl

	add sp, -$c
	ld hl, sp+$00

	; load arguments, destination/source location and length
REPT 8
	ld a, [de]
	ld [hli], a
	inc de
ENDR

	; no interval
	xor a
	ld [hli], a
	ld [hli], a
	; one iteration
	inc a ; $1
	ld [hli], a
	xor a
	ld [hli], a

	call _CopyData

	add sp, $c
	ret

Func_621::
	; setup stack to skip data on call site
	pop de
	ld hl, 13
	add hl, de
	push hl

	push bc
	ld b, a
	ldh a, [hROMBank]
	push af
	add sp, $f4

	; get 6th byte argument
	; multiply by input a
	ld hl, $6
	add hl, de
	ld l, [hl]
	ld h, $00
	ld a, b
	call ATimesHL
	ld c, l
	ld b, h
	; get 3th byte argument (address), add to calculated value
	ld hl, $3
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	add hl, bc
	ld c, l
	ld b, h

	ldh a, [hROMBank]
	push af
	ld hl, $5
	add hl, de
	ld a, [hl]
	bankswitch
	ld hl, sp+$05
	ld a, [bc]
	inc bc
	ld [hli], a
	ld a, [bc]
	inc bc
	ld [hli], a
	ld a, [bc]
	ld [hli], a
	pop af
	bankswitch
	ld hl, sp+$00
	ld a, [de]
	inc de
	ld [hli], a
	ld a, [de]
	inc de
	ld [hli], a
	ld a, [de]
	inc de
	ld [hli], a
	inc de
	inc de
	inc de
	inc de
	ld hl, sp+$06
	ld a, [de]
	inc de
	ld [hli], a
	ld a, [de]
	inc de
	ld [hli], a
	ld a, [de]
	inc de
	ld [hli], a
	ld a, [de]
	inc de
	ld [hli], a
	ld a, [de]
	inc de
	ld [hli], a
	ld a, [de]
	inc de
	ld [hli], a
	call _CopyData
	add sp, $0c
	pop af
	bankswitch
	pop bc
	ret

Func_692::
	push hl
	push bc
	push de
	ld c, l
	ld b, h
	add sp, -12
	ld hl, sp+$00

REPT 12
	ld a, [bc]
	inc bc
	ld [hli], a
ENDR
	call _CopyData
	add sp, 12
	pop de
	pop bc
	pop hl
	ret

; this is a general-purpose "copy anywhere to anywhere" routine.
; seemingly this should only be called from specific routines that
; set up the stack accordingly with the input arguments.
; - <source> can be anywhere in the memory map;
; - <destination> can be anywhere, except in ROM;
; this means that this supports copying along various different memory regions
; though bankswitches are done only once, so this cannot be used to
; transfer data between different banks of the same region (e.g. between WRAM banks)
; additionally, this supports copying in "batches", for example, lines in BG maps
; where each "batch" is a line on the visible screen, separated by a number of bytes between copies
; these are the inputs this routine expects to be in stack, in order:
; - destination address:bank
; - source address:bank
; - 2-byte copy length, in number of bytes
; - 2-byte interval between batches, in number of bytes
; - 2-byte number of batches
_CopyData:
	; back up hram variables
	ldh a, [hCopyDest + 0]
	ld l, a
	ldh a, [hCopyDest + 1]
	ld h, a
	push hl
	ldh a, [hCopyDestBank]
	ld l, a
	ldh a, [hCopySource + 0]
	ld h, a
	push hl
	ldh a, [hCopySource + 1]
	ld l, a
	ldh a, [hCopySourceBank]
	ld h, a
	push hl
	ldh a, [hCopyLen + 0]
	ld l, a
	ldh a, [hCopyLen + 1]
	ld h, a
	push hl
	ldh a, [hCopyInterval + 0]
	ld l, a
	ldh a, [hCopyInterval + 1]
	ld h, a
	push hl
	ldh a, [hCopyIterations + 0]
	ld l, a
	ldh a, [hCopyIterations + 1]
	ld h, a
	push hl

	; load all input arguments from stack
	ld hl, sp+$0e
	ld bc, hCopyDest
REPT 12
	ld a, [hli]
	ld [bc], a
	inc bc
ENDR

	; back up all loaded banks
	ldh a, [hROMBank]
	push af
	ldh a, [hVRAMBank]
	push af
	ldh a, [hSRAMBank]
	push af
	ldh a, [hWRAMBank]
	push af

	ldh a, [hCopyDest + 0]
	ld l, a
	ldh a, [hCopyDest + 1]
	ld h, a
	cp $80 ; ROM?
	jr c, .invalid
	cp $a0 ; VRAM?
	jr c, .vram_dest
	cp $c0 ; SRAM?
	jr c, .sram_dest
	cp $d0 ; WRAM0?
	jr c, .got_dest
	; WRAMX dest
	ldh a, [hCopyDestBank]
	wramswitch
	jr .got_dest

.sram_dest
	ldh a, [hCopyDestBank]
	sramswitch
	jr .got_dest

.vram_dest
	ldh a, [hCopyDestBank]
	vramswitch
	jr .got_dest

; invalid write address, infinite loop
.invalid
	jr .invalid

.got_dest
	ldh a, [hCopySource + 0]
	ld e, a
	ldh a, [hCopySource + 1]
	ld d, a
	cp $80 ; ROM?
	jr c, .rom_source
	cp $a0 ; VRAM?
	jr c, .vram_source
	cp $c0 ; SRAM?
	jr c, .sram_source
	cp $d0 ; WRAM0?
	jr c, .got_source
	; WRAMX source
	ldh a, [hCopySourceBank]
	wramswitch
	jr .got_source

.sram_source
	ldh a, [hCopySourceBank]
	sramswitch
	jr .got_source

.vram_source
	ldh a, [hCopySourceBank]
	vramswitch
	jr .got_source

.rom_source
	ldh a, [hCopySourceBank]
	bankswitch

.got_source
	ldh a, [hCopyInterval + 0]
	ld c, a
	ldh a, [hCopyInterval + 1]
	ld b, a
	ldh a, [hCopyIterations + 0]
	and a
	jr z, .loop_outer
	ldh a, [hCopyIterations + 1]
	inc a
	ldh [hCopyIterations + 1], a
.loop_outer
	push bc
	ldh a, [hCopyLen + 0]
	ld c, a
	ldh a, [hCopyLen + 1]
	ld b, a
	dec bc
	inc c
	inc b
.loop_copy
	ld a, [de]
	inc de
	ld [hli], a
	dec c
	jr nz, .loop_copy
	dec b
	jr nz, .loop_copy
	pop bc
	add hl, bc
	ldh a, [hCopyIterations + 0]
	dec a
	ldh [hCopyIterations + 0], a
	jr nz, .loop_outer
	ldh a, [hCopyIterations + 1]
	dec a
	ldh [hCopyIterations + 1], a
	jr nz, .loop_outer

	; restore all loaded banks
	pop af
	wramswitch
	pop af
	sramswitch
	pop af
	vramswitch
	pop af
	bankswitch

	; restore hram variables
	pop hl
	ld a, h
	ldh [hCopyIterations + 1], a
	ld a, l
	ldh [hCopyIterations + 0], a
	pop hl
	ld a, h
	ldh [hCopyInterval + 1], a
	ld a, l
	ldh [hCopyInterval + 0], a
	pop hl
	ld a, h
	ldh [hCopyLen + 1], a
	ld a, l
	ldh [hCopyLen + 0], a
	pop hl
	ld a, h
	ldh [hCopySourceBank], a
	ld a, l
	ldh [hCopySource + 1], a
	pop hl
	ld a, h
	ldh [hCopySource + 0], a
	ld a, l
	ldh [hCopyDestBank], a
	pop hl
	ld a, h
	ldh [hCopyDest + 1], a
	ld a, l
	ldh [hCopyDest + 0], a
	ret

Func_802::
	; setup stack to skip data on call site
	pop hl
	ld c, l
	ld b, h
	ld de, 12 ; bytes to skip
	add hl, de
	push hl

	ld l, c
	ld h, b
	call Func_692
	ret

; like Farcall but preserves all registers when farcalling
; used if you want to pass arguments to far routine
Farcall_SaveRegs::
	push af
	push hl
	ld hl, sp+$04

	; add $3 to return address
	ld a, [hl]
	add $03
	ld [hli], a
	ld a, [hl]
	adc $00
	ld [hld], a
	ld l, [hl]
	ld h, a

	ldh a, [hROMBank]
	push af
	dec hl
	ld a, [hld] ; bank
	push af
	ld a, [hld] ; address
	ld l, [hl]
	ld h, a
	pop af
	and a ; do we need to bankswitch?
	jr z, .no_bankswitch
	bankswitch
.no_bankswitch
	call .Func_84f
	push de
	push af
	push hl
	ld hl, sp+$0a
	ld e, l
	ld d, h
	ld hl, sp+$02
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	pop hl
	pop af
	pop de
	pop af
	bankswitch
	add sp, $02
	pop af
	ret

; input:
; - hl = return address
.Func_84f:
	push hl ; this sets up the return address

	push de
	push af
	push hl
	; shifts sp contents to restore af and hl registers
	; when we "return" to given address
	ld hl, sp+$00
	ld e, l
	ld d, h
	ld hl, sp+$0c
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	pop hl
	pop af
	pop de
	ret

; expects next bytes on call site to be address:bank
Farcall::
	; set stack pointer on return (skip bank:address data)
	pop hl
	inc hl
	inc hl
	inc hl
	push hl

	dec hl ; [hl] points to 3rd byte (bank)
	ldh a, [hROMBank]
	push af
	ld a, [hld] ; bank
	push af
	ld a, [hld] ; address
	ld l, [hl]
	ld h, a
	pop af
	bankswitch
	call JumpHL
	pop af
	bankswitch
	ret

JumpHL:
	jp hl
; 0x888

SECTION "Bank 0@8bc", ROM0[$8bc]

Func_8bc::
	push hl
	ld l, a
	ldh a, [hROMBank]
	push af
	ld a, d
	bankswitch
	xor a
	ld d, a
	ld h, a
	add hl, hl
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	add hl, de
	ld h, [hl]
	pop af
	bankswitch
	ld a, h
	pop hl
	ret

; outputs in a byte at address a:hl
GetFarByte::
	push de
	ld e, a
	ldh a, [hROMBank]
	push af
	ld a, e
	bankswitch
	ld e, [hl]
	pop af
	bankswitch
	ld a, e
	pop de
	ret
; 0x8ef

SECTION "Bank 0@8ef", ROM0[$8ef]

; switches corresponding bank given high byte address in a
; - if a is in HRAM or WRAM0, does nothing (those regions are always loaded)
; - if a is in WRAMX, switches to WRAM bank b
; - if a is in SRAM, switches to SRAM bank b
; - if a is in VRAM, switches to VRAM bank b
; - if a is in ROM, then we enter an infinite loop since it's an invalid address
Func_8ef::
	cp $e0 ; HRAM?
	jr nc, .nothing_to_do
	cp HIGH(STARTOF(WRAMX)) ; WRAMX?
	jr nc, .switch_wram
	cp HIGH(STARTOF(WRAM0)) ; WRAM0?
	jr nc, .nothing_to_do
	cp HIGH(STARTOF(SRAM)) ; SRAM?
	jr nc, .switch_sram
	cp HIGH(STARTOF(VRAM)) ; VRAM?
	jr nc, .switch_vram

.invalid
	jr .invalid

	cp $e0 ; HRAM?
	jr nc, .nothing_to_do
	cp HIGH(STARTOF(WRAMX)) ; WRAMX?
	jr nc, .switch_wram
	cp HIGH(STARTOF(WRAM0)) ; WRAM0?
	jr nc, .nothing_to_do
	cp HIGH(STARTOF(SRAM)) ; SRAM?
	jr nc, .switch_sram
	cp HIGH(STARTOF(VRAM)) ; VRAM?
	jr nc, .switch_vram
	cp HIGH(STARTOF(ROMX)) ; ROMX?
	jr nc, .switch_rom
	scf
	ret

.switch_rom
	ld a, b
	bankswitch
	scf
	ret

.switch_vram
	ld a, b
	vramswitch
	and a
	ret

.switch_sram
	ld a, b
	sramswitch
	and a
	ret

.switch_wram
	ld a, b
	wramswitch
.nothing_to_do
	and a
	ret

; input:
; - a:hl = ?
; - c:de = destination
Func_93d::
	ld b, a
	ldh a, [hVRAMBank]
	push af
	ldh a, [hSRAMBank]
	push af
	ldh a, [hWRAMBank]
	push af

	push bc
	push af
	ld a, d ; high byte of destination address
	push bc
	ld b, c ; bank
	call Func_8ef
	pop bc
	pop af
	pop bc

	ld a, b ; bank
	call Decompress

	pop af
	wramswitch
	pop af
	sramswitch
	pop af
	vramswitch
	ret

; input:
; - a = ?
; - c:de = destination
Func_967::
	; adjust stack pointer to skip data on call site
	pop hl
	inc hl
	inc hl
	inc hl
	inc hl
	push hl

	; does a times 3rd arg
	push bc
	push de
	ld d, a
	dec hl
	ld a, [hld]
	push hl
	ld l, d
	ld h, $00
	call ATimesHL
	ld e, l
	ld d, h
	pop hl

	; reads bank:address of a pointer table
	ld a, [hld] ; bank
	ld b, a
	ld a, [hld] ; address
	ld l, [hl]
	ld h, a

	; add value calculated above
	add hl, de

	ldh a, [hROMBank]
	push af
	ld a, b
	bankswitch
	ld a, [hli] ; address
	ld b, a
	ld a, [hli]
	ld l, [hl] ; bank
	ld h, a
	; switch b and l
	ld a, l
	ld l, b
	ld b, a
	pop af
	bankswitch
	ld a, b
	pop de
	pop bc
	call Func_93d
	ret
; 0x9a0

SECTION "Bank 0@9b0", ROM0[$9b0]

; if we're not in CGB, skip
; if clock speed is already equal to b, skip
; else, toggle clock speed
SetClockSpeed:
	; is it CGB?
	ldh a, [hCompatibleConsole]
	dec a
	ret nz ; no

	ldh a, [rSPD]
	and SPD_DOUBLE
	cp b
	ret z ; already at target speed
	ld a, JOYP_GET_NONE
	ldh [rJOYP], a
	ld a, SPD_PREPARE
	ldh [rSPD], a
	stop
	ret

GameStateTable:
	table_width 3
	dab Func_10018 ; GAMESTATE_00 
	dwb $4000, $03 ; GAMESTATE_01
	dwb $404e, $03 ; GAMESTATE_02
	dwb $4000, $14 ; GAMESTATE_03
	dwb $401f, $14 ; GAMESTATE_04
	dab Func_4003 ; GAMESTATE_05
	dwb $570a, $14 ; GAMESTATE_06
	dwb $4000, $1d ; GAMESTATE_07
	dwb $4140, $1d ; GAMESTATE_08
	dwb $57fb, $18 ; GAMESTATE_09
	dwb $485a, $15 ; GAMESTATE_0A
	dwb $5ded, $15 ; GAMESTATE_0B
	dwb $743d, $14 ; GAMESTATE_0C
	dwb $5282, $15 ; GAMESTATE_0D
	dwb $4825, $12 ; GAMESTATE_0E
	dwb $6aa2, $15 ; GAMESTATE_0F
	dwb $4219, $13 ; GAMESTATE_10
	dwb $4d49, $16 ; GAMESTATE_11
	dwb $4d64, $16 ; GAMESTATE_12
	dwb $540c, $17 ; GAMESTATE_13
	dwb $6e47, $11 ; GAMESTATE_14
	dwb $48c0, $18 ; GAMESTATE_15
	dwb $68f3, $14 ; GAMESTATE_16
	dwb $4000, $18 ; GAMESTATE_17
	dwb $508b, $03 ; GAMESTATE_18
	dab Func_2a99 ; GAMESTATE_19
	dab Func_2b03 ; GAMESTATE_1A
	dab Func_c02c0 ; GAMESTATE_1B
	dab Func_c0367 ; GAMESTATE_1C
	dab GameState_LoadGBCompatibility ; GAMESTATE_LOAD_GB_COMPATIBILITY
	dab GameState_GBCompatibility ; GAMESTATE_GB_COMPATIBILITY
	dab Func_c7391 ; GAMESTATE_1F
	dab GameState_LoadPanelDePonMenu ; GAMESTATE_20
	dab GameState_PanelDePonMenu ; GAMESTATE_21
	dwb $4018, $42 ; GAMESTATE_22
	dwb $4040, $42 ; GAMESTATE_23
	assert_table_length NUM_GAME_STATES

Func_a31::
	push bc
	ld c, l
	ld b, h
	ld hl, $6
	add hl, de
	ld e, l
	ld d, h
	ld l, c
	ld h, b
	ld bc, $6
	add hl, bc
	ld c, $07
.asm_a42
	ld a, [de]
	cp [hl]
	jr nz, .asm_a4d
	dec de
	dec hl
	dec c
	jr nz, .asm_a42
	xor a
	and a
.asm_a4d
	pop bc
	ret

Func_a4f::
	push de
	push bc
	push bc
	ld c, $dc
	ld b, $0a
	ld a, [de]
	add [hl]
	cp b
	jr c, .asm_a5c
	sub b
.asm_a5c
	ldh [$ffdc], a
	ccf
	inc hl
	inc de
	ld a, [de]
	adc [hl]
	cp b
	jr c, .asm_a67
	sub b
.asm_a67
	ldh [$ffdd], a
	ccf
	inc hl
	inc de
	ld a, [de]
	adc [hl]
	cp b
	jr c, .asm_a72
	sub b
.asm_a72
	ldh [$ffde], a
	ccf
	inc hl
	inc de
	ld a, [de]
	adc [hl]
	cp b
	jr c, .asm_a7d
	sub b
.asm_a7d
	ldh [$ffdf], a
	ccf
	inc hl
	inc de
	ld a, [de]
	adc [hl]
	cp b
	jr c, .asm_a88
	sub b
.asm_a88
	ldh [$ffe0], a
	ccf
	inc hl
	inc de
	ld a, [de]
	adc [hl]
	cp b
	jr c, .asm_a93
	sub b
.asm_a93
	ldh [$ffe1], a
	ccf
	inc hl
	inc de
	ld a, [de]
	adc [hl]
	cp b
	jr c, .asm_a9e
	sub b
.asm_a9e
	ldh [$ffe2], a
	pop hl
	ld de, $6
	add hl, de
	ldh a, [$ffe2]
	cp [hl]
	jr z, .asm_aae
	jr nc, .asm_b02
	jr .asm_aea
.asm_aae
	dec hl
	ldh a, [$ffe1]
	cp [hl]
	jr z, .asm_ab8
	jr nc, .asm_b02
	jr .asm_aea
.asm_ab8
	dec hl
	ldh a, [$ffe0]
	cp [hl]
	jr z, .asm_ac2
	jr nc, .asm_b02
	jr .asm_aea
.asm_ac2
	dec hl
	ldh a, [$ffdf]
	cp [hl]
	jr z, .asm_acc
	jr nc, .asm_b02
	jr .asm_aea
.asm_acc
	dec hl
	ldh a, [$ffde]
	cp [hl]
	jr z, .asm_ad6
	jr nc, .asm_b02
	jr .asm_aea
.asm_ad6
	dec hl
	ldh a, [$ffdd]
	cp [hl]
	jr z, .asm_ae0
	jr nc, .asm_b02
	jr .asm_aea
.asm_ae0
	dec hl
	ldh a, [$ffdc]
	cp [hl]
	jr z, .asm_aea
	jr nc, .asm_b02
	jr .asm_aea
.asm_aea
	pop hl
	pop hl
	ldh a, [$ffdc]
	ld [hli], a
	ldh a, [$ffdd]
	ld [hli], a
	ldh a, [$ffde]
	ld [hli], a
	ldh a, [$ffdf]
	ld [hli], a
	ldh a, [$ffe0]
	ld [hli], a
	ldh a, [$ffe1]
	ld [hli], a
	ldh a, [$ffe2]
	ld [hli], a
	ret
.asm_b02
	pop hl
	pop de
Func_b04::
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	ret

; outputs in d and e the tens and ones digit tiles,
; respectively, of the input number given in a
ConvertToDigits::
	add a ; *2
	ld e, a
	ld d, $00
	ld hl, .DigitTiles
	add hl, de
	ld a, [hli] ; ones
	ld e, a
	ld d, [hl] ; tens
	ret

.DigitTiles:
	FOR n, 0, 99+1
		DEF _ones = n % 10
		DEF _tens = n / 10
		db (_ones + $10), (_tens + $10)
	ENDR

Func_bed::
	ld l, e
	ld h, d
	ld de, $ffff
	ld bc, $fda8
.asm_bf5
	inc d
	add hl, bc
	ld a, h
	and $80
	jr z, .asm_bf5
	ld bc, $258
	add hl, bc
	ld bc, hCopyDest
.asm_c03
	inc e
	add hl, bc
	ld a, h
	and $80
	jr z, .asm_c03
	ret

; copies bc bytes from hl to de
Func_c0b:
	dec bc
	inc b
	inc c
.loop_copy
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .loop_copy
	dec b
	jr nz, .loop_copy
	ret

Func_c18:
	ldh a, [hDecompressLookbackLen + 0]
	ld c, a
	ldh a, [hDecompressLookbackLen + 1]
	ld b, a
	ret
; 0xc1f

SECTION "Bank 0@c34", ROM0[$c34]

; sets hDecompressSource = hl
; TODO check if needed, hDecompressSource is never read
SetDecompressSource:
	ld a, l
	ldh [hDecompressSource + 0], a
	ld a, h
	ldh [hDecompressSource + 1], a
	ret
; 0xc3b

SECTION "Bank 0@c42", ROM0[$c42]

; sets hDecompressDest = de
; TODO check if needed, hDecompressDest is never read
SetDecompressDest:
	ld a, e
	ldh [hDecompressDest + 0], a
	ld a, d
	ldh [hDecompressDest + 1], a
	ret

; input:
; - a:hl = compressed data
; - de   = destination
Decompress:
	ld c, a
	ldh a, [hROMBank]
	push af
	ld a, c
	bankswitch
	call SetDecompressSource
	call SetDecompressDest
	call _Decompress
	pop af
	bankswitch
	ret

; the decompression algorithm works by reading a byte,
; which we'll call the command byte (and optionally an argument byte):
; - if command byte's highest bit is not set, then
;   take the value %0xxxxxxx, add 1 and copy that many bytes;
; - if command byte top bits are %10, then read values
;   %10xxxxyy %yyyyyyyy: do lookback copy starting
;   at (offset - %yy_yyyyyyyy), for length of (%xxxx + 2);
; - if command byte top bits are %110, then read values
;   %110xxxxx %xyyyyyyy %yyyyyyyy: do lookback copy starting
;   at (offset - %yyyyyyy_yyyyyyyy), for length (%xxxxxx + 2)
; - if command byte top bits are %1110, then read value
;   %1110xxxx %xxxxxxxx: repeat next byte (%xxxx_xxxxxxxx + 3) times
; - if command byte top bits are %11110, then read value
;   %11110xxx: repeat next byte (%xxxx + 3) times
; - if command byte top bits are %111110, then we're done
_Decompress:
.loop
	ld a, [hli]
	bit 7, a
	jr nz, .lookback_short_cmd
	; literal copy (n+1) bytes
	ld c, a
	ld b, $00
	inc bc
	call Func_c0b
	jp .loop

.lookback_short_cmd
	bit 6, a
	jr nz, .lookback_long_cmd
	ldh [hTempDecompress], a
	; look back starting from n bytes behind
	; where n = (cmd_byte & %11) << 8 + arg_byte
	and %11
	ld b, a
	ld a, [hli]
	ld c, a
	push hl
	ld a, e
	sub c
	ld l, a
	ld a, d
	sbc b
	ld h, a

	; length is (n+2)
	; where n = (cmd_byte >> 2) & %1111
	ldh a, [hTempDecompress]
	srl a
	srl a
	and %1111
	add 2
	ld c, a
	xor a
	ld b, a
	call Func_c0b
	pop hl
	jp .loop

.lookback_long_cmd
	bit 5, a
	jr nz, .repeat_long_cmd
	ld c, a
	ld a, [hli]
	ld b, a
	add a
	ld a, c
	rla
	and %111111
	add 2
	ldh [hDecompressLookbackLen + 0], a
	xor a
	ldh [hDecompressLookbackLen + 1], a
	ld a, [hli]
	ld c, a
	ld a, b
	and %1111111
	ld b, a
	push hl
	ld a, e
	sub c
	ld l, a
	ld a, d
	sbc b
	ld h, a
	call Func_c18
	call Func_c0b
	pop hl
	jp .loop

.repeat_long_cmd
	bit 4, a
	jr nz, .repeat_short_cmd
	; repeat next byte (n+3) times
	; where n = (cmd_byte & %1111) << 8 + arg_byte
	and %1111
	ld b, a
	ld a, [hli]
	ld c, a
	inc bc
	inc bc
	inc bc
	ld a, [hli] ; repeat byte
	jr .repeat_bc_times

.repeat_short_cmd
	bit 3, a
	jr nz, .done
	; repeat next byte (n+3) times
	; where n = (cmd_byte & %111)
	and %111
	add 3
	ld c, a
	xor a
	ld b, a
	ld a, [hli]
	jr .repeat_bc_times
.done
	ret

.repeat_bc_times
	dec bc
	inc b
	inc c
	push hl
	ld l, e
	ld h, d
.loop_repeat
	ld [hli], a
	dec c
	jr nz, .loop_repeat
	dec b
	jr nz, .loop_repeat
	ld e, l
	ld d, h
	pop hl
	jp .loop
; 0xcf3

SECTION "Bank 0@d91", ROM0[$d91]

Func_d91:
	call Func_daf
	di
	ld a, $00
	ldh [rSB], a
	ld a, SC_EXTERNAL | SC_START
	ldh [rSC], a
	ei
	ret

Func_d9f::
	call Func_daf
	di
	ld a, $dd
	ldh [hffec], a
	ldh [rSB], a
	ld a, SC_EXTERNAL | SC_START
	ldh [rSC], a
	ei
	ret

Func_daf:
	ld de, wc320
	ld bc, $22
	call ClearMemory
	ld de, wc100
	ld bc, $200
	call ClearMemory
	ld de, hffe7
	ld bc, $a
	call ClearMemory

	ld a, $20
	ldh [hffe9], a

	ldh a, [hCompatibleConsole]
	cp $00
	jr z, .asm_de0
	cp $01
	jr z, .asm_de4
	cp $02
	jr z, .asm_de0
	cp $03
	jr z, .asm_de0
.asm_de0
	ld a, $100 - 32
	jr .asm_de8
.asm_de4
	ld a, $100 - 64
	jr .asm_de8 ; useless jump
.asm_de8
	ldh [hffef], a

	; set timer to interrupt
	; every 32kHz / 249 ~ 131 Hz
	ld a, TAC_16KHZ | TAC_STOP
	ldh [rTAC], a
	ld a, $100 - 249
	ldh [rTMA], a
	ldh [rTIMA], a
	ld a, TAC_16KHZ | TAC_STOP
	ldh [rTAC], a
	ret
; 0xdf9

SECTION "Bank 0@e20", ROM0[$e20]

Func_e20:
	ldh a, [hfff0]
	inc a
	ret z
	ldh [hfff0], a
	ret

Func_e27:
	ld a, $04
	bankswitch
	jp $425e

Func_e31::
	call Func_e3f
	ldh a, [hffeb]
	and a
	jr z, .asm_e3e
	call Func_e20
	jr z, Func_e27
.asm_e3e
	ret

Func_e3f:
	ldh a, [hffeb]
	and a
	ret z
	ldh a, [hffea]
	and a
	ret nz
	ldh a, [hffe7]
	and a
	ret z
	ldh a, [hffea]
	and a
	ret nz
	ld a, SC_INTERNAL | SC_START
	ldh [rSC], a
	ret
; 0xe54

SECTION "Bank 0@e54", ROM0[$e54]

SerialHandler:
	ei
	push af
	push hl
	push bc
	push de
	ldh a, [hffee]
	and a
	jr z, .continue
	pop de
	pop bc
	pop hl
	pop af
	reti

.continue
	ld a, $01
	ldh [hffee], a
	xor a
	ldh [hfff0], a
	ldh a, [hffeb]
	and a
	jr nz, .asm_eae
	ldh a, [hffec]
	and a
	jr z, .asm_ea5
	ldh a, [rSB]
	cp $dd
	jr z, .asm_e8d
	cp $fe
	jr z, .asm_e97
.asm_e7e
	xor a
	ldh [hffe7], a
	ldh [hffed], a
	ld a, $dd
	ldh [rSB], a
	ld a, SC_EXTERNAL | SC_START
	ldh [rSC], a
	jr .asm_ef0
.asm_e8d
	ld a, $01
	ldh [hffeb], a
	ldh [hffe8], a
	ldh [hffe7], a
	jr .asm_ea5
.asm_e97
	ldh a, [hffed]
	and a
	jr nz, .asm_e7e
	ld a, $01
	ldh [hffeb], a
	xor a
	ldh [hffe8], a
	ldh [hffe7], a
.asm_ea5
	xor a
	ldh [rSB], a
	ld a, SC_EXTERNAL | SC_START
	ldh [rSC], a
	jr .asm_ef0
.asm_eae
	ld a, $01
	ldh [hffea], a
	ldh a, [hffe7]
	xor $01
	ldh [hffe7], a
	ld h, $c3
	ldh a, [hffe9]
	ld l, a
	ldh a, [rSB]
	ld [hl], a
	ld a, l
	ld b, a
	add $07
	ld l, a
	ld a, [hl]
	ldh [rSB], a
	ld a, SC_EXTERNAL | SC_START
	ldh [rSC], a
	inc b
	ld a, b
	ldh [hffe9], a
	cp $24
	jr nz, .asm_ee3
	ld a, $20
	ldh [hffe9], a
	xor a
	ldh [hffea], a
	call Func_f49
	call Func_f24
	jr .asm_ef0
.asm_ee3
	ldh a, [hffe7]
	and a
	jr z, .asm_ef0
	ldh a, [hffef]
	ldh [rTIMA], a
	ld a, TAC_16KHZ | TAC_START
	ldh [rTAC], a
.asm_ef0
	xor a
	ldh [hffee], a
	pop de
	pop bc
	pop hl
	pop af
	reti

TimerHandler:
	push af
	ld a, TAC_16KHZ | TAC_STOP
	ldh [rTAC], a
	ld a, SC_INTERNAL | SC_START
	ldh [rSC], a
	pop af
	reti

Func_f03::
	ld hl, $c336
	ld a, [hld]
	ld b, a
	ld a, [hld]
	or [hl]
	or b
	ret z
	ld a, [$c33a]
	ld e, a
	ld d, $c1
	ld a, [hli]
	ld [de], a
	inc e
	ld a, [hli]
	ld [de], a
	inc e
	ld a, [hl]
	ld [de], a
	inc e
	xor a
	ld [hld], a
	ld [hld], a
	ld [hl], a
	ld a, e
	ld [$c33a], a
	ret

Func_f24:
	ld a, [$c33b]
	ld e, a
	ld a, [$c33a]
	cp e
	jr z, .asm_f41
	ld d, $c1
	ld hl, $c327
	ld a, [de]
	inc e
	ld [hli], a
	ld a, [de]
	inc e
	ld [hli], a
	ld a, [de]
	inc e
	ld [hli], a
	ld a, e
	ld [$c33b], a
	ret
.asm_f41
	ld hl, $c327
	xor a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ret

Func_f49:
	ld hl, $c323
	ld a, [hld]
	ld b, a
	ld a, [hld]
	or [hl]
	or b
	ret z
	ld a, [$c33c]
	ld e, a
	ld d, $c2
	ld a, [hli]
	ld [de], a
	inc e
	ld a, [hli]
	ld [de], a
	inc e
	ld a, [hl]
	ld [de], a
	inc e
	xor a
	ld [hld], a
	ld [hld], a
	ld [hl], a
	ld a, e
	ld [$c33c], a
	ret

Func_f6a::
	ld a, [$c33d]
	ld e, a
	ld a, [$c33c]
	cp e
	jr z, .asm_f87
	ld d, $c2
	ld hl, $c32e
	ld a, [de]
	inc e
	ld [hli], a
	ld a, [de]
	inc e
	ld [hli], a
	ld a, [de]
	inc e
	ld [hli], a
	ld a, e
	ld [$c33d], a
	ret
.asm_f87
	ld hl, $c32e
	xor a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ret
; 0xf8f

SECTION "Bank 0@10c4", ROM0[$10c4]

Func_10c4:: ; 10c4 (0:10c4)
	ld de, $2100
	ldh a, [hROMBank]
	push af
	ld a, [wSongBank]
	ldh [hROMBank], a
	ld [de], a
	ld l, c
	ld h, b
	ld a, [hli]
	ld c, a
	ld b, [hl]
	pop af
	ldh [hROMBank], a
	ld [de], a
	jp Func_80023
; 0x10dc

Func_10dc:: ; 10dc (0:10dc)
	ldh a, [hROMBank]
	push af
	ld a, BANK(PointerTable_83401)
	bankswitch
	ld a, [hli]
	ld [wc61e], a
	ld a, [hld]
	ld [wc61e + 1], a
	pop af
	bankswitch
	ret
; 0x10f5

Func_10f5:: ; 10f5 (0:10f5)
	ldh a, [hROMBank]
	push af
	ld a, $20
	bankswitch
	ld a, [bc]
	ld l, a
	pop af
	bankswitch
	jp Func_803e6
; 0x110a

Func_110a:: ; 110a (0:110a)
	ldh a, [hROMBank]
	push af
	ld a, $20
	bankswitch
	ld l, c
	ld h, b
	ld a, [hli]
	ld c, a
	ld b, [hl]
	pop af
	bankswitch
	jp Func_803e3
; 0x1122

Func_1122:: ; 1122 (0:1122)
	ldh a, [hROMBank]
	push af
	ld a, BANK(PointerTable_82230)
	bankswitch
	ld a, [hli]
	ld [wc624], a
	ld a, [hli]
	ld [wc624 + 1], a
	ld a, [hli]
	ld [wc629], a
	ld a, [hli]
	ld [wc629 + 1], a
	pop af
	bankswitch
	ret
; 0x1143

Func_1143:: ; 1143 (0:1143)
	ldh a, [hROMBank]
	push af
	ld a, $20
	bankswitch
	ld a, [bc]
	ld e, a
	pop af
	bankswitch
	ret
; 0x1156

Func_1156:: ; 1156 (0:1156)
	ldh a, [hROMBank]
	push af
	ld a, BANK(PointerTable_81a31)
	bankswitch
	ld a, [hli]
	ld [wc6c3], a
	ld a, [hld]
	ld [wc6c3 + 1], a
	pop af
	bankswitch
	ret
; 0x116f

Func_116f:: ; 116f (0:116f)
	ldh a, [hROMBank]
	push af
	ld a, $20
	bankswitch
	call wc6c2
	pop af
	bankswitch
	ret
; 0x1183

Func_1183:: ; 1183 (0:1183)
	ld de, $2100
	ldh a, [hROMBank]
	push af
	ld a, [wSongBank]
	ldh [hROMBank], a
	ld [de], a
	ld l, c
	ld h, b
	ld a, [hli]
	ld c, a
	ld b, [hl]
	pop af
	ldh [hROMBank], a
	ld [de], a
	jp Func_80548
; 0x119b

Func_119b:: ; 119b (0:119b)
	ldh a, [hROMBank]
	push af
	ld a, BANK(PointerTable_83401)
	bankswitch
	ld a, [hli]
	ld [wc64e], a
	ld a, [hld]
	ld [wc64e + 1], a
	pop af
	bankswitch
	ret
; 0x11b4

Func_11b4:: ; 11b4 (0:11b4)
	ldh a, [hROMBank]
	push af
	ld a, $20
	bankswitch
	ld a, [bc]
	ld l, a
	pop af
	bankswitch
	jp Func_8090b
; 0x11c9

Func_11c9:: ; 11c9 (0:11c9)
	ldh a, [hROMBank]
	push af
	ld a, $20
	bankswitch
	ld l, c
	ld h, b
	ld a, [hli]
	ld c, a
	ld b, [hl]
	pop af
	bankswitch
	jp Func_80908
; 0x11e1

Func_11e1:: ; 11e1 (0:11e1)
	ldh a, [hROMBank]
	push af
	ld a, BANK(PointerTable_82230)
	bankswitch
	ld a, [hli]
	ld [wc654], a
	ld a, [hli]
	ld [wc654 + 1], a
	ld a, [hli]
	ld [wc659], a
	ld a, [hli]
	ld [wc659 + 1], a
	pop af
	bankswitch
	ret
; 0x1202

Func_1202:: ; 1202 (0:1202)
	ldh a, [hROMBank]
	push af
	ld a, $20
	bankswitch
	ld a, [bc]
	ld e, a
	pop af
	bankswitch
	ret
; 0x1215

Func_1215:: ; 1215 (0:1215)
	ldh a, [hROMBank]
	push af
	ld a, BANK(PointerTable_81a3f)
	bankswitch
	ld a, [hli]
	ld [wc6c6], a
	ld a, [hld]
	ld [wc6c6 + 1], a
	pop af
	bankswitch
	ret
; 0x122e

Func_122e:: ; 122e (0:122e)
	ldh a, [hROMBank]
	push af
	ld a, $20
	bankswitch
	call wc6c5
	pop af
	bankswitch
	ret
; 0x1242

Func_1242:: ; 1242 (0:1242)
	ld de, $2100
	ldh a, [hROMBank]
	push af
	ld a, [wSongBank]
	ldh [hROMBank], a
	ld [de], a
	ld l, c
	ld h, b
	ld a, [hli]
	ld c, a
	ld b, [hl]
	pop af
	ldh [hROMBank], a
	ld [de], a
	jp Func_80a6d
; 0x125a

Func_125a:: ; 125a (0:125a)
	ldh a, [hROMBank]
	push af
	ld a, BANK(PointerTable_83401)
	bankswitch
	ld a, [hli]
	ld [wc67e], a
	ld a, [hld]
	ld [wc67e + 1], a
	pop af
	bankswitch
	ret
; 0x1273

Func_1273:: ; 1273 (0:1273)
	ldh a, [hROMBank]
	push af
	ld a, $20
	bankswitch
	ld a, [bc]
	ld l, a
	pop af
	bankswitch
	jp Func_80e34
; 0x1288

Func_1288:: ; 1288 (0:1288)
	ldh a, [hROMBank]
	push af
	ld a, $20
	bankswitch
	ld l, c
	ld h, b
	ld a, [hli]
	ld c, a
	ld b, [hl]
	pop af
	bankswitch
	jp Func_80e31
; 0x12a0

Func_12a0:: ; 12a0 (0:12a0)
	ldh a, [hROMBank]
	push af
	ld a, BANK(PointerTable_82230)
	bankswitch
	ld a, [hli]
	ld [wc684], a
	ld a, [hli]
	ld [wc684 + 1], a
	ld a, [hli]
	ld [wc689], a
	ld a, [hli]
	ld [wc689 + 1], a
	pop af
	bankswitch
	ret
; 0x12c1

Func_12c1:: ; 12c1 (0:12c1)
	ldh a, [hROMBank]
	push af
	ld a, $20
	bankswitch
	ld a, [bc]
	ld e, a
	pop af
	bankswitch
	ret
; 0x12d4

Func_12d4:: ; 12d4 (0:12d4)
	ldh a, [hROMBank]
	push af
	ld a, BANK(PointerTable_81a3f)
	bankswitch
	ld a, [hli]
	ld [wc6c9], a
	ld a, [hld]
	ld [wc6c9 + 1], a
	pop af
	bankswitch
	ret
; 0x12ed

Func_12ed:: ; 12ed (0:12ed)
	ldh a, [hROMBank]
	push af
	ld a, $20
	bankswitch
	call wc6c8
	pop af
	bankswitch
	ret
; 0x1301

Func_1301:: ; 1301 (0:1301)
	ld de, $2100
	ldh a, [hROMBank]
	push af
	ld a, [wSongBank]
	ldh [hROMBank], a
	ld [de], a
	ld l, c
	ld h, b
	ld a, [hli]
	ld c, a
	ld b, [hl]
	pop af
	ldh [hROMBank], a
	ld [de], a
	jp Func_80fa3
; 0x1319

Func_1319:: ; 1319 (0:1319)
	ldh a, [hROMBank]
	push af
	ld a, BANK(PointerTable_82230)
	bankswitch
	ld a, [hli]
	ld [wc6b4], a
	ld a, [hli]
	ld [wc6b4 + 1], a
	ld a, [hli]
	ld [wc6b9], a
	ld a, [hli]
	ld [wc6b9 + 1], a
	pop af
	bankswitch
	ret
; 0x133a

Func_133a:: ; 133a (0:133a)
	ldh a, [hROMBank]
	push af
	ld a, $20
	bankswitch
	ld a, [bc]
	ld e, a
	pop af
	bankswitch
	ret
; 0x134d

Func_134d:: ; 134d (0:134d)
	ldh a, [hROMBank]
	push af
	ld a, BANK(PointerTable_81a3f)
	bankswitch
	ld a, [hli]
	ld [wc6cc], a
	ld a, [hld]
	ld [wc6cc + 1], a
	pop af
	bankswitch
	ret
; 0x1366

Func_1366:: ; 1366 (0:1366)
	ldh a, [hROMBank]
	push af
	ld a, $20
	bankswitch
	call wc6cb
	pop af
	bankswitch
	ret
; 0x137a

Func_137a:: ; 137a (0:137a)
	ldh a, [hROMBank]
	push af
	ld a, BANK(Func_81383)
	bankswitch
	call Func_81383
	pop af
	bankswitch
	ldh a, [hROMBank]
	push af
	ld a, $21
	bankswitch
	call $4000
	pop af
	bankswitch
	ret
; 0x13a1

; play song
; input:
; a: song id
Func_13a1:: ; 13a1 (0:13a1)
	push af
	push hl
	ld l, a
	ld a, [wc601]
	and a
	jr nz, .asm_13bd
	ldh a, [hROMBank]
	push af
	ld a, BANK(Func_813ba)
	bankswitch
	call Func_813ba
	pop af
	bankswitch
.asm_13bd
	pop hl
	pop af
	ret
; 0x13c0

; get song header
; input:
; hl: header pointer
; output:
; wSongBank: song bank
; hl: song pointer
Func_13c0:: ; 13c0 (0:13c0)
	ld de, $2100
	ldh a, [hROMBank] ; hROMBank
	push af
	ld a, BANK(SongPointers)
	ldh [hROMBank], a
	ld [de], a
	ld a, [hld]
	ld [wSongBank], a
	ld a, [hld]
	ld l, [hl]
	ld h, a
	pop af
	ldh [hROMBank], a
	ld [de], a
	ret
; 0x13d7

; get next song byte
; input:
; hl: song pointer
; wSongBank: song bank
; output:
; e: song byte
Func_13d7:: ; 13d7 (0:13d7)
	ldh a, [hROMBank]
	push af
	ld a, [wSongBank]
	bankswitch
	ld a, [hli]
	ld e, a
	pop af
	bankswitch
	ret
; 0x13eb

; update sound
Func_13eb:: ; 13eb (0:13eb)
	ldh a, [hROMBank]
	push af
	ld a, $21
	bankswitch
	call $4012
	pop af
	bankswitch
	ldh a, [hROMBank]
	push af
	ld a, BANK(Func_814c5)
	bankswitch
	call Func_814c5 ; update sound
	pop af
	bankswitch
	ret
; 0x1412

; get next song byte via bc
; input:
; bc: song pointer
; wSongBank: song bank
; output:
; e: song byte
Func_1412:: ; 1412 (0:1412)
	ld hl, $2100
	ldh a, [hROMBank]
	push af
	ld a, [wSongBank]
	ldh [hROMBank], a
	ld [hl], a
	ld a, [bc]
	inc bc
	ld e, a
	pop af
	ldh [hROMBank], a
	ld [hl], a
	ret
; 0x1426

Func_1426:: ; 1426 (0:1426)
	ldh a, [hROMBank]
	push af
	ld a, $21
	bankswitch
	call $40c0
	pop af
	bankswitch
	ldh a, [hROMBank]
	push af
	ld a, BANK(Func_8143e)
	bankswitch
	call Func_8143e
	pop af
	bankswitch
	ret
; 0x144d

Func_144d:: ; 144d (0:144d)
	ld e, a
	ldh a, [hROMBank]
	push af
	ld a, BANK(Func_816fd)
	bankswitch
	call Func_816fd
	pop af
	bankswitch
	ret
; 0x1462

Func_1462:: ; 1462 (0:1462)
	ldh a, [hROMBank]
	push af
	ld a, BANK(Func_81817)
	bankswitch
	call Func_81817
	pop af
	bankswitch
	ret
; 0x1476

Func_1476:: ; 1476 (0:1476)
	ldh a, [hROMBank]
	push af
	ld a, BANK(DataTable_82f71)
	bankswitch
.asm_1480
	ld a, [hli]
	ld [$ff00+c], a
	inc c
	dec b
	jr nz, .asm_1480
	pop af
	bankswitch
	ret
; 0x148d

Func_148d:: ; 148d (0:148d)
	ldh a, [hROMBank]
	push af
	ld a, BANK(Func_81468)
	bankswitch
	call Func_81468
	pop af
	bankswitch
	ret
; 0x14a1

Func_14a1:: ; 14a1 (0:14a1)
	ldh a, [hROMBank]
	push af
	ld a, BANK(Func_81482)
	bankswitch
	call Func_81482
	pop af
	bankswitch
	ret
; 0x14b5

Func_14b5: ; 14b5 (0:14b5)
	ldh a, [hROMBank]
	push af
	ld a, BANK(Func_81490)
	bankswitch
	call Func_81490
	pop af
	bankswitch
	ret
; 0x14c9

Func_14c9: ; 14c9 (0:14c9)
	ldh a, [hROMBank]
	push af
	ld a, BANK(Func_814a9)
	bankswitch
	call Func_814a9
	pop af
	bankswitch
	ret
; 0x14dd

Func_14dd: ; 14dd (0:14dd)
	ld a, [wc601]
	and a
	jr z, .asm_14e5
	scf
	ret
.asm_14e5
	ld a, [wc5fd]
	and a
	ret nz
	ld a, [wChannel1Pointer + 1]
	and a
	ret nz
	ld a, [wChannel2Pointer + 1]
	and a
	ret nz
	ld a, [wChannel3Pointer + 1]
	and a
	ret nz
	ld a, [wChannel4Pointer + 1]
	and a
	ret nz
	scf
	ret
; 0x1500

Func_1500: ; 1500 (0:1500)
	ldh a, [hROMBank]
	push af
	ld a, BANK(Func_81857)
	bankswitch
	call Func_81857
	pop af
	bankswitch
	ret
; 0x1514

SECTION "Bank 0@1939", ROM0[$1939]

Func_1939::
	ldh a, [hROMBank]
	push af
	ld a, BANK(Func_198c5c)
	bankswitch
	call Func_198c5c
	pop af
	bankswitch
	ret
; 0x194d

SECTION "Bank 0@1983", ROM0[$1983]

; calls a:hl, but only inside bank1
Bank1Farcall::
	bankswitch
	call .jp_hl
	ld a, BANK("Bank 1")
	bankswitch
	ret

.jp_hl
	jp hl
; 0x1994

SECTION "Bank 0@1c6e", ROM0[$1c6e]

Func_1c6e::
	ldh a, [hWRAMBank]
	push af
	ld a, $04
	wramswitch
	ld hl, wc8ee + 1
	ld a, [hld]
	ld c, [hl]
	ld b, a
	ld hl, rVDMA_SRC_HIGH
	ld a, b
	ld [hli], a ; rVDMA_SRC_HIGH
	ld a, c
	ld [hli], a ; rVDMA_SRC_LOW
	ld a, HIGH(v0Tiles2 tile $60)
	ld [hli], a ; rVDMA_DEST_HIGH
	ld a, LOW(v0Tiles2 tile $60)
	ld [hli], a ; rVDMA_DEST_LOW
	xor a ; 1 tile
	ld [hl], a ; rVDMA_LEN
	pop af
	wramswitch
	ret

Func_1c92::
	ld hl, wc86a
	ld a, [hli]
	or [hl]
	inc hl
	or [hl]
	jr z, .asm_1ca0
	scf
	ret

	ld hl, wc86c
.asm_1ca0
	inc hl
	ld a, [hl]
	swap a
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	ld bc, $5420
	add hl, bc
	ld c, l
	ld b, h
	ldh a, [hROMBank]
	push af
	ld a, $12
	bankswitch
	xor a
	vramswitch
	ld hl, rVDMA_SRC_HIGH
	ld a, b
	ld [hli], a ; rVDMA_SRC_HIGH
	ld a, c
	ld [hli], a ; rVDMA_SRC_LOW
	ld a, HIGH(v0Tiles2 tile $3a)
	ld [hli], a ; rVDMA_DEST_HIGH
	ld a, LOW(v0Tiles2 tile $3a)
	ld [hli], a ; rVDMA_DEST_LOW
	ld a, 4 - 1
	ld [hl], a ; rVDMA_LEN
	pop af
	bankswitch
	and a
	ret
; 0x1cd6

SECTION "Bank 0@1d25", ROM0[$1d25]

Func_1d25::
	ld a, [wGameMode]
	cp $06
	ret z
	cp $07
	ret z
	cp $08
	ret

Func_1d31::
	ld a, [wGameMode]
	cp $05
	ret z
	cp $0d
.asm_1d39
	jr z, .asm_1d39
	ret

Func_1d3c::
	ld a, [wGameMode]
	cp $0f
	jr z, .asm_1d48
	cp $0d
.invalid
	jr z, .invalid
	ret
.asm_1d48
	ld a, GAMELEVEL_HARD
	ld [wGameMode], a
	ret
; 0x1d4e

SECTION "Bank 0@1f12", ROM0[$1f12]

Func_1f12::
	push bc
	push hl
	ld hl, wc8d3
	ld a, [hl]
	ld c, a
	ld b, $00
	inc a
	cp $0a
	jr c, .asm_1f21
	xor a
.asm_1f21
	ld [hl], a
	ldh a, [hff8a]
	ld hl, wc8be
	add hl, bc
	ld [hl], a
	ld hl, wc8c8
	add hl, bc
	ldh a, [hff8b]
	and $f8
	add a
	swap a
	ld [hl], a
	pop hl
	pop bc
	ret

Func_1f38::
	ld a, [wcead]
	and a
	jr nz, .asm_1f42
	ld hl, wceab
	ret
.asm_1f42
	ld hl, wc833
	ret

Func_1f46::
	ld b, $00
	ldh a, [hJoypadDown]
	and a
	jr nz, .got_input
	inc b ; no input
.got_input
	inc b
	ld hl, wc83c
	ld a, [hl]
	add b
	ld [hli], a
	ld c, a
	ld a, [hl]
	adc $00
	and $07
	ld [hli], a
	or c
	jr nz, .asm_1f60
	inc [hl]
.asm_1f60
	ret

Func_1f61::
	push bc
	push de
	push hl
	ld hl, wc83c
	ld a, [hl]
	add $01
	ld [hli], a
	ld c, a
	ld a, [hl]
	adc $00
	and $07
	ld [hli], a
	ld b, a
	or c
	jr nz, .asm_1f77
	inc [hl]
.asm_1f77
	ldh a, [hROMBank]
	ld d, a
	ld a, $1a
	bankswitch
	ld a, [hl]
	ld hl, $4ef9
	add hl, bc
	add [hl]
	ld e, a
	ld a, d
	bankswitch
	ld a, e
	pop hl
	pop de
	pop bc
	ret
; 0x1f93

SECTION "Bank 0@1fa7", ROM0[$1fa7]

Func_1fa7::
	call Func_1f61
Func_1faa:
	cp $33
	jr c, .asm_1fc6
	cp $66
	jr c, .asm_1fc3
	cp $99
	jr c, .asm_1fc0
	cp $cc
	jr c, .asm_1fbd
	ld a, $04
	ret
.asm_1fbd
	ld a, $03
	ret
.asm_1fc0
	ld a, $02
	ret
.asm_1fc3
	ld a, $01
	ret
.asm_1fc6
	xor a
	ret

Func_1fc8::
	call Func_1f61
Func_1fcb::
	cp $2b
	jr c, .asm_1fee
	cp $56
	jr c, .asm_1feb
	cp $81
	jr c, .asm_1fe8
	cp $ac
	jr c, .asm_1fe5
	cp $d6
	jr c, .asm_1fe2
	ld a, $05
	ret
.asm_1fe2
	ld a, $04
	ret
.asm_1fe5
	ld a, $03
	ret
.asm_1fe8
	ld a, $02
	ret
.asm_1feb
	ld a, $01
	ret
.asm_1fee
	xor a
	ret

Func_1ff0::
	ld a, [wcadf]
	dec a
	jr z, .asm_1ffa
	dec a
	jr z, .asm_200b
	ret
.asm_1ffa
	ld a, [wc869]
	ld [wcae1], a
	ld a, $02
	ld [wcadf], a
	ld hl, wcae2
	xor a
	ld [hli], a
	ld [hl], a
.asm_200b
	ld hl, wcae4
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ld hl, wcae2
	ld a, [hli]
	ld h, [hl]
	ld l, a
	add hl, bc
	ld a, [hl]
	cp $80
	jr z, .asm_2066
	cp $81
	jr z, .asm_2042
	cp $82
	jr z, .asm_2054
	xor a
	ld [wcae7], a
	ld a, [hl]
	ld d, a
	ld [wcae6], a
	and $80
	jr z, .asm_2036
	ld hl, wcae7
	dec [hl]
.asm_2036
	ld hl, wcae1
	ld a, [hl]
	add d
	ld [hl], a
	ldh [hSCY], a
	ld a, $01
	jr .Func_2070
.asm_2042
	inc hl
	ld a, [wc7ce]
	and a
	jr nz, .asm_204d
	ld a, [hl]
	ld [wc7cb], a
.asm_204d
	ld a, $02
	call .Func_2070
	jr .asm_200b
.asm_2054
	inc hl
	ld a, [wc7ce]
	and a
	jr nz, .asm_205f
	ld a, [hl]
	ld [wc7cd], a
.asm_205f
	ld a, $02
	call .Func_2070
	jr .asm_200b
.asm_2066
	xor a
	ld [wcadf], a
	ld hl, wcae6
	ld [hli], a
	ld [hl], a
	ret

.Func_2070
	ld hl, wcae2
	add [hl]
	ld [hli], a
	ld a, [hl]
	adc $00
	ld [hl], a
	ret

; outputs in de the sum of all bc bytes starting at hl
CalculateChecksum::
	ld de, 0
	dec bc
	inc b
	inc c
.loop
	ld a, [hli]
	add e
	ld e, a
	ld a, d
	adc $00
	ld d, a
	dec c
	jr nz, .loop
	dec b
	jr nz, .loop
	ret

SetSaveDataChecksumAndBackup::
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $01
	sramswitch

	; calculate content checksum
	ld hl, sSaveDataContent
	ld bc, $682
	call CalculateChecksum

	; store it
	ld hl, sSaveDataChecksum
	ld a, e
	ld [hli], a
	ld [hl], d

	; copy data to backup save
	copy_data wScratch, sSaveData, $684
	copy_data sBackupSaveData, wScratch, $684

	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

Func_20d4::
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $01
	sramswitch
	ld hl, $a686
	ld bc, $1831
	call CalculateChecksum
	ld hl, $a684
	ld a, e
	ld [hli], a
	ld [hl], d
	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret
; 0x2104

SECTION "Bank 0@212f", ROM0[$212f]

; copy c bytes from de to hl, to or from SRAM
Func_212f::
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $01
	sramswitch
	ld b, 0
.loop
	ld a, [de]
	ld [hli], a
	inc de
	inc b
	ld a, b
	cp c
	jr nz, .loop
	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret
; 0x215a

SECTION "Bank 0@25ab", ROM0[$25ab]

Func_25ab::
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $01
	sramswitch
	call Func_26d4
	push hl
	ld a, [wcdc3]
	push bc
	ld b, a
	add a
	add b
	add a
	add a
	pop bc
	ld c, a
	ld b, $00
	ld a, [wcdc5]
	and a
	jr nz, .asm_25db
	ld hl, sSaveDataUnk3DF
	jr .asm_25de
.asm_25db
	ld hl, sSaveDataUnk406
.asm_25de
	add hl, bc
	ld d, $0c
	ld a, [wcdc4]
	ld e, a
.asm_25e5
	ld a, [hl]
	cp $ff
	jr z, .asm_25f5
	cp e
	jr z, .asm_2614
	inc hl
	dec d
	ld a, d
	and a
	jr nz, .asm_25e5
	jr .asm_25fa
.asm_25f5
	pop de
	ld a, [de]
	and a
	jr nz, .asm_260c
.asm_25fa
	ld a, $01
	ld [wcdc6], a
	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret
.asm_260c
	dec a
	ld [de], a
	ld a, [wcdc4]
	ld [hl], a
	jr .asm_2615
.asm_2614
	pop de
.asm_2615
	xor a
	ld [wcdc6], a
	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

Func_2626::
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $01
	sramswitch
	call Func_26d4
	ld a, [hl]
	ld [wcdc7], a
	ld a, [wcdc3]
	push bc
	ld b, a
	add a
	add b
	add a
	add a
	pop bc
	ld c, a
	ld b, $00
	ld a, [wcdc5]
	and a
	jr nz, .asm_2659
	ld hl, sSaveDataUnk3DF
	jr .asm_265c
.asm_2659
	ld hl, sSaveDataUnk406
.asm_265c
	add hl, bc
	ld d, $0c
	xor a
	ld [wcdc6], a
	ld a, [wcdc4]
	ld e, a
.asm_2667
	ld a, [hli]
	cp e
	jr nz, .asm_2672
	ld a, $01
	ld [wcdc6], a
	jr .asm_2677
.asm_2672
	dec d
	ld a, d
	and a
	jr nz, .asm_2667
.asm_2677
	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret
; 0x2684

SECTION "Bank 0@26d4", ROM0[$26d4]

Func_26d4:
	ld a, [wcdc3]
	ld c, a
	ld b, $00
	ld a, [wcdc5]
	and a
	jr nz, .asm_26e5
	ld hl, sSaveDataUnk3DC
	jr .asm_26e8
.asm_26e5
	ld hl, sSaveDataUnk403
.asm_26e8
	add hl, bc
	ret
; 0x26ea

SECTION "Bank 0@2a3c", ROM0[$2a3c]

Func_2a3c::
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $01
	sramswitch
	call Func_2a8c
	ld a, [wcdc5]
	ld [hl], a
	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret
; 0x2a64

SECTION "Bank 0@2a8c", ROM0[$2a8c]

Func_2a8c:
	push bc
	ld a, [wcdc4]
	ld c, a
	ld b, $00
	ld hl, $a64e
	add hl, bc
	pop bc
	ret

Func_2a99:
	ldh a, [hSRAMBank]
	push af
	ld a, $00
	sramswitch
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ld de, s0a000
	ld bc, $a00
	call ClearMemory
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	pop af
	sramswitch

	call Func_2af5
	jr c, .asm_2aca
	call Func_2de3
.asm_2aca
	ld a, $00
	ld [wce34], a
	xor a
	ld [wce95], a
	ld [wce96], a
	ld [wce97], a
	ld [wce98], a
	ld [wce99], a
	ld [$dad1], a
	ld [wce9b], a
	ld [wcead], a
	ld [wceab], a
	ld a, $01
	ld [wc897], a
	ld hl, hGameState
	inc [hl]
	ret

Func_2af5:
	farcall Func_6af04
	ld a, b
	and a
	jr z, .no_carry
	scf
	ret
.no_carry
	and a
	ret

Func_2b03:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $00
	sramswitch
.loop
	call Func_2b30
	call Func_2cd9
	ldh a, [hGameState]
	cp GAMESTATE_1A
	jr z, .loop
	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

Func_2b30:
	ld a, [wce34]
	ld e, a
	ld d, $00
	ld hl, PtrTable_2b46 + $2
	add hl, de
	add hl, de
	add hl, de
	ld a, [hld] ; bank
	bankswitch
	ld a, [hld] ; address
	ld l, [hl]  ;
	ld h, a
	jp hl

PtrTable_2b46:
	dab Func_7c000 ; $00
	dab Func_7c0a7 ; $01
	dwb $4000, $05 ; $02
	dwb $4257, $05 ; $03
	dwb $415a, $08 ; $04
	dwb $427f, $08 ; $05
	dwb $435b, $09 ; $06
	dwb $44c1, $09 ; $07
	dwb $442e, $05 ; $08
	dwb $433a, $1f ; $09
	dwb $413f, $06 ; $0a
	dwb $421d, $06 ; $0b
	dwb $42b0, $06 ; $0c
	dwb $4255, $0c ; $0d
	dwb $467d, $0c ; $0e
	dwb $4156, $2e ; $0f
	dwb $4175, $2e ; $10
	dwb $478c, $2e ; $11
	dwb $4b16, $2e ; $12
	dwb $6aa8, $2d ; $13
	dwb $6bdf, $2d ; $14
	dwb $4000, $07 ; $15
	dwb $42f4, $07 ; $16
	dwb $55ab, $0f ; $17
	dwb $56f4, $0f ; $18
	dwb $5706, $0f ; $19
	dwb $4524, $07 ; $1a
	dwb $4747, $07 ; $1b
	dwb $4c63, $07 ; $1c
	dwb $4c76, $07 ; $1d
	dab Func_64000 ; $1e
	dwb $49c1, $19 ; $1f
	dwb $49ce, $19 ; $20
	dwb $4c67, $19 ; $21
	dwb $4db5, $19 ; $22
	dwb $5fc4, $19 ; $23
	dwb $61c3, $19 ; $24
	dwb $61d0, $19 ; $25
	dwb $62c3, $19 ; $26
	dwb $62dd, $19 ; $27
	dwb $4f4e, $29 ; $28
	dwb $507a, $29 ; $29
	dwb $509b, $29 ; $2a
	dwb $50c5, $29 ; $2b
	dwb $5bff, $1f ; $2c
	dwb $5efa, $1f ; $2d
	dwb $5f32, $1f ; $2e
	dwb $6055, $1f ; $2f
	dwb $6182, $1f ; $30
	dwb $619a, $1f ; $31
	dwb $402f, $09 ; $32
	dwb $41b4, $09 ; $33
	dwb $4000, $41 ; $34
	dwb $4222, $41 ; $35
	dwb $424f, $41 ; $36
	dwb $42b3, $41 ; $37
	dwb $42c6, $41 ; $38
	dwb $6719, $41 ; $39
	dwb $6865, $41 ; $3a
	dwb $6992, $41 ; $3b
	dwb $48cf, $06 ; $3c
	dwb $4a9d, $06 ; $3d
	dwb $4f0f, $27 ; $3e
	dwb $50ff, $27 ; $3f
	dwb $5106, $27 ; $40
	dwb $5130, $27 ; $41
	dwb $487e, $06 ; $42
	dwb $48a3, $06 ; $43
	dwb $56c9, $35 ; $44
	dwb $5828, $35 ; $45
	dwb $584f, $35 ; $46
	dwb $5879, $35 ; $47

Func_2c1e:
	push af
	push bc
	push de
	push hl
	ldh a, [hVBlankPending]
	and a
	jr z, .asm_2c97
	ldh a, [hVBlankTrampolinePtr + 1]
	and a
	jr z, .asm_2c43
	ld h, a
	ldh a, [hVBlankTrampolinePtr + 0]
	ld l, a
	ldh a, [hROMBank]
	push af
	ldh a, [hVBlankTrampolineBank]
	bankswitch
	call .jp_hl
	pop af
	bankswitch

.asm_2c43
	call hTransferVirtualOAM

	ld a, [wcf0c]
	and a
	call nz, Func_347d

	call wce4b
	call wce48
	call wce51

	ei
	xor a
	ldh [hVBlankPending], a
	ldh a, [hLCDC]
	ldh [rLCDC], a
	ld a, [wce3b]
	and a
	jr nz, .asm_2c80
	ldh a, [hSCX]
	ldh [rSCX], a
	ld [wce3d], a
	ldh a, [hSCY]
	ldh [rSCY], a
	ld [wce3e], a
	ldh a, [hWX]
	ldh [rWX], a
	ld [wce3f], a
	ldh a, [hWY]
	ldh [rWY], a
	ld [wce40], a
.asm_2c80
	call Func_2d7c
	ldh a, [hffeb]
	and a
	call z, Func_13eb
	ld hl, hffb7
	inc [hl]
	ld hl, hffb8
	ld [hl], $00
	pop hl
	pop de
	pop bc
	pop af
	reti

.asm_2c97
	ld b, $01
.asm_2c99
	dec b
	jr nz, .asm_2c99
	ei
	ldh a, [hLCDC]
	ldh [rLCDC], a
	ld a, [wce3b]
	and a
	jr nz, .asm_2cc6
	ldh a, [hSCX]
	ldh [rSCX], a
	ld [wce3d], a
	ldh a, [hSCY]
	ldh [rSCY], a
	ld [wce3e], a
	ldh a, [hWX]
	ldh [rWX], a
	ld [wce3f], a
	ldh a, [hWY]
	ldh [rWY], a
	ld [wce40], a
	call Func_504
.asm_2cc6
	call Func_2d7c
	ldh a, [hffeb]
	and a
	call z, Func_13eb
	ld hl, hffb8
	inc [hl]
	pop hl
	pop de
	pop bc
	pop af
	reti

.jp_hl
	jp hl

Func_2cd9:
	push bc
	push de
	push hl
	ldh a, [hffb8]
	push af
	call Func_532
	call ReadJoypad
	call ClearOAM
	call Func_e31
	ld hl, wce35
	inc [hl]
	pop af
	inc a
.loop
	push af
	ldh a, [hffeb]
	and a
	call nz, Func_13eb
	pop af
	dec a
	jr nz, .loop
	pop hl
	pop de
	pop bc
	ret
; 0x2d00

SECTION "Bank 0@2d7c", ROM0[$2d7c]

Func_2d7c:
	ld a, [wce3a]
	and a
	jr nz, .skip
	call FlushPalettes
.skip
	ret
; 0x2d86

SECTION "Bank 0@2db4", ROM0[$2db4]

Func_2db4:
	ld a, $c9 ; ret
	ld [wce48], a
	ld [wce4e], a
	ld [wce4b], a
	ld [wce51], a
	ret

Func_2dc3::
	call Func_2db4
	xor a
	ldh [hVBlankTrampolinePtr + 0], a
	ldh [hVBlankTrampolinePtr + 1], a
	ld hl, wVBlankHandler
	ld [hl], $c3 ; jp
	inc hl
	ld [hl], LOW(Func_2c1e)
	inc hl
	ld [hl], HIGH(Func_2c1e)
	ret
; 0x2dd7

SECTION "Bank 0@2de3", ROM0[$2de3]

Func_2de3:
	call Func_2dea
	call Func_2e04
	ret

Func_2dea:
	ld de, wce34
	ld bc, $68
	call ClearMemory
	call Func_2db4
	ret
; 0x2df7

SECTION "Bank 0@2e04", ROM0[$2e04]

Func_2e04:
	ldh a, [hWRAMBank]
	push af
	ld a, $01
	wramswitch
	ld de, $daa1
	ld bc, $50f
	call ClearMemory
	pop af
	wramswitch
	ret
; 0x2e1c

SECTION "Bank 0@3097", ROM0[$3097]

SafeCopyData::
	; adjust stack pointer to skip data on call site
	pop bc
	ld hl, $9
	add hl, bc
	push hl

	; load arguments
	ld l, c
	ld h, b
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ldh [hff8c], a
	ld a, [hli]
	ldh [hff8d], a
	ld a, [hli]
	ldh [hff8e], a
	ld a, [hli]
	ldh [hff8f], a
	ld a, [hli]
	ldh [hff90], a
	ld a, [hli]
	ldh [hff91], a
	ld a, [hli]
	ldh [hff92], a

	; back up all loaded banks
	ldh a, [hROMBank]
	push af
	ldh a, [hSRAMBank]
	push af
	ldh a, [hVRAMBank]
	push af
	ldh a, [hWRAMBank]
	push af
	ld a, d
	cp $80 ; ROM?
	jr c, .invalid_dest
	cp $a0 ; VRAM?
	jr c, .vram_dest
	cp $c0 ; SRAM?
	jr c, .sram_dest

; wram dest
	ldh a, [hff8c]
	wramswitch
	jr .got_dest

.sram_dest
	ldh a, [hff8c]
	sramswitch
	jr .got_dest

.vram_dest
	ldh a, [hff8c]
	vramswitch
	jr .got_dest

.invalid_dest
	jr .invalid_dest

.got_dest
	ldh a, [hff8d]
	ld l, a
	ldh a, [hff8e]
	ld h, a
	cp $80 ; ROM?
	jr c, .rom_source
	cp $a0 ; VRAM?
	jr c, .vram_source
	cp $c0 ; SRAM?
	jr c, .sram_source

; wram source
	ldh a, [hff8f]
	wramswitch
	jr .got_source

.sram_source
	ldh a, [hff8f]
	sramswitch
	jr .got_source

.vram_source
	ldh a, [hff8f]
	vramswitch
	jr .got_source

.rom_source
	ldh a, [hff8f]
	bankswitch

.got_source
	ldh a, [hff90]
	ld b, a
	ldh a, [hff92]
	ld c, a

.next_hblank
	; wait H-Blank finish
	ldh a, [rSTAT]
	and STAT_MODE
	jr z, .next_hblank
.wait_hblank
	; wait H-Blank begin
	ldh a, [rSTAT]
	and STAT_MODE
	jr nz, .wait_hblank
	ld a, [hli]
	ld [de], a
	inc de
	dec b
	jr nz, .next_hblank
	ldh a, [hff90]
	ld b, a
	ldh a, [hff91]
	add e
	ld e, a
	jr nc, .asm_3140
	inc d
.asm_3140
	dec c
	jr nz, .next_hblank

	pop af
	wramswitch
	pop af
	vramswitch
	pop af
	sramswitch
	pop af
	bankswitch
	ret
; 0x315a

SECTION "Bank 0@3266", ROM0[$3266]

Func_3266::
	call Func_1f61
	jp Func_1faa

Func_326c::
	call Func_1f61
	jp Func_1fcb

Func_3272::
	push hl
	push de
	push bc
	ldh a, [hffb8]
	push af
	call Func_532
	call ReadJoypad
	call Func_e31
	pop af
	inc a
.asm_3283
	push af
	ldh a, [hffeb]
	and a
	call nz, Func_13eb
	farcall Func_10e63
	pop af
	dec a
	jr nz, .asm_3283
	pop bc
	pop de
	pop hl
	ret

Func_3298::
	push af
	push bc
	push de
	push hl
	ldh a, [hVBlankPending]
	and a
	jr z, .asm_32cf
	call hTransferVirtualOAM
	call $d28c
	ei
	ldh a, [hLCDC]
	ldh [rLCDC], a
	ldh a, [hSCX]
	ldh [rSCX], a
	ldh a, [hSCY]
	ldh [rSCY], a
	ldh a, [hWX]
	ldh [rWX], a
	xor a
	ldh [hVBlankPending], a
	ldh a, [hffeb]
	and a
	call z, Func_13eb
	ld hl, hffb7
	inc [hl]
	ld hl, hffb8
	ld [hl], $00
	pop hl
	pop de
	pop bc
	pop af
	reti
.asm_32cf
	ei
	ld hl, hffb8
	inc [hl]
	ldh a, [hffeb]
	and a
	call z, Func_13eb
	pop hl
	pop de
	pop bc
	pop af
	reti

Func_32df::
	push af
	push bc
	push de
	push hl
	ldh a, [hVBlankPending]
	and a
	jr z, .asm_3329
	ldh a, [hVBlankTrampolinePtr + 1]
	and a
	jr z, .asm_3304
	ld h, a
	ldh a, [hVBlankTrampolinePtr + 0]
	ld l, a
	ldh a, [hROMBank]
	push af
	ldh a, [hVBlankTrampolineBank]
	bankswitch
	call .jp_hl
	pop af
	bankswitch
.asm_3304
	ei
	ldh a, [hLCDC]
	ldh [rLCDC], a
	ldh a, [hSCX]
	ldh [rSCX], a
	ldh a, [hSCY]
	ldh [rSCY], a
	ldh a, [hffeb]
	and a
	call z, Func_13eb
	ld hl, hffb7
	inc [hl]
	ld hl, hffb8
	ld [hl], $00
	xor a
	ldh [hVBlankPending], a
	pop hl
	pop de
	pop bc
	pop af
	reti

.jp_hl
	jp hl

.asm_3329
	ei
	ld hl, hffb8
	inc [hl]
	ldh a, [hffeb]
	and a
	call z, Func_13eb
	pop hl
	pop de
	pop bc
	pop af
	reti

Func_3339::
	ldh a, [hVRAMBank]
	push af
	ld a, $00
	vramswitch
	ldh a, [hROMBank]
	push af
	ld a, $58
	bankswitch
	debgcoord 12, 2
	ld hl, $4445
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	debgcoord 2, 4
	ld hl, $44c5
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	pop af
	bankswitch
	pop af
	vramswitch
	ret

Func_3397::
	ldh a, [$ffa6]
	push af
	ld a, $00
	vramswitch
	ldh a, [hROMBank]
	push af
	ld a, $58
	bankswitch
	debgcoord 12, 2
	ld hl, $444d
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	debgcoord 2, 4
	ld hl, $44ce
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	pop af
	bankswitch
	pop af
	vramswitch
	ret

Func_33f5::
	ldh a, [hROMBank]
	push af
	ld hl, $dd21
	ld a, [hld]
	bankswitch
	ld a, [hld]
	ld l, [hl]
	ld h, a
	ld a, [hli]
	ld e, a
	ld a, l
	ld [$dd1f], a
	ld a, h
	ld [$dd20], a
	pop af
	bankswitch
	ld a, e
	ret

; input:
; - a = ?
Func_3416::
	ld c, a
	inc c
	ldh a, [hROMBank]
	push af
.asm_341b
	ld hl, $dd14
	ld a, [hld]
	bankswitch
	ld a, [hld]
	ld l, [hl]
	ld h, a
.asm_3427
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	and a
	jr z, .asm_341b
	dec c
	jr nz, .asm_3427
	pop af
	bankswitch
	ret

Func_3438::
	ldh a, [hROMBank]
	push af
.asm_343b
	ld hl, $dd1e
	ld a, [hld]
	bankswitch
	ld a, [hld]
	ld l, [hl]
	ld h, a
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld b, a
	inc d
	dec d
	jr nz, .asm_3465
	xor a
	call Func_3416
	ld a, e
	ld [$dd1c], a
	ld a, d
	ld [$dd1d], a
	ld a, [$dd14]
	ld [$dd1e], a
	jr .asm_343b
.asm_3465
	ld a, l
	ld [$dd1c], a
	ld a, h
	ld [$dd1d], a
	ld c, $00
	inc hl
	ld a, [hl]
	and a
	jr nz, .asm_3476
	ld c, $01
.asm_3476
	pop af
	bankswitch
	ret

Func_347d::
	ld a, [wcf0c]
	dec a
	jp z, .asm_348f
	dec a
	jp z, .asm_34b9
	dec a
	jp z, .asm_3500

.asm_348c
	jr .asm_348c
	ret ; unreachable

.asm_348f
	ldh a, [hVRAMBank]
	push af
	ld hl, wcf0f
	ld a, [hld]
	vramswitch
	ld a, [hld]
	ld l, [hl]
	ld h, a
	ld a, HIGH(wc300)
	ldh [rVDMA_SRC_HIGH], a
	ld a, LOW(wc300)
	ldh [rVDMA_SRC_LOW], a
	ld a, h
	ldh [rVDMA_DEST_HIGH], a
	ld a, l
	ldh [rVDMA_DEST_LOW], a
	ld a, $00
	ldh [rVDMA_LEN], a
	xor a
	ld [wcf0c], a
	pop af
	vramswitch
	ret

.asm_34b9
	ldh a, [hVRAMBank]
	push af

	ld hl, wcf0f
	ld a, [hld]
	vramswitch
	ld a, [hld]
	ld l, [hl]
	ld h, a
	ld a, HIGH(wc300)
	ldh [rVDMA_SRC_HIGH], a
	ld a, LOW(wc300)
	ldh [rVDMA_SRC_LOW], a
	ld a, h
	ldh [rVDMA_DEST_HIGH], a
	ld a, l
	ldh [rVDMA_DEST_LOW], a
	ld a, $00
	ldh [rVDMA_LEN], a

	ld hl, wcf12
	ld a, [hld]
	vramswitch
	ld a, [hld]
	ld l, [hl]
	ld h, a
	ld a, HIGH(wc310)
	ldh [rVDMA_SRC_HIGH], a
	ld a, LOW(wc310)
	ldh [rVDMA_SRC_LOW], a
	ld a, h
	ldh [rVDMA_DEST_HIGH], a
	ld a, l
	ldh [rVDMA_DEST_LOW], a
	ld a, $00
	ldh [rVDMA_LEN], a
	xor a
	ld [wcf0c], a
	pop af
	vramswitch
	ret

.asm_3500
	ldh a, [hVRAMBank]
	push af

	ld hl, wcf13
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, $01
	vramswitch
	ld a, [wcf16]
	ld [hl], a
	xor a
	vramswitch
	ld a, [wcf15]
	ld [hl], a
	xor a
	ld [wcf0c], a

	pop af
	vramswitch
	ret
; 0x3526

SECTION "Bank 0@3549", ROM0[$3549]

Func_3549::
	ldh a, [hROMBank]
	push af
	ldh a, [hWRAMBank]
	push af
	ld hl, $dd26
	ld a, [hld]
	bankswitch
	dec hl
	call CallIndirect
	pop af
	wramswitch
	pop af
	bankswitch
	ret

Func_3568::
	ldh a, [hROMBank]
	push af
	ldh a, [hWRAMBank]
	push af
	ld hl, $dd26
	ld a, [hld]
	bankswitch
	dec hl
	call CallIndirect
	jr nc, .asm_358a
	pop af
	wramswitch
	pop af
	bankswitch
	scf
	ret
.asm_358a
	pop af
	wramswitch
	pop af
	bankswitch
	and a
	ret

Func_3597::
	ldh a, [hROMBank]
	push af
	ldh a, [hWRAMBank]
	push af
	ld hl, $dd17
	ld a, [hld]
	bankswitch
	dec hl
	call CallIndirect
	pop af
	wramswitch
	pop af
	bankswitch
	ret
; 0x35b6
