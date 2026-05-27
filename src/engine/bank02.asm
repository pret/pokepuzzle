Func_8000:
	ld de, NULL
	ld hl, $cbf3
.asm_8006
	ld a, [hli]
	and a
	jr z, .asm_8013
	inc hl
	inc e
	inc e
	ld a, e
	cp $18
	jr c, .asm_8006
	ret
.asm_8013
	xor a
	ld [hld], a
	inc a
	ld [hl], a
	ld hl, wcbec
	ld a, [hli]
	ld c, [hl]
	ld b, a
	ld hl, $cc0b
	add hl, de
	xor a
	ld [hli], a
	ld [hl], b
	ld hl, $cc23
	add hl, de
	xor a
	ld [hli], a
	ld [hl], c
	ld a, [wcbee + 0]
	ld l, a
	ld a, [wcbee + 1]
	ld h, a
	ld bc, $525e
	add hl, bc
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ld hl, $cc3b
	add hl, de
	ld a, c
	ld [hli], a
	ld [hl], b
	ld hl, $cc53
	add hl, de
	xor a
	ld [hl], a
	ld hl, $cc6b
	add hl, de
	ld a, [wcbf0]
	ld [hli], a
	ld [hl], $00
	inc a
	jr nz, .asm_8057
	ld [hl], $01
	ret
.asm_8057
	ld hl, $cbe9
	ld a, [hl]
	cp $02
	jr c, .asm_8075
	ld hl, $cbea
	ld c, [hl]
	ld b, $00
	ld hl, $cc54
	add hl, bc
	ld [hl], $01
	ld a, [wcbeb]
	ld [$cbea], a
	ld a, $01
	jr .asm_8076
.asm_8075
	inc [hl]
.asm_8076
	ld hl, $cbea
	ld c, a
	ld b, $00
	add hl, bc
	ld [hl], e
	ld hl, $cc54
	add hl, de
	xor a
	ld [hl], a
	farcall Func_9048
	ret

Func_808b:
	ld de, NULL
Func_808e:
	ld hl, $cbf3
	add hl, de
	ld a, [hli]
	and a
	jp z, Func_843a
	dec a
	jp z, .asm_80a6
	dec a
	jp z, Func_8135
	dec a
	jp z, Func_828c
	jp Func_83b3

.asm_80a6
	ld c, [hl]
	ld b, $00
	inc [hl]
	ld hl, $410c
	add hl, bc
	ld a, [hl]
	cp $80
	jr nz, .asm_80e7
	ld hl, $cbf3
	add hl, de
	inc [hl]
	inc hl
	xor a
	ld [hl], a
	ld hl, $cc53
	add hl, de
	xor a
	ld [hli], a
	ld a, [hl]
	and a
	jp nz, .asm_80d0
	ld hl, $cbe9
	dec [hl]
	ld a, [wcbeb]
	ld [$cbea], a
.asm_80d0
	ld hl, $cc0c
	add hl, de
	ld a, [hl]
	add $10
	ld b, a
	ld hl, $cc24
	add hl, de
	ld a, [hl]
	ld c, a
	ld hl, $cc9b
	add hl, de
	ld [hl], $08
	jp Func_843a
.asm_80e7
	ld c, a
	ld hl, $cc24
	add hl, de
	ld a, [hl]
	add c
	ld [hl], a
	ld hl, $cc54
	add hl, de
	ld a, [hl]
	and a
	jr z, .asm_80fa
	call Func_8327
.asm_80fa
	ld a, [wceb2]
	and a
	jp z, .asm_8109
	ld a, [wc877]
	and $01
	jp nz, Func_843a
.asm_8109
	jp Func_841c
; 0x810c

SECTION "Bank 2@4135", ROMX[$4135], BANK[$2]

Func_8135:
	ld hl, $cbf4
	add hl, de
	ld a, [hl]
	ld c, a
	inc a
	ld [hl], a
	ld l, c
	ld h, $00
	add hl, hl
	add hl, hl
	ld bc, $4198
	add hl, bc
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
	cp $ff
	jr z, .asm_8184
	ld a, [hl]
	ld hl, $cc9b
	add hl, de
	add [hl]
	and $3f
	ld [hl], a
	add a
	ld l, a
	ld h, $00
	add hl, bc
	push hl
	ld bc, $20
	add hl, bc
	ld b, h
	ld c, l
	ld a, [hli]
	ld c, a
	ld b, [hl]
	ld hl, $cc0b
	add hl, de
	ld a, [hl]
	add c
	ld [hli], a
	ld a, [hl]
	adc b
	ld [hl], a
	pop hl
	ld a, [hli]
	ld c, a
	ld b, [hl]
	ld hl, $cc23
	add hl, de
	ld a, [hl]
	add c
	ld [hli], a
	ld a, [hl]
	adc b
	ld [hl], a
	call Func_8327
	jp Func_841c
