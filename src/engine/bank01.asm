SECTION "Bank 1@4003", ROMX[$4003], BANK[$1]

Func_4003::
	ld a, BANK(Func_68ebb)
	ld hl, Func_68ebb
	call Bank1Farcall

	ld a, BANK(Func_44000)
	ld hl, Func_44000
	call Bank1Farcall
.asm_4013
	xor a
	ld [wcdf2], a

	ld a, BANK(Func_76ff5)
	ld hl, Func_76ff5
	call Bank1Farcall

	ld a, [wcd6f]
	and a
	jr z, .asm_4037
	ld a, [wc893]
	and a
	jp z, .asm_40c2
	ld a, BANK(Func_779a1)
	ld hl, Func_779a1
	call Bank1Farcall
	jp .asm_40c2

.asm_4037
	ld a, BANK(Func_78000)
	ld hl, Func_78000
	call Bank1Farcall

	call Func_1ff0
	call Func_6c1f
	call Func_69b3
	call Func_427a
	call Func_43e0
	call DrawCursor
	call Func_4cf7
	call Func_4f43

	ld a, BANK(Func_5146)
	ld hl, Func_5146
	call Bank1Farcall

	ld a, BANK(Func_9c22)
	ld hl, Func_9c22
	call Bank1Farcall

	ld a, BANK(Func_808b)
	ld hl, Func_808b
	call Bank1Farcall

	ld a, BANK(Func_8d59)
	ld hl, Func_8d59
	call Bank1Farcall

	ld a, BANK(Func_9306)
	ld hl, Func_9306
	call Bank1Farcall

	call Func_4763
	call Func_6ed3
	call Func_6ef3

	ld a, BANK(Func_6c085)
	ld hl, Func_6c085
	call Bank1Farcall

	ld a, BANK(Func_40004)
	ld hl, Func_40004
	call Bank1Farcall

	ld hl, wca27
	ld a, [hl]
	add $01
	ld [hli], a
	ld a, [hl]
	adc $00
	ld [hld], a
	ld a, [hli]
	sub $10
	ld a, [hld]
	sbc $0e
	jr c, .asm_40c2
	xor a
	ld [hli], a
	ld [hl], a
	ld hl, wca25
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ld hl, wca23
	ld a, [hl]
	sub c
	ld [hli], a
	ld a, [hl]
	sbc b
	ld [hld], a
	jr nc, .asm_40c2
	xor a
	ld [hli], a
	ld [hl], a
.asm_40c2
	call Func_413e
	ld a, [wc887]
	cp $00
	jp z, .asm_4013
	ld a, [wc887]
	cp $01
	jr z, .asm_40e2
	cp $02
	jr z, .asm_40fa
	cp $03
	jr z, .asm_40ea
	cp $04
	jr z, .asm_40f2
	debug_loop
.asm_40e2
	ld a, GAMESTATE_06
	ldh [hGameState], a
	xor a
	ldh [hVBlankTrampolinePtr + 1], a
	ret
.asm_40ea
	ld a, GAMESTATE_07
	ldh [hGameState], a
	xor a
	ldh [hVBlankTrampolinePtr + 1], a
	ret
.asm_40f2
	ld a, GAMESTATE_08
	ldh [hGameState], a
	xor a
	ldh [hVBlankTrampolinePtr + 1], a
	ret
.asm_40fa
	ld a, [wc886]
	add $0a
	ldh [hGameState], a
	xor a
	ldh [hVBlankTrampolinePtr + 1], a
	ret
; 0x4105

SECTION "Bank 1@413e", ROMX[$413e], BANK[$1]

Func_413e:
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
.asm_4152
	push af
	ld a, $1a
	ld hl, $5b08
	call Bank1Farcall
	ldh a, [hffeb]
	and a
	call nz, Func_13eb
	ld hl, wc877
	ld a, [hl]
	add $01
	ld [hli], a
	ld a, [hl]
	adc $00
	ld [hl], a
	pop af
	dec a
	jr nz, .asm_4152
	pop hl
	pop de
	pop bc
	ret
; 0x4174

SECTION "Bank 1@427a", ROMX[$427a], BANK[$1]

Func_427a:
	; exit if in Puzzle mode
	ld a, [wGameMode]
	cp GAMEMODE_PUZZLE
	ret z

	xor a
	ld [wc87e], a
	ld hl, wc87c
	ld a, [hli]
	or [hl]
	jr z, .asm_42ba
	ld hl, wccb3
	ld a, [hli]
	and a
	ret nz
	ld a, [hli]
	and a
	ret nz
	ld a, [hli]
	and a
	ret nz
	ld a, [hli]
	and a
	ret nz
	ld a, [hli]
	and a
	ret nz
	ld a, [hli]
	and a
	ret nz
	ld a, [hli]
	and a
	ret nz
	ld a, [hli]
	and a
	ret nz
	ld a, [hli]
	and a
	ret nz
	ld hl, wc87c
	ld a, [hli]
	sub $01
	ld c, a
	ld a, [hl]
	sbc $00
	ld b, a
	jr c, .asm_42ba
	ld a, b
	ld [hld], a
	ld [hl], c
	ret
.asm_42ba
	ld hl, wBlocks
	ld a, [hli]
	or [hl]
	REPT BOARD_WIDTH - 2
		inc hl
		or [hl]
	ENDR
	ret nz
	ld a, [wc8a6]
	ld b, a
	ld a, [wcd6e]
	ld c, a
	ld a, [wcadf]
	ld hl, wc89d
	or [hl]
	or b
	or c
	ret nz
	ld a, [wc87b]
	and a
	jr z, .asm_42f3
	ld b, $ff
	ld a, [wceba]
	and a
	jr z, .asm_42ea
	ld b, $67
.asm_42ea
	ld hl, w6d0b0
	call Func_73cc
	ret nz
	jr .asm_42fe
.asm_42f3
	call Func_7313
	ret nz
	call Func_6777
	ld c, l
	ld b, h
	jr .asm_430c
.asm_42fe
	ld a, [wc8e6]
	cp $ff
	jr z, .asm_4309
	cp $20
	jr c, .asm_430c
.asm_4309
	ld bc, $1000
.asm_430c
	xor a
	ld [wc880], a

	; w6d9a0 -= bc
	ld hl, wcad0
	ld a, [hl]
	sub c
	ld [hli], a
	ld a, [hl]
	sbc b
	ld [hld], a
	ret nc ; no underflow

	ld d, $00
.asm_431c
	inc d
	ld a, $00
	add [hl] ; wcad0
	ld [hli], a
	ld a, $10
	adc [hl]
	ld [hld], a
	and $80
	jr nz, .asm_431c
	ld hl, wc869
	ld a, [hl]
	ldh [hff8a], a
	add d
	ld [hl], a
	ldh [hSCY], a

	ld bc, $810
	ld hl, wc864
	ld a, [hl]
	and $f8
	jr nz, .asm_4357
	ldh a, [hff8a]
	and a
	jr nz, .asm_4357
	ld hl, hSCY
	cp [hl]
	jr nz, .asm_434b
	jr .asm_4357
.asm_434b
	ld hl, wc864
	ld a, [hl]
	add b
	ld [hl], a
	ld hl, wCursorY
	ld a, [hl]
	add c
	ld [hl], a
.asm_4357
	ld hl, wc8e2
	ld a, [hl]
	add $10
	ld [hli], a
	ld a, [hl]
	adc $00
	jr c, .asm_4364
	ld [hl], a
.asm_4364
	ld hl, wcade
	ld a, [hl]
	add d
	ld [hl], a
	cp $10
	ret c
	ld hl, wc869
	ld a, [hl]
	and $f0
	sub $10
	ld [hl], a
	ldh [hSCY], a
	ld a, $1b
	ld hl, $6509
	call Bank1Farcall
	call Func_5475
	ld a, [wc87b]
	and a
	jr z, .asm_438f
	ld bc, 1
	call AddToScore
.asm_438f
	ld bc, $810
	ld hl, wc864
	ld a, [hl]
	sub b
	ld [hl], a
	ld hl, wcad4
	ld a, [hl]
	sub b
	ld [hli], a
	ld a, [hl]
	sub b
	ld [hl], a
	ld hl, wCursorY
	ld a, [hl]
	sub c
	ld [hl], a
	ld hl, wcad9
	ld a, [hl]
	sub c
	ld [hl], a
	xor a
	ld [wcade], a
	ld [wc87b], a
	inc a
	ld [wc87e], a
	ld [wc880], a
	ld [wc892], a
	ld a, $03
	ld [wc89d], a
	ret

Func_43c4:
	ld a, [wGameMode]
	cp GAMEMODE_PUZZLE
	jr nz, .asm_43dd
	ld hl, wc8da
	ld a, [hl]
	and a
	ret z
	dec a
	ld [hl], a
	call Func_6df0
	push bc
	push de
	call Func_20d4
	pop de
	pop bc
.asm_43dd
	ld a, $01
	ret

Func_43e0:
	ldh a, [hJoypadPressed]
	and PAD_START
	jp z, .asm_4401 ; no Start btn
	call Is2PlayerGameMode
	jr z, .asm_43fc ; is 2P-mode
	cp GAMEMODE_UNKE
	jr z, .asm_43fc
	ld a, $01
	ld [wc887], a
	ld a, $00
	ld [wc898], a
	jr .asm_4401
.asm_43fc
	ld a, $01
	ld [wcd72], a
.asm_4401
	ld a, [wc864]
	ld b, a
	ld a, [wCursorX]
	ld d, a
	ld a, [wCursorY]
	ld e, a
	xor a
	ldh [hff8a], a
	ld a, [wGameMode]
	cp GAMEMODE_UNKE
	jp z, .d_left
	cp GAMEMODE_PUZZLE
	jr z, .asm_447d
	ld hl, wc89d
	ld a, [hl]
	and a
	jr z, .b_btn
	dec [hl]
	jp .d_left

.b_btn
	ldh a, [hJoypadDown]
	and PAD_B
	jp z, .d_left
	ld hl, wc87c
	xor a
	ld [hli], a
	ld [hl], a
	ld a, [wceba]
	and a
	jr z, .asm_444c
	ld a, [wcadf]
	and a
	jr z, .asm_444c
	xor a
	ld [wcadf], a
	ld [wcae0], a
	ld a, [wc869]
	ldh [hSCY], a
.asm_444c
	ld hl, wc87b
	ld a, [wc8a6]
	ld c, a
	ld a, [wcadf]
	or [hl]
	or c
	jr nz, .d_left
	ld hl, wBlocks
	ld a, [hli]
	or [hl]
	REPT BOARD_WIDTH - 2
		inc hl
		or [hl]
	ENDR
	jr nz, .d_left
	ld a, [wceba]
	and a
	jr nz, .asm_4475
	call Func_7313
	and a
	jr nz, .d_left
