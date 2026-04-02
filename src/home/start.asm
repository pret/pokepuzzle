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
	ld [wc59e], a
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
