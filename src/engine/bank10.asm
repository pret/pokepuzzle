Func_40000:
	xor a
	ld [wc87e], a
	ld a, [wGameMode]
	add a
	ld c, a
	ld b, $00
	ld hl, .PtrTable
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.PtrTable:
	table_width 2
	dw Func_40033 ; GAMEMODE_MARATHON
	dw Func_4004f ; GAMEMODE_TIME_ZONE
	dw Func_4006b ; GAMEMODE_LINE_CLEAR
	dw Func_40087 ; GAMEMODE_PUZZLE
	dw Func_40099 ; GAMEMODE_GARBAGE
	dw Func_400b5 ; GAMEMODE_CHALLENGE
	dw Func_400ca ; GAMEMODE_2P_VS
	dw Func_400e8 ; GAMEMODE_2P_TIME_ZONE
	dw Func_400ca ; GAMEMODE_2P_LINE_CLEAR
	dw NULL ; GAMEMODE_UNK9
	dw NULL ; GAMEMODE_UNKA
	dw NULL ; GAMEMODE_UNKB
	dw NULL ; GAMEMODE_UNKC
	dw Func_4010c ; GAMEMODE_UNKD
	dw Func_40127 ; GAMEMODE_UNKE
	dw Func_40128 ; GAMEMODE_UNKF
	assert_table_length NUM_GAME_MODES

Func_40033:
	ld a, [wc87e]
	and a
	ret nz
	call Func_4014a
	ld hl, wScore
	call Func_4030a
	ld a, [wSpeedLevel]
	ld b, a
	call Func_403aa
	call Func_40586
	call TickBackgroundPattern
	ret

Func_4004f:
	ld a, [wc87e]
	and a
	ret nz
	call Func_4014a
	ld hl, wScore
	call Func_4030a
	ld a, [wSpeedLevel]
	ld b, a
	call Func_403aa
	call Func_40586
	call TickBackgroundPattern
	ret

Func_4006b:
	ld a, [wc87e]
	and a
	ret nz
	call Func_4014a
	ld hl, wScore
	call Func_402b2
	ld a, [wSpeedLevel]
	ld b, a
	call Func_403aa
	call Func_40586
	call TickBackgroundPattern
	ret

Func_40087:
	ld a, [wc87e]
	and a
	ret nz
	call Func_4014a
	call TickBackgroundPattern
	call UpdatePlayerPokemonPortraitAnimations
	call Func_40c87
	ret

Func_40099:
	ld a, [wc87e]
	and a
	ret nz
	call Func_4014a
	ld hl, wScore
	call Func_4030a
	ld a, [wcea9]
	ld b, a
	call Func_403aa
	call Func_40586
	call TickBackgroundPattern
	ret

Func_400b5:
	ld a, [wc87e]
	and a
	ret nz
	call Func_4014a
	call UpdateBothPokemonPortraitAnimations
	call Func_409b2
	call Func_4082c
	call TickBackgroundPattern
	ret

Func_400ca:
	call Func_4051e
	ld a, [wc87e]
	and a
	ret nz
	call Func_4014a
	call UpdateBothPokemonPortraitAnimations
	call Func_40775
	call Func_4082c
	call TickBackgroundPattern
	call Func_41d72
	call Func_42256
	ret

Func_400e8:
	call Func_4051e
	ld a, [wc87e]
	and a
	ret nz
	call Func_4014a
	call UpdateBothPokemonPortraitAnimations
	ld hl, wScore
	call Func_4030a
	ld hl, $c845
	call Func_402b2
	call TickBackgroundPattern
	call Func_41d72
	call Func_42256
	ret

Func_4010c:
	call Func_40e26
	call Func_40e97
	ld a, [wc87e]
	and a
	ret nz
	call Func_4014a
	call UpdatePlayerPokemonPortraitAnimations
	call Func_409b2
	call Func_4082c
	call TickBackgroundPattern
	ret

Func_40127:
	ret

Func_40128:
	call Func_40e6b
	ld a, [wc87e]
	and a
	ret nz
	call Func_411cc
	call Func_4014a
	call TickBackgroundPattern
	call UpdateOpponentPokemonPortraitAnimations
	call Func_40f98
	ret c
	ld hl, wScore
	call Func_40ef9
	call Func_40f51
	ret

Func_4014a:
	ld a, [wGameClockMinutes]
	ld c, a
	ld b, $00
	ld hl, BytesInDecimalRepresentation
	add hl, bc
	ld a, [hl]
	and $f0
	swap a
	ld d, a ; tens
	ld a, [hl]
	and $0f
	ld e, a ; ones
	ld a, [wc86d]
	and a
	jr nz, .asm_40169
	; tens digit == 0?
	ld a, d
	and a
	jr nz, .asm_40169 ; no
	dec d ; -1

.asm_40169
	ld hl, wGameClockMinutesTilemap
	ld a, d
	inc a
	jr z, .asm_40174
	add $1f
	jr .asm_40176
.asm_40174
	ld a, $03
.asm_40176
	ld [hli], a
	ld a, e
	inc a
	jr z, .asm_4017f
	add $1f
	jr .asm_40181
.asm_4017f
	ld a, $03
.asm_40181
	ld [hli], a

	ld a, d
	inc a
	jr z, .asm_4018a
	add $2f
	jr .asm_4018c
.asm_4018a
	ld a, $03
.asm_4018c
	ld [hli], a
	ld a, e
	inc a
	jr z, .asm_40195
	add $2f
	jr .asm_40197
.asm_40195
	ld a, $03
.asm_40197
	ld [hl], a

	ld a, [wGameClockSeconds]
	ld c, a
	ld b, $00
	ld hl, BytesInDecimalRepresentation
	add hl, bc
	ld a, [hl]
	and $f0
	swap a
	ld d, a ; tens
	ld a, [hl]
	and $0f
	ld e, a ; ones
	ld hl, wGameClockSecondsTilemap
	ld a, d
	inc a
	jr z, .asm_401b7
	add $1f
	jr .asm_401b9
.asm_401b7
	ld a, $03
.asm_401b9
	ld [hli], a
	ld a, e
	inc a
	jr z, .asm_401c2
	add $1f
	jr .asm_401c4
.asm_401c2
	ld a, $03
.asm_401c4
	ld [hli], a
	ld a, d
	inc a
	jr z, .asm_401cd
	add $2f
	jr .asm_401cf
.asm_401cd
	ld a, $03
.asm_401cf
	ld [hli], a
	ld a, e
	inc a
	jr z, .asm_401d8
	add $2f
	jr .asm_401da
.asm_401d8
	ld a, $03
.asm_401da
	ld [hl], a
	ret
; 0x401dc

SECTION "Bank 10@42b2", ROMX[$42b2], BANK[$10]

Func_402b2:
	ld a, [hli]
	ldh [hff8a], a
	ld a, [hli]
	ldh [hff8b], a
	ld a, [hl]
	ldh [hff8c], a
	call GetScoreDigits

	ld hl, wSmallScoreTilemap
	ldh a, [hff92]
	inc a
	jr z, .asm_402ca
	add $0f
	jr .asm_402cc
.asm_402ca
	ld a, $03
.asm_402cc
	ld [hli], a
	ldh a, [hff91]
	inc a
	jr z, .asm_402d6
	add $0f
	jr .asm_402d8
.asm_402d6
	ld a, $03
.asm_402d8
	ld [hli], a
	ldh a, [hff90]
	inc a
	jr z, .asm_402e2
	add $0f
	jr .asm_402e4
.asm_402e2
	ld a, $03
.asm_402e4
	ld [hli], a
	ldh a, [hff8f]
	inc a
	jr z, .asm_402ee
	add $0f
	jr .asm_402f0
.asm_402ee
	ld a, $03
.asm_402f0
	ld [hli], a
	ldh a, [hff8e]
	inc a
	jr z, .asm_402fa
	add $0f
	jr .asm_402fc
.asm_402fa
	ld a, $03
.asm_402fc
	ld [hli], a
	ldh a, [hff8d]
	inc a
	jr z, .asm_40306
	add $0f
	jr .asm_40308
.asm_40306
	ld a, $03
.asm_40308
	ld [hli], a
	ret

Func_4030a:
	ld a, [hli]
	ldh [hff8a], a
	ld a, [hli]
	ldh [hff8b], a
	ld a, [hl]
	ldh [hff8c], a
	call GetScoreDigits

	ld hl, wBigScoreTilemap
	ldh a, [hff92]
	inc a
	jr z, .asm_40322
	add $1f
	jr .asm_40324
.asm_40322
	ld a, $03
.asm_40324
	ld [hli], a
	ldh a, [hff91]
	inc a
	jr z, .asm_4032e
	add $1f
	jr .asm_40330
.asm_4032e
	ld a, $03
.asm_40330
	ld [hli], a
	ldh a, [hff90]
	inc a
	jr z, .asm_4033a
	add $1f
	jr .asm_4033c
.asm_4033a
	ld a, $03
.asm_4033c
	ld [hli], a
	ldh a, [hff8f]
	inc a
	jr z, .asm_40346
	add $1f
	jr .asm_40348
.asm_40346
	ld a, $03
.asm_40348
	ld [hli], a
	ldh a, [hff8e]
	inc a
	jr z, .asm_40352
	add $1f
	jr .asm_40354
.asm_40352
	ld a, $03
.asm_40354
	ld [hli], a
	ldh a, [hff8d]
	inc a
	jr z, .asm_4035e
	add $1f
	jr .asm_40360