.asm_4475
	ld a, $01
	ld [wc87b], a
	jp .asm_46b9

.asm_447d
	ldh a, [hJoypadPressed]
	and PAD_B
	jp z, .d_left
	ld hl, wc8dc
	ld a, [wc8da]
	cp [hl]
	jr z, .d_left
	ld a, [wc7ce]
	and a
	jr nz, .asm_4498
	ld a, $04
	ld [wc7cb], a
.asm_4498
	ld a, $04
	ld [wc887], a
	jp .asm_46b9

.d_left
	ldh a, [hJoypadDown]
	and PAD_LEFT
	jr z, .d_right
	ld a, b
	dec a
	and $07
	cp $07
	jr z, .d_right
	ld hl, wc881
	ld a, [hl]
	and $c0
	cp $00
	jr z, .asm_44bb
	ld a, $00
	ld [hl], a
.asm_44bb
	ld a, [hl]
	inc a
	ld [hl], a
	and $3f
	cp $01
	jr z, .asm_44cb
	ld hl, wc882
	cp [hl]
	jp c, .asm_45d0
.asm_44cb
	dec b
	ld a, d
	add -16
	ld d, a
	ld a, [hl]
	and $3f
	cp $0c
	jr nc, .asm_44db
	ld hl, hff8a
	inc [hl]
.asm_44db
	jp .asm_45d0

.d_right
	ldh a, [hJoypadDown]
	and PAD_RIGHT
	jr z, .d_up
	ld a, b
	inc a
	and $07
	cp $05
	jr z, .d_up
	ld hl, wc881
	ld a, [hl]
	and $c0
	cp $40
	jr z, .asm_44f9
	ld a, $40
	ld [hl], a
.asm_44f9
	ld a, [hl]
	inc a
	ld [hl], a
	and $3f
	cp $01
	jr z, .asm_4509
	ld hl, wc882
	cp [hl]
	jp c, .asm_45d0
.asm_4509
	inc b
	ld a, d
	add 16
	ld d, a
	ld hl, wc881
	ld a, [hl]
	and $3f
	cp $0c
	jr nc, .asm_451c
	ld hl, hff8a
	inc [hl]
.asm_451c
	jp .asm_45d0

.d_up
	ldh a, [hJoypadDown]
	and PAD_UP
	jr z, .d_down
	ld a, [wGameMode]
	cp GAMEMODE_UNKE
	jr z, .asm_453f
	cp GAMEMODE_PUZZLE
	jr z, .asm_453f
	ld a, [wc869]
	and a
	jr z, .asm_453f
	ld a, b
	and $f8
	cp $08
	jr z, .d_down
	jr .asm_4544
.asm_453f
	ld a, b
	and $f8
	jr z, .d_down
.asm_4544
	ld hl, wc881
	ld a, [hl]
	and $c0
	cp $80
	jr z, .asm_4551
	ld a, $80
	ld [hl], a
.asm_4551
	ld a, [hl]
	inc a
	ld [hl], a
	and $3f
	cp $01
	jr z, .asm_4561
	ld hl, wc882
	cp [hl]
	jp c, .asm_45d0
.asm_4561
	ld a, b
	sub $08
	ld b, a
	ld a, e
	add -16
	ld e, a
	ld hl, wc881
	ld a, [hl]
	and $3f
	cp $0c
	jr nc, .asm_4577
	ld hl, hff8a
	inc [hl]
.asm_4577
	jp .asm_45d0

.d_down
	ldh a, [hJoypadDown]
	and PAD_DOWN
	jr z, .asm_45c1
	ld a, b
	add $08
	cp $48
	jr nc, .asm_45c1
	ld hl, wc881
	ld a, [hl]
	and $c0
	cp $c0
	jr z, .asm_4594
	ld a, $c0
	ld [hl], a
.asm_4594
	ld a, [hl]
	inc a
	ld [hl], a
	and $3f
	cp $01
	jr z, .asm_45a4
	ld hl, wc882
	cp [hl]
	jp c, .asm_45d0
.asm_45a4
	ld a, b
	add $08
	cp $48
	jr nc, .asm_45c1
	ld b, a
	ld a, e
	add 16
	ld e, a
	ld hl, wc881
	ld a, [hl]
	and $3f
	cp $0c
	jr nc, .asm_45be
	ld hl, hff8a
	inc [hl]
.asm_45be
	jp .asm_45d0
.asm_45c1
	ld a, $00
	ld [wc881], a
	ld a, $0b
	ld [wc882], a
	ld a, [wc8da]
	and a
	ret z
.asm_45d0
	ldh a, [hff8a]
	and a
	jr z, .a_btn
	ld a, [wc7ce]
	and a
	jr nz, .a_btn
	ld a, $02
	ld [wc7cb], a

.a_btn
	ldh a, [hJoypadPressed]
	and PAD_A
	jp z, .select_btn
	ld a, [wcad2]
	and a
	jp nz, .select_btn
	ld a, [wc881]
	and $3f
	cp $0b
	jr c, .asm_4611
	ld a, [wc864]
	ld b, a
	ld a, [wCursorX]
	ld d, a
	ld a, [wCursorY]
	ld e, a
	ld hl, wc881
	ld a, [hl]
	and $c0
	or $01
	ld [hl], a
	ld a, $0c
	ld [wc882], a
.asm_4611
	ld a, b
	call Func_55fb
	jr c, .select_btn
	ld a, [wGameMode]
	cp GAMEMODE_PUZZLE
	jr z, .asm_4624
	cp GAMEMODE_UNKE
	jr z, .asm_462c
	jr .asm_4631
.asm_4624
	call Func_43c4
	and a
	jr z, .select_btn
	jr .asm_4631
.asm_462c
	ld a, $02
	ld [wc8da], a
.asm_4631
	ld a, [wc7ce]
	and a
	jr nz, .asm_463c
	ld a, $c3
	ld [wc7cb], a
.asm_463c
	ld a, $01
	ld [wcad2], a
	jp .asm_46b9

.select_btn
	ldh a, [hJoypadPressed]
	and PAD_SELECT
	jp z, .asm_46b9
	ld a, [wGameMode]
	cp GAMEMODE_PUZZLE
	jr nz, .asm_46b9
	ld a, [wc838]
	ld [wcdc3], a
	call Func_1f38
	ld a, [hl]
	ld [wcdc4], a
	ld a, [wcead]
	ld [wcdc5], a
	push bc
	push de
	call Func_2626
	pop de
	pop bc

	; used hint already?
	ld a, [wUsedHint]
	and a
	jr nz, .asm_4685 ; yes
	ld a, [wRemainingHints]
	and a
	jr nz, .asm_4685
	ld a, [wc7ce]
	and a
	jr nz, .asm_4683
	ld a, $28
	ld [wc7cd], a
.asm_4683
	jr .asm_46b9
.asm_4685
	ld a, [wc838]
	ld [wcdc3], a
	call Func_1f38
	ld a, [hl]
	ld [wcdc4], a
	ld a, [wcead]
	ld [wcdc5], a
	push bc
	push de
	farcall Func_6a2f4
	call SetSaveDataChecksumAndBackup
	pop de
	pop bc
	farcall Func_68a0f
	farcall Func_68b3d
	ld a, $03
	ld [wc887], a
	jp .asm_46b9

.asm_46b9
	ld a, b
	ld [wc864], a
	ld a, d
	ld [wCursorX], a
	ld a, e
	ld [wCursorY], a
	ret

DrawCursor:
	ld a, [wc8da]
	and a
	jr z, Func_46f3
	ldh a, [hSCY]
	ld b, a
	ld a, [wCursorY]
	sub b
	ld c, a
	ldh a, [hSCX]
	ld b, a
	ld a, [wCursorX]
	sub b
	ld b, a
	ld hl, wCursorCounter
	ld a, [hl]
	inc [hl]
	and $10
	jr nz, .asm_46ec
	ld hl, $4731
	call Func_2f8
	ret
.asm_46ec
	ld hl, $474a
	call Func_2f8
	ret

Func_46f3:
	ldh a, [hSCY]
	ld b, a
	ld a, [wCursorY]
	sub b
	ld c, a
	ldh a, [hSCX]
	ld b, a
	ld a, [wCursorX]
	sub b
	ld b, a
	ld hl, wCursorCounter
	inc [hl]
	ld a, [hl]
	and $02
	ret nz
	ld hl, $4731
	call Func_2f8
	ret
; 0x4712

SECTION "Bank 1@4763", ROMX[$4763], BANK[$1]

Func_4763:
	ld hl, w6d0b0
	ld de, $d0b8
	ld b, $c0
	ld c, $3f
	ld a, [hl]
	and b
	jr z, .asm_477d
	ld a, [hl]
	and c
	jr nz, .asm_477d
	ld a, [de]
	and $05
	jr nz, .asm_477d
	ld a, [hl]
	and c
	ld [hl], a
.asm_477d
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_478f
	ld a, [hl]
	and c
	jr nz, .asm_478f
	ld a, [de]
	and $05
	jr nz, .asm_478f
	ld a, [hl]
	and c
	ld [hl], a
.asm_478f
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_47a1
	ld a, [hl]
	and c
	jr nz, .asm_47a1
	ld a, [de]
	and $05
	jr nz, .asm_47a1
	ld a, [hl]
	and c
	ld [hl], a
.asm_47a1
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_47b3
	ld a, [hl]
	and c
	jr nz, .asm_47b3
	ld a, [de]
	and $05
	jr nz, .asm_47b3
	ld a, [hl]
	and c
	ld [hl], a
.asm_47b3
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_47c5
	ld a, [hl]
	and c
	jr nz, .asm_47c5
	ld a, [de]
	and $05
	jr nz, .asm_47c5
	ld a, [hl]
	and c
	ld [hl], a
.asm_47c5
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_47d7
	ld a, [hl]
	and c
	jr nz, .asm_47d7
	ld a, [de]
	and $05
	jr nz, .asm_47d7
	ld a, [hl]
	and c
	ld [hl], a
.asm_47d7
	inc l
	inc e
	inc l
	inc l
	inc e
	inc e
	ld a, [hl]
	and b
	jr z, .asm_47ed
	ld a, [hl]
	and c
	jr nz, .asm_47ed
	ld a, [de]
	and $05
	jr nz, .asm_47ed
	ld a, [hl]
	and c
	ld [hl], a
.asm_47ed
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_47ff
	ld a, [hl]
	and c
	jr nz, .asm_47ff
	ld a, [de]
	and $05
	jr nz, .asm_47ff
	ld a, [hl]
	and c
	ld [hl], a