.asm_8184
	ld hl, $cbf3
	add hl, de
	inc [hl]
	ld hl, $cbf4
	add hl, de
	xor a
	ld [hl], a
	ld hl, $cc53
	add hl, de
	xor a
	ld [hl], a
	jp Func_843a
; 0x8198

SECTION "Bank 2@428c", ROMX[$428c], BANK[$2]

Func_828c:
	ld hl, $cc0c
	add hl, de
	ld a, [hl]
	ldh [hff8a], a
	ld hl, $cc24
	add hl, de
	ld a, [hl]
	ldh [hff8b], a
	ld a, $6d
	ldh [hff8c], a
	call Func_8371
	add $10
	ldh [hff8d], a
	push de
	call Func_8443
	pop de
	add a
	ld c, a
	ld b, $00
	ld hl, $4c63
	add hl, bc
	ld a, [hl]
	ld hl, $4c43
	add hl, bc
	ld c, [hl]
	ld b, a
	ld hl, $cc0b
	add hl, de
	ld a, [hl]
	add $00
	ld [hli], a
	ld a, [hl]
	adc b
	ld [hl], a
	ld b, a
	ld hl, $cc23
	add hl, de
	ld a, [hl]
	add $00
	ld [hli], a
	ld a, [hl]
	adc c
	ld [hl], a
	ld c, a
	ld h, b
	ld l, c
	call Func_8371
	add $10
	ld c, a
	ld b, $6d
	call Func_8395
	jr c, .asm_82e6
	call Func_8327
	jp Func_841c
.asm_82e6
	ld hl, $cbf3
	add hl, de
	inc [hl]
	ld hl, $cbf4
	add hl, de
	xor a
	ld [hl], a
	ld hl, $cc53
	add hl, de
	xor a
	ld [hl], a
	ld hl, $cc6b
	add hl, de
	ld a, [hl]
	cp $ff
	jr nz, .asm_8311
	ld [wc900], a
	ld hl, $cbf2
	ld b, [hl]
	ld [hl], $00
	farcall Func_4cb3
	jr .asm_8324
.asm_8311
	and $c0
	cp $80
	ld a, [hl]
	and $3f
	ld [$cbf2], a
	ld a, [hl]
	ldh [hff8a], a
	farcall Func_6c8c
.asm_8324
	jp Func_843a

Func_8327:
.asm_8327
	ld hl, $cc53
	add hl, de
	ld a, [hl]
	add a
	ld c, a
	ld b, $00
	ld hl, $4353
	add hl, bc
	ld a, [hli]
	or [hl]
	jr nz, .asm_833f
	ld hl, $cc53
	add hl, de
	ld [hl], a
	jr .asm_8327
.asm_833f
	dec hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ld hl, $cc3b
	add hl, de
	ld a, c
	ld [hli], a
	ld [hl], b
	ld hl, $cc53
	add hl, de
	inc [hl]
	ret
; 0x8353

SECTION "Bank 2@4371", ROMX[$4371], BANK[$2]

Func_8371:
	ld a, [wc900]
	cp $ff
	jr nz, .asm_837b
	ld a, [wc8ff]
.asm_837b
	ld b, a
	ld a, [wc8fe]
	ld c, a
	cp b
	jr c, .asm_8389
	jr z, .asm_8389
	ld a, b
	or $80
	ld b, a
.asm_8389
	ld a, b
	sub c
	cp $07
	jr c, .asm_8391
	ld a, $06
.asm_8391
	add a
	add a
	add a
	ret

Func_8395:
	ld a, h
	sub b
	jr nc, .asm_839c
	xor $ff
	inc a
.asm_839c
	ld b, a
	ld a, l
	sub c
	jr nc, .asm_83a4
	xor $ff
	inc a
.asm_83a4
	ld c, a
	ld a, b
	cp $08
	jr nc, .asm_83b1
	ld a, c
	cp $08
	jr nc, .asm_83b1
	scf
	ret
.asm_83b1
	and a
	ret

Func_83b3:
	inc [hl]
	ld hl, $cc53
	add hl, de
	ld a, [hl]
	add a
	ld c, a
	ld b, $00
	ld hl, $43e4
	add hl, bc
	ld a, [hli]
	or [hl]
	jr z, .asm_83db
	dec hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ld hl, $cc3b
	add hl, de
	ld a, c
	ld [hli], a
	ld [hl], b
	ld hl, $cc53
	add hl, de
	inc [hl]
	jp Func_841c
.asm_83db
	ld hl, $cbf3
	add hl, de
	xor a
	ld [hl], a
	jp Func_843a
; 0x83e4

SECTION "Bank 2@441c", ROMX[$441c], BANK[$2]

Func_841c:
	ld hl, $cc6b
	add hl, de
	ld a, [hl]
	inc a
	jr z, Func_843a
	ld hl, $cc0c
	add hl, de
	ld b, [hl]
	ld hl, $cc24
	add hl, de
	ld c, [hl]
	ld hl, $cc3b
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	push de
	call Func_2f8
	pop de
;	fallthrough

