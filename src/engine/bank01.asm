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
	ld a, $1d
	ld hl, $6ff5
	call Bank1Farcall
	ld a, [wcd6f]
	and a
	jr z, .asm_4037
	ld a, [wc893]
	and a
	jp z, .asm_40c2
	ld a, $1d
	ld hl, $79a1
	call Bank1Farcall
	jp .asm_40c2
.asm_4037
	ld a, $1e
	ld hl, $4000
	call Bank1Farcall
	call Func_1ff0
	call Func_6c1f
	call Func_69b3
	call Func_427a
	call Func_43e0
	call Func_46c6
	call Func_4cf7
	call Func_4f43
	ld a, $01
	ld hl, $5146
	call Bank1Farcall
	ld a, $02
	ld hl, $5c22
	call Bank1Farcall
	ld a, $02
	ld hl, $408b
	call Bank1Farcall
	ld a, $02
	ld hl, $4d59
	call Bank1Farcall
	ld a, $02
	ld hl, $5306
	call Bank1Farcall
	call Func_4763
	call Func_6ed3
	call Func_6ef3
	ld a, $1b
	ld hl, $4085
	call Bank1Farcall
	ld a, $10
	ld hl, $4004
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
	ldh [$ffbb], a
	ret
.asm_40ea
	ld a, GAMESTATE_07
	ldh [hGameState], a
	xor a
	ldh [$ffbb], a
	ret
.asm_40f2
	ld a, GAMESTATE_08
	ldh [hGameState], a
	xor a
	ldh [$ffbb], a
	ret
.asm_40fa
	ld a, [wc886]
	add $0a
	ldh [hGameState], a
	xor a
	ldh [$ffbb], a
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
	ld hl, $d000
	ld a, [hli]
	or [hl]
	inc hl
	or [hl]
	inc hl
	or [hl]
	inc hl
	or [hl]
	inc hl
	or [hl]
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
	ld hl, $d0b0
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
	ld hl, wcad0
	ld a, [hl]
	sub c
	ld [hli], a
	ld a, [hl]
	sbc b
	ld [hld], a
	ret nc
	ld d, $00
.asm_431c
	inc d
	ld a, $00
	add [hl]
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
	ld hl, wc866
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
	ld bc, $1
	call Func_68f6
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
	ld hl, wc866
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
	jp z, .asm_4401
	call Func_1d25
	jr z, .asm_43fc
	cp $0e
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
	ld a, [wc865]
	ld d, a
	ld a, [wc866]
	ld e, a
	xor a
	ldh [hff8a], a
	ld a, [wGameMode]
	cp $0e
	jp z, .asm_44a0
	cp GAMEMODE_PUZZLE
	jr z, .asm_447d
	ld hl, wc89d
	ld a, [hl]
	and a
	jr z, .asm_4427
	dec [hl]
	jp .asm_44a0
.asm_4427
	ldh a, [hJoypadDown]
	and PAD_B
	jp z, .asm_44a0
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
	jr nz, .asm_44a0
	ld hl, $d000
	ld a, [hli]
	or [hl]
	inc hl
	or [hl]
	inc hl
	or [hl]
	inc hl
	or [hl]
	inc hl
	or [hl]
	jr nz, .asm_44a0
	ld a, [wceba]
	and a
	jr nz, .asm_4475
	call Func_7313
	and a
	jr nz, .asm_44a0
.asm_4475
	ld a, $01
	ld [wc87b], a
	jp .asm_46b9
.asm_447d
	ldh a, [hJoypadPressed]
	and PAD_B
	jp z, .asm_44a0
	ld hl, wc8dc
	ld a, [wc8da]
	cp [hl]
	jr z, .asm_44a0
	ld a, [wc7ce]
	and a
	jr nz, .asm_4498
	ld a, $04
	ld [wc7cb], a
.asm_4498
	ld a, $04
	ld [wc887], a
	jp .asm_46b9