.asm_47ff
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_4811
	ld a, [hl]
	and c
	jr nz, .asm_4811
	ld a, [de]
	and $05
	jr nz, .asm_4811
	ld a, [hl]
	and c
	ld [hl], a
.asm_4811
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_4823
	ld a, [hl]
	and c
	jr nz, .asm_4823
	ld a, [de]
	and $05
	jr nz, .asm_4823
	ld a, [hl]
	and c
	ld [hl], a
.asm_4823
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_4835
	ld a, [hl]
	and c
	jr nz, .asm_4835
	ld a, [de]
	and $05
	jr nz, .asm_4835
	ld a, [hl]
	and c
	ld [hl], a
.asm_4835
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_4847
	ld a, [hl]
	and c
	jr nz, .asm_4847
	ld a, [de]
	and $05
	jr nz, .asm_4847
	ld a, [hl]
	and c
	ld [hl], a
.asm_4847
	inc l
	inc e
	inc l
	inc l
	inc e
	inc e
	ld a, [hl]
	and b
	jr z, .asm_485d
	ld a, [hl]
	and c
	jr nz, .asm_485d
	ld a, [de]
	and $05
	jr nz, .asm_485d
	ld a, [hl]
	and c
	ld [hl], a
.asm_485d
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_486f
	ld a, [hl]
	and c
	jr nz, .asm_486f
	ld a, [de]
	and $05
	jr nz, .asm_486f
	ld a, [hl]
	and c
	ld [hl], a
.asm_486f
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_4881
	ld a, [hl]
	and c
	jr nz, .asm_4881
	ld a, [de]
	and $05
	jr nz, .asm_4881
	ld a, [hl]
	and c
	ld [hl], a
.asm_4881
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_4893
	ld a, [hl]
	and c
	jr nz, .asm_4893
	ld a, [de]
	and $05
	jr nz, .asm_4893
	ld a, [hl]
	and c
	ld [hl], a
.asm_4893
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_48a5
	ld a, [hl]
	and c
	jr nz, .asm_48a5
	ld a, [de]
	and $05
	jr nz, .asm_48a5
	ld a, [hl]
	and c
	ld [hl], a
.asm_48a5
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_48b7
	ld a, [hl]
	and c
	jr nz, .asm_48b7
	ld a, [de]
	and $05
	jr nz, .asm_48b7
	ld a, [hl]
	and c
	ld [hl], a
.asm_48b7
	inc l
	inc e
	inc l
	inc l
	inc e
	inc e
	ld a, [hl]
	and b
	jr z, .asm_48cd
	ld a, [hl]
	and c
	jr nz, .asm_48cd
	ld a, [de]
	and $05
	jr nz, .asm_48cd
	ld a, [hl]
	and c
	ld [hl], a
.asm_48cd
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_48df
	ld a, [hl]
	and c
	jr nz, .asm_48df
	ld a, [de]
	and $05
	jr nz, .asm_48df
	ld a, [hl]
	and c
	ld [hl], a
.asm_48df
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_48f1
	ld a, [hl]
	and c
	jr nz, .asm_48f1
	ld a, [de]
	and $05
	jr nz, .asm_48f1
	ld a, [hl]
	and c
	ld [hl], a
.asm_48f1
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_4903
	ld a, [hl]
	and c
	jr nz, .asm_4903
	ld a, [de]
	and $05
	jr nz, .asm_4903
	ld a, [hl]
	and c
	ld [hl], a
.asm_4903
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_4915
	ld a, [hl]
	and c
	jr nz, .asm_4915
	ld a, [de]
	and $05
	jr nz, .asm_4915
	ld a, [hl]
	and c
	ld [hl], a
.asm_4915
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_4927
	ld a, [hl]
	and c
	jr nz, .asm_4927
	ld a, [de]
	and $05
	jr nz, .asm_4927
	ld a, [hl]
	and c
	ld [hl], a
.asm_4927
	inc l
	inc e
	inc l
	inc l
	inc e
	inc e
	ld a, [hl]
	and b
	jr z, .asm_493d
	ld a, [hl]
	and c
	jr nz, .asm_493d
	ld a, [de]
	and $05
	jr nz, .asm_493d
	ld a, [hl]
	and c
	ld [hl], a
.asm_493d
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_494f
	ld a, [hl]
	and c
	jr nz, .asm_494f
	ld a, [de]
	and $05
	jr nz, .asm_494f
	ld a, [hl]
	and c
	ld [hl], a
.asm_494f
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_4961
	ld a, [hl]
	and c
	jr nz, .asm_4961
	ld a, [de]
	and $05
	jr nz, .asm_4961
	ld a, [hl]
	and c
	ld [hl], a
.asm_4961
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_4973
	ld a, [hl]
	and c
	jr nz, .asm_4973
	ld a, [de]
	and $05
	jr nz, .asm_4973
	ld a, [hl]
	and c
	ld [hl], a
.asm_4973
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_4985
	ld a, [hl]
	and c
	jr nz, .asm_4985
	ld a, [de]
	and $05
	jr nz, .asm_4985
	ld a, [hl]
	and c
	ld [hl], a
.asm_4985
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_4997
	ld a, [hl]
	and c
	jr nz, .asm_4997
	ld a, [de]
	and $05
	jr nz, .asm_4997
	ld a, [hl]
	and c
	ld [hl], a
.asm_4997
	inc l
	inc e
	inc l
	inc l
	inc e
	inc e
	ld a, [hl]
	and b
	jr z, .asm_49ad
	ld a, [hl]
	and c
	jr nz, .asm_49ad
	ld a, [de]
	and $05
	jr nz, .asm_49ad
	ld a, [hl]
	and c
	ld [hl], a
.asm_49ad
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_49bf
	ld a, [hl]
	and c
	jr nz, .asm_49bf
	ld a, [de]
	and $05
	jr nz, .asm_49bf
	ld a, [hl]
	and c
	ld [hl], a
.asm_49bf
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_49d1
	ld a, [hl]
	and c
	jr nz, .asm_49d1
	ld a, [de]
	and $05
	jr nz, .asm_49d1
	ld a, [hl]
	and c
	ld [hl], a
.asm_49d1
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_49e3
	ld a, [hl]
	and c
	jr nz, .asm_49e3
	ld a, [de]
	and $05
	jr nz, .asm_49e3
	ld a, [hl]
	and c
	ld [hl], a
.asm_49e3
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_49f5
	ld a, [hl]
	and c
	jr nz, .asm_49f5
	ld a, [de]
	and $05
	jr nz, .asm_49f5
	ld a, [hl]
	and c
	ld [hl], a
.asm_49f5
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_4a07
	ld a, [hl]
	and c
	jr nz, .asm_4a07
	ld a, [de]
	and $05
	jr nz, .asm_4a07
	ld a, [hl]
	and c
	ld [hl], a
.asm_4a07
	inc l
	inc e
	inc l
	inc l
	inc e
	inc e
	ld a, [hl]
	and b
	jr z, .asm_4a1d
	ld a, [hl]
	and c
	jr nz, .asm_4a1d
	ld a, [de]
	and $05
	jr nz, .asm_4a1d
	ld a, [hl]
	and c
	ld [hl], a
.asm_4a1d
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_4a2f
	ld a, [hl]
	and c
	jr nz, .asm_4a2f
	ld a, [de]
	and $05
	jr nz, .asm_4a2f
	ld a, [hl]
	and c
	ld [hl], a
.asm_4a2f
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_4a41
	ld a, [hl]
	and c
	jr nz, .asm_4a41
	ld a, [de]
	and $05
	jr nz, .asm_4a41
	ld a, [hl]
	and c
	ld [hl], a
.asm_4a41
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_4a53
	ld a, [hl]
	and c
	jr nz, .asm_4a53
	ld a, [de]
	and $05
	jr nz, .asm_4a53
	ld a, [hl]
	and c
	ld [hl], a
.asm_4a53
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_4a65
	ld a, [hl]
	and c
	jr nz, .asm_4a65
	ld a, [de]
	and $05
	jr nz, .asm_4a65
	ld a, [hl]
	and c
	ld [hl], a
.asm_4a65
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_4a77
	ld a, [hl]
	and c
	jr nz, .asm_4a77
	ld a, [de]
	and $05
	jr nz, .asm_4a77
	ld a, [hl]
	and c
	ld [hl], a
.asm_4a77
	inc l
	inc e
	inc l
	inc l
	inc e
	inc e
	ld a, [hl]
	and b
	jr z, .asm_4a8d
	ld a, [hl]
	and c
	jr nz, .asm_4a8d
	ld a, [de]
	and $05
	jr nz, .asm_4a8d
	ld a, [hl]
	and c
	ld [hl], a
.asm_4a8d
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_4a9f
	ld a, [hl]
	and c
	jr nz, .asm_4a9f
	ld a, [de]
	and $05
	jr nz, .asm_4a9f
	ld a, [hl]
	and c
	ld [hl], a
.asm_4a9f
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_4ab1
	ld a, [hl]
	and c
	jr nz, .asm_4ab1
	ld a, [de]
	and $05
	jr nz, .asm_4ab1
	ld a, [hl]
	and c
	ld [hl], a
.asm_4ab1
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_4ac3
	ld a, [hl]
	and c
	jr nz, .asm_4ac3
	ld a, [de]
	and $05
	jr nz, .asm_4ac3
	ld a, [hl]
	and c
	ld [hl], a
.asm_4ac3
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_4ad5
	ld a, [hl]
	and c
	jr nz, .asm_4ad5
	ld a, [de]
	and $05
	jr nz, .asm_4ad5
	ld a, [hl]
	and c
	ld [hl], a
.asm_4ad5
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_4ae7
	ld a, [hl]
	and c
	jr nz, .asm_4ae7
	ld a, [de]
	and $05
	jr nz, .asm_4ae7
	ld a, [hl]
	and c
	ld [hl], a
.asm_4ae7
	inc l
	inc e
	inc l
	inc l
	inc e
	inc e
	ld a, [hl]
	and b
	jr z, .asm_4af8
	ld a, [hl]
	and c
	jr nz, .asm_4af8
	ld a, [hl]
	and c
	ld [hl], a
.asm_4af8
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_4b05
	ld a, [hl]
	and c
	jr nz, .asm_4b05
	ld a, [hl]
	and c
	ld [hl], a
.asm_4b05
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_4b12
	ld a, [hl]
	and c
	jr nz, .asm_4b12
	ld a, [hl]
	and c
	ld [hl], a
.asm_4b12
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_4b1f
	ld a, [hl]
	and c
	jr nz, .asm_4b1f
	ld a, [hl]
	and c
	ld [hl], a
.asm_4b1f
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_4b2c
	ld a, [hl]
	and c
	jr nz, .asm_4b2c
	ld a, [hl]
	and c
	ld [hl], a