.asm_4035e
	ld a, $03
.asm_40360
	ld [hli], a
	ldh a, [hff92]
	inc a
	jr z, .asm_4036a
	add $2f
	jr .asm_4036c
.asm_4036a
	ld a, $03
.asm_4036c
	ld [hli], a
	ldh a, [hff91]
	inc a
	jr z, .asm_40376
	add $2f
	jr .asm_40378
.asm_40376
	ld a, $03
.asm_40378
	ld [hli], a
	ldh a, [hff90]
	inc a
	jr z, .asm_40382
	add $2f
	jr .asm_40384
.asm_40382
	ld a, $03
.asm_40384
	ld [hli], a
	ldh a, [hff8f]
	inc a
	jr z, .asm_4038e
	add $2f
	jr .asm_40390
.asm_4038e
	ld a, $03
.asm_40390
	ld [hli], a
	ldh a, [hff8e]
	inc a
	jr z, .asm_4039a
	add $2f
	jr .asm_4039c
.asm_4039a
	ld a, $03
.asm_4039c
	ld [hli], a
	ldh a, [hff8d]
	inc a
	jr z, .asm_403a6
	add $2f
	jr .asm_403a8
.asm_403a6
	ld a, $03
.asm_403a8
	ld [hl], a
	ret

Func_403aa:
	ld a, $03
	ld [wSpeedLevelTilemap], a
	ld [$c926], a
	ld a, $05
	ld [wSpeedLevelAttrmap], a
	ld [$c929], a
	ld [$c92a], a
	ld [$c92c], a
	ld a, $43
	ld [$c922], a
	ld [$c925], a
	ld a, $0d
	ld [$c928], a
	ld [$c92b], a
	ld hl, wc9b0
	ld a, [hl]
	and a
	jr z, .asm_403e4
	dec [hl]
	and $08
	jr z, .asm_403e4
	ld hl, $c923
	ld a, $03
	ld [hli], a
	ld [hl], a
	ret
.asm_403e4
	ld a, b
	ld c, a
	ld b, $00
	ld hl, BytesInDecimalRepresentation
	add hl, bc
	ld a, [hl]
	and $f0
	swap a
	ld d, a
	ld a, [hl]
	and $0f
	ld e, a
	ld a, d
	and a
	jr nz, .asm_403fb
	dec d
.asm_403fb
	ld hl, $c923
	ld a, d
	inc a
	jr z, .asm_40406
	add $0f
	jr .asm_40408
.asm_40406
	ld a, $03
.asm_40408
	ld [hli], a
	ld a, e
	inc a
	jr z, .asm_40411
	add $0f
	jr .asm_40413
.asm_40411
	ld a, $03
.asm_40413
	ld [hl], a
	ret

; advances everything related to the background pattern
; then sets wBackgroundPatternTilePtr to point to
; the correct tile in wBackgroundPatternTiles
TickBackgroundPattern:
	ld hl, wc8ed
	inc [hl]
	ld hl, wc8ed
	ld c, [hl]
	ldh a, [hSCY]
	cpl
	inc a
	and $07
	swap a
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	ld a, c
	and $70
	add l
	ld l, a
	ld de, wBackgroundPatternTiles
	add hl, de
	ld e, l
	ld d, h
	ld hl, wBackgroundPatternTilePtr
	ld a, e
	ld [hli], a
	ld [hl], d
	ret

Func_4043d:
	ld a, [wceaf]
	ld c, a
	ld b, $00
	ld hl, BytesInDecimalRepresentation
	add hl, bc
	ld a, [hl]
	and $f0
	swap a
	ld d, a
	ld a, [hl]
	and $0f
	ld e, a
	ld hl, $c99c
	ld a, d
	inc a
	jr z, .asm_4045c
	add $0f
	jr .asm_4045e
.asm_4045c
	ld a, $03
.asm_4045e
	ld [hli], a
	ld a, e
	inc a
	jr z, .asm_40467
	add $0f
	jr .asm_40469
.asm_40467
	ld a, $03
.asm_40469
	ld [hli], a
	ld a, [wceb0]
	ld c, a
	ld b, $00
	ld hl, BytesInDecimalRepresentation
	add hl, bc
	ld a, [hl]
	and $f0
	swap a
	ld d, a
	ld a, [hl]
	and $0f
	ld e, a
	ld hl, $c9a4
	ld a, d
	inc a
	jr z, .asm_40489
	add $0f
	jr .asm_4048b
.asm_40489
	ld a, $03
.asm_4048b
	ld [hli], a
	ld a, e
	inc a
	jr z, .asm_40494
	add $0f
	jr .asm_40496
.asm_40494
	ld a, $03
.asm_40496
	ld [hli], a
	ld a, $05
	ld [$c9a0], a
	ld [$c9a1], a
	ld [$c9a8], a
	ld [$c9a9], a
	ld a, [wGameMode]
	cp GAMEMODE_2P_TIME_ZONE
	jr z, .asm_404b1
	ld bc, $4b4c
	jr .asm_404b4
.asm_404b1
	ld bc, $3c3d
.asm_404b4
	ld a, [wceb6]
	and a
	jr nz, .asm_404d7
	ld a, c
	ld [$c99b], a
	ld [$c99e], a
	ld [$c9a3], a
	ld [$c9a6], a
	ld a, $0d
	ld [$c99f], a
	ld [$c9a2], a
	ld [$c9a7], a
	ld [$c9aa], a
	jr .asm_404f6
.asm_404d7
	ld a, c
	ld [$c99b], a
	ld [$c9a3], a
	ld a, $03
	ld [$c99e], a
	ld [$c9a6], a
	ld a, $0d
	ld [$c99f], a
	ld [$c9a7], a
	ld a, $05
	ld [$c9a2], a
	ld [$c9aa], a
.asm_404f6
	ld a, [wcebe]
	and a
	jr z, .asm_40507
	dec a
	jr z, .asm_40503
	ld a, b
	ld [$c99e], a
.asm_40503
	ld a, b
	ld [$c99b], a
.asm_40507
	ld a, [wcebf]
	and a
	jr z, .asm_40518
	dec a
	jr z, .asm_40514
	ld a, b
	ld [$c9a6], a
.asm_40514
	ld a, b
	ld [$c9a3], a
.asm_40518
	ret

Func_40519:
	ld a, [wcd67]
	and a
	ret nz
Func_4051e:
	ld hl, wc8d7
	ld a, [hl]
	and a
	jr z, .asm_40528
	dec a
	ld [hl], a
	ret
.asm_40528
	ld a, [wc8d8]
	ld l, a
	ld h, $00
	ld bc, $4559
	add hl, bc
	ld a, [hli]
	cp $ff
	jr z, .asm_40553
	ld [wc8d7], a
	ld a, [hl]
	add a
	ld l, a
	ld h, $00
	ld bc, $4576
	add hl, bc
	ld a, [hli]
	ld [wca16 + 0], a
	ld a, [hl]
	ld [wca16 + 1], a
	ld hl, wc8d8
	ld a, [hl]
	add $02
	ld [hl], a
	ret
.asm_40553
	xor a
	ld [wc8d8], a
	jr .asm_40528
; 0x40559

SECTION "Bank 10@4586", ROMX[$4586], BANK[$10]

Func_40586:
	ld a, [wc83b]
	and a
	jr nz, .asm_40593
	call Func_4059d
	call Func_405f1
	ret
.asm_40593
	call Func_4059d
	call UpdatePlayerPokemonPortraitAnimations
	call Func_40713
	ret

Func_4059d:
	ld hl, wc87c
	ld a, [hli]
	or [hl]
	jr nz, .asm_405ac
	ld a, $ff
	ldh [hff92], a
	ld [wc9af], a
	ret
.asm_405ac
	ld hl, wc9af
	ld a, [hl]
	inc a
	jr nz, .asm_405b4
	ld [hl], a
.asm_405b4
	ld hl, wc87c
	ld a, [hli]
	add $3b
	ldh [hff8a], a
	ld a, [hl]
	adc $00
	ldh [hff8b], a
	call Func_40d8d
	ldh a, [hff8d]
	ldh [hff93], a
	cp $02
	jr c, .asm_405d6
	cp $05
	jr c, .asm_405da
	cp $0a
	jr c, .asm_405de
	jr .asm_405e2
.asm_405d6
	ld a, $04
	jr .asm_405e4
.asm_405da
	ld a, $08
	jr .asm_405e4
.asm_405de
	ld a, $10
	jr .asm_405e4
.asm_405e2
	ld a, $20
.asm_405e4
	ldh [hff91], a
	ld hl, wc9af
	ld a, [hl]
	ldh [hff92], a
	inc a
	and $7f
	ld [hl], a
	ret

Func_405f1:
	ldh a, [hff92]
	inc a
	jr nz, .asm_4065c

	; copies 4x4 tilemap and attribute map
	ld hl, wPlayerMonPortraitBGMaps
	ld de, wPlayerMonTilemap
	REPT 2 * (4 * 4) - 1
		ld a, [hli]
		ld [de], a
		inc de
	ENDR
	ld a, [hli]
	ld [de], a
	ret

.asm_4065c
	ld hl, hff91
	ld a, [hli]
	and [hl]
	jr z, .asm_40668
	ld bc, $00
	jr .asm_4066b
.asm_40668
	ld bc, $20