Func_843a:
	inc e
	inc e
	ld a, e
	cp $18
	jp c, Func_808e
	ret

Func_8443:
	ldh a, [hff8a]
	ld b, a
	ldh a, [hff8c]
	sub b
	jr nc, .asm_8453
	cp $80
	jr nc, .asm_8459
	ld a, $81
	jr .asm_8459
.asm_8453
	cp $80
	jr c, .asm_8459
	ld a, $7f
.asm_8459
	ldh [hff94], a
	ldh a, [hff8b]
	ld b, a
	ldh a, [hff8d]
	sub b
	jr nc, .asm_846b
	cp $80
	jr nc, .asm_8471
	ld a, $81
	jr .asm_8471
.asm_846b
	cp $80
	jr c, .asm_8471
	ld a, $7f
.asm_8471
	ldh [hff95], a
	ld bc, NULL
	ldh a, [hff94]
	and $80
	jr z, .asm_847d
	inc c
.asm_847d
	ldh a, [hff95]
	and $80
	jr z, .asm_8485
	inc c
	inc c
.asm_8485
	ld a, c
	add a
	ld c, a
	ld hl, $4490
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl
; 0x8490

SECTION "Bank 2@4ce2", ROMX[$4ce2], BANK[$2]

Func_8ce2:
	push bc
	push de
	ld de, NULL
	ld hl, $cae9
.asm_8cea
	ld a, [hli]
	and a
	jr z, .asm_8cf9
	inc hl
	inc e
	inc e
	ld a, e
	cp $20
	jr c, .asm_8cea
	pop de
	pop bc
	ret
.asm_8cf9
	xor a
	ld [hld], a
	inc a
	ld [hl], a
	ld hl, $cb09
	add hl, de
	xor a
	ld [hli], a
	ldh a, [hSCX]
	ld [hl], a
	ld a, b
	sub [hl]
	ld [hl], a
	ld hl, $cb29
	add hl, de
	xor a
	ld [hli], a
	ldh a, [hSCY]
	ld [hl], a
	ld a, c
	sub [hl]
	ld [hl], a
	pop bc
	ld hl, $cba9
	add hl, de
	ld a, c
	ld [hli], a
	ld [hl], b
	ld hl, $cbc9
	add hl, de
	ld a, [wcae8]
	ld [hli], a
	ld [hl], $00
	inc a
	jr z, .asm_8d2f
	call Func_8ff4
	jr .asm_8d49
.asm_8d2f
	ld hl, $cae9
	add hl, de
	inc [hl]
	ld hl, $cb69
	add hl, de
	ld [hl], $18
	ld hl, $cb89
	add hl, de
	ld [hl], $00
	ld hl, $cba9
	add hl, de
	ld a, $8b
	ld [hli], a
	ld [hl], $70
.asm_8d49
	ld hl, $525e
	add hl, bc
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ld hl, $cb49
	add hl, de
	ld a, c
	ld [hli], a
	ld [hl], b
	pop bc
	ret

Func_8d59:
	ld de, NULL
Func_8d5c:
	ld hl, $cae9
	add hl, de
	ld a, [hl]
	and a
	jp z, Func_91b4
	add a
	ld c, a
	ld b, $00
	ld hl, $4d71
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl
; 0x8d71

SECTION "Bank 2@4fe6", ROMX[$4fe6], BANK[$2]

Func_8fe6:
	ld l, a
	ld h, $00
	push bc
	ld c, l
	ld b, h
	add hl, hl
	add hl, bc
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	pop bc
	ret

Func_8ff4:
	push hl
	push bc
	ld a, [wc7ce]
	and a
	jr nz, .asm_9045
	ld a, $01
	ld [wc89f], a
	ld a, [wceb8]
	and a
	jr nz, .asm_9027
	ld a, [wPlayerMon]
	call Func_8fe6
	ld bc, PokemonData + PKMNSTRUCT_UNK27
	add hl, bc
	ld a, BANK(PokemonData)
	call GetFarByte
	ld c, a
	inc hl
	ld a, BANK(PokemonData)
	call GetFarByte
	ld b, a
	inc hl
	ld a, BANK(PokemonData)
	call GetFarByte
	ld [bc], a
	jr .asm_9045
.asm_9027
	ld a, [wPlayerMon]
	call Func_8fe6
	ld bc, PokemonData + PKMNSTRUCT_UNK2A
	add hl, bc
	ld a, BANK(PokemonData)
	call GetFarByte
	ld c, a
	inc hl
	ld a, BANK(PokemonData)
	call GetFarByte
	ld b, a
	inc hl
	ld a, BANK(PokemonData)
	call GetFarByte
	ld [bc], a
.asm_9045
	pop bc
	pop hl
	ret