.asm_4b2c
	inc l
	inc e
	ld a, [hl]
	and b
	jr z, .asm_4b39
	ld a, [hl]
	and c
	jr nz, .asm_4b39
	ld a, [hl]
	and c
	ld [hl], a
.asm_4b39
	inc l
	inc e
	ld hl, w6d0b0
	ld e, $c5
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	inc l
	inc l
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	inc l
	inc l
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	inc l
	inc l
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	inc l
	inc l
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	inc l
	inc l
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	inc l
	inc l
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	inc l
	inc l
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	inc l
	inc l
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	ld a, [hli]
	and e
	jp nz, .asm_4c62
	inc l
	inc l
	jr .asm_4c6d
.asm_4c62
	ld a, [wc88a]
	and a
	ret z
	ld a, $01
	ld [wc8d4], a
	ret
.asm_4c6d
	ld a, [wc88a]
	and a
	jr z, .asm_4ca2
	ld b, a
	call Func_4cb3
	call Func_6969
	call Is2PlayerGameMode
	jr z, .asm_4c94
	ld de, $a8
	ld bc, $1020
	ld a, $ff
	ld [wcae8], a
	ld a, BANK(Func_8ce2)
	ld hl, Func_8ce2
	call Bank1Farcall
	jr .asm_4ca2
.asm_4c94
	ld a, $ff
	ldh [hff8a], a
	ldh [hff8b], a
	ld a, $00
	ld hl, Func_1f12
	call Bank1Farcall
.asm_4ca2
	ld a, [wc88a]
	and a
	jr z, .asm_4cab
	nop
	nop
	nop
.asm_4cab
	xor a
	ld [wc8d4], a
	ld [wc88a], a
	ret

Func_4cb3:
	ld a, b
	cp $05
	jr nc, .asm_4ce5
	cp $04
	jr z, .asm_4cd3
	cp $03
	jr z, .asm_4cc1
	ret
.asm_4cc1
	ld a, [wGameMode]
	cp GAMEMODE_PUZZLE
	ret z
	ld a, [wc7ce]
	and a
	jr nz, .asm_4cd2
	ld a, $0a
	ld [wc7cd], a
.asm_4cd2
	ret
.asm_4cd3
	ld a, [wGameMode]
	cp GAMEMODE_PUZZLE
	ret z
	ld a, [wc7ce]
	and a
	jr nz, .asm_4ce4
	ld a, $0b
	ld [wc7cd], a
.asm_4ce4
	ret
.asm_4ce5
	ld a, [wGameMode]
	cp GAMEMODE_PUZZLE
	ret z
	ld a, [wc7ce]
	and a
	jr nz, .asm_4cf6
	ld a, $0c
	ld [wc7cd], a
.asm_4cf6
	ret

Func_4cf7:
	ld a, [wcad2]
	add a
	ld c, a
	ld b, $00
	ld hl, .PtrTable
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.Func_4d06:
	ret

.PtrTable:
	dw .Func_4d06
	dw Func_4d0f
	dw Func_4dba
	dw Func_4dfe

Func_4d0f:
	ld a, [wCursorX]
	dec a
	ld [wcad8], a
	ld a, [wCursorY]
	ld [wcad9], a
	ld a, [wc864]
	ld [wcad4], a
	ld c, a
	ld b, $00
	inc a
	ld [wcad5], a
	ld hl, wBlocks
	add hl, bc
	ld a, [hl]
	and a
	jr z, .asm_4d4b
	ld hl, w6d0b0
	add hl, bc
	ld a, [hl]
	or $01
	and $fb
	ld [hl], a
	ld hl, wBlocks + 1 + 1 * BOARD_VIRTUAL_WIDTH
	add hl, bc
	ld a, [hl]
	and a
	jr nz, .asm_4d4b
	ld hl, w6d0b0
	add hl, bc
	ld a, [hl]
	or $04
	ld [hl], a
.asm_4d4b
	ld hl, wBlocks + 1 + 0 * BOARD_VIRTUAL_WIDTH
	add hl, bc
	ld a, [hl]
	and a
	jr z, .asm_4d6d
	ld hl, w6d0b0 + 1 + 0 * BOARD_VIRTUAL_WIDTH
	add hl, bc
	ld a, [hl]
	or $01
	and $fb
	ld [hl], a
	ld hl, wBlocks + 0 + 1 * BOARD_VIRTUAL_WIDTH
	add hl, bc
	ld a, [hl]
	and a
	jr nz, .asm_4d6d
	ld hl, w6d0b0 + 1 + 0 * BOARD_VIRTUAL_WIDTH
	add hl, bc
	ld a, [hl]
	or $04
	ld [hl], a
.asm_4d6d
	ld hl, wBlocks
	add hl, bc
	ld a, [hli]
	ld [wcad6], a
	ld a, [hl]
	ld [wcad7], a
	ld a, [wcad4]
	call Func_5446
	ld hl, wcadb
	xor a
	ld [hli], a
	ld [hl], a
	call Func_4d98
	ld hl, wcadb
	ld a, [hl]
	add e
	ld [hli], a
	ld a, [hl]
	adc d
	ld [hli], a
	ld a, $02
	ld [wcad2], a
	jr Func_4dc9

; output:
; - de = ?
Func_4d98:
	ld a, [wGameLevel]
	cp GAMEMODE_CHALLENGE
	jr z, .asm_4da2
	xor a
	jr .asm_4da6
.asm_4da2
	ld a, [wceb4]
	inc a
.asm_4da6
	add a
	ld c, a
	ld b, $00
	ld hl, .data
	add hl, bc
	ld a, [hli]
	ld d, [hl]
	ld e, a
	ret

.data
	dw $400
	dw $156
	dw $100
	dw $200

Func_4dba:
	ld a, [wc864]
	call Func_55fb
	jr c, Func_4dc9
	ldh a, [hJoypadPressed]
	and PAD_A
	jp nz, Func_4e15

Func_4dc9:
	ld a, [wcadb + 1]
	ld b, a
	ld a, $10
	sub b
	ld c, a
	ld a, [wcad8]
	add c
	ld e, a
	ld a, [wcad7]
	push bc
	call Func_4e8b
	pop bc
	ld a, [wcad8]
	add b
	ld e, a
	ld a, [wcad6]
	call Func_4e8b

	call Func_4d98
	ld hl, wcadb
	ld a, [hl]
	add e
	ld [hli], a
	ld a, [hl]
	adc d
	ld [hli], a
	cp $10
	ret c
	ld a, $03
	ld [wcad2], a
	ret

Func_4dfe:
	ldh a, [hJoypadPressed]
	and PAD_A
	jp nz, Func_4e15
	call Func_4e33
	xor a
	ld [wcad2], a
	ld a, $ff
	ld [wcad4], a
	ld [wcad5], a
	ret

Func_4e15:
	call Func_43c4
	and a
	ret z
	call Func_4e33
	ld a, [wc864]
	call Func_55fb
	jp nc, Func_4d0f
	xor a
	ld [wcad2], a
	ld a, $ff
	ld [wcad4], a
	ld [wcad5], a
	ret

Func_4e33:
	ld hl, w6d0b0
	ld a, [wcad4]
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [hl]
	and $fe
	ld [hli], a
	ld a, [hl]
	and $fe
	ld [hld], a
	call Func_4e56
	inc bc
	call Func_4e56
	xor a
	ld [wcada], a
	ld a, $01
	ld [wc892], a
	ret

Func_4e56:
	ld hl, wBlocks
	add hl, bc
	ld a, [hl]
	and a
	jr nz, .asm_4e64
	push bc
	call Func_5651
	pop bc
	ret
.asm_4e64
	ld hl, $d008
	add hl, bc
	ld a, [hl]
	and a
	jr z, .asm_4e7a
	ld hl, $d0b8
	add hl, bc
	ld a, [hl]
	and $04
	jr nz, .asm_4e7a
	ld a, [hl]
	and $fb
	ld [hl], a
	ret
.asm_4e7a
	ld hl, w6d0b0
	add hl, bc
	ld a, [hl]
	or $04
	ld [hl], a
	ld hl, w6d100
	add hl, bc
	ld a, [wca1d]
	ld [hl], a
	ret

; input:
; - a = sprite index
; - e = x offset
Func_4e8b:
	add a
	ld c, a
	ld b, $00
	ld hl, $4ea8
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ldh a, [hSCY]
	ld b, a
	ld a, [wcad9]
	sub b
	ld c, a ; wcad9 - hSCY
	ldh a, [hSCX]
	ld b, a
	ld a, e
	sub b
	ld b, a ; e - hSCX
	call Func_2f8
	ret
; 0x4ea8

SECTION "Bank 1@4f43", ROMX[$4f43], BANK[$1]

Func_4f43:
	xor a
	ld [wc889], a
	ld [wc88b], a
	ld [wc8d6], a
	ld a, [wc892]
	and a
	ret z
	xor a
	ld [wc892], a
	ldh [hff8a], a

	ld a, BANK(Func_70034)
	ld hl, Func_70034
	call Bank1Farcall

	ld a, BANK(Func_74d05)
	ld hl, Func_74d05
	call Bank1Farcall

	ld a, BANK(Func_75a5d)
	ld hl, Func_75a5d
	call Bank1Farcall
	ld a, c
	and a
	ret z

	ldh a, [hff8a]
	ldh [hff8d], a
	ld a, b
	and $07
	swap a
	add $08
	ldh [hff8e], a
	ld a, b
	and $f8
	add a
	add $12
	ldh [hff8f], a
	ld a, [wc889]
	sub $03
	jr c, .asm_4f99
	ld a, [wc88a]
	ld c, a
	call Func_683b
	call AddToScore
.asm_4f99
	ld a, [wc889]
	sub $04
	jp c, .asm_5030
	cp $33
	jr c, .asm_4fa7
	ld a, $33
.asm_4fa7
	ld [wcae8], a
	call Func_5123
	ld a, [wcae8]
	add a
	ld e, a
	ld d, $00
	ld hl, NULL
	add hl, de
	ld e, l
	ld d, h
	call Func_5118

	ld a, BANK(Func_8ce2)
	ld hl, Func_8ce2
	call Bank1Farcall

	ld a, $01
	ld [wc8d6], a
	ld a, [wcebd]
	and a
	jr nz, .asm_5011
	ld a, [wc883]
	and a
	jr z, .asm_5011
	ld de, $a6
	ld a, b
	add $10
	ld b, a
	xor a
	ld [wcae8], a

	ld a, BANK(Func_8ce2)
	ld hl, Func_8ce2
	call Bank1Farcall

	call Is2PlayerGameMode
	jr z, .asm_5011
	call Func_1d31
	jr z, .asm_5011
	ld a, [wceb8]
	and a
	jr nz, .asm_5006
	ld a, [wc7ce]
	and a
	jr nz, .asm_5004
	ld a, $26
	ld [wc7cd], a