.asm_4066b
	ld hl, $d960
	add hl, bc
	ld de, wPlayerMonTilemap
	REPT 4 * 4 - 1
		ld a, [hli]
		ld [de], a
		inc de
	ENDR
	ld a, [hli]
	ld [de], a

	ld hl, hff91
	ld a, [hli]
	and [hl]
	jr z, .asm_406c1
	ld hl, wPlayerMonTilemap
	ld a, $03 ; tile ID
	ld [hli], a
	ld [hl], a
	ld hl, wPlayerMonTilemap + $4
	ld [hli], a
	ld [hl], a
	ld a, 5 ; palette index
	ld hl, wPlayerMonAttrmap
	ld [hli], a
	ld [hl], a
	ld hl, wPlayerMonAttrmap + $4
	ld [hli], a
	ld [hl], a
	ret

.asm_406c1
	ldh a, [hff93]
	ld c, a
	ld b, $00
	ld hl, BytesInDecimalRepresentation
	add hl, bc
	ld a, [hl]
	and $f0
	swap a
	ld d, a
	ld a, [hl]
	and $0f
	ld e, a
	ld hl, wPlayerMonTilemap
	ld a, d
	inc a
	jr z, .asm_406df
	add $1f
	jr .asm_406e1
.asm_406df
	ld a, $03 ; tile ID
.asm_406e1
	ld [hli], a
	ld a, e
	inc a
	jr z, .asm_406ea
	add $1f
	jr .asm_406ec
.asm_406ea
	ld a, $03 ; tile ID
.asm_406ec
	ld [hl], a
	ld hl, wPlayerMonTilemap + $4
	ld a, d
	inc a
	jr z, .asm_406f8
	add $2f
	jr .asm_406fa
.asm_406f8
	ld a, $03 ; tile ID
.asm_406fa
	ld [hli], a
	ld a, e
	inc a
	jr z, .asm_40703
	add $2f
	jr .asm_40705
.asm_40703
	ld a, $03 ; tile ID
.asm_40705
	ld [hl], a
	ld a, 5 ; palette index
	ld hl, wPlayerMonAttrmap
	ld [hli], a
	ld [hl], a
	ld hl, wPlayerMonAttrmap + $4
	ld [hli], a
	ld [hl], a
	ret

Func_40713:
	ldh a, [hff92]
	inc a
	ret z
	ld hl, hff91
	ld a, [hli]
	and [hl]
	jr z, .asm_40732
	ld hl, wSpeedLevelTilemap
	ld a, $03
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld a, $05
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ret
.asm_40732
	ldh a, [hff93]
	ld c, a
	ld b, $00
	ld hl, BytesInDecimalRepresentation
	add hl, bc
	ld a, [hl]
	and $f0
	swap a
	ld d, a
	ld a, [hl]
	and $0f
	ld e, a
	ld hl, wSpeedLevelTilemap
	ld a, $55
	ld [hli], a
	ld a, $56
	ld [hli], a
	ld a, $57
	ld [hli], a
	ld a, $58
	ld [hli], a
	ld a, d
	inc a
	jr z, .asm_4075c
	add $0f
	jr .asm_4075e
.asm_4075c
	ld a, $03
.asm_4075e
	ld [hli], a
	ld a, e
	inc a
	jr z, .asm_40767
	add $0f
	jr .asm_40769
.asm_40767
	ld a, $03
.asm_40769
	ld [hli], a
	ld a, $0d
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld a, $05
	ld [hli], a
	ld [hl], a
	ret

Func_40775:
	ld b, $00
	ld a, [wc8b4]
	ld c, a
	ld hl, $6db6
	add hl, bc
	ld a, [hl]
	ld [wOpponentLifeGaugeTilemap + $0], a
	ld hl, $6e46
	add hl, bc
	ld a, [hl]
	ld [wOpponentLifeGaugeAttrmap + $0], a
	ld a, [wc8b5]
	ld c, a
	ld hl, $6db6
	add hl, bc
	ld a, [hl]
	ld [$c96e], a
	ld hl, $6e46
	add hl, bc
	ld a, [hl]
	ld [$c977], a
	ld a, [wc8b6]
	ld c, a
	ld hl, $6db6
	add hl, bc
	ld a, [hl]
	ld [$c96f], a
	ld hl, $6e46
	add hl, bc
	ld a, [hl]
	ld [$c978], a
	ld a, [wc8b7]
	ld c, a
	ld hl, $6db6
	add hl, bc
	ld a, [hl]
	ld [$c970], a
	ld hl, $6e46
	add hl, bc
	ld a, [hl]
	ld [$c979], a
	ld a, [wc8b8]
	ld c, a
	ld hl, $6db6
	add hl, bc
	ld a, [hl]
	ld [$c971], a
	ld hl, $6e46
	add hl, bc
	ld a, [hl]
	ld [$c97a], a
	ld a, [wc8b9]
	ld c, a
	ld hl, $6db6
	add hl, bc
	ld a, [hl]
	ld [$c972], a
	ld hl, $6e46
	add hl, bc
	ld a, [hl]
	ld [$c97b], a
	ld a, [wc8ba]
	ld c, a
	ld hl, $6db6
	add hl, bc
	ld a, [hl]
	ld [$c973], a
	ld hl, $6e46
	add hl, bc
	ld a, [hl]
	ld [$c97c], a
	ld a, [wc8bb]
	ld c, a
	ld hl, $6db6
	add hl, bc
	ld a, [hl]
	ld [$c974], a
	ld hl, $6e46
	add hl, bc
	ld a, [hl]
	ld [$c97d], a
	ld a, [wc8bc]
	ld c, a
	ld hl, $6db6
	add hl, bc
	ld a, [hl]
	ld [$c975], a
	ld hl, $6e46
	add hl, bc
	ld a, [hl]
	ld [$c97e], a
	ret

Func_4082c:
	call Func_40907
	call Func_42268
	ld b, $00
	ldh a, [hff8a]
	and a
	jr z, .asm_40852
	ld c, a
	ld hl, $6ed6
	add hl, bc
	ld a, [hli]
	ld [wOpponentAttackMeterTilemap + $0], a
	ld a, [hl]
	ld [wOpponentAttackMeterTilemap + $1], a
	ld hl, $6f1e
	add hl, bc
	ld a, [hli]
	ld [wOpponentAttackMeterAttrmap + $0], a
	ld a, [hl]
	ld [wOpponentAttackMeterAttrmap + $1], a
.asm_40852
	ldh a, [hff8b]
	and a
	jr z, .asm_40870
	ld c, a
	ld hl, $6ed6
	add hl, bc
	ld a, [hli]
	ld [$c981], a
	ld a, [hl]
	ld [$c982], a
	ld hl, $6f1e
	add hl, bc
	ld a, [hli]
	ld [$c98f], a
	ld a, [hl]
	ld [$c990], a
.asm_40870
	ldh a, [hff8c]
	and a
	jr z, .asm_4088e
	ld c, a
	ld hl, $6ed6
	add hl, bc
	ld a, [hli]
	ld [$c983], a
	ld a, [hl]
	ld [$c984], a
	ld hl, $6f1e
	add hl, bc
	ld a, [hli]
	ld [$c991], a
	ld a, [hl]
	ld [$c992], a
.asm_4088e
	ldh a, [hff8d]
	and a
	jr z, .asm_408ac
	ld c, a
	ld hl, $6ed6
	add hl, bc
	ld a, [hli]
	ld [$c985], a
	ld a, [hl]
	ld [$c986], a
	ld hl, $6f1e
	add hl, bc
	ld a, [hli]
	ld [$c993], a
	ld a, [hl]
	ld [$c994], a
.asm_408ac
	ldh a, [hff8e]
	and a
	jr z, .asm_408ca
	ld c, a
	ld hl, $6ed6
	add hl, bc
	ld a, [hli]
	ld [$c987], a
	ld a, [hl]
	ld [$c988], a
	ld hl, $6f1e
	add hl, bc
	ld a, [hli]
	ld [$c995], a
	ld a, [hl]
	ld [$c996], a
.asm_408ca
	ldh a, [hff8f]
	and a
	jr z, .asm_408e8
	ld c, a
	ld hl, $6ed6
	add hl, bc
	ld a, [hli]
	ld [$c989], a
	ld a, [hl]
	ld [$c98a], a
	ld hl, $6f1e
	add hl, bc
	ld a, [hli]
	ld [$c997], a
	ld a, [hl]
	ld [$c998], a
.asm_408e8
	ldh a, [hff90]
	and a
	jr z, .asm_40906
	ld c, a
	ld hl, $6ed6
	add hl, bc
	ld a, [hli]
	ld [$c98b], a
	ld a, [hl]
	ld [$c98c], a
	ld hl, $6f1e
	add hl, bc
	ld a, [hli]
	ld [$c999], a
	ld a, [hl]
	ld [$c99a], a
.asm_40906
	ret

Func_40907:
	ld hl, hff8a
	xor a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld a, [wc8ff]
	ld hl, wc8fe
	sub [hl]
	jr nc, .asm_4091c
	cpl
.asm_4091c
	cp $07
	jr c, .asm_40922
	ld a, $07
.asm_40922
	ldh [hff91], a
	ld c, [hl]
	ld b, $00
	ld de, hff8a
.asm_4092a
	ldh a, [hff91]
	and a
	ret z
	dec a
	ldh [hff91], a
	push bc
	ld hl, $d500
	add hl, bc
	ld a, [hl]
	and $80
	jr nz, .asm_40940
	ld bc, NULL
	jr .asm_40943
.asm_40940
	ld bc, $4
.asm_40943
	ld a, [hl]
	and $7f
	add c
	cp $0e
	jr c, .asm_4094d
	ld a, $0e