Func_9048:
	push hl
	push bc
	ld a, [wc7ce]
	and a
	jr nz, .asm_9094
	ld a, [wceb8]
	and a
	jr nz, .asm_9076
	ld a, [wOpponentMon]
	call Func_8fe6
	ld bc, PokemonData + PKMNSTRUCT_UNK27
	add hl, bc
	ld a, BANK(PokemonData)
	call GetFarByte
	ld c, a
	inc hl
	ld a, BANK(PokemonData)
	call GetFarByte
	ld b, a
	inc hl
	ld a, BANK(PokemonData)
	call GetFarByte
	ld [bc], a
	jr .asm_9094
.asm_9076
	ld a, [wOpponentMon]
	call Func_8fe6
	ld bc, PokemonData + PKMNSTRUCT_UNK2A
	add hl, bc
	ld a, BANK(PokemonData)
	call GetFarByte
	ld c, a
	inc hl
	ld a, BANK(PokemonData)
	call GetFarByte
	ld b, a
	inc hl
	ld a, BANK(PokemonData)
	call GetFarByte
	ld [bc], a
.asm_9094
	pop bc
	pop hl
	ret
; 0x9097

SECTION "Bank 2@51b4", ROMX[$51b4], BANK[$2]

Func_91b4:
	inc e
	inc e
	ld a, e
	cp $20
	jp c, Func_8d5c
	ret
; 0x91bd

SECTION "Bank 2@5306", ROMX[$5306], BANK[$2]

Func_9306:
	ld a, [wGameMode]
	cp GAMEMODE_LINE_CLEAR
	jr z, .asm_9312
	cp GAMEMODE_2P_LINE_CLEAR
	jr z, .asm_9312
	ret
.asm_9312
	ld hl, wc8eb
	ld c, [hl]
	ld b, $00
	inc [hl]
	ld hl, $5328
	add hl, bc
	ld a, [hl]
	cp $ff
	jr nz, .asm_934d
	xor a
	ld [wc8eb], a
	jr .asm_9312

	db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $ff

.asm_934d
	ld [wc8ea], a
	and a
	jr nz, .asm_937c
	ld a, [wGameMode]
	cp GAMEMODE_2P_LINE_CLEAR
	jr nz, .asm_937c
	ld b, $6c
	ld a, [wcdab]
	cp $b0
	jr nc, .asm_937c
	sub $10
	and a
	rr a
	add $4a
	ld c, a
	ld hl, $5373
	call Func_2f8
	jr .asm_937c

	db $02, $00, $00, $46, $08, $00, $08, $47, $08

.asm_937c
	ld hl, wc8e2
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ld hl, wc8e4
	ld a, [hli]
	sub c
	ld c, a
	ld a, [hl]
	sbc b
	ld b, a
	cp $0a
	jr c, .asm_9395
	ld a, $ff
	ld [wc8e6], a
	ret
.asm_9395
	ld h, b
	ld l, c
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	ld a, h
	ld [wc8e6], a
.asm_939f
	ld a, [wc8e9]
	ld c, a
	ld b, $00
	ld hl, $53e5
	add hl, bc
	ld a, [hl]
	cp $ff
	jr nz, .asm_93b4
	xor a
	ld [wc8e9], a
	jr .asm_939f
.asm_93b4
	ld e, a
	ld hl, wc8e8
	ld a, [hl]
	inc a
	cp e
	jr nz, .asm_93c5
	ld a, [wc8e9]
	inc a
	ld [wc8e9], a
	xor a
.asm_93c5
	ld [hl], a
	ld a, [wGameMode]
	cp GAMEMODE_2P_LINE_CLEAR
	ret z
	ld a, [wc8e9]
	and $01
	jr nz, .asm_93d8
	ld hl, $5a1d
	jr .asm_93db
.asm_93d8
	ld hl, $5a2e
.asm_93db
	ld a, [wc8e6]
	ld c, a
	ld b, $68
	call Func_2f8
	ret
; 0x93e5

SECTION "Bank 2@5b2d", ROMX[$5b2d], BANK[$2]

Func_9b2d:
	ld a, [wStage]
	farcall_saveregs Func_10130e
	ld [wcd08], a
	add a
	ld c, a
	ld b, $00
	ld hl, PtrTable_a028
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, l
	ld [wcd09 + 0], a
	ld a, h
	ld [wcd09 + 1], a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wGameLevel]
	ld c, a
	add a
	add a
	add a
	add c
	add a ; *18
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [hli]
	ld [wcd0b + 0], a
	ld [wcd0d + 0], a
	ld [wcd0f + 0], a
	ld a, [hli]
	ld [wcd0b + 1], a
	ld [wcd0d + 1], a
	ld [wcd0f + 1], a
	ld a, [hli]
	ld [wcd13], a
	ld a, [hli]
	ld [wcd14], a
	ld a, [hli]
	ld [wcd11], a
	ld a, [hli]
	ld [wcd12], a
	ld a, [hli]
	ld [wcd15], a
	ld a, [hli]
	ld [wcd16], a
	ld a, [hli]
	ld [wcd17], a
	ld a, [hli]
	ld [wcd18], a
	ld a, [hli]
	ld [wcd19], a
	ld [wcd1b], a
	ld a, [hli]
	ld [wcd1a], a
	ld [wcd1c], a
	ld a, [hli]
	ld [wcd1d], a
	ld a, [hli]
	ld [wcd1e], a
	ld a, [hli]
	ld [wcd1f], a
	ld a, [hli]
	ld [wcd20], a
	ld a, [hli]
	ld [wcd28], a
	ld [wcd2a], a
	ld a, [hli]
	ld [wcd29], a
	ld [wcd2b], a
	xor a
	ld [wcd21 + 0], a
	ld [wcd21 + 1], a
	ld [wcd23 + 0], a
	ld [wcd23 + 1], a
	ld [wcd25], a
	xor a
	ld [wcd26], a
	ld [wcd27], a
	ld [wcd2c], a
	ld [wcd2d], a
	ld [wcd2e], a
	xor a
	ld [wcd2f], a
	ld [wcd30], a
	ld [wcd31], a
	ld [wcd32], a
	ld [wcd34], a

	ld hl, wcd0d
	ld a, [hli]
	ld d, [hl]
	ld e, a
	ld bc, 0