.asm_5004
	jr .asm_5011
.asm_5006
	ld a, [wc7ce]
	and a
	jr nz, .asm_5011
	ld a, $3d
	ld [wc7cb], a
.asm_5011
	ld a, [wc889]
	ld c, a
	call Func_693c
	call Func_67b8
	call AddToScore
	ld a, [wcebd]
	and a
	jr nz, .asm_5030
	ld a, [wGameMode]
	cp GAMEMODE_PUZZLE
	jr z, .asm_5030
	call Func_688c
	jr c, .asm_5030
.asm_5030
	ldh a, [hff8d]
	and a
	jp z, .asm_50e0
	ld a, [wceb3]
	and a
	jr nz, .asm_5050
	ld a, [wceb7]
	and a
	jr nz, .asm_5046
	ld e, $0a
	jr .asm_5048
.asm_5046
	ld e, $10
.asm_5048
	ld a, [wc88a]
	cp e
	jr nc, .asm_5059
	jr .asm_505e
.asm_5050
	ld a, [wc88a]
	cp $1e
	jr nc, .asm_5059
	jr .asm_505e
.asm_5059
	ld de, $a2
	jr .asm_5068
.asm_505e
	add a
	ld e, a
	ld d, $00
	ld hl, $68
	add hl, de
	ld e, l
	ld d, h
.asm_5068
	ld a, [wc88a]
	cp $1e
	jr c, .asm_5071
	ld a, $1d
.asm_5071
	or $80
	ld [wcae8], a
	call Func_5123
	call Func_5118

	ld a, BANK(Func_8ce2)
	ld hl, Func_8ce2
	call Bank1Farcall

	ld a, $01
	ld [wc8d6], a
	ld a, [wcebd]
	and a
	jr nz, .asm_50d0
	ld a, [wc883]
	and a
	jr z, .asm_50d0
	ld de, $a6
	ld a, b
	add $10
	ld b, a
	xor a
	ld [wcae8], a

	ld a, BANK(Func_8ce2)
	ld hl, Func_8ce2
	call Bank1Farcall

	call Is2PlayerGameMode
	jr z, .asm_50d0
	call Func_1d31
	jr z, .asm_50d0
	ld a, [wceb8]
	and a
	jr nz, .asm_50c5
	ld a, [wc7ce]
	and a
	jr nz, .asm_50c3
	ld a, $26
	ld [wc7cd], a
.asm_50c3
	jr .asm_50d0
.asm_50c5
	ld a, [wc7ce]
	and a
	jr nz, .asm_50d0
	ld a, $3d
	ld [wc7cb], a
.asm_50d0
	ld a, [wcebd]
	and a
	jr nz, .asm_50e0
	ld a, [wGameMode]
	cp GAMEMODE_PUZZLE
	jr z, .asm_50e0
	call Func_68c1
.asm_50e0
	ld a, [wc88b]
	and a
	jr z, .asm_5109
	or $40
	ld [wcae8], a
	call Func_5123
	call Func_5118
	ld de, $a4
	ld a, BANK(Func_8ce2)
	ld hl, Func_8ce2
	call Bank1Farcall
	ld a, $10
	ld hl, $6417
	call Bank1Farcall
	ld a, $01
	ld [wc8d6], a
.asm_5109
	ld a, [wc8d6]
	and a
	jr z, .asm_5117
	ld a, $10
	ld hl, $6417
	call Bank1Farcall
.asm_5117
	ret

Func_5118:
	ldh a, [hff8e]
	ld b, a
	ldh a, [hff8f]
	ld c, a
	add $f0
	ldh [hff8f], a
	ret

Func_5123:
	ldh [hff8a], a
	call Is2PlayerGameMode
	ret nz
	ldh a, [hff8a]
	and $c0
	jr nz, .asm_5135
	ldh a, [hff8a]
	add $04
	ldh [hff8a], a
.asm_5135
	ld a, [wc894]
	add a
	add a
	add a
	ldh [hff8b], a
	ld a, $00
	ld hl, Func_1f12
	call Bank1Farcall
	ret

Func_5146:
	ld bc, NULL
.asm_5149
	push bc
	ld hl, $ccfb
	add hl, bc
	ld e, [hl]
	ld d, $00
	ld hl, $d200
	add hl, de
	ld e, l
	ld d, h
	call Func_5162
	pop bc
	inc c
	ld a, c
	cp $0c
	jr c, .asm_5149
	ret

Func_5162:
	ld hl, wccb3
	add hl, bc
	ld a, [hl]
	and a
	jp z, .asm_522f
	dec a
	jp z, .asm_517e
	dec a
	jp z, .asm_518a
	dec a
	jp z, .asm_51a7
	dec a
	jp z, .asm_51be
	jp .asm_5201

.asm_517e:
	ld l, e
	ld h, d
	call Func_5230
	ld hl, wccb3
	add hl, bc
	ld a, $02
	ld [hl], a
.asm_518a:
	ld hl, $cce3
	add hl, bc
	inc [hl]
	ld a, [wca1a]
	cp [hl]
	jp nc, .asm_522f
	xor a
	ld [hl], a
	ld hl, wccb3
	add hl, bc
	ld a, $03
	ld [hl], a
	ld l, e
	ld h, d
	call Func_5250
	jp .asm_522f

.asm_51a7:
	ld hl, $cce3
	add hl, bc
	inc [hl]
	ld a, [wca1b]
	cp [hl]
	jp nc, .asm_522f
	xor a
	ld [hl], a
	ld hl, wccb3
	add hl, bc
	ld [hl], $04
	jp .asm_522f

.asm_51be:
	ld hl, $cce3
	add hl, bc
	inc [hl]
	ld a, [wca1c]
	cp [hl]
	jp nc, .asm_522f
	xor a
	ld [hl], a
	call Func_526a
	ld hl, $ccd7
	add hl, bc
	ld a, [hl]
	call Func_53da
	ld hl, $ccbf
	add hl, bc
	ld a, [hl]
	ld hl, $ccd7
	add hl, bc
	inc [hl]
	cp [hl]
	jp nz, .asm_522f
	ld a, [hl]
	ld hl, $cccb
	add hl, bc
	cp [hl]
	jr nz, .asm_51f5
	push bc
	call Func_5304
	pop bc
	jp .asm_5228
.asm_51f5
	ld hl, wccb3
	add hl, bc
	ld [hl], $05
	call Func_5304
	jp .asm_522f

.asm_5201:
	ld hl, $cce3
	add hl, bc
	inc [hl]
	ld a, [wca1c]
	cp [hl]
	jp nc, .asm_522f
	xor a
	ld [hl], a
	call Func_5293
	call Func_53da
	ld hl, $cccb
	add hl, bc
	ld a, [hl]
	ld hl, $ccd7
	add hl, bc
	inc [hl]
	cp [hl]
	jp nz, .asm_522f
	push bc
	call Func_5336
	pop bc
.asm_5228:
	ld hl, wccb3
	add hl, bc
	ld [hl], $00
	ret

.asm_522f:
	ret

Func_5230:
	push bc
.asm_5231
	ld a, [hl]
	cp $ff
	jr z, .asm_524e
	inc l
	push hl
	ld c, a
	ld b, $00
	ld hl, w6d058
	add hl, bc
	ld a, [hl]
	and $03
	or $10
	ld [hl], a
	ld hl, w6d150
	add hl, bc
	xor a
	ld [hl], a
	pop hl
	jr .asm_5231
.asm_524e
	pop bc
	ret

Func_5250:
	push bc
.asm_5251
	ld a, [hl]
	cp $ff
	jr z, .asm_5268
	inc l
	push hl
	ld c, a
	ld b, $00
	ld hl, w6d058
	add hl, bc
	ld a, [hl]
	and $ef
	or $04
	ld [hl], a
	pop hl
	jr .asm_5251
.asm_5268
	pop bc
	ret

Func_526a:
	push bc
	push de
	ld hl, $ccd7
	add hl, bc
	ld a, [hl]
	add e
	ld e, a
	ld a, [de]
	ld e, a
	ld d, $00
	ld hl, w6d0b0
	add hl, de
	ld a, [hl]
	or $10
	ld [hl], a
	ld hl, w6d058
	add hl, de
	ld a, [hl]
	and $fb
	ld [hl], a
	ld bc, $a
	call AddToScore
	call Func_6995
	pop de
	pop bc
	ret

Func_5293:
	push bc
	push de
	ld hl, $ccd7
	add hl, bc
	ld a, [hl]
	add e
	ld e, a
	ld a, [de]
	ld e, a
	ld d, $00
	call Func_5387
	ld hl, w6d0b0
	add hl, de
	ld a, [hl]
	or $10
	ld [hl], a
	ld hl, w6d058
	add hl, de
	ld a, [hl]
	and $fb
	ld [hl], a
	ld hl, w6d1a0
	add hl, de
	ld a, [hl]
	and $0f
	dec a
	jr z, .asm_52e0
	ld a, [hl]
	sub $11
	ld [hl], a
	and $f0
	swap a
	add a
	ld b, a
	ld a, [hl]
	and $0f
	dec a
	add a
	ld c, a
	add a
	add c
	ld c, a
	farcall $76a7, $02 ; Func_b6a7
	ld hl, wBlocks
	add hl, de
	ldh a, [hff8a]
	ld [hl], a
	jp .asm_5301
.asm_52e0
	xor a
	ld [hl], a
	ld hl, w6d058
	add hl, de
	ld a, [hl]
	or $80
	ld [hl], a
	ld hl, wc8a7
	inc [hl]
	ld a, [hl]
	ld hl, wca20
	cp [hl]
	jr nz, .asm_52f9
	xor a
	ld [wc8a7], a
.asm_52f9
	call Func_558c
	ld hl, wBlocks
	add hl, de
	ld [hl], a
.asm_5301:
	pop de
	pop bc
	ret

Func_5304:
	ld hl, $ccfb
	add hl, bc
	ld e, [hl]
	ld d, $00
	ld hl, $d200
	add hl, de
.asm_530f
	ld a, [hl]
	cp $ff
	jr z, .asm_5335
	inc l
	push hl
	ld e, a
	ld d, $00
	ld hl, w6d058
	add hl, de
	ld a, [hl]
	and $03
	jr nz, .asm_5332
	xor a
	ld hl, wBlocks
	add hl, de
	ld [hl], a
	ld hl, w6d0b0
	add hl, de
	ld [hl], a
	ld c, e
	ld b, d
	call Func_567a
.asm_5332
	pop hl
	jr .asm_530f
.asm_5335
	ret

Func_5336:
	ld hl, $ccfb
	add hl, bc
	ld e, [hl]
	ld d, $00
	ld hl, $d200
	add hl, de
