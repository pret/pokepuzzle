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

	farcall $67b4, $1a ; Func_6a7b4
	farcall $4996, $04 ; Func_10996

	xor a
	ld [wc601], a
	ld [$c7ce], a
	ld a, LY_VBLANK + 1
	ld hl, rLY
.wait_vblank
	cp [hl]
	jr nc, .wait_vblank

	; setup stack (again)
	di
	ld sp, wStack - $1

	; enable double speed on CGB
	ld b, SPD_DOUBLE
	call ToggleClockSpeed

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
	ldh [hffb6], a
	ldh [rLCDC], a
	ldh [hLCDC], a
	ldh [rIF], a
	ldh [rIE], a
	ldh [rRP], a
	ldh [hIE], a
	ldh [hffbd], a
	ldh [hffbe], a
	ldh [hffbf], a
	ldh [hffb9], a
	ld [$c59e], a
	ldh [hffb5], a
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

	ld a, $0a
	ldh [$ffc2], a
	ld a, $01
	ldh [$ffc3], a

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

	ld a, [$c7ce]
	ld l, a
	ld a, [wc601]
	ld h, a
	push hl
	call Func_137a
	pop hl
	ld a, h
	ld [wc601], a
	ld a, l
	ld [$c7ce], a

	call Func_38c
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
	farcall $49c0, $04 ; Func_109c0
	farcall $4000, $43 ; Func_10c000

.loop
	call Func_249
	jr .loop

Func_249:
	ldh a, [hffb6]
	ld e, a
	ld d, $00
	ld hl, $9c7
	add hl, de
	add hl, de
	add hl, de ; *3
	ld a, [hld]
	bankswitch
	ld a, [hld]
	ld l, [hl]
	ld h, a
	jp hl
; 0x25e

SECTION "Bank 0@281", ROM0[$281]

VBlankHandler:
	push af
	push bc
	push de
	push hl
	ldh a, [hffb9]
	and a
	jr z, .asm_2c5

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
	ldh [hffb9], a
	call Func_504
	ldh a, [$ffeb]
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

.asm_2c5
	ld b, $01
.asm_2c7
	dec b
	jr nz, .asm_2c7
	ei
	call Func_51d
	ldh a, [$ffeb]
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

SECTION "Bank 0@38c", ROM0[$38c]

Func_38c:
	ld hl, $c000
	ld de, $4
	ld c, $28
	xor a
	ldh [hffb5], a
.asm_397
	ld [hl], a
	add hl, de
	dec c
	jr nz, .asm_397
	ret
; 0x39d

SECTION "Bank 0@504", ROM0[$504]

Func_504:
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
; 0x532

SECTION "Bank 0@570", ROM0[$570]

; clear bc bytes from de
ClearMemory:
	xor a
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
; 0x57e

SECTION "Bank 0@5f2", ROM0[$5f2]

; performs copy given input arguments at call site
; input:
; - destination address:bank
; - source address:bank
; - 2-byte copy length
CopyData:
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
; 0x621

SECTION "Bank 0@6c8", ROM0[$6c8]

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
; 0x802

SECTION "Bank 0@869", ROM0[$869]

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

SECTION "Bank 0@9b0", ROM0[$9b0]

; if we're not in CGB, skip
; if clock speed is already equal to b, skip
; else, toggle clock speed
ToggleClockSpeed:
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
; 0x9c5

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
; 0xd9f

SECTION "Bank 0@daf", ROM0[$daf]

Func_daf:
	ld de, $c320
	ld bc, $22
	call ClearMemory
	ld de, wStack
	ld bc, $200
	call ClearMemory
	ld de, $ffe7
	ld bc, $a
	call ClearMemory

	ld a, $20
	ldh [$ffe9], a

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
	ld a, $e0
	jr .asm_de8
.asm_de4
	ld a, $c0
	jr .asm_de8 ; useless jump
.asm_de8
	ldh [$ffef], a

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

SECTION "Bank 0@e54", ROM0[$e54]

SerialHandler:
	ei
	push af
	push hl
	push bc
	push de
	ldh a, [$ffee]
	and a
	jr z, .continue
	pop de
	pop bc
	pop hl
	pop af
	reti

.continue
	ld a, $01
	ldh [$ffee], a
	xor a
	ldh [$fff0], a
	ldh a, [$ffeb]
	and a
	jr nz, .asm_eae
	ldh a, [$ffec]
	and a
	jr z, .asm_ea5
	ldh a, [rSB]
	cp $dd
	jr z, .asm_e8d
	cp $fe
	jr z, .asm_e97
.asm_e7e
	xor a
	ldh [$ffe7], a
	ldh [$ffed], a
	ld a, $dd
	ldh [rSB], a
	ld a, SC_EXTERNAL | SC_START
	ldh [rSC], a
	jr .asm_ef0
.asm_e8d
	ld a, $01
	ldh [$ffeb], a
	ldh [$ffe8], a
	ldh [$ffe7], a
	jr .asm_ea5
.asm_e97
	ldh a, [$ffed]
	and a
	jr nz, .asm_e7e
	ld a, $01
	ldh [$ffeb], a
	xor a
	ldh [$ffe8], a
	ldh [$ffe7], a
.asm_ea5
	xor a
	ldh [rSB], a
	ld a, SC_EXTERNAL | SC_START
	ldh [rSC], a
	jr .asm_ef0
.asm_eae
	ld a, $01
	ldh [$ffea], a
	ldh a, [$ffe7]
	xor $01
	ldh [$ffe7], a
	ld h, $c3
	ldh a, [$ffe9]
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
	ldh [$ffe9], a
	cp $24
	jr nz, .asm_ee3
	ld a, $20
	ldh [$ffe9], a
	xor a
	ldh [$ffea], a
	call Func_f49
	call Func_f24
	jr .asm_ef0
.asm_ee3
	ldh a, [$ffe7]
	and a
	jr z, .asm_ef0
	ldh a, [$ffef]
	ldh [rTIMA], a
	ld a, TAC_16KHZ | TAC_START
	ldh [rTAC], a
.asm_ef0
	xor a
	ldh [$ffee], a
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
; 0xf03

SECTION "Bank 0@f24", ROM0[$f24]

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
; 0xf6a

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

Func_137a: ; 137a (0:137a)
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
Func_13eb: ; 13eb (0:13eb)
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

Func_1426: ; 1426 (0:1426)
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