.asm_9bf5
	ld a, e
	sub $09
	ld e, a
	ld a, d
	sbc $00
	ld d, a
	jr c, .asm_9c02
	inc bc
	jr .asm_9bf5
.asm_9c02
	; bc = wcd0d / 9
	ld hl, wcd44
	ld a, c
	ld [hli], a
	ld [hl], b

	ld de, NULL
.asm_9c0b
	ld a, c
	sub $08
	ld c, a
	ld a, b
	sbc $00
	ld b, a
	jr c, .asm_9c18
	inc de
	jr .asm_9c0b
.asm_9c18
	; de = wcd44 / 8
	ld hl, wcd42
	ld a, e
	ld [hli], a
	ld [hl], d

	call Func_9fd7
	ret

Func_9c22:
	call Func_1d31
	ret nz
	call Func_9c30
	call Func_9e57
	call Func_9f22
	ret

Func_9c30:
	xor a
	ld [wcd2f], a
	call Func_9fd7
Func_9c37:
	ld hl, wcd2c
	ld a, [hli]
	or [hl]
	jp z, .asm_9d13
	ld a, [hld]
	ld l, [hl]
	ld h, a
	ld c, l
	ld b, h
	inc bc
	ld a, [hl]
	dec a
	jp z, .asm_9c65
	dec a
	jp z, .asm_9c9f
	dec a
	jp z, .asm_9ccc
	dec a
	jp z, .asm_9ce0
	dec a
	jp z, .asm_9cf0
	dec a
	jp z, .asm_9ce7
	ld a, [bc]
	ld [wcd2f], a
	jp .asm_9d08

.asm_9c65
	ld a, [wcd30]
	and a
	jp nz, .asm_9d08
	ld a, [bc]
	and $7f
	ld [wcd30], a
	xor a
	ld [wcd31], a
	ld [wcd34], a
	call Func_9ef5
	ld hl, wcd09
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $c
	add hl, de
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wGameLevel]
	add a
	add a
	add a
	ld c, a
	ld b, $00
	add hl, bc
	ld c, l
	ld b, h
	ld hl, wcd32
	ld a, c
	ld [hli], a
	ld [hl], b
	jp .asm_9d08

.asm_9c9f
	ld hl, wcd11
	ld a, [hli]
	ld d, [hl]
	ld e, a
	ld hl, wcd0b
	ld a, [hli]
	add e
	ld e, a
	ld a, [hld]
	adc d
	ld d, a
	ld a, [wcd0d + 0]
	sub e
	ld a, [wcd0d + 1]
	sbc d
	jr nc, .asm_9cc0
	ld a, [wcd0d + 0]
	ld e, a
	ld a, [wcd0d + 1]
	ld d, a
.asm_9cc0
	ld a, e
	ld [hli], a
	ld [hl], d
	ld hl, wcd0f
	ld a, e
	ld [hli], a
	ld [hl], d
	jp .asm_9cfa

.asm_9ccc
	ld hl, wcd2e
	ld a, [hl]
	and a
	jr nz, .asm_9cd9
	ld a, [bc]
	and a
	jr nz, .asm_9cd8
	inc a
.asm_9cd8
	ld [hl], a
.asm_9cd9
	dec [hl]
	jp nz, .asm_9d13
	jp .asm_9cfa

.asm_9ce0
	ld a, [wcd30]
	and a
	jp nz, .asm_9d13
.asm_9ce7
	ld hl, wcd2c
	xor a
	ld [hli], a
	ld [hl], a
	jp .asm_9d13

.asm_9cf0
	ld a, [wcd30]
	and a
	jp z, .asm_9cfa
	jp .asm_9d13

.asm_9cfa
	ld hl, wcd2c
	ld a, [hl]
	add $02
	ld [hli], a
	ld a, [hl]
	adc $00
	ld [hl], a
	jp Func_9c37

.asm_9d08
	ld hl, wcd2c
	ld a, [hl]
	add $02
	ld [hli], a
	ld a, [hl]
	adc $00
	ld [hl], a