.asm_5341
	ld a, [hl]
	cp $ff
	jr z, .asm_5386
	inc l
	push hl
	ld e, a
	ld d, $00
	ld hl, w6d058
	add hl, de
	ld a, [hl]
	and $03
	jr z, .asm_5383
	ld a, [hl]
	and $80
	jr nz, .asm_5363
	ld hl, w6d0b0
	add hl, de
	ld a, [hl]
	and $e7
	ld [hl], a
	jr .asm_5383
.asm_5363
	ld hl, w6d0b0
	add hl, de
	ld a, [hl]
	and $e7
	or $64
	ld [hl], a
	ld hl, w6d058
	add hl, de
	xor a
	or $40
	ld [hl], a
	ld hl, w6d150
	add hl, de
	ld [hl], $00
	ld hl, w6d100
	add hl, de
	ld a, [wca1f]
	ld [hl], a
.asm_5383
	pop hl
	jr .asm_5341
.asm_5386
	ret

Func_5387:
	push bc
	push de
	ld a, e
	and a
	jp nz, .asm_53d7
	ld hl, w6d1a0
	add hl, de
	ld a, [hl]
	ldh [hff8a], a
	ld a, [hl]
	and $0f
	ld b, a
	ld a, [hl]
	and $f0
	swap a
	cp b
	jp z, .asm_53d7
	ld a, [wc8fa]
	ld e, a
	ld d, $00
.asm_53a8
	ld hl, w6d400
	add hl, de
	inc e
	ld a, [hl]
	sub $11
	ld [hl], a
	ld a, [hl]
	and $0f
	ld b, a
	ld a, [hl]
	and $f0
	swap a
	cp b
	jr nz, .asm_53a8
	ld hl, hff8a
	ld a, [hl]
	and $f0
	swap a
	dec a
	add a
	ld c, a
	ld a, [hl]
	and $0f
	dec a
	add a
	ld b, a
	add a
	add b
	ld b, a
	farcall $76c5, $02 ; Func_b6c5
.asm_53d7:
	pop de
	pop bc
	ret

Func_53da:
	ld a, [wc89f]
	and a
	jr z, .asm_53e5
	xor a
	ld [wc89f], a
	ret
.asm_53e5
	push de
	ld hl, $ccef
	add hl, bc
	ld a, [hl]
	cp $04
	jr c, .asm_53f1
	ld a, $03
.asm_53f1
	add a
	add a
	add a
	ld e, a
	ld d, $00
	ld hl, $ccd7
	add hl, bc
	ld a, [hl]
	cp $08
	jr c, .asm_5402
	ld a, $07
.asm_5402
	add e
	ld e, a
	ld hl, $5426
	add hl, de
	ld d, [hl]
	ld a, [wc7ce]
	and a
	jr z, .asm_5411
	pop de
	ret
.asm_5411
	ld hl, $ccef
	add hl, bc
	ld a, [hl]
	cp $02
	jr nc, .asm_5420
	ld a, d
	ld [wc7cb], a
	pop de
	ret
.asm_5420
	ld a, d
	ld [wc7cd], a
	pop de
	ret
; 0x5426

SECTION "Bank 1@5446", ROMX[$5446], BANK[$1]

Func_5446:
	ld c, a
	ld b, $00
	ld hl, wBlocks
	add hl, bc
	call Func_546e
	ld hl, w6d058
	add hl, bc
	ld a, [hl]
	and $bf
	ld [hli], a
	ld a, [hl]
	and $bf
	ld [hld], a
	call Func_546e
	ld hl, w6d0b0
	add hl, bc
	call Func_546e
	ld hl, $d150
	add hl, bc
	xor a
	ld [hli], a
	ld [hl], a
	ret

Func_546e:
	ld a, [hli]
	ld d, a
	ld a, [hld]
	ld [hli], a
	ld a, d
	ld [hld], a
	ret

Func_5475:
	ld hl, $d048
	xor a
	REPT BOARD_WIDTH - 1
		ld [hli], a
	ENDR
	ld [hl], a

	ld hl, wc8a9
	ld a, [hl]
	and a
	jr z, .asm_54d2
	ld hl, wc8a8
	ld a, [wca22]
	dec a
	cp [hl]
	jr c, .asm_54d2
	call Random_0to5
	call Func_555b
	jr c, .asm_54d2
	ld hl, wc8a9
	dec [hl]
	ld hl, wc8a8
	inc [hl]
	ld hl, $d048
	add hl, bc
	ld [hl], $07
	ld hl, wc8a9
	ld a, [hl]
	and a
	jr z, .asm_54d2
	ld hl, wc8a8
	ld a, [wca22]
	dec a
	cp [hl]
	jr c, .asm_54d2
	ld a, [hl]
	cp $05
	jr nc, .asm_54d2
	call Random_0to5
	call Func_555b
	jr c, .asm_54d2
	ld hl, wc8a9
	dec [hl]
	ld hl, wc8a8
	inc [hl]
	ld hl, $d048
	add hl, bc
	ld [hl], $07
.asm_54d2
	ld bc, NULL
	ld de, $fff8
	call Random_0to4
	inc a
	ldh [hff8a], a
.asm_54de
	ld hl, $d048
	add hl, bc
	ld a, [hl]
	cp $07
	jp z, .asm_5545
	ld a, [wca18]
	cp $06
	jr z, .asm_54f4
	call Random_0to4
	jr .asm_54f7
.asm_54f4
	call Random_0to5
.asm_54f7
	inc a
	ldh [hff8b], a
	ldh a, [hff8a]
	cp c
	jr nz, .asm_5525
	ld a, [wca19]
	dec a
	jr z, .asm_551c
	dec a
	jr z, .asm_5525
.asm_5508
	ld hl, $d048
	add hl, bc
	dec hl
	ld a, [hl]
	cp $07
	jr z, .asm_5525
	ld hl, $d048
	add hl, de
	cp [hl]
	jr z, .asm_5525
	jp .asm_5545
.asm_551c
	ld hl, wc87f
	ld a, [hl]
	inc [hl]
	and $01
	jr nz, .asm_5508
.asm_5525
	ldh a, [hff8b]
.asm_5527
	ld hl, $d048
	add hl, bc
	dec hl
	cp [hl]
	jr z, .asm_5538
	ld hl, $d048
	add hl, de
	cp [hl]
	jr z, .asm_5538
	jr .asm_5545
.asm_5538
	inc a
	ld hl, wca18
	cp [hl]
	jr c, .asm_5527
	jr z, .asm_5527
	ld a, $01
	jr .asm_5527
.asm_5545
	ld hl, $d048
	add hl, bc
	ld [hl], a
	inc e
	inc c
	ld a, c
	cp $06
	jp nz, .asm_54de
	ld a, $1b
	ld hl, $6e9a
	call Bank1Farcall
	ret

Func_555b:
	ld c, a
	ld b, $00
	ld d, $00
.asm_5560
	ld a, $07
	ld hl, $d040
	add hl, bc
	cp [hl]
	jr z, .asm_557a
	ld hl, $d047
	add hl, bc
	cp [hl]
	jr z, .asm_557a
	inc l
	cp [hl]
	jr z, .asm_557a
	inc l
	cp [hl]
	jr z, .asm_557a
	and a
	ret
.asm_557a
	inc d
	ld a, d
	cp $06
	jr z, .asm_558a
	inc c
	ld a, c
	cp $06
	jr c, .asm_5560
	ld c, $00
	jr .asm_5560
.asm_558a
	scf
	ret

Func_558c:
	push bc
	push de
	ld a, [wca18]
	cp $06
	jr z, .asm_559a
	call Random_0to4
	jr .asm_559d
.asm_559a
	call Random_0to5
.asm_559d
	inc a
	ldh [hff8a], a
	ld hl, wBlocks
	add hl, de
	ld c, e
	ld b, d
	inc hl
	ld d, [hl]
	ldh a, [hff8a]
	cp d
	jr nz, .asm_55b5
	ld hl, wca18
	cp [hl]
	jr c, .asm_55b4
	xor a
.asm_55b4
	inc a
.asm_55b5
	ldh [hff8b], a
.asm_55b7
	ld a, c
	add $08
	ld c, a
	cp $48
	jr c, .asm_55c3
	ldh a, [hff8b]
	jr .asm_55e0
.asm_55c3
	ld hl, w6d058
	add hl, bc
	ld a, [hl]
	and $1f
	jr nz, .asm_55b7
	ld hl, wBlocks
	add hl, bc
	ld a, [hl]
	and a
	jr z, .asm_55b7
	cp $07
	jr z, .asm_55b7
	ld e, a
	ld a, [wc8a7]
	and a
	jr nz, .asm_55e3
	ld a, e
.asm_55e0
	pop de
	pop bc
	ret
.asm_55e3
	ldh a, [hff8a]
.asm_55e5
	cp d
	jr z, .asm_55ee
	inc hl
	cp e
	jr z, .asm_55ee
	jr .asm_55e0
.asm_55ee
	inc a
	ld hl, wca18
	cp [hl]
	jr c, .asm_55e5
	jr z, .asm_55e5
	ld a, $01
	jr .asm_55e5

Func_55fb:
	push bc
	push de
	ld c, a
	ld b, $00
	sub $08
	ld e, a
	ld d, $00
	ld hl, w6d0b0
	add hl, de
	ld a, [hli]
	and $20
	jr nz, .asm_5617
	ld hl, w6d100
	add hl, de
	ld a, [hli]
	or [hl]
	jp nz, .set_carry
.asm_5617
	ld hl, wBlocks
	add hl, bc
	ld a, [hli]
	or [hl]
	jp z, .set_carry
	ld hl, w6d100
	add hl, bc
	ld a, [hli]
	or [hl]
	jp nz, .set_carry
	ld hl, w6d0b0
	add hl, bc
	ld a, [hli]
	and $88
	jp nz, .set_carry
	ld a, [hl]
	and $88
	jp nz, .set_carry
	ld hl, w6d058
	add hl, bc
	ld a, [hli]
	and $03
	jp nz, .set_carry
	ld a, [hl]
	and $03
	jp nz, .set_carry
	pop de
	pop bc
	and a
	ret

.set_carry
	pop de
	pop bc
	scf
	ret

Func_5651:
	ld a, c
	and $f8
	sra a
	sra a
	ld e, a
	ld d, $00
	ld a, c
	and $07
	add a
	ld c, a
	ld b, $00
	ld hl, $566e
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl
; 0x566e

SECTION "Bank 1@567a", ROMX[$567a], BANK[$1]

Func_567a:
	ld a, c
	and $f8
	sra a
	sra a
	ld e, a
	ld d, $00
	ld a, c
	and $07
	add a
	ld c, a
	ld b, $00
	ld hl, $5697
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl
; 0x5697