.asm_44a0
	ldh a, [hJoypadDown]
	and PAD_LEFT
	jr z, .asm_44de
	ld a, b
	dec a
	and $07
	cp $07
	jr z, .asm_44de
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
	add $f0
	ld d, a
	ld a, [hl]
	and $3f
	cp $0c
	jr nc, .asm_44db
	ld hl, hff8a
	inc [hl]
.asm_44db
	jp .asm_45d0
.asm_44de
	ldh a, [hJoypadDown]
	and PAD_RIGHT
	jr z, .asm_451f
	ld a, b
	inc a
	and $07
	cp $05
	jr z, .asm_451f
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
	add $10
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
.asm_451f
	ldh a, [hJoypadDown]
	and PAD_UP
	jr z, .asm_457a
	ld a, [wGameMode]
	cp $0e
	jr z, .asm_453f
	cp $03
	jr z, .asm_453f
	ld a, [wc869]
	and a
	jr z, .asm_453f
	ld a, b
	and $f8
	cp $08
	jr z, .asm_457a
	jr .asm_4544
.asm_453f
	ld a, b
	and $f8
	jr z, .asm_457a
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
	add $f0
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
.asm_457a
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
	add $10
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
	jr z, .asm_45e0
	ld a, [wc7ce]
	and a
	jr nz, .asm_45e0
	ld a, $02
	ld [wc7cb], a
.asm_45e0
	ldh a, [hJoypadPressed]
	and PAD_A
	jp z, .asm_4644
	ld a, [wcad2]
	and a
	jp nz, .asm_4644
	ld a, [wc881]
	and $3f
	cp $0b
	jr c, .asm_4611
	ld a, [wc864]
	ld b, a
	ld a, [wc865]
	ld d, a
	ld a, [wc866]
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
	jr c, .asm_4644
	ld a, [wGameMode]
	cp GAMEMODE_PUZZLE
	jr z, .asm_4624
	cp $0e
	jr z, .asm_462c
	jr .asm_4631
.asm_4624
	call Func_43c4
	and a
	jr z, .asm_4644
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
.asm_4644
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
	ld a, [wcdc6]
	and a
	jr nz, .asm_4685
	ld a, [wcdc7]
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
	ld [wc865], a
	ld a, e
	ld [wc866], a
	ret

Func_46c6:
	ld a, [wc8da]
	and a
	jr z, .asm_46f3
	ldh a, [hSCY]
	ld b, a
	ld a, [wc866]
	sub b
	ld c, a
	ldh a, [hSCX]
	ld b, a
	ld a, [wc865]
	sub b
	ld b, a
	ld hl, wc867
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
.asm_46f3
	ldh a, [hSCY]
	ld b, a
	ld a, [wc866]
	sub b
	ld c, a
	ldh a, [hSCX]
	ld b, a
	ld a, [wc865]
	sub b
	ld b, a
	ld hl, wc867
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
	ld hl, $d0b0
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
	ld hl, $d0b0
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
	call Func_1d25
	jr z, .asm_4c94
	ld de, $a8
	ld bc, $1020
	ld a, $ff
	ld [wcae8], a
	ld a, $02
	ld hl, $4ce2
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
	ld hl, $4d07
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl
; 0x4d06

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
	ld a, $1c
	ld hl, $4034
	call Bank1Farcall
	ld a, $1d
	ld hl, $4d05
	call Bank1Farcall
	ld a, $1d
	ld hl, $5a5d
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
	call Func_68f6
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
	ld a, $02
	ld hl, $4ce2
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
	ld a, $02
	ld hl, $4ce2
	call Bank1Farcall
	call Func_1d25
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
	call Func_68f6
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
	ld a, $02
	ld hl, $4ce2
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
	ld a, $02
	ld hl, $4ce2
	call Bank1Farcall
	call Func_1d25
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
	ld a, $02
	ld hl, $4ce2
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
	call Func_1d25
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
; 0x5146

SECTION "Bank 1@5475", ROMX[$5475], BANK[$1]

Func_5475:
	ld hl, $d048
	xor a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
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
	call Func_1fc8
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
	call Func_1fc8
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
	call Func_1fa7
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
	call Func_1fa7
	jr .asm_54f7