.asm_9d13
	ld a, [wcd27]
	and a
	jr z, .asm_9d37
	ld hl, wcd2a
	ld a, [hl]
	sub $01
	ld [hli], a
	ld a, [hl]
	sbc $00
	ld [hld], a
	jr nc, .asm_9d37
	ld a, [wcd28]
	ld [hli], a
	ld a, [wcd29]
	ld [hli], a
	ld hl, wcd27
	ld a, [hl]
	sub $01
	jr c, .asm_9d37
	ld [hl], a
.asm_9d37
	ld hl, wcd21
	ld a, [hli]
	ld b, [hl]
	ld c, a
	call Func_9eae
	ld hl, wcd21
	xor a
	ld [hli], a
	ld [hl], a
	ld hl, wcd42
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ld hl, wcd23
	ld a, [hli]
	sub c
	ld a, [hld]
	sbc b
	jr c, .asm_9d5d
	ld a, [hl]
	sub c
	ld [hli], a
	ld a, [hl]
	sbc b
	ld [hl], a
	jr .asm_9d63
.asm_9d5d
	ld a, [hli]
	ld b, [hl]
	ld c, a
	xor a
	ld [hld], a
	ld [hl], a
.asm_9d63
	call Func_9ebc
	ld hl, wcd1b
	ld a, [hl]
	sub $01
	ld [hli], a
	ld a, [hl]
	sbc $00
	ld [hl], a
	jr nc, .asm_9d8a
	ld a, [wcd1a]
	ld [hld], a
	ld a, [wcd19]
	ld [hl], a
	ld hl, wcd1d
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ld hl, wcd1f
	ld a, [hli]
	ld d, [hl]
	ld e, a
	call Func_9eca
.asm_9d8a
	ld hl, wcd2c
	ld a, [hli]
	or [hl]
	jp nz, .asm_9deb
	ld hl, wcd15
	ld a, [hl]
	add $01
	ld [hli], a
	ld a, [hl]
	adc $00
	ld [hld], a
	ld a, [wcd17]
	ld c, a
	ld a, [wcd18]
	ld b, a
	ld a, [hli]
	sub c
	ld a, [hld]
	sbc b
	jp c, .asm_9deb
	xor a
	ld [hli], a
	ld [hl], a
	ld hl, wcd26
	ld a, [hl]
	inc a
	jr z, .asm_9db7
	ld [hl], a
.asm_9db7
	call Func_9ef5
	ld hl, wcd09
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $2
	add hl, de
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wGameLevel]
	add a
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call Random
	and $3f
	ld b, a
.asm_9dd9
	ld a, b
	cp [hl]
	jr c, .asm_9de2
	inc hl
	inc hl
	inc hl
	jr .asm_9dd9
.asm_9de2
	inc hl
	ld a, [hli]
	ld [wcd2c], a
	ld a, [hl]
	ld [wcd2d], a
.asm_9deb
	ld a, [wcd30]
	and a
	jr z, .asm_9dff
	ld hl, wcd31
	cp [hl]
	jr z, .asm_9e21
	ld hl, wcd34
	ld a, [hl]
	and a
	jr z, .asm_9e04
	dec [hl]
.asm_9dff
	xor a
	ld [wcd35], a
	ret
.asm_9e04
	ld hl, wcd32
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call Random
	and $07
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [hl]
	ld [wcd34], a
	ld a, $01
	ld [wcd35], a
	ld hl, wcd31
	inc [hl]
	ret
.asm_9e21
	xor a
	ld [wcd30], a
	ld [wcd32], a
	ld [wcd34], a
	ld a, $02
	ld [wcd35], a
	ret
; 0x9e31

SECTION "Bank 2@5e52", ROMX[$5e52], BANK[$2]

Func_9e52:
	ld a, b
	call Func_9f5f
	ret

Func_9e57:
	ld a, [wcd2f]
	and a
	call nz, .asm_9e6d
	ld a, [wcd35]
	dec a
	jr z, .asm_9e68
	dec a
	jr z, .asm_9e92
	ret
.asm_9e68
	ld a, [wcd31]
	or $80
.asm_9e6d
	ld [wcbf0], a
	ld b, a
	call Func_9f92
	ld hl, wcbee
	ld a, e
	ld [hli], a
	ld [hl], d
	ld hl, wcbec
	ld a, $6c
	ld [hli], a
	ld a, [wcd46]
	cpl
	inc a
	add $90
	ld [hl], a
	call Func_8000
	farcall Func_4244a
	ret
.asm_9e92
	ld a, $ff
	ld [wcbf0], a
	ld hl, wcbee
	ld [hli], a
	ld [hl], a
	ld hl, wcbec
	ld a, $6c
	ld [hli], a
	ld a, [wcd46]
	cpl
	inc a
	add $90
	ld [hl], a
	call Func_8000
	ret