SECTION "Bank 1@6777", ROMX[$6777], BANK[$1]

Func_6777:
	ld a, [wSpeedLevel]
	ld l, a
	cp 50
	jr c, .asm_6787
	ld a, [wcebc]
	and a
	jr nz, .asm_6787
	ld l, 50
.asm_6787
	ld a, l
	add a ; *2
	ld hl, w6d9a0
	add l
	ld l, a
	ld a, h
	adc 0
	ld h, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ret
; 0x6796

SECTION "Bank 1@67b8", ROMX[$67b8], BANK[$1]

Func_67b8:
	ld a, c
	cp $36
	jr c, .asm_67bf
	ld a, $35
.asm_67bf
	add a
	ld hl, .Scores
	add l
	ld l, a
	ld a, h
	adc $00
	ld h, a
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ret

.Scores:
	dw     0
	dw     0
	dw     0
	dw     0
	dw    30
	dw    60
	dw   150
	dw   190
	dw   230
	dw   270
	dw   310
	dw   400
	dw   450
	dw   500
	dw   550
	dw   700
	dw   760
	dw   850
	dw   970
	dw  1120
	dw  1300
	dw  1510
	dw  1750
	dw  2020
	dw  2320
	dw  2650
	dw 15000
	dw 15570
	dw 16170
	dw 16800
	dw 17460
	dw 18150
	dw 18870
	dw 19620
	dw 20400
	dw 21200
	dw 22000
	dw 22800
	dw 23600
	dw 24400
	dw 25200
	dw 26000
	dw 26800
	dw 27600
	dw 28400
	dw 29200
	dw 30000
	dw 30800
	dw 31600
	dw 32400
	dw 33200
	dw 34000
	dw 34800
	dw 35600
	dw 36400

Func_683b:
	ld a, c
	cp $1e
	jr c, .asm_6842
	ld a, $1d
.asm_6842
	add a ; *2
	ld hl, .Scores
	add l
	ld l, a
	ld a, h
	adc 0
	ld h, a
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ret

.Scores:
	dw    0
	dw   50
	dw   80
	dw  150
	dw  300
	dw  400
	dw  500
	dw  700
	dw  900
	dw 1100
	dw 1300
	dw 1500
	dw 1800
	dw 2100
	dw 2100
	dw 2100
	dw 2100
	dw 2100
	dw 2100
	dw 2100
	dw 2100
	dw 2100
	dw 2100
	dw 2100
	dw 2100
	dw 2100
	dw 2100
	dw 2100
	dw 2100
	dw 2100

Func_688c:
	push hl
	push bc
	ld a, [wc889]
	cp $36
	jr c, .asm_6897
	ld a, $36
.asm_6897
	add a
	ld c, a
	ld b, $00
	ld a, [wc883]
	and a
	jr nz, .asm_68a6
	ld hl, w6db30
	jr .asm_68a9
.asm_68a6
	ld hl, w6db9c
.asm_68a9
	add hl, bc
	ld a, [hli]
	ld c, a
	ld b, [hl]
	ld hl, wc87c
	ld a, [hli]
	sub c
	ld a, [hld]
	sbc b
	jr c, .asm_68ba
	pop bc
	pop hl
	scf
	ret
.asm_68ba
	ld a, c
	ld [hli], a
	ld [hl], b
	pop bc
	pop hl
	and a
	ret

Func_68c1:
	push hl
	push bc
	ld a, [wc88a]
	cp $14
	jr c, .asm_68cc
	ld a, $13
.asm_68cc
	add a
	ld c, a
	ld b, $00
	ld a, [wc883]
	and a
	jr nz, .asm_68db
	ld hl, w6dc08
	jr .asm_68de
.asm_68db
	ld hl, w6dc30
.asm_68de
	add hl, bc
	ld a, [hli]
	ld c, a
	ld b, [hl]
	ld hl, wc87c
	ld a, [hli]
	sub c
	ld a, [hld]
	sbc b
	jr c, .asm_68ef
	pop bc
	pop hl
	scf
	ret
.asm_68ef
	ld a, c
	ld [hli], a
	ld [hl], b
	pop bc
	pop hl
	and a
	ret

; adds value in bc to current score
; respects the score limit setting
AddToScore:
	ld a, [wGameLevel]
	cp GAMELEVEL_SLOW
	jr z, .cap_9999
	ld a, [wScoreLimitSetting]
	and a
	jr z, .cap_99999
; cap 999'999
	ld de, 999_999 & 0xffff
	push de
	ld de, 999_999 >> 16
	push de
	jr .add_to_score
.cap_99999
	ld de, 99_999 & 0xffff
	push de
	ld de, 99_999 >> 16
	push de
	jr .add_to_score
.cap_9999
	ld de, 9_999
	push de
	ld de, 9_999 >> 16
	push de
.add_to_score
	; score += bc
	ld hl, wScore
	ld a, [hl]
	add c
	ld [hli], a
	ld a, [hl]
	adc b
	ld [hli], a
	ld a, [hl]
	adc 0
	ld [hld], a
	dec hl
	pop bc
	pop de

	; cap score to max value
	ld a, [hli]
	sub e
	ld a, [hli]
	sbc d
	ld a, [hl]
	sbc c
	ret c
	ld a, c
	ld [hld], a
	ld a, d
	ld [hld], a
	ld [hl], e
	ret

Func_693c:
	push hl
	push bc
	ld a, [wc889]
	ld hl, wcac9
	cp [hl]
	jr c, .asm_6948
	ld [hl], a
.asm_6948
	cp $36
	jr c, .asm_694e
	ld a, $36
.asm_694e
	sub $04
	add a
	ld c, a
	ld b, $00
	ld hl, wca29
	add hl, bc
	ld a, [hl]
	add $01
	ld [hli], a
	ld a, [hl]
	adc $00
	ld [hl], a
	jr nc, .asm_6966
	ld a, $ff
	ld [hld], a
	ld [hl], a
.asm_6966
	pop bc
	pop hl
	ret

Func_6969:
	push hl
	push bc
	ld a, [wc88a]
	ld hl, wcaca
	cp [hl]
	jr c, .asm_6975
	ld [hl], a
.asm_6975
	dec a
	cp $1d
	jr c, .asm_697c
	ld a, $1c
.asm_697c
	add a
	ld c, a
	ld b, $00
	ld hl, wca8f
	add hl, bc
	ld a, [hl]
	add $01
	ld [hli], a
	ld a, [hl]
	adc $00
	ld [hld], a
	jr nc, .asm_6992
	ld a, $ff
	ld [hli], a
	ld [hld], a
.asm_6992
	pop bc
	pop hl
	ret

Func_6995:
	push hl
	ld hl, $cacb
	ld a, [hl]
	add $01
	ld [hli], a
	ld a, [hl]
	adc $00
	ld [hli], a
	ld a, [hl]
	adc $00
	ld [hli], a
	ld a, [hl]
	adc $00
	ld [hl], a
	jr nc, .asm_69b1
	ld a, $ff
	ld [hld], a
	ld [hld], a
	ld [hld], a
	ld [hl], a
.asm_69b1
	pop hl
	ret

Func_69b3:
	ld a, [wc8fa]
	ld c, a
	ld a, [wc8fb]
	cp c
	ret z
	ld b, $00
	ld hl, w6d400
	add hl, bc
	ld a, [hl]
	swap a
	and $0f
	jr z, .asm_69cc
	dec a
	jr nz, .asm_69db
.asm_69cc
	call Func_7313
	and a
	ret nz
	ld a, [wc87b]
	and a
	ret nz
	ld a, [wc87e]
	and a
	ret nz
.asm_69db
	ld hl, wBlocks
	REPT BOARD_WIDTH
		ld a, [hli]
		and a
		ret nz
	ENDR

	ld hl, wc8fa
	inc [hl]

	ld hl, w6d400
	add hl, bc
	ld a, [hl]
	and $f0
	jr nz, .asm_6a12
	ld a, [hl]
	dec a
	jp z, .asm_6ab6
	dec a
	jp z, .asm_6b04
	dec a
	jp z, .asm_6b4a
	dec a
	jp z, .asm_6b81
	dec a
	jp .asm_6a7c
.asm_6a12
	ld a, [hl]
	ld hl, w6d1a0
	REPT BOARD_WIDTH - 1
		ld [hli], a
	ENDR
	ld [hl], a

	ld hl, wc8fc
	ld a, [hl]
	ld e, a
	add $06
	ld [hl], a
	ld d, $00
	ld bc, wBlocks
	REPT BOARD_WIDTH
		ld hl, $d300
		add hl, de
		ld a, [hl]
		or $c0
		ld [bc], a
		inc c
		inc e
	ENDR

	ld hl, w6d058
	ld a, $09
	REPT BOARD_WIDTH - 1
		ld [hli], a
	ENDR
	ld [hl], a

	ld hl, w6d0b0
	ld a, $04
	REPT BOARD_WIDTH - 1
		ld [hli], a
	ENDR
	ld [hl], a

	ret

.asm_6a7c
	ld hl, wc901
	ld a, [hl]
	inc [hl]
	and $01
	jr nz, .asm_6a8a
	ld de, NULL
	jr .asm_6a8d
.asm_6a8a
	ld de, $3
.asm_6a8d
	ld hl, wBlocks
	add hl, de
	ld a, BLOCK_0E
	ld [hli], a
	ld a, BLOCK_0F
	ld [hli], a
	ld a, BLOCK_10
	ld [hl], a

	ld hl, w6d058
	add hl, de
	ld a, $09
	ld [hli], a
	ld [hli], a
	ld [hl], a

	ld hl, w6d0b0
	add hl, de
	ld a, $04
	ld [hli], a
	ld [hli], a
	ld [hl], a

	ld hl, w6d1a0
	add hl, de
	ld a, $11
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ret

.asm_6ab6
	ld hl, wc902
	ld a, [hl]
	dec a
	jr z, .asm_6ac5
	dec a
	jr z, .asm_6aca
	ld de, NULL
	jr .asm_6acd
.asm_6ac5
	ld de, $1
	jr .asm_6acd
.asm_6aca
	ld de, $2
.asm_6acd
	ld a, [hl]
	inc a
	cp $03
	jr c, .asm_6ad4
	xor a
.asm_6ad4
	ld [hl], a
	ld hl, wBlocks
	add hl, de
	ld a, BLOCK_0E | $40
	ld [hli], a
	ld a, BLOCK_17 | $40
	ld [hli], a
	ld a, BLOCK_18 | $40
	ld [hli], a
	ld a, BLOCK_10 | $40
	ld [hl], a

	ld hl, w6d058
	add hl, de
	ld a, $09
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a

	ld hl, w6d0b0
	add hl, de
	ld a, $04
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a

	ld hl, w6d1a0
	add hl, de
	ld a, $11
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ret