.asm_54f4
	call Func_1fc8
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
; 0x558c

SECTION "Bank 1@55fb", ROMX[$55fb], BANK[$1]

Func_55fb:
	push bc
	push de
	ld c, a
	ld b, $00
	sub $08
	ld e, a
	ld d, $00
	ld hl, $d0b0
	add hl, de
	ld a, [hli]
	and $20
	jr nz, .asm_5617
	ld hl, $d100
	add hl, de
	ld a, [hli]
	or [hl]
	jp nz, .set_carry
.asm_5617
	ld hl, $d000
	add hl, bc
	ld a, [hli]
	or [hl]
	jp z, .set_carry
	ld hl, $d100
	add hl, bc
	ld a, [hli]
	or [hl]
	jp nz, .set_carry
	ld hl, $d0b0
	add hl, bc
	ld a, [hli]
	and $88
	jp nz, .set_carry
	ld a, [hl]
	and $88
	jp nz, .set_carry
	ld hl, $d058
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
; 0x5651

SECTION "Bank 1@6777", ROMX[$6777], BANK[$1]

Func_6777:
	ld a, [wSpeedLevel]
	ld l, a
	cp $32
	jr c, .asm_6787
	ld a, [wcebc]
	and a
	jr nz, .asm_6787
	ld l, $32
.asm_6787
	ld a, l
	add a
	ld hl, $d9a0
	add l
	ld l, a
	ld a, h
	adc $00
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
	ld hl, $67cd
	add l
	ld l, a
	ld a, h
	adc $00
	ld h, a
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ret
; 0x67cd

SECTION "Bank 1@683b", ROMX[$683b], BANK[$1]

Func_683b:
	ld a, c
	cp $1e
	jr c, .asm_6842
	ld a, $1d
.asm_6842
	add a
	ld hl, $6850
	add l
	ld l, a
	ld a, h
	adc $00
	ld h, a
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ret
; 0x6850

SECTION "Bank 1@688c", ROMX[$688c], BANK[$1]

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
	ld hl, $db30
	jr .asm_68a9
.asm_68a6
	ld hl, $db9c
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
	ld hl, $dc08
	jr .asm_68de
.asm_68db
	ld hl, $dc30
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

Func_68f6:
	ld a, [wGameLevel]
	cp GAMELEVEL_SLOW
	jr z, .asm_6917
	ld a, [wPdPScoreLimitSetting]
	and a
	jr z, .asm_690d
	ld de, $423f
	push de
	ld de, $f
	push de
	jr .asm_691f
.asm_690d
	ld de, $869f
	push de
	ld de, $1
	push de
	jr .asm_691f
.asm_6917
	ld de, $270f
	push de
	ld de, NULL
	push de
.asm_691f
	ld hl, wc842
	ld a, [hl]
	add c
	ld [hli], a
	ld a, [hl]
	adc b
	ld [hli], a
	ld a, [hl]
	adc $00
	ld [hld], a
	dec hl
	pop bc
	pop de
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
; 0x6995

SECTION "Bank 1@69b3", ROMX[$69b3], BANK[$1]

Func_69b3:
	ld a, [wc8fa]
	ld c, a
	ld a, [wc8fb]
	cp c
	ret z
	ld b, $00
	ld hl, $d400
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
	ld hl, $d000
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
	ld hl, wc8fa
	inc [hl]
	ld hl, $d400
	add hl, bc
	ld a, [hl]
	and $f0
	jr nz, .asm_6a12
	ld a, [hl]
	dec a
	jp z, Func_6ab6
	dec a
	jp z, Func_6b04
	dec a
	jp z, Func_6b4a
	dec a
	jp z, Func_6b81
	dec a
	jp Func_6a7c