Func_9eae:
	ld hl, wcd0b
	ld a, [hl]
	sub c
	ld [hli], a
	ld a, [hl]
	sbc b
	ld [hld], a
	ret nc
	xor a
	ld [hli], a
	ld [hl], a
	ret

Func_9ebc:
	ld hl, wcd0f
	ld a, [hl]
	sub c
	ld [hli], a
	ld a, [hl]
	sbc b
	ld [hld], a
	ret nc
	xor a
	ld [hli], a
	ld [hl], a
	ret

Func_9eca:
	push bc
	push de
	ld hl, wcd0b
	ld a, [hli]
	sub c
	ld c, a
	ld a, [hld]
	sbc b
	ld b, a
	jr c, .asm_9ee0
	ld a, c
	sub e
	ld a, b
	sbc d
	jr c, .asm_9ee0
	ld a, c
	ld [hli], a
	ld [hl], b
.asm_9ee0
	pop de
	pop bc
	ld hl, wcd0f
	ld a, [hli]
	sub c
	ld c, a
	ld a, [hld]
	sbc b
	ld b, a
	ret c
	ld a, c
	sub e
	ld a, b
	sbc d
	ret c
	ld a, c
	ld [hli], a
	ld [hl], b
	ret

Func_9ef5:
	ld c, $00
	ld a, [wcd26]
	dec a
	jr nz, .asm_9f04
	ld a, c
	add $08
	ld c, a
	ld b, $00
	ret
.asm_9f04
	ld a, [wcd27]
	and a
	jr z, .asm_9f0c
	inc c
	inc c
.asm_9f0c
	ld hl, wcd13
	ld a, [hli]
	ld d, [hl]
	ld e, a
	ld hl, wcd0b
	ld a, [hli]
	sub e
	ld a, [hl]
	sbc d
	jr nc, .asm_9f1f
	inc c
	inc c
	inc c
	inc c
.asm_9f1f
	ld b, $00
	ret

Func_9f22:
	ld hl, wc8d2
	ld c, [hl]
	ld b, $00
.asm_9f28
	ld hl, wc8d3
	ld a, c
	cp [hl]
	jr z, .asm_9f59
	ld hl, wc8be
	add hl, bc
	ld a, [hl]
	and $c0
	jr z, .asm_9f4b
	cp $40
	jr z, .asm_9f4b
	cp $80
	jr z, .asm_9f45
	ld a, [wcd25]
	jr .asm_9f4c
.asm_9f45
	ld a, [hl]
	ld [wcd25], a
	jr .asm_9f4f
.asm_9f4b
	ld a, [hl]
.asm_9f4c
	call Func_9f5f
.asm_9f4f
	ld a, c
	inc a
	cp $0a
	jr nz, .asm_9f56
	xor a
.asm_9f56
	ld c, a
	jr .asm_9f28
.asm_9f59
	ld hl, wc8d3
	ld a, [hld]
	ld [hl], a
	ret

Func_9f5f:
	push bc
	ld c, a
	ld b, $00
	ld l, c
	ld h, b
	add hl, hl
	ld e, l
	ld d, h
	ld hl, $7590
	add hl, bc
	ld c, [hl]
	ld hl, wcd27
	ld a, [hl]
	add c
	jr nc, .asm_9f76
	ld a, $ff
.asm_9f76
	ld [hl], a
	ld hl, $7410
	add hl, de
	ld a, [hli]
	ld d, [hl]
	ld e, a
	ld hl, wcd21
	ld a, [hl]
	add e
	ld [hli], a
	ld a, [hl]
	adc d
	ld [hl], a
	ld hl, wcd23
	ld a, [hl]
	add e
	ld [hli], a
	ld a, [hl]
	adc d
	ld [hl], a
	pop bc
	ret

Func_9f92:
	ld a, b
	and $c0
	sub $40
	jr z, .asm_9fa5
	sub $40
	jr z, .asm_9faa
	ld hl, NULL
	ld a, b
	sub $04
	jr .asm_9fcd
.asm_9fa5
	ld hl, $a4
	jr .asm_9fd4
.asm_9faa
	ld a, [wceb3]
	and a
	jr nz, .asm_9fc2
	ld a, [wceb7]
	and a
	jr nz, .asm_9fba
	ld e, $0a
	jr .asm_9fbc
.asm_9fba
	ld e, $10
.asm_9fbc
	ld a, b
	and $3f
	cp e
	jr nc, .asm_9fc8
.asm_9fc2
	ld hl, $68
	ld a, b
	jr .asm_9fcd
.asm_9fc8
	ld hl, $a2
	jr .asm_9fd4
.asm_9fcd
	and $3f
	add a
	ld e, a
	ld d, $00
	add hl, de
.asm_9fd4
	ld e, l
	ld d, h
	ret

Func_9fd7:
	ld bc, NULL
	ld hl, wcd0f
	ld a, [hli]
	ldh [hff8a], a
	or [hl]
	jr z, .asm_a024
	ld a, [hl]
	ldh [hff8b], a
	ld hl, wcd44
	ld a, [hli]
	ld d, [hl]
	ld e, a