.asm_6b04
	ld hl, wc903
	ld a, [hl]
	inc [hl]
	and $01
	jr nz, .asm_6b12
	ld de, NULL
	jr .asm_6b15
.asm_6b12
	ld de, $1
.asm_6b15
	ld hl, wBlocks
	add hl, de
	ld a, BLOCK_0E | $80
	ld [hli], a
	ld a, BLOCK_1D | $80
	ld [hli], a
	ld a, BLOCK_0F | $80
	ld [hli], a
	ld a, BLOCK_1D | $80
	ld [hli], a
	ld a, BLOCK_10 | $80
	ld [hl], a

	ld hl, w6d058
	add hl, de
	ld a, $09
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a

	ld hl, w6d0b0
	add hl, de
	ld a, $04
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a

	ld hl, w6d1a0
	add hl, de
	ld a, $11
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ret

.asm_6b4a
	ld hl, wBlocks
	ld a, BLOCK_0E | $c0
	ld [hli], a
	ld a, BLOCK_1D | $c0
	ld [hli], a
	ld a, BLOCK_17 | $c0
	ld [hli], a
	ld a, BLOCK_18 | $c0
	ld [hli], a
	ld a, BLOCK_1D | $c0
	ld [hli], a
	ld a, BLOCK_10 | $c0
	ld [hl], a

	ld hl, w6d058
	ld a, $09
	REPT BOARD_WIDTH - 1
		ld [hli], a
	ENDR
	ld [hl], a

	ld hl, w6d0b0
	ld a, $04
	REPT BOARD_WIDTH - 1
		ld [hli], a
	ENDR
	ld [hl], a

	ld hl, w6d1a0
	ld a, $11
	REPT BOARD_WIDTH - 1
		ld [hli], a
	ENDR
	ld [hl], a

	ret

.asm_6b81
	ld hl, wBlocks
	ld a, BLOCK_38 | $c0
	ld [hli], a
	ld a, BLOCK_39 | $c0
	ld [hli], a
	ld a, BLOCK_39 | $c0
	ld [hli], a
	ld a, BLOCK_39 | $c0
	ld [hli], a
	ld a, BLOCK_39 | $c0
	ld [hli], a
	ld a, BLOCK_3A | $c0
	ld [hl], a

	ld hl, w6d058
	ld a, $0a
	REPT BOARD_WIDTH - 1
		ld [hli], a
	ENDR
	ld [hl], a

	ld hl, w6d0b0
	ld a, $04
	REPT BOARD_WIDTH - 1
		ld [hli], a
	ENDR
	ld [hl], a

	ld hl, w6d1a0
	ld a, $11
	REPT BOARD_WIDTH - 1
		ld [hli], a
	ENDR
	ld [hl], a

	ret

Func_6bb8:
	push bc
	push de
	ld a, [wc8fa]
	ld e, a
	ld d, $00
	ld a, [wc8fb]
	ld c, a
	ld b, $00
	ld a, c
	cp e
	jr c, .asm_6bcc
	ld d, $01
.asm_6bcc
	ldh a, [hff8a]
	bit 7, a
	jr z, .asm_6bd6
	and $7f
	jr .asm_6bd8
.asm_6bd6
	ld a, $01
.asm_6bd8
	add c
	ld c, a
	ld a, b
	adc $00
	ld b, $00
	ld a, e
	sub c
	ld a, d
	sbc b
	jr nc, .asm_6be8
	pop de
	pop bc
	ret
.asm_6be8
	ld a, [wc8fc]
	ld e, a
	ld d, $00
	ld a, [wc8fd]
	ld c, a
	ld b, $00
	ld a, c
	cp e
	jr c, .asm_6bfa
	ld d, $01
.asm_6bfa
	ldh a, [hff8a]
	bit 7, a
	jr z, .asm_6c14
	and $7f
	add a
	ld l, a
	add a
	add l
	ld l, a
	ld a, c
	add l
	ld c, a
	ld a, b
	adc $00
	ld b, a
	ld a, e
	sub c
	ld a, d
	sbc b
	jr c, .asm_6c1c
.asm_6c14
	ld a, BANK(Func_b650)
	ld hl, Func_b650
	call Bank1Farcall
.asm_6c1c
	pop de
	pop bc
	ret

Func_6c1f:
	ld a, [wc8fe]
	ld e, a
	ld a, [wc8ff]
	ld d, a
	cp e
	ret z
	ld b, $00
	ld c, e
.asm_6c2c
	ld hl, wc900
	ld a, c
	cp [hl]
	jr z, .asm_6c3d
	ld hl, w6d580
	add hl, bc
	ld a, [hl]
	and a
	jr z, .asm_6c3d
	dec a
	ld [hl], a
.asm_6c3d
	ld a, c
	add $01
	and $7f
	ld c, a
	cp d
	jr nz, .asm_6c2c
	ld b, $00
	ld c, e
.asm_6c49
	ld hl, w6d580
	add hl, bc
	ld a, [hl]
	and a
	jr nz, .asm_6c8b
	ld hl, wc8fe
	ld a, [hl]
	add $01
	and $7f
	ld [hl], a
	ld hl, $d500
	add hl, bc
	ld a, [hl]
	and $c0
	cp $80
	jr nz, .asm_6c7c
	ld a, [wceb7]
	and a
	jr nz, .asm_6c6f
	ld e, $09
	jr .asm_6c71
.asm_6c6f
	ld e, $0f
.asm_6c71
	ld a, [hl]
	and $3f
	cp e
	jr c, .asm_6c7c
	ld a, e
	or $80
	jr .asm_6c7d
.asm_6c7c
	ld a, [hl]
.asm_6c7d
	ldh [hff8a], a
	call Func_6bb8
	ld a, c
	add $01
	and $7f
	ld c, a
	cp d
	jr nz, .asm_6c49
.asm_6c8b
	ret

Func_6c8c:
	ldh a, [hff8a]
	and $c0
	sub $40
	jr z, .asm_6c9a
	sub $40
	jr z, .asm_6cac
	jr .asm_6cb8
.asm_6c9a
	ldh a, [hff8a]
	and $3f
	sub $02
	ld b, a
.asm_6ca1
	ld a, $04
	ldh [hff8b], a
	call Func_6db8
	dec b
	jr nz, .asm_6ca1
	ret
.asm_6cac
	ldh a, [hff8a]
	and $3f
	or $80
	ldh [hff8b], a
	call Func_6db8
	ret
.asm_6cb8
	ldh a, [hff8a]
	add a
	add a
	ld c, a
	ld b, $00
	ld hl, $6cdc
	add hl, bc
	ld b, $00
.asm_6cc5
	ld c, $00
.asm_6cc7
	ld a, c
	cp [hl]
	jr nc, .asm_6cd4
	inc c
	ld a, b
	ldh [hff8b], a
	call Func_6db8
	jr .asm_6cc7
.asm_6cd4
	inc hl
	inc b
	ld a, b
	cp $04
	jr nz, .asm_6cc5
	ret
; 0x6cdc

SECTION "Bank 1@6db8", ROMX[$6db8], BANK[$1]

Func_6db8:
	push bc
	push hl
	ldh a, [hff8b]
	bit 7, a
	jr z, .asm_6dd0
	ld hl, wc900
	ld a, [hl]
	inc a
	jr z, .asm_6dcc
	ld c, [hl]
	ld b, $00
	jr .asm_6ddf
.asm_6dcc
	ld a, [wc8ff]
	ld [hl], a
.asm_6dd0
	ld hl, wc8ff
	ld c, [hl]
	ld b, $00
	ld hl, wc8ff
	ld a, [hl]
	add $01
	and $7f
	ld [hl], a
.asm_6ddf
	ldh a, [hff8b]
	ld hl, $d500
	add hl, bc
	ld [hl], a
	ld hl, w6d580
	add hl, bc
	ld a, $3c
	ld [hl], a
	pop hl
	pop bc
	ret

Func_6df0:
	push bc
	push de
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $01
	sramswitch
	call Func_6e88
	ld e, l
	ld d, h
	ld hl, wBlocks
	ld bc, BOARD_VIRTUAL_AREA
	call CopyHLtoDE
	call Func_6ea1
	ld e, l
	ld d, h
	ld hl, w6d0b0
	ld bc, BOARD_VIRTUAL_AREA
	call CopyHLtoDE
	call Func_6eba
	ld e, l
	ld d, h
	ld hl, w6d058
	ld bc, BOARD_VIRTUAL_AREA
	call CopyHLtoDE
	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	pop de
	pop bc
	ret
; 0x6e3f

SECTION "Bank 1@6e88", ROMX[$6e88], BANK[$1]

Func_6e88:
	ld a, [wc8da]
	add a
	ld c, a
	ld b, $00
	ld hl, $6e97
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ret
; 0x6e97

SECTION "Bank 1@6ea1", ROMX[$6ea1], BANK[$1]

Func_6ea1:
	ld a, [wc8da]
	add a
	ld c, a
	ld b, $00
	ld hl, $6eb0
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ret
; 0x6eb0

SECTION "Bank 1@6eba", ROMX[$6eba], BANK[$1]

Func_6eba:
	ld a, [wc8da]
	add a
	ld c, a
	ld b, $00
	ld hl, $6ec9
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ret
; 0x6ec9

SECTION "Bank 1@6ed3", ROMX[$6ed3], BANK[$1]

Func_6ed3:
	ld hl, wc8a4
	ld a, [hl]
	and a
	jr z, .asm_6edc
	dec [hl]
	ret
.asm_6edc
	ld hl, wc8a3
	ld a, [wc8a2]
	cp [hl]
	jr z, .asm_6eec
	ld b, a
	farcall Func_c0307
.asm_6eec
	ld a, [wc8a2]
	ld [wc8a3], a
	ret

Func_6ef3:
	ld a, [wGameMode]
	add a
	ld c, a
	ld b, $00
	ld hl, $6f02
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl
; 0x6f02

SECTION "Bank 1@7313", ROMX[$7313], BANK[$1]

Func_7313:
	ld hl, w6d0b0

	REPT BOARD_HEIGHT
		REPT BOARD_WIDTH
			ld a, [hli]
			and a
			ret nz
		ENDR
		inc l
		inc l
	ENDR

	and a
	ret

Func_73cc:
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	inc l
	inc l
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	inc l
	inc l
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	inc l
	inc l
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	inc l
	inc l
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	inc l
	inc l
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	inc l
	inc l
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	inc l
	inc l
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	inc l
	inc l
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	ld a, [hli]
	and b
	ret nz
	inc l
	inc l
	and a
	ret
; 0x7482