.asm_4094d
	ld c, a
	ld hl, $4959
	add hl, bc
	ld a, [hl]
	ld [de], a
	pop bc
	inc de
	inc c
	jr .asm_4092a
; 0x40959

SECTION "Bank 10@49b2", ROMX[$49b2], BANK[$10]

Func_409b2:
	ld hl, wOpponentLifeGaugeAttrmap
	ld a, 4
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a

	ld a, [wcd46]
	ld e, a
	ld d, $00
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, de
	ld de, $49f6
	add hl, de
	ld a, [hli]
	ld [wOpponentLifeGaugeTilemap + $0], a
	ld a, [hli]
	ld [wOpponentLifeGaugeTilemap + $1], a
	ld a, [hli]
	ld [wOpponentLifeGaugeTilemap + $2], a
	ld a, [hli]
	ld [wOpponentLifeGaugeTilemap + $3], a
	ld a, [hli]
	ld [wOpponentLifeGaugeTilemap + $4], a
	ld a, [hli]
	ld [wOpponentLifeGaugeTilemap + $5], a
	ld a, [hli]
	ld [wOpponentLifeGaugeTilemap + $6], a
	ld a, [hli]
	ld [wOpponentLifeGaugeTilemap + $7], a
	ld a, [hli]
	ld [wOpponentLifeGaugeTilemap + $8], a
	ret
; 0x409f6

SECTION "Bank 10@4c87", ROMX[$4c87], BANK[$10]

Func_40c87:
	ld a, [wc838]
	ld [wcdc3], a
	call Func_1f38
	ld a, [hl]
	ld [wcdc4], a
	ld a, [wcead]
	ld [wcdc5], a
	call Func_2626

	; get digit tile for number of hints left
	ld a, [wRemainingHints]
	ld c, a
	ld b, $00
	ld hl, .DigitTiles
	add hl, bc
	ld a, [hl]
	ld [wRemainingHintsTile], a ; tile ID
	ld a, 3 | OAM_BANK1
	ld [wRemainingHintsAttributes], a ; attributes
	ld a, [wUsedHint]
	and a
	jr nz, .used_hint
	ld a, $03
	ld [wHintStarTile], a ; tile ID
	ld a, 5 | OAM_BANK0
	ld [wHintStarAttributes], a ; attributes
	ret
.used_hint
	ld a, $4e ; hint star
	ld [wHintStarTile], a ; tile ID
	ld a, 3 | OAM_BANK1
	ld [wHintStarAttributes], a ; attributes
	ret

.DigitTiles:
	db $44 ; 0
	db $45 ; 1
	db $46 ; 2
	db $47 ; 3
	db $48 ; 4
	db $49 ; 5
	db $4a ; 6
	db $4f ; 7
	db $5a ; 8
	db $5b ; 9

; extracts 3-byte value in hff8a to its constituent decimal digits
; digits are output in hff8d from least to most significant digit
; (up to 6 digits)
GetScoreDigits:
	ld hl, hff8d
	ld a, -1
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a

	ld c, LOW(hff92)
	ld b, 100_000 >> 16     ; top byte of 100'000
	ld de, 100_000 & 0xffff ; 2 lower bytes of 100'000
.loop_100000s
	ld a, [$ff00+c]
	inc a
	ld [$ff00+c], a
	ld hl, hff8a
	ld a, [hl]
	sub e
	ld [hli], a
	ld a, [hl]
	sbc d
	ld [hli], a
	ld a, [hl]
	sbc b
	ld [hl], a
	jr nc, .loop_100000s
	ld hl, hff8a
	ld a, [hl]
	add e
	ld [hli], a
	ld a, [hl]
	adc d
	ld [hli], a
	ld a, [hl]
	adc b
	ld [hl], a

	dec c ; LOW(hff91)
	ld b, 10_000 >> 16 ; top byte of 10'000 (= 0)
	ld de, 10_000
.loop_10000s
	ld a, [$ff00+c]
	inc a
	ld [$ff00+c], a
	ld hl, hff8a
	ld a, [hl]
	sub e
	ld [hli], a
	ld a, [hl]
	sbc d
	ld [hli], a
	ld a, [hl]
	sbc b
	ld [hli], a
	jr nc, .loop_10000s
	ld hl, hff8a
	ld a, [hl]
	add e
	ld [hli], a
	ld a, [hl]
	adc d
	ld [hl], a

	dec c ; LOW(hff90)
	ld b, 1_000 >> 16 ; top byte of 1'000 (= 0)
	ld de, 1_000
.loop_1000s
	ld a, [$ff00+c]
	inc a
	ld [$ff00+c], a
	ld hl, hff8a
	ld a, [hl]
	sub e
	ld [hli], a
	ld a, [hl]
	sbc d
	ld [hl], a
	jr nc, .loop_1000s
	ld hl, hff8a
	ld a, [hl]
	add e
	ld [hli], a
	ld a, [hl]
	adc d
	ld [hl], a

	dec c ; LOW(hff8f)
	ld b, 100 >> 16 ; top byte of 100 (= 0)
	ld de, 100
.loop_100s
	ld a, [$ff00+c]
	inc a
	ld [$ff00+c], a
	ld hl, hff8a
	ld a, [hl]
	sub e
	ld [hli], a
	ld a, [hl]
	sbc d
	ld [hl], a
	jr nc, .loop_100s
	ldh a, [hff8a]
	add e
	ldh [hff8a], a

	ldh a, [hff8a]
	ld c, a
	ld b, $00
	ld hl, BytesInDecimalRepresentation
	add hl, bc
	ld a, [hl]
	and $f0
	swap a
	ldh [hff8e], a ; tens
	ld a, [hl]
	and $0f
	ldh [hff8d], a ; ones

	ld hl, hff92
	REPT 4
		ld a, [hl]
		and a
		ret nz
		dec a
		ld [hld], a
	ENDR
	ld a, [hl]
	and a
	ret nz
	dec a
	ld [hl], a
	ret

Func_40d8d:
	ld hl, hff8a
	ld bc, hff8d
	xor a
	ld [bc], a
.asm_40d95
	ld a, [hl]
	sub $3c
	ld [hli], a
	ld a, [hl]
	sbc $00
	ld [hld], a
	ret c
	ld a, [bc]
	inc a
	ld [bc], a
	jr .asm_40d95

BytesInDecimalRepresentation:
	db $00
	db $01
	db $02
	db $03
	db $04
	db $05
	db $06
	db $07
	db $08
	db $09
	db $10
	db $11
	db $12
	db $13
	db $14
	db $15
	db $16
	db $17
	db $18
	db $19
	db $20
	db $21
	db $22
	db $23
	db $24
	db $25
	db $26
	db $27
	db $28
	db $29
	db $30
	db $31
	db $32
	db $33
	db $34
	db $35
	db $36
	db $37
	db $38
	db $39
	db $40
	db $41
	db $42
	db $43
	db $44
	db $45
	db $46
	db $47
	db $48
	db $49
	db $50
	db $51
	db $52
	db $53
	db $54
	db $55
	db $56
	db $57
	db $58
	db $59
	db $60
	db $61
	db $62
	db $63
	db $64
	db $65
	db $66
	db $67
	db $68
	db $69
	db $70
	db $71
	db $72
	db $73
	db $74
	db $75
	db $76
	db $77
	db $78
	db $79
	db $80
	db $81
	db $82
	db $83
	db $84
	db $85
	db $86
	db $87
	db $88
	db $89
	db $90
	db $91
	db $92
	db $93
	db $94
	db $95
	db $96
	db $97
	db $98
	db $99
; 0x40e06

SECTION "Bank 10@4e26", ROMX[$4e26], BANK[$10]

Func_40e26:
	ld hl, $cd40
	ld a, [hl]
	and a
	ret z
	inc [hl]
	cp $05
	jr c, .asm_40e48
	cp $0b
	jr c, .asm_40e4d
	cp $0f
	jr c, .asm_40e48
	cp $15
	jr c, .asm_40e4d
	cp $19
	jr c, .asm_40e48
	cp $1f
	jr c, .asm_40e4d
	xor a
	ld [hl], a
	ret
.asm_40e48
	ld hl, wca06
	jr .asm_40e50
.asm_40e4d
	ld hl, wc9fe
.asm_40e50
	ld de, $c4c5
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
	ret

Func_40e6b:
	ld hl, $cd3e
	ld a, [hl]
	and a
	jr z, .asm_40e8e
	call Func_40ec3
	jr z, .asm_40e82
	ld a, [$cd3f]
	add [hl]
	ldh [hWX], a
	ld d, [hl]
	ld e, $00
	jr .asm_40e96
.asm_40e82
	xor a
	ld [$cd3e], a
	ld [$cd36], a
	ld de, NULL
	jr .asm_40e96
.asm_40e8e
	ld a, [$cd3f]
	ldh [hWX], a
	ld de, NULL
.asm_40e96
	ret

Func_40e97:
	ld hl, $cd3e
	ld a, [hl]
	and a
	jr z, .asm_40eba
	call Func_40ec3
	jr z, .asm_40eae
	ld a, [$cd3f]
	add [hl]
	ldh [hWX], a
	ld d, [hl]
	ld e, $00
	jr .asm_40ec2
.asm_40eae
	xor a
	ld [$cd3e], a
	ld [$cd36], a
	ld de, NULL
	jr .asm_40ec2
.asm_40eba
	ld a, [$cd3f]
	ldh [hWX], a
	ld de, NULL