.asm_9fec
	ldh a, [hff8a]
	sub e
	ldh [hff8a], a
	ldh a, [hff8b]
	sbc d
	ldh [hff8b], a
	jr c, .asm_9ffb
	inc c
	jr .asm_9fec
.asm_9ffb
	ldh a, [hff8a]
	add e
	ldh [hff8a], a
	ldh a, [hff8b]
	adc d
	ldh [hff8b], a
	ld hl, wcd42
	ld a, [hli]
	ld d, [hl]
	ld e, a
.asm_a00b
	ldh a, [hff8a]
	sub e
	ldh [hff8a], a
	ldh a, [hff8b]
	sbc d
	ldh [hff8b], a
	jr c, .asm_a01a
	inc b
	jr .asm_a00b
.asm_a01a
	ld a, c
	add a
	add a
	add a
	add b
	and a
	jr nz, .asm_a024
	ld a, $01
.asm_a024
	ld [wcd46], a
	ret

PtrTable_a028:
	dw PtrTable_a044
	dw PtrTable_a044
	dw $605a
	dw $6070
	dw $6086
	dw $609c
	dw $60b2
	dw $60c8
	dw $60de
	dw $60f4
	dw $610a
	dw $6120
	dw $6136
	dw $614c

PtrTable_a044:
	dw Data_a162
	dw $65fe
	dw $6608
	dw $6612
	dw $661c
	dw $65f4
	dw $72d0
	dw $7370
	dw $72d0
	dw $7370
	dw $72d0
; 0xa05a

SECTION "Bank 2@6162", ROMX[$6162], BANK[$2]

Data_a162:
	db $00, $04, $00, $01, $00, $00, $f4, $01, $60, $09, $3b, $00, $05, $00, $00, $00, $2c, $01 ; GAMELEVEL_EASY
	db $80, $05, $00, $03, $00, $01, $3a, $02, $dc, $05, $00, $00, $00, $00, $00, $00, $96, $00 ; GAMELEVEL_NORMAL
	db $00, $08, $00, $04, $00, $02, $c2, $01, $7a, $03, $00, $00, $00, $00, $00, $00, $64, $00 ; GAMELEVEL_HARD
	db $00, $0c, $00, $05, $00, $03, $c2, $01, $2a, $03, $00, $00, $00, $00, $00, $00, $3c, $00 ; GAMELEVEL_S_HARD
	db $00, $14, $00, $08, $00, $05, $c2, $01, $2a, $03, $00, $00, $00, $00, $00, $00, $3c, $00 ; GAMELEVEL_V_HARD
	db $00, $04, $00, $01, $00, $00, $f4, $01, $08, $07, $42, $00, $05, $00, $00, $00, $2c, $01 ; GAMELEVEL_SLOW
; 0xa1ce

SECTION "Bank 2@7650", ROMX[$7650], BANK[$2]

Func_b650:
	ld hl, wc8fb
	ld c, [hl]
	ld b, $00
	ldh a, [hff8a]
	bit 7, a
	jr nz, .asm_b663
	inc [hl]
	ld hl, w6d400
	add hl, bc
	ld [hl], a
	ret
.asm_b663
	and $3f
	ld d, a
	ld e, $01
.asm_b668
	ld hl, wc8fb
	inc [hl]
	ld hl, w6d400
	add hl, bc
	ld a, d
	swap a
	or e
	ld [hl], a
	inc c
	inc e
	ld a, e
	dec a
	cp d
	jr c, .asm_b668
	ld hl, $76ee
	ld c, d
	sla c
	ld b, $00
	add hl, bc
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ld hl, $76ee
	add hl, bc
	ld e, l
	ld d, h
	ld a, [wc8fd]
	ld c, a
	ld b, $00
.asm_b694
	ld hl, w6d300
	add hl, bc
	ld a, [de]
	cp $ff
	jr z, .asm_b6a2
	ld [hl], a
	inc de
	inc c
	jr .asm_b694
.asm_b6a2
	ld a, c
	ld [wc8fd], a
	ret

Func_b6a7:
	push bc
	ld hl, $76ee
	ld c, b
	ld b, $00
	add hl, bc
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ld hl, $76ee
	add hl, bc
	pop bc
	ld a, e
	and $07
	add c
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [hl]
	or $c0
	ldh [hff8a], a
	ret

Func_b6c5:
	push bc
	ld hl, $76ee
	ld b, $00
	add hl, bc
	ld a, [hli]
	ld d, [hl]
	ld e, a
	ld hl, $76ee
	add hl, de
	pop bc
	ld c, b
	ld b, $00
	add hl, bc
	ld c, l
	ld b, h
	ld a, [wc8fc]
	ld e, a
	ld d, $00
.asm_b6e0
	ld hl, w6d300
	add hl, de
	ld a, [bc]
	cp $ff
	ret z
	ld [hl], a
	inc bc
	inc e
	jr .asm_b6e0
; 0xb6ed