.asm_6a12
	ld a, [hl]
	ld hl, $d1a0
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld hl, wc8fc
	ld a, [hl]
	ld e, a
	add $06
	ld [hl], a
	ld d, $00
	ld bc, $d000
	ld hl, $d300
	add hl, de
	ld a, [hl]
	or $c0
	ld [bc], a
	inc c
	inc e
	ld hl, $d300
	add hl, de
	ld a, [hl]
	or $c0
	ld [bc], a
	inc c
	inc e
	ld hl, $d300
	add hl, de
	ld a, [hl]
	or $c0
	ld [bc], a
	inc c
	inc e
	ld hl, $d300
	add hl, de
	ld a, [hl]
	or $c0
	ld [bc], a
	inc c
	inc e
	ld hl, $d300
	add hl, de
	ld a, [hl]
	or $c0
	ld [bc], a
	inc c
	inc e
	ld hl, $d300
	add hl, de
	ld a, [hl]
	or $c0
	ld [bc], a
	inc c
	inc e
	ld hl, $d058
	ld a, $09
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld hl, $d0b0
	ld a, $04
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ret

Func_6a7c:
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
	ld hl, $d000
	add hl, de
	ld a, $0e
	ld [hli], a
	ld a, $0f
	ld [hli], a
	ld a, $10
	ld [hl], a
	ld hl, $d058
	add hl, de
	ld a, $09
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld hl, $d0b0
	add hl, de
	ld a, $04
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld hl, $d1a0
	add hl, de
	ld a, $11
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ret

Func_6ab6:
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
	ld hl, $d000
	add hl, de
	ld a, $4e
	ld [hli], a
	ld a, $57
	ld [hli], a
	ld a, $58
	ld [hli], a
	ld a, $50
	ld [hl], a
	ld hl, $d058
	add hl, de
	ld a, $09
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld hl, $d0b0
	add hl, de
	ld a, $04
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld hl, $d1a0
	add hl, de
	ld a, $11
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ret

Func_6b04:
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
	ld hl, $d000
	add hl, de
	ld a, $8e
	ld [hli], a
	ld a, $9d
	ld [hli], a
	ld a, $8f
	ld [hli], a
	ld a, $9d
	ld [hli], a
	ld a, $90
	ld [hl], a
	ld hl, $d058
	add hl, de
	ld a, $09
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld hl, $d0b0
	add hl, de
	ld a, $04
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld hl, $d1a0
	add hl, de
	ld a, $11
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ret

Func_6b4a:
	ld hl, $d000
	ld a, $ce
	ld [hli], a
	ld a, $dd
	ld [hli], a
	ld a, $d7
	ld [hli], a
	ld a, $d8
	ld [hli], a
	ld a, $dd
	ld [hli], a
	ld a, $d0
	ld [hl], a
	ld hl, $d058
	ld a, $09
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld hl, $d0b0
	ld a, $04
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld hl, $d1a0
	ld a, $11
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ret

Func_6b81:
	ld hl, $d000
	ld a, $f8
	ld [hli], a
	ld a, $f9
	ld [hli], a
	ld a, $f9
	ld [hli], a
	ld a, $f9
	ld [hli], a
	ld a, $f9
	ld [hli], a
	ld a, $fa
	ld [hl], a
	ld hl, $d058
	ld a, $0a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld hl, $d0b0
	ld a, $04
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld hl, $d1a0
	ld a, $11
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
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
	ld a, $02
	ld hl, $7650
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
	ld hl, $d580
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
	ld hl, $d580
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
; 0x6c8c

SECTION "Bank 1@6df0", ROMX[$6df0], BANK[$1]

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
	ld hl, $d000
	ld bc, $50
	call CopyHLtoDE
	call Func_6ea1
	ld e, l
	ld d, h
	ld hl, $d0b0
	ld bc, $50
	call CopyHLtoDE
	call Func_6eba
	ld e, l
	ld d, h
	ld hl, $d058
	ld bc, $50
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
	ld hl, $d0b0
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
	inc l
	inc l
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
	inc l
	inc l
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
	inc l
	inc l
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
	inc l
	inc l
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
	inc l
	inc l
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
	inc l
	inc l
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
	inc l
	inc l
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
	inc l
	inc l
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
	inc l
	inc l
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