.asm_40ec2
	ret

Func_40ec3:
	ld c, a
	ld b, $00
	inc a
	ld [hl], a
	ld hl, $4ed0
	add hl, bc
	ld a, [hl]
	cp $80
	ret
; 0x40ed0

SECTION "Bank 10@4ef8", ROMX[$4ef8], BANK[$10]

Func_40ef8:
	ret

Func_40ef9:
	ld a, [hli]
	ldh [hff8a], a
	ld a, [hli]
	ldh [hff8b], a
	ld a, [hl]
	ldh [hff8c], a
	call GetScoreDigits

	ld hl, $d709
	ldh a, [hff92]
	inc a
	jr z, .asm_40f11
	add $0f
	jr .asm_40f13
.asm_40f11
	ld a, $03
.asm_40f13
	ld [hli], a
	ldh a, [hff91]
	inc a
	jr z, .asm_40f1d
	add $0f
	jr .asm_40f1f
.asm_40f1d
	ld a, $03
.asm_40f1f
	ld [hli], a
	ldh a, [hff90]
	inc a
	jr z, .asm_40f29
	add $0f
	jr .asm_40f2b
.asm_40f29
	ld a, $03
.asm_40f2b
	ld [hli], a
	ldh a, [hff8f]
	inc a
	jr z, .asm_40f35
	add $0f
	jr .asm_40f37
.asm_40f35
	ld a, $03
.asm_40f37
	ld [hli], a
	ldh a, [hff8e]
	inc a
	jr z, .asm_40f41
	add $0f
	jr .asm_40f43
.asm_40f41
	ld a, $03
.asm_40f43
	ld [hli], a
	ldh a, [hff8d]
	inc a
	jr z, .asm_40f4d
	add $0f
	jr .asm_40f4f
.asm_40f4d
	ld a, $03
.asm_40f4f
	ld [hli], a
	ret

Func_40f51:
	ld hl, wc9b0
	ld a, [hl]
	and a
	jr z, .asm_40f65
	dec [hl]
	and $08
	jr z, .asm_40f65
	ld hl, $d71b
	ld a, $03
	ld [hli], a
	ld [hl], a
	ret
.asm_40f65
	ld a, [wSpeedLevel]
	ld c, a
	ld b, $00
	ld hl, BytesInDecimalRepresentation
	add hl, bc
	ld a, [hl]
	and $f0
	swap a
	ld d, a
	ld a, [hl]
	and $0f
	ld e, a
	ld a, d
	and a
	jr nz, .asm_40f7e
	dec d
.asm_40f7e
	ld hl, $d71b
	ld a, d
	inc a
	jr z, .asm_40f89
	add $0f
	jr .asm_40f8b
.asm_40f89
	ld a, $03
.asm_40f8b
	ld [hli], a
	ld a, e
	inc a
	jr z, .asm_40f94
	add $0f
	jr .asm_40f96
.asm_40f94
	ld a, $03
.asm_40f96
	ld [hl], a
	ret

Func_40f98:
	ld hl, wc87c
	ld a, [hli]
	or [hl]
	jp nz, .asm_4105f
	ld hl, $7236
	ld de, $d701
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
	ld hl, $723c
	ld de, $d709
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
	ld hl, $7242
	ld de, $d711
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
	ld hl, $7248
	ld de, $d719
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
	ld hl, $724e
	ld de, $d791
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
	ld hl, $7254
	ld de, $d799
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
	ld hl, $725a
	ld de, $d7a1
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
	ld hl, $7260
	ld de, $d7a9
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
	ld a, $ff
	ld [wc9af], a
	and a
	ret

.asm_4105f
	ld hl, wc9af
	ld a, [hl]
	cp $ff
	jr nz, .asm_41069
	xor a
	ld [hl], a
.asm_41069
	ld hl, wc87c
	ld a, [hli]
	add $3b
	ldh [hff8a], a
	ld a, [hl]
	adc $00
	ldh [hff8b], a
	call Func_40d8d
	ldh a, [hff8d]
	cp $02
	jr c, .asm_41089
	cp $05
	jr c, .asm_4108d
	cp $0a
	jr c, .asm_41091
	jr .asm_41095
.asm_41089
	ld a, $04
	jr .asm_41097
.asm_4108d
	ld a, $08
	jr .asm_41097
.asm_41091
	ld a, $10
	jr .asm_41097
.asm_41095
	ld a, $20
.asm_41097
	ldh [hff91], a
	ld hl, wc9af
	and [hl]
	jr z, .asm_410a4
	ld bc, NULL
	jr .asm_410a7
.asm_410a4
	ld bc, $30
.asm_410a7
	ld hl, $71d6
	add hl, bc
	ld de, $d701
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
	ld hl, $71dc
	add hl, bc
	ld de, $d709
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
	ld hl, $71e2
	add hl, bc
	ld de, $d711
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
	ld hl, $71e8
	add hl, bc
	ld de, $d719
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
	ld hl, $71ee
	add hl, bc
	ld de, $d791
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
	ld hl, $71f4
	add hl, bc
	ld de, $d799
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
	ld hl, $71fa
	add hl, bc
	ld de, $d7a1
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
	ld hl, $7200
	add hl, bc
	ld de, $d7a9
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
	ldh a, [hff8d]
	ld c, a
	ld b, $00
	ld hl, BytesInDecimalRepresentation
	add hl, bc
	ld a, [hl]
	and $f0
	swap a
	ld d, a
	ld a, [hl]
	and $0f
	ld e, a
	ldh a, [hff91]
	ld hl, wc9af
	and [hl]
	jr z, .asm_41190
	ld hl, $d702
	ld a, $03
	ld [hli], a
	ld [hl], a
	ld hl, $d70a
	ld [hli], a
	ld [hl], a
	jr .asm_411c2
.asm_41190
	ld hl, $d702
	ld a, d
	inc a
	jr z, .asm_4119b
	add $1f
	jr .asm_4119d
.asm_4119b
	ld a, $03
.asm_4119d
	ld [hli], a
	ld a, e
	inc a
	jr z, .asm_411a6
	add $1f
	jr .asm_411a8
.asm_411a6
	ld a, $03
.asm_411a8
	ld [hl], a
	ld hl, $d70a
	ld a, d
	inc a
	jr z, .asm_411b4
	add $2f
	jr .asm_411b6
.asm_411b4
	ld a, $03
.asm_411b6
	ld [hli], a
	ld a, e
	inc a
	jr z, .asm_411bf
	add $2f
	jr .asm_411c1
.asm_411bf
	ld a, $03
.asm_411c1
	ld [hl], a
.asm_411c2
	ld hl, wc9af
	ld a, [hl]
	inc a
	and $7f
	ld [hl], a
	scf
	ret

Func_411cc:
	ld hl, wcd42
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ld hl, $cd3c
	ld a, [hli]
	sub c
	ld a, [hld]
	sbc b
	jr c, .asm_411e3
	ld a, [hl]
	sub c
	ld [hli], a
	ld a, [hl]
	sbc b
	ld [hl], a
	jr .asm_411e9
.asm_411e3
	ld a, [hli]
	ld b, [hl]
	ld c, a
	xor a
	ld [hld], a
	ld [hl], a
.asm_411e9
	ld hl, $cd38
	ld a, [hl]
	sub c
	ld [hli], a
	ld a, [hl]
	sbc b
	ld [hld], a
	jr nc, .asm_411f7
	xor a
	ld [hli], a
	ld [hl], a
.asm_411f7
	ld hl, $cd38
	ld a, [hli]
	ld d, [hl]
	ld e, a
	ld hl, $d72a
	ld a, [wcd44]
	ld c, a
	ld a, [$cd45]
	ld b, a
	ld a, e
	sub c
	ld e, a
	ld a, d
	sbc b
	ld d, a
	jp c, .asm_41255
	ld a, [wcd44]
	ld c, a
	ld a, [$cd45]
	ld b, a
	ld a, e
	sub c
	ld e, a
	ld a, d
	sbc b
	ld d, a
	jp c, .asm_41271
	ld a, [wcd44]
	ld c, a
	ld a, [$cd45]
	ld b, a
	ld a, e
	sub c
	ld e, a
	ld a, d
	sbc b
	ld d, a
	jp c, .asm_4128e
	ld a, [wcd44]
	ld c, a
	ld a, [$cd45]
	ld b, a
	ld a, e
	sub c
	ld e, a
	ld a, d
	sbc b
	ld d, a
	jp c, .asm_412ab
	ld a, [wcd44]
	ld c, a
	ld a, [$cd45]
	ld b, a
	ld a, e
	sub c
	ld e, a
	ld a, d
	sbc b
	ld d, a
	jp .asm_412c8

.asm_41255
	ld a, [wcd44]
	ld c, a
	ld a, [$cd45]
	ld b, a
	ld a, e
	add c
	ld e, a
	ld a, d
	adc b
	ld d, a
	ld a, $37
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld hl, $d72a
	jp .asm_412e5

	ret ; stray ret

.asm_41271
	ld a, [wcd44]
	ld c, a
	ld a, [$cd45]
	ld b, a
	ld a, e
	add c
	ld e, a
	ld a, d
	adc b
	ld d, a
	ld a, $3f
	ld [hli], a
	ld a, $37
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld hl, $d72b
	jp .asm_412e5

.asm_4128e
	ld a, [wcd44]
	ld c, a
	ld a, [$cd45]
	ld b, a
	ld a, e
	add c
	ld e, a
	ld a, d
	adc b
	ld d, a
	ld a, $3f
	ld [hli], a
	ld [hli], a
	ld a, $37
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld hl, $d72c
	jp .asm_412e5

.asm_412ab
	ld a, [wcd44]
	ld c, a
	ld a, [$cd45]
	ld b, a
	ld a, e
	add c
	ld e, a
	ld a, d
	adc b
	ld d, a
	ld a, $3f
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld a, $37
	ld [hli], a
	ld [hl], a
	ld hl, $d72d
	jp .asm_412e5

.asm_412c8
	ld a, [wcd44]
	ld c, a
	ld a, [$cd45]
	ld b, a
	ld a, e
	add c
	ld e, a
	ld a, d
	adc b
	ld d, a
	ld a, $3f
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld a, $37
	ld [hl], a
	ld hl, $d72e
	jp .asm_412e5

.asm_412e5
	ld a, d
	or e
	jp z, .asm_41364
	ld a, [wcd42]
	ld c, a
	ld a, [$cd43]
	ld b, a
	ld a, e
	sub c
	ld e, a
	ld a, d
	sbc b
	ld d, a
	jp c, .asm_41367
	ld a, [wcd42]
	ld c, a
	ld a, [$cd43]
	ld b, a
	ld a, e
	sub c
	ld e, a
	ld a, d
	sbc b
	ld d, a
	jp c, .asm_4136a
	ld a, [wcd42]
	ld c, a
	ld a, [$cd43]
	ld b, a
	ld a, e
	sub c
	ld e, a
	ld a, d
	sbc b
	ld d, a
	jp c, .asm_4136d
	ld a, [wcd42]
	ld c, a
	ld a, [$cd43]
	ld b, a
	ld a, e
	sub c
	ld e, a
	ld a, d
	sbc b
	ld d, a
	jp c, .asm_41370
	ld a, [wcd42]
	ld c, a
	ld a, [$cd43]
	ld b, a
	ld a, e
	sub c
	ld e, a
	ld a, d
	sbc b
	ld d, a
	jp c, .asm_41373
	ld a, [wcd42]
	ld c, a
	ld a, [$cd43]
	ld b, a
	ld a, e
	sub c
	ld e, a
	ld a, d
	sbc b
	ld d, a
	jp c, .asm_41376
	ld a, [wcd42]
	ld c, a
	ld a, [$cd43]
	ld b, a
	ld a, e
	sub c
	ld e, a
	ld a, d
	sbc b
	ld d, a
	jp c, .asm_41379
	jp .asm_4137c

.asm_41364
	ld [hl], $37
	ret

.asm_41367
	ld [hl], $38
	ret

.asm_4136a
	ld [hl], $39
	ret

.asm_4136d
	ld [hl], $3a
	ret

.asm_41370
	ld [hl], $3b
	ret

.asm_41373
	ld [hl], $3c
	ret

.asm_41376
	ld [hl], $3d
	ret

.asm_41379
	ld [hl], $3e
	ret

.asm_4137c
	ld [hl], $3f
	ret
; 0x4137f

SECTION "Bank 10@5d72", ROMX[$5d72], BANK[$10]

Func_41d72:
	ld a, [$d058]
	bit 0, a
	jr nz, .asm_41dcf
	bit 1, a
	jr nz, .asm_41df8
	ld a, [$d059]
	bit 0, a
	jr nz, .asm_41dd4
	bit 1, a
	jr nz, .asm_41df8
	ld a, [$d05a]
	bit 0, a
	jr nz, .asm_41dd9
	bit 1, a
	jp nz, .asm_41df8
	ld a, [$d05b]
	bit 0, a
	jr nz, .asm_41dde
	bit 1, a
	jr nz, .asm_41df8
	ld a, [wBlocks + 0]
	and a
	jr nz, .asm_41dc5
	ld a, [wBlocks + 1]
	and a
	jr nz, .asm_41dc5
	ld a, [wBlocks + 2]
	and a
	jr nz, .asm_41dc5
	ld a, [wBlocks + 3]
	and a
	jr nz, .asm_41dc5
	ld a, [wBlocks + 4]
	and a
	jr nz, .asm_41dc5
	ld a, [wBlocks + 5]
	and a
	jr nz, .asm_41dc5
	jr .asm_41dfa
.asm_41dc5
	cp $07
	jr nz, .asm_41dfa
	call Random_0to5
	inc a
	jr .asm_41dfa
.asm_41dcf
	ld a, [wPdPBlock14Unk4]
	jr .asm_41de1
.asm_41dd4
	ld a, [wPdPBlock14Unk5]
	jr .asm_41de1
.asm_41dd9
	ld a, [wPdPBlock15Type]
	jr .asm_41de1
.asm_41dde
	ld a, [wPdPBlock15Unk1]
.asm_41de1
	ld b, a
	and $f0
	swap a
	dec a
	ld c, a
	ld a, b
	and $0f
	dec a
	ld b, a
	ld a, c
	sub b
	ld b, $00
	ld hl, $5d62
	add hl, bc
	add [hl]
	jr .asm_41dfa
.asm_41df8
	ld a, $07
.asm_41dfa
	ld [wc8aa], a
	ld a, [$d060]
	bit 0, a
	jr nz, .asm_41e5a
	bit 1, a
	jr nz, .asm_41e83
	ld a, [$d061]
	bit 0, a
	jr nz, .asm_41e5f
	bit 1, a
	jr nz, .asm_41e83
	ld a, [$d062]
	bit 0, a
	jr nz, .asm_41e64
	bit 1, a
	jp nz, .asm_41e83
	ld a, [$d063]
	bit 0, a
	jr nz, .asm_41e69
	bit 1, a
	jr nz, .asm_41e83
	ld a, [$d008]
	and a
	jr nz, .asm_41e50
	ld a, [$d009]
	and a
	jr nz, .asm_41e50
	ld a, [$d00a]
	and a
	jr nz, .asm_41e50
	ld a, [$d00b]
	and a
	jr nz, .asm_41e50
	ld a, [$d00c]
	and a
	jr nz, .asm_41e50
	ld a, [$d00d]
	and a
	jr nz, .asm_41e50
	jr .asm_41e85
.asm_41e50
	cp $07
	jr nz, .asm_41e85
	call Random_0to5
	inc a
	jr .asm_41e85
.asm_41e5a
	ld a, [wPdPBlock16Type]
	jr .asm_41e6c
.asm_41e5f
	ld a, [wPdPBlock16Unk1]
	jr .asm_41e6c
.asm_41e64
	ld a, [wPdPBlock16Unk2]
	jr .asm_41e6c
.asm_41e69
	ld a, [wPdPBlock16Unk3]
.asm_41e6c
	ld b, a
	and $f0
	swap a
	dec a
	ld c, a
	ld a, b
	and $0f
	dec a
	ld b, a
	ld a, c
	sub b
	ld b, $00
	ld hl, $5d62
	add hl, bc
	add [hl]
	jr .asm_41e85
.asm_41e83
	ld a, $07
.asm_41e85
	ld [wc8ab], a
	ld a, [$d068]
	bit 0, a
	jr nz, .asm_41ee5
	bit 1, a
	jr nz, .asm_41f0e
	ld a, [$d069]
	bit 0, a
	jr nz, .asm_41eea
	bit 1, a
	jr nz, .asm_41f0e
	ld a, [$d06a]
	bit 0, a
	jr nz, .asm_41eef
	bit 1, a
	jp nz, .asm_41f0e
	ld a, [$d06b]
	bit 0, a
	jr nz, .asm_41ef4
	bit 1, a
	jr nz, .asm_41f0e
	ld a, [$d010]
	and a
	jr nz, .asm_41edb
	ld a, [$d011]
	and a
	jr nz, .asm_41edb
	ld a, [$d012]
	and a
	jr nz, .asm_41edb
	ld a, [$d013]
	and a
	jr nz, .asm_41edb
	ld a, [$d014]
	and a
	jr nz, .asm_41edb
	ld a, [$d015]
	and a
	jr nz, .asm_41edb
	jr .asm_41f10
.asm_41edb
	cp $07
	jr nz, .asm_41f10
	call Random_0to5
	inc a
	jr .asm_41f10
.asm_41ee5
	ld a, [wPdPBlock17Unk2]
	jr .asm_41ef7
.asm_41eea
	ld a, [wPdPBlock17Unk3]
	jr .asm_41ef7
.asm_41eef
	ld a, [wPdPBlock17Unk4]
	jr .asm_41ef7
.asm_41ef4
	ld a, [wPdPBlock17Unk5]
.asm_41ef7
	ld b, a
	and $f0
	swap a
	dec a
	ld c, a
	ld a, b
	and $0f
	dec a
	ld b, a
	ld a, c
	sub b
	ld b, $00
	ld hl, $5d62
	add hl, bc
	add [hl]
	jr .asm_41f10
.asm_41f0e
	ld a, $07
.asm_41f10
	ld [wc8ac], a
	ld a, [$d070]
	bit 0, a
	jr nz, .asm_41f70
	bit 1, a
	jr nz, .asm_41f99
	ld a, [$d071]
	bit 0, a
	jr nz, .asm_41f75
	bit 1, a
	jr nz, .asm_41f99
	ld a, [$d072]
	bit 0, a
	jr nz, .asm_41f7a
	bit 1, a
	jp nz, .asm_41f99
	ld a, [$d073]
	bit 0, a
	jr nz, .asm_41f7f
	bit 1, a
	jr nz, .asm_41f99
	ld a, [$d018]
	and a
	jr nz, .asm_41f66
	ld a, [$d019]
	and a
	jr nz, .asm_41f66
	ld a, [$d01a]
	and a
	jr nz, .asm_41f66
	ld a, [$d01b]
	and a
	jr nz, .asm_41f66
	ld a, [$d01c]
	and a
	jr nz, .asm_41f66
	ld a, [$d01d]
	and a
	jr nz, .asm_41f66
	jr .asm_41f9b
.asm_41f66
	cp $07
	jr nz, .asm_41f9b
	call Random_0to5
	inc a
	jr .asm_41f9b
.asm_41f70
	ld a, [wPdPBlock18Unk4]
	jr .asm_41f82
.asm_41f75
	ld a, [wPdPBlock18Unk5]
	jr .asm_41f82
.asm_41f7a
	ld a, [wPdPBlock19Type]
	jr .asm_41f82
.asm_41f7f
	ld a, [wPdPBlock19Unk1]
.asm_41f82
	ld b, a
	and $f0
	swap a
	dec a
	ld c, a
	ld a, b
	and $0f
	dec a
	ld b, a
	ld a, c
	sub b
	ld b, $00
	ld hl, $5d62
	add hl, bc
	add [hl]
	jr .asm_41f9b
.asm_41f99
	ld a, $07
.asm_41f9b
	ld [wc8ad], a
	ld a, [$d078]
	bit 0, a
	jr nz, .asm_41ffb
	bit 1, a
	jr nz, .asm_42024
	ld a, [$d079]
	bit 0, a
	jr nz, .asm_42000
	bit 1, a
	jr nz, .asm_42024
	ld a, [$d07a]
	bit 0, a
	jr nz, .asm_42005
	bit 1, a
	jp nz, .asm_42024
	ld a, [$d07b]
	bit 0, a
	jr nz, .asm_4200a
	bit 1, a
	jr nz, .asm_42024
	ld a, [$d020]
	and a
	jr nz, .asm_41ff1
	ld a, [$d021]
	and a
	jr nz, .asm_41ff1
	ld a, [$d022]
	and a
	jr nz, .asm_41ff1
	ld a, [$d023]
	and a
	jr nz, .asm_41ff1
	ld a, [$d024]
	and a
	jr nz, .asm_41ff1
	ld a, [$d025]
	and a
	jr nz, .asm_41ff1
	jr .asm_42026
.asm_41ff1
	cp $07
	jr nz, .asm_42026
	call Random_0to5
	inc a
	jr .asm_42026
.asm_41ffb
	ld a, [wPdPBlock1aType]
	jr .asm_4200d
.asm_42000
	ld a, [wPdPBlock1aUnk1]
	jr .asm_4200d
.asm_42005
	ld a, [wPdPBlock1aUnk2]
	jr .asm_4200d
.asm_4200a
	ld a, [wPdPBlock1aUnk3]
.asm_4200d
	ld b, a
	and $f0
	swap a
	dec a
	ld c, a
	ld a, b
	and $0f
	dec a
	ld b, a
	ld a, c
	sub b
	ld b, $00
	ld hl, $5d62
	add hl, bc
	add [hl]
	jr .asm_42026
.asm_42024
	ld a, $07
.asm_42026
	ld [wc8ae], a
	ld a, [$d080]
	bit 0, a
	jr nz, .asm_42086
	bit 1, a
	jr nz, .asm_420af
	ld a, [$d081]
	bit 0, a
	jr nz, .asm_4208b
	bit 1, a
	jr nz, .asm_420af
	ld a, [$d082]
	bit 0, a
	jr nz, .asm_42090
	bit 1, a
	jp nz, .asm_420af
	ld a, [$d083]
	bit 0, a
	jr nz, .asm_42095
	bit 1, a
	jr nz, .asm_420af
	ld a, [$d028]
	and a
	jr nz, .asm_4207c
	ld a, [$d029]
	and a
	jr nz, .asm_4207c
	ld a, [$d02a]
	and a
	jr nz, .asm_4207c
	ld a, [$d02b]
	and a
	jr nz, .asm_4207c
	ld a, [$d02c]
	and a
	jr nz, .asm_4207c
	ld a, [$d02d]
	and a
	jr nz, .asm_4207c
	jr .asm_420b1
.asm_4207c
	cp $07
	jr nz, .asm_420b1
	call Random_0to5
	inc a
	jr .asm_420b1
.asm_42086
	ld a, [wPdPBlock1bUnk2]
	jr .asm_42098
.asm_4208b
	ld a, [wPdPBlock1bUnk3]
	jr .asm_42098
.asm_42090
	ld a, [wPdPBlock1bUnk4]
	jr .asm_42098
.asm_42095
	ld a, [wPdPBlock1bUnk5]
.asm_42098
	ld b, a
	and $f0
	swap a
	dec a
	ld c, a
	ld a, b
	and $0f
	dec a
	ld b, a
	ld a, c
	sub b
	ld b, $00
	ld hl, $5d62
	add hl, bc
	add [hl]
	jr .asm_420b1
.asm_420af
	ld a, $07
.asm_420b1
	ld [wc8af], a
	ld a, [$d088]
	bit 0, a
	jr nz, .asm_42111
	bit 1, a
	jr nz, .asm_4213a
	ld a, [$d089]
	bit 0, a
	jr nz, .asm_42116
	bit 1, a
	jr nz, .asm_4213a
	ld a, [$d08a]
	bit 0, a
	jr nz, .asm_4211b
	bit 1, a
	jp nz, .asm_4213a
	ld a, [$d08b]
	bit 0, a
	jr nz, .asm_42120
	bit 1, a
	jr nz, .asm_4213a
	ld a, [$d030]
	and a
	jr nz, .asm_42107
	ld a, [$d031]
	and a
	jr nz, .asm_42107
	ld a, [$d032]
	and a
	jr nz, .asm_42107
	ld a, [$d033]
	and a
	jr nz, .asm_42107
	ld a, [$d034]
	and a
	jr nz, .asm_42107
	ld a, [$d035]
	and a
	jr nz, .asm_42107
	jr .asm_4213c
.asm_42107
	cp $07
	jr nz, .asm_4213c
	call Random_0to5
	inc a
	jr .asm_4213c
.asm_42111
	ld a, [wPdPBlock1cUnk4]
	jr .asm_42123
.asm_42116
	ld a, [wPdPBlock1cUnk5]
	jr .asm_42123
.asm_4211b
	ld a, [wPdPBlock1dType]
	jr .asm_42123
.asm_42120
	ld a, [wPdPBlock1dUnk1]
.asm_42123
	ld b, a
	and $f0
	swap a
	dec a
	ld c, a
	ld a, b
	and $0f
	dec a
	ld b, a
	ld a, c
	sub b
	ld b, $00
	ld hl, $5d62
	add hl, bc
	add [hl]
	jr .asm_4213c
.asm_4213a
	ld a, $07
.asm_4213c
	ld [wc8b0], a
	ld a, [$d090]
	bit 0, a
	jr nz, .asm_4219c
	bit 1, a
	jr nz, .asm_421c5
	ld a, [$d091]
	bit 0, a
	jr nz, .asm_421a1
	bit 1, a
	jr nz, .asm_421c5
	ld a, [$d092]
	bit 0, a
	jr nz, .asm_421a6
	bit 1, a
	jp nz, .asm_421c5
	ld a, [$d093]
	bit 0, a
	jr nz, .asm_421ab
	bit 1, a
	jr nz, .asm_421c5
	ld a, [$d038]
	and a
	jr nz, .asm_42192
	ld a, [$d039]
	and a
	jr nz, .asm_42192
	ld a, [$d03a]
	and a
	jr nz, .asm_42192
	ld a, [$d03b]
	and a
	jr nz, .asm_42192
	ld a, [$d03c]
	and a
	jr nz, .asm_42192
	ld a, [$d03d]
	and a
	jr nz, .asm_42192
	jr .asm_421c7
.asm_42192
	cp $07
	jr nz, .asm_421c7
	call Random_0to5
	inc a
	jr .asm_421c7
.asm_4219c
	ld a, [wPdPBlock1eType]
	jr .asm_421ae
.asm_421a1
	ld a, [wPdPBlock1eUnk1]
	jr .asm_421ae
.asm_421a6
	ld a, [wPdPBlock1eUnk2]
	jr .asm_421ae
.asm_421ab
	ld a, [wPdPBlock1eUnk3]
.asm_421ae
	ld b, a
	and $f0
	swap a
	dec a
	ld c, a
	ld a, b
	and $0f
	dec a
	ld b, a
	ld a, c
	sub b
	ld b, $00
	ld hl, $5d62
	add hl, bc
	add [hl]
	jr .asm_421c7
.asm_421c5
	ld a, $07
.asm_421c7
	ld [wc8b1], a
	ld a, [$d098]
	bit 0, a
	jr nz, .asm_42227
	bit 1, a
	jr nz, .asm_42250
	ld a, [$d099]
	bit 0, a
	jr nz, .asm_4222c
	bit 1, a
	jr nz, .asm_42250
	ld a, [$d09a]
	bit 0, a
	jr nz, .asm_42231
	bit 1, a
	jp nz, .asm_42250
	ld a, [$d09b]
	bit 0, a
	jr nz, .asm_42236
	bit 1, a
	jr nz, .asm_42250
	ld a, [$d040]
	and a
	jr nz, .asm_4221d
	ld a, [$d041]
	and a
	jr nz, .asm_4221d
	ld a, [$d042]
	and a
	jr nz, .asm_4221d
	ld a, [$d043]
	and a
	jr nz, .asm_4221d
	ld a, [$d044]
	and a
	jr nz, .asm_4221d
	ld a, [$d045]
	and a
	jr nz, .asm_4221d
	jr .asm_42252
.asm_4221d
	cp $07
	jr nz, .asm_42252
	call Random_0to5
	inc a
	jr .asm_42252
.asm_42227
	ld a, [wPdPBlock1fUnk2]
	jr .asm_42239
.asm_4222c
	ld a, [wPdPBlock1fUnk3]
	jr .asm_42239
.asm_42231
	ld a, [wPdPBlock1fUnk4]
	jr .asm_42239
.asm_42236
	ld a, [wPdPBlock1fUnk5]
.asm_42239
	ld b, a
	and $f0
	swap a
	dec a
	ld c, a
	ld a, b
	and $0f
	dec a
	ld b, a
	ld a, c
	sub b
	ld b, $00
	ld hl, $5d62
	add hl, bc
	add [hl]
	jr .asm_42252
.asm_42250
	ld a, $07
.asm_42252
	ld [wc8b2], a
	ret

Func_42256:
	ld a, [wca1e]
	and a
	ret z
	ld hl, hff8a
	ld [hl], a
.asm_4225f
	nop
	nop
	nop
	nop
	nop
	dec [hl]
	jr nz, .asm_4225f
	ret

Func_42268:
	ld a, [wGameMode]
	cp GAMEMODE_CHALLENGE
	jr z, .asm_42279
	cp GAMEMODE_2P_VS
	jr z, .asm_4227e
	cp GAMEMODE_2P_LINE_CLEAR
	jr z, .asm_4227e
	jr .done
.asm_42279
	ld bc, $5c60
	jr .asm_42281
.asm_4227e
	ld bc, $5c66
.asm_42281
	ld a, [wBoard]
	ld l, a
	ld h, $00
	push bc
	ld c, l
	ld b, h
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
	add hl, hl
	add hl, hl
	add hl, bc
	add hl, hl ; *138
	pop bc
	add hl, bc
	ld a, $40
	call GetFarByte
	inc hl
	ld c, a
	ld a, $40
	call GetFarByte
	inc hl
	ld b, a
	ld a, $40
	call GetFarByte
	inc hl
	push hl
	ld l, c
	ld h, b
	ld de, wOpponentAttackMeterTilemap
	ld bc, $e
	call FarCopyHLtoDE
	pop hl
	ld a, $40
	call GetFarByte
	inc hl
	ld c, a
	ld a, $40
	call GetFarByte
	inc hl
	ld b, a
	ld a, $40
	call GetFarByte
	inc hl
	ld l, c
	ld h, b
	ld de, wOpponentAttackMeterAttrmap
	ld bc, $e
	call FarCopyHLtoDE
.done
	ret

UpdateBothPokemonPortraitAnimations:
.start_player
	ld hl, wPlayerMonPortraitAnimPtr
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [hli]
	dec a
	jr z, .jp_player
	ld a, [wPlayerMonPortraitAnimTimer]
	and a
	jr nz, .tick_down_player
	ld a, [hli]
	ld [wPlayerMonPortraitAnimTimer], a
	ld a, [hl]
	swap a
	add a ; *32
	ld c, a
	ld b, $00
	ld hl, wPlayerMonPortraitBGMaps
	add hl, bc
	ld de, wPlayerMonTilemap
	ld bc, 2 * (4 * 4)
	call CopyHLtoDE
.tick_down_player
	ld hl, wPlayerMonPortraitAnimTimer
	dec [hl]
	jr nz, .start_opp
	; next frame
	ld hl, wPlayerMonPortraitAnimPtr
	ld a, [hl]
	add $3
	ld [hli], a
	ld a, [hl]
	adc 0
	ld [hl], a
	jr .start_opp
.jp_player
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ld hl, wPlayerMonPortraitAnimPtr
	ld a, c
	ld [hli], a
	ld [hl], b
	jr .start_player

.start_opp
	ld hl, wOpponentMonPortraitAnimPtr
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [hli]
	dec a
	jr z, .jp_opp
	ld a, [wOpponentMonPortraitAnimTimer]
	and a
	jr nz, .tick_down_opp
	ld a, [hli]
	ld [wOpponentMonPortraitAnimTimer], a
	ld a, [hl]
	swap a
	add a ; *32
	ld c, a
	ld b, $00
	ld hl, wOpponentMonPortraitBGMaps
	add hl, bc
	ld de, wOpponentMonTilemap
	ld bc, 2 * (4 * 4)
	call CopyHLtoDE
.tick_down_opp
	ld hl, wOpponentMonPortraitAnimTimer
	dec [hl]
	jr nz, .done
	; next frame
	ld hl, wOpponentMonPortraitAnimPtr
	ld a, [hl]
	add $3
	ld [hli], a
	ld a, [hl]
	adc 0
	ld [hl], a
	jr .done
.jp_opp
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ld hl, wOpponentMonPortraitAnimPtr
	ld a, c
	ld [hli], a
	ld [hl], b
	jr .start_opp
.done
	ret

UpdatePlayerPokemonPortraitAnimations:
.start
	ld hl, wPlayerMonPortraitAnimPtr
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [hli]
	dec a
	jr z, .jp
	ld a, [wPlayerMonPortraitAnimTimer]
	and a
	jr nz, .tick_down
	ld a, [hli]
	ld [wPlayerMonPortraitAnimTimer], a
	ld a, [hl]
	swap a
	add a ; *32
	ld c, a
	ld b, $00
	ld hl, wPlayerMonPortraitBGMaps
	add hl, bc
	ld de, wPlayerMonTilemap
	ld bc, 2 * (4 * 4)
	call CopyHLtoDE
.tick_down
	ld hl, wPlayerMonPortraitAnimTimer
	dec [hl]
	jr nz, .done
	; next frame
	ld hl, wPlayerMonPortraitAnimPtr
	ld a, [hl]
	add $3
	ld [hli], a
	ld a, [hl]
	adc 0
	ld [hl], a
	jr .done
.jp
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ld hl, wPlayerMonPortraitAnimPtr
	ld a, c
	ld [hli], a
	ld [hl], b
	jr .start
.done
	ret

UpdateOpponentPokemonPortraitAnimations:
.start
	ld hl, wOpponentMonPortraitAnimPtr
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [hli]
	dec a
	jr z, .jp
	ld a, [wOpponentMonPortraitAnimTimer]
	and a
	jr nz, .tick_down
	ld a, [hli]
	ld [wOpponentMonPortraitAnimTimer], a
	ld a, [hl]
	swap a
	add a ; *32
	ld c, a
	ld b, $00
	ld hl, wOpponentMonPortraitBGMaps
	add hl, bc
	ld de, wOpponentMonTilemap
	ld bc, 2 * (4 * 4)
	call CopyHLtoDE
.tick_down
	ld hl, wOpponentMonPortraitAnimTimer
	dec [hl]
	jr nz, .done
	; next frame
	ld hl, wOpponentMonPortraitAnimPtr
	ld a, [hl]
	add $3
	ld [hli], a
	ld a, [hl]
	adc 0
	ld [hl], a
	jr .done
.jp
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ld hl, wOpponentMonPortraitAnimPtr
	ld a, c
	ld [hli], a
	ld [hl], b
	jr .start
.done
	ret

Func_423f1:
	; set both portrait animations as idle
	ld a, LOW(PortraitAnim_Idle)
	ld [wPlayerMonPortraitAnimPtr + 0], a
	ld [wOpponentMonPortraitAnimPtr + 0], a
	ld a, HIGH(PortraitAnim_Idle)
	ld [wPlayerMonPortraitAnimPtr + 1], a
	ld [wOpponentMonPortraitAnimPtr + 1], a

	ld a, $10
	ld [wc9b4], a
	ld [wc9b9], a

	xor a
	ld [wPlayerMonPortraitAnimTimer], a
	ld [wOpponentMonPortraitAnimTimer], a
	ret
; 0x42411

SECTION "Bank 10@647d", ROMX[$647d], BANK[$10]

SetPlayerMonHurtAnimation:
	push bc
	ld a, [wPlayerMon]
	ld l, a
	ld h, $00
	ld c, l
	ld b, h
	add hl, hl
	add hl, bc
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl ; *48
	ld bc, PokemonData + PKMNSTRUCT_HURT_ANIM
	add hl, bc
	ld a, BANK(PokemonData)
	call GetFarByte
	inc hl
	ld [wPlayerMonPortraitAnimPtr + 0], a
	ld a, BANK(PokemonData)
	call GetFarByte
	inc hl
	ld [wPlayerMonPortraitAnimPtr + 1], a
	ld a, BANK(PokemonData)
	call GetFarByte
	ld [wc9b4], a
	xor a
	ld [wPlayerMonPortraitAnimTimer], a
	pop bc
	ret
; 0x424b0

SECTION "Bank 10@6411", ROMX[$6411], BANK[$10]

PortraitAnim_Idle:
.loop
	db $0, 10, $00
	dbw $1, .loop
; 0x42579

SECTION "Bank 10@6561", ROMX[$6561], BANK[$10]

PortraitAnim_Hurt:
	db $0, 20, $01
	db $0,  6, $04
	db $0, 20, $01
	db $0,  6, $04
	db $0, 20, $01
	db $0,  6, $04
.loop
	db $0, 10, $00
	dbw $1, .loop
; 0x42579
