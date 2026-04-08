Func_6c000:
	ld a, [hl]
	and $0f
	add a
	ld c, a
	ld b, $00
	ld hl, $400f
	add hl, bc
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ret
; 0x6c00f

SECTION "Bank 1B@402f", ROMX[$402f], BANK[$1b]

Func_6c02f:
	ld a, [hl]
	inc [hl]
	cp $08
	jr c, .asm_6c03d
	xor a
	ld [hl], a
	ld a, [bc]
	and $bf
	ld [bc], a
	ld a, $08
.asm_6c03d
	add a
	ld c, a
	ld b, $00
	ld hl, $4049
	add hl, bc
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ret
; 0x6c049

SECTION "Bank 1B@405b", ROMX[$405b], BANK[$1b]

Func_6c05b:
	ld a, [hl]
	inc [hl]
	and $02
	jr nz, .asm_6c065
	ld bc, Data_6f01c
	ret
.asm_6c065
	ld bc, BlockTilesAndAttributes
	ret

Func_6c069:
	ld a, [hl]
	inc [hl]
	and $02
	jr nz, .asm_6c073
	ld hl, Data_6f3a4
	ret
.asm_6c073
	ld hl, Data_6f3b4
	ret

Func_6c077:
	ld a, [hl]
	inc [hl]
	and $02
	jr nz, .asm_6c081
	ld hl, Data_6f3a4
	ret
.asm_6c081
	ld hl, Data_6f3ac
	ret

Func_6c085:
	ld a, [wc87e]
	and a
	ret nz

	ld bc, w6d058 + 0 + 0 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 0 + 0 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 0 + 0 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6c0bc
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6c0d5
	bit 1, a
	jr nz, .asm_6c0f0
	bit 4, a
	jr nz, .asm_6c0cb
	bit 2, a
	jr nz, .asm_6c0d0
	bit 6, a
	jr nz, .asm_6c0c6
	bit 5, a
	jr nz, .asm_6c0c1
	ld a, [w6d0b0 + 0 + 0 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6c0bc
.asm_6c0b7
	ld bc, BlockTilesAndAttributes
	jr .asm_6c10b
.asm_6c0bc
	ld hl, Data_6f01c
	jr .asm_6c117
.asm_6c0c1
	call Func_6c000
	jr .asm_6c10b
.asm_6c0c6
	call Func_6c02f
	jr .asm_6c10b
.asm_6c0cb
	call Func_6c05b
	jr .asm_6c10b
.asm_6c0d0
	ld bc, Data_6f184
	jr .asm_6c10b
.asm_6c0d5
	bit 4, a
	jr nz, .asm_6c0e6
	bit 2, a
	jr nz, .asm_6c0eb
	bit 7, a
	jr nz, .asm_6c0b7
	ld bc, BlockTilesAndAttributes
	jr .asm_6c10b
.asm_6c0e6
	call Func_6c069
	jr .asm_6c117
.asm_6c0eb
	ld hl, Data_6f3b4
	jr .asm_6c117
.asm_6c0f0
	bit 4, a
	jr nz, .asm_6c101
	bit 2, a
	jr nz, .asm_6c106
	bit 7, a
	jr nz, .asm_6c0b7
	ld bc, BlockTilesAndAttributes
	jr .asm_6c10b
.asm_6c101
	call Func_6c077
	jr .asm_6c117
.asm_6c106
	ld hl, Data_6f3ac
	jr .asm_6c117
.asm_6c10b
	ld a, [wBlocks + 0 + 0 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl ; *8
	add hl, bc
.asm_6c117
	ld a, [hli]
	ldboard_a 0, 0, w6dd80
	ld a, [hli]
	ldboard_a 1, 0, w6dd80
	ld a, [hli]
	ldboard_a 0, 1, w6dd80
	ld a, [hli]
	ldboard_a 1, 1, w6dd80

	ld a, [hli]
	ldboard_a 0, 0, w6dec0
	ld a, [hli]
	ldboard_a 1, 0, w6dec0
	ld a, [hli]
	ldboard_a 0, 1, w6dec0
	ld a, [hli]
	ldboard_a 1, 1, w6dec0

	ld bc, w6d058 + 1 + 0 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 1 + 0 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 1 + 0 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6c169
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6c182
	bit 1, a
	jr nz, .asm_6c19d
	bit 4, a
	jr nz, .asm_6c178
	bit 2, a
	jr nz, .asm_6c17d
	bit 6, a
	jr nz, .asm_6c173
	bit 5, a
	jr nz, .asm_6c16e
	ld a, [w6d0b0 + 1 + 0 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6c169
.asm_6c164
	ld bc, BlockTilesAndAttributes
	jr .asm_6c1b8
.asm_6c169
	ld hl, Data_6f01c
	jr .asm_6c1c4
.asm_6c16e
	call Func_6c000
	jr .asm_6c1b8
.asm_6c173
	call Func_6c02f
	jr .asm_6c1b8
.asm_6c178
	call Func_6c05b
	jr .asm_6c1b8
.asm_6c17d
	ld bc, Data_6f184
	jr .asm_6c1b8
.asm_6c182
	bit 4, a
	jr nz, .asm_6c193
	bit 2, a
	jr nz, .asm_6c198
	bit 7, a
	jr nz, .asm_6c164
	ld bc, BlockTilesAndAttributes
	jr .asm_6c1b8
.asm_6c193
	call Func_6c069
	jr .asm_6c1c4
.asm_6c198
	ld hl, Data_6f3b4
	jr .asm_6c1c4
.asm_6c19d
	bit 4, a
	jr nz, .asm_6c1ae
	bit 2, a
	jr nz, .asm_6c1b3
	bit 7, a
	jr nz, .asm_6c164
	ld bc, BlockTilesAndAttributes
	jr .asm_6c1b8
.asm_6c1ae
	call Func_6c077
	jr .asm_6c1c4
.asm_6c1b3
	ld hl, Data_6f3ac
	jr .asm_6c1c4
.asm_6c1b8
	ld a, [wBlocks + 1 + 0 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6c1c4
	ld a, [hli]
	ldboard_a 2, 0, w6dd80
	ld a, [hli]
	ldboard_a 3, 0, w6dd80
	ld a, [hli]
	ldboard_a 2, 1, w6dd80
	ld a, [hli]
	ldboard_a 3, 1, w6dd80

	ld a, [hli]
	ldboard_a 2, 0, w6dec0
	ld a, [hli]
	ldboard_a 3, 0, w6dec0
	ld a, [hli]
	ldboard_a 2, 1, w6dec0
	ld a, [hli]
	ldboard_a 3, 1, w6dec0

	ld bc, w6d058 + 2 + 0 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 2 + 0 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 2 + 0 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6c216
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6c22f
	bit 1, a
	jr nz, .asm_6c24a
	bit 4, a
	jr nz, .asm_6c225
	bit 2, a
	jr nz, .asm_6c22a
	bit 6, a
	jr nz, .asm_6c220
	bit 5, a
	jr nz, .asm_6c21b
	ld a, [w6d0b0 + 2 + 0 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6c216
.asm_6c211
	ld bc, BlockTilesAndAttributes
	jr .asm_6c265
.asm_6c216
	ld hl, Data_6f01c
	jr .asm_6c271
.asm_6c21b
	call Func_6c000
	jr .asm_6c265
.asm_6c220
	call Func_6c02f
	jr .asm_6c265
.asm_6c225
	call Func_6c05b
	jr .asm_6c265
.asm_6c22a
	ld bc, Data_6f184
	jr .asm_6c265
.asm_6c22f
	bit 4, a
	jr nz, .asm_6c240
	bit 2, a
	jr nz, .asm_6c245
	bit 7, a
	jr nz, .asm_6c211
	ld bc, BlockTilesAndAttributes
	jr .asm_6c265
.asm_6c240
	call Func_6c069
	jr .asm_6c271
.asm_6c245
	ld hl, Data_6f3b4
	jr .asm_6c271
.asm_6c24a
	bit 4, a
	jr nz, .asm_6c25b
	bit 2, a
	jr nz, .asm_6c260
	bit 7, a
	jr nz, .asm_6c211
	ld bc, BlockTilesAndAttributes
	jr .asm_6c265
.asm_6c25b
	call Func_6c077
	jr .asm_6c271
.asm_6c260
	ld hl, Data_6f3ac
	jr .asm_6c271
.asm_6c265
	ld a, [wBlocks + 2 + 0 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6c271
	ld a, [hli]
	ldboard_a 4, 0, w6dd80
	ld a, [hli]
	ldboard_a 5, 0, w6dd80
	ld a, [hli]
	ldboard_a 4, 1, w6dd80
	ld a, [hli]
	ldboard_a 5, 1, w6dd80
	ld a, [hli]
	ldboard_a 4, 0, w6dec0
	ld a, [hli]
	ldboard_a 5, 0, w6dec0
	ld a, [hli]
	ldboard_a 4, 1, w6dec0
	ld a, [hli]
	ldboard_a 5, 1, w6dec0
	ld bc, w6d058 + 3 + 0 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 3 + 0 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 3 + 0 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6c2c3
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6c2dc
	bit 1, a
	jr nz, .asm_6c2f7
	bit 4, a
	jr nz, .asm_6c2d2
	bit 2, a
	jr nz, .asm_6c2d7
	bit 6, a
	jr nz, .asm_6c2cd
	bit 5, a
	jr nz, .asm_6c2c8
	ld a, [w6d0b0 + 3 + 0 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6c2c3
.asm_6c2be
	ld bc, BlockTilesAndAttributes
	jr .asm_6c312
.asm_6c2c3
	ld hl, Data_6f01c
	jr .asm_6c31e
.asm_6c2c8
	call Func_6c000
	jr .asm_6c312
.asm_6c2cd
	call Func_6c02f
	jr .asm_6c312
.asm_6c2d2
	call Func_6c05b
	jr .asm_6c312
.asm_6c2d7
	ld bc, Data_6f184
	jr .asm_6c312
.asm_6c2dc
	bit 4, a
	jr nz, .asm_6c2ed
	bit 2, a
	jr nz, .asm_6c2f2
	bit 7, a
	jr nz, .asm_6c2be
	ld bc, BlockTilesAndAttributes
	jr .asm_6c312
.asm_6c2ed
	call Func_6c069
	jr .asm_6c31e
.asm_6c2f2
	ld hl, Data_6f3b4
	jr .asm_6c31e
.asm_6c2f7
	bit 4, a
	jr nz, .asm_6c308
	bit 2, a
	jr nz, .asm_6c30d
	bit 7, a
	jr nz, .asm_6c2be
	ld bc, BlockTilesAndAttributes
	jr .asm_6c312
.asm_6c308
	call Func_6c077
	jr .asm_6c31e
.asm_6c30d
	ld hl, Data_6f3ac
	jr .asm_6c31e
.asm_6c312
	ld a, [wBlocks + 3 + 0 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6c31e
	ld a, [hli]
	ldboard_a 6, 0, w6dd80
	ld a, [hli]
	ldboard_a 7, 0, w6dd80
	ld a, [hli]
	ldboard_a 6, 1, w6dd80
	ld a, [hli]
	ldboard_a 7, 1, w6dd80
	ld a, [hli]
	ldboard_a 6, 0, w6dec0
	ld a, [hli]
	ldboard_a 7, 0, w6dec0
	ld a, [hli]
	ldboard_a 6, 1, w6dec0
	ld a, [hli]
	ldboard_a 7, 1, w6dec0
	ld bc, w6d058 + 4 + 0 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 4 + 0 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 4 + 0 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6c370
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6c389
	bit 1, a
	jr nz, .asm_6c3a4
	bit 4, a
	jr nz, .asm_6c37f
	bit 2, a
	jr nz, .asm_6c384
	bit 6, a
	jr nz, .asm_6c37a
	bit 5, a
	jr nz, .asm_6c375
	ld a, [w6d0b0 + 4 + 0 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6c370
.asm_6c36b
	ld bc, BlockTilesAndAttributes
	jr .asm_6c3bf
.asm_6c370
	ld hl, Data_6f01c
	jr .asm_6c3cb
.asm_6c375
	call Func_6c000
	jr .asm_6c3bf
.asm_6c37a
	call Func_6c02f
	jr .asm_6c3bf
.asm_6c37f
	call Func_6c05b
	jr .asm_6c3bf
.asm_6c384
	ld bc, Data_6f184
	jr .asm_6c3bf
.asm_6c389
	bit 4, a
	jr nz, .asm_6c39a
	bit 2, a
	jr nz, .asm_6c39f
	bit 7, a
	jr nz, .asm_6c36b
	ld bc, BlockTilesAndAttributes
	jr .asm_6c3bf
.asm_6c39a
	call Func_6c069
	jr .asm_6c3cb
.asm_6c39f
	ld hl, Data_6f3b4
	jr .asm_6c3cb
.asm_6c3a4
	bit 4, a
	jr nz, .asm_6c3b5
	bit 2, a
	jr nz, .asm_6c3ba
	bit 7, a
	jr nz, .asm_6c36b
	ld bc, BlockTilesAndAttributes
	jr .asm_6c3bf
.asm_6c3b5
	call Func_6c077
	jr .asm_6c3cb
.asm_6c3ba
	ld hl, Data_6f3ac
	jr .asm_6c3cb
.asm_6c3bf
	ld a, [wBlocks + 4 + 0 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6c3cb
	ld a, [hli]
	ldboard_a 8, 0, w6dd80
	ld a, [hli]
	ldboard_a 9, 0, w6dd80
	ld a, [hli]
	ldboard_a 8, 1, w6dd80
	ld a, [hli]
	ldboard_a 9, 1, w6dd80
	ld a, [hli]
	ldboard_a 8, 0, w6dec0
	ld a, [hli]
	ldboard_a 9, 0, w6dec0
	ld a, [hli]
	ldboard_a 8, 1, w6dec0
	ld a, [hli]
	ldboard_a 9, 1, w6dec0
	ld bc, w6d058 + 5 + 0 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 5 + 0 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 5 + 0 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6c41d
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6c436
	bit 1, a
	jr nz, .asm_6c451
	bit 4, a
	jr nz, .asm_6c42c
	bit 2, a
	jr nz, .asm_6c431
	bit 6, a
	jr nz, .asm_6c427
	bit 5, a
	jr nz, .asm_6c422
	ld a, [w6d0b0 + 5 + 0 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6c41d
.asm_6c418
	ld bc, BlockTilesAndAttributes
	jr .asm_6c46c
.asm_6c41d
	ld hl, Data_6f01c
	jr .asm_6c478
.asm_6c422
	call Func_6c000
	jr .asm_6c46c
.asm_6c427
	call Func_6c02f
	jr .asm_6c46c
.asm_6c42c
	call Func_6c05b
	jr .asm_6c46c
.asm_6c431
	ld bc, Data_6f184
	jr .asm_6c46c
.asm_6c436
	bit 4, a
	jr nz, .asm_6c447
	bit 2, a
	jr nz, .asm_6c44c
	bit 7, a
	jr nz, .asm_6c418
	ld bc, BlockTilesAndAttributes
	jr .asm_6c46c
.asm_6c447
	call Func_6c069
	jr .asm_6c478
.asm_6c44c
	ld hl, Data_6f3b4
	jr .asm_6c478
.asm_6c451
	bit 4, a
	jr nz, .asm_6c462
	bit 2, a
	jr nz, .asm_6c467
	bit 7, a
	jr nz, .asm_6c418
	ld bc, BlockTilesAndAttributes
	jr .asm_6c46c
.asm_6c462
	call Func_6c077
	jr .asm_6c478
.asm_6c467
	ld hl, Data_6f3ac
	jr .asm_6c478
.asm_6c46c
	ld a, [wBlocks + 5 + 0 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6c478
	ld a, [hli]
	ldboard_a 10, 0, w6dd80
	ld a, [hli]
	ldboard_a 11, 0, w6dd80
	ld a, [hli]
	ldboard_a 10, 1, w6dd80
	ld a, [hli]
	ldboard_a 11, 1, w6dd80
	ld a, [hli]
	ldboard_a 10, 0, w6dec0
	ld a, [hli]
	ldboard_a 11, 0, w6dec0
	ld a, [hli]
	ldboard_a 10, 1, w6dec0
	ld a, [hli]
	ldboard_a 11, 1, w6dec0
	ld bc, w6d058 + 0 + 1 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 0 + 1 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 0 + 1 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6c4ca
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6c4e3
	bit 1, a
	jr nz, .asm_6c4fe
	bit 4, a
	jr nz, .asm_6c4d9
	bit 2, a
	jr nz, .asm_6c4de
	bit 6, a
	jr nz, .asm_6c4d4
	bit 5, a
	jr nz, .asm_6c4cf
	ld a, [w6d0b0 + 0 + 1 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6c4ca
.asm_6c4c5
	ld bc, BlockTilesAndAttributes
	jr .asm_6c519
.asm_6c4ca
	ld hl, Data_6f01c
	jr .asm_6c525
.asm_6c4cf
	call Func_6c000
	jr .asm_6c519
.asm_6c4d4
	call Func_6c02f
	jr .asm_6c519
.asm_6c4d9
	call Func_6c05b
	jr .asm_6c519
.asm_6c4de
	ld bc, Data_6f184
	jr .asm_6c519
.asm_6c4e3
	bit 4, a
	jr nz, .asm_6c4f4
	bit 2, a
	jr nz, .asm_6c4f9
	bit 7, a
	jr nz, .asm_6c4c5
	ld bc, BlockTilesAndAttributes
	jr .asm_6c519
.asm_6c4f4
	call Func_6c069
	jr .asm_6c525
.asm_6c4f9
	ld hl, Data_6f3b4
	jr .asm_6c525
.asm_6c4fe
	bit 4, a
	jr nz, .asm_6c50f
	bit 2, a
	jr nz, .asm_6c514
	bit 7, a
	jr nz, .asm_6c4c5
	ld bc, BlockTilesAndAttributes
	jr .asm_6c519
.asm_6c50f
	call Func_6c077
	jr .asm_6c525
.asm_6c514
	ld hl, Data_6f3ac
	jr .asm_6c525
.asm_6c519
	ld a, [wBlocks + 0 + 1 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6c525
	ld a, [hli]
	ldboard_a 0, 2, w6dd80
	ld a, [hli]
	ldboard_a 1, 2, w6dd80
	ld a, [hli]
	ldboard_a 0, 3, w6dd80
	ld a, [hli]
	ldboard_a 1, 3, w6dd80
	ld a, [hli]
	ldboard_a 0, 2, w6dec0
	ld a, [hli]
	ldboard_a 1, 2, w6dec0
	ld a, [hli]
	ldboard_a 0, 3, w6dec0
	ld a, [hli]
	ldboard_a 1, 3, w6dec0
	ld bc, w6d058 + 1 + 1 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 1 + 1 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 1 + 1 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6c577
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6c590
	bit 1, a
	jr nz, .asm_6c5ab
	bit 4, a
	jr nz, .asm_6c586
	bit 2, a
	jr nz, .asm_6c58b
	bit 6, a
	jr nz, .asm_6c581
	bit 5, a
	jr nz, .asm_6c57c
	ld a, [w6d0b0 + 1 + 1 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6c577
.asm_6c572
	ld bc, BlockTilesAndAttributes
	jr .asm_6c5c6
.asm_6c577
	ld hl, Data_6f01c
	jr .asm_6c5d2
.asm_6c57c
	call Func_6c000
	jr .asm_6c5c6
.asm_6c581
	call Func_6c02f
	jr .asm_6c5c6
.asm_6c586
	call Func_6c05b
	jr .asm_6c5c6
.asm_6c58b
	ld bc, Data_6f184
	jr .asm_6c5c6
.asm_6c590
	bit 4, a
	jr nz, .asm_6c5a1
	bit 2, a
	jr nz, .asm_6c5a6
	bit 7, a
	jr nz, .asm_6c572
	ld bc, BlockTilesAndAttributes
	jr .asm_6c5c6
.asm_6c5a1
	call Func_6c069
	jr .asm_6c5d2
.asm_6c5a6
	ld hl, Data_6f3b4
	jr .asm_6c5d2
.asm_6c5ab
	bit 4, a
	jr nz, .asm_6c5bc
	bit 2, a
	jr nz, .asm_6c5c1
	bit 7, a
	jr nz, .asm_6c572
	ld bc, BlockTilesAndAttributes
	jr .asm_6c5c6
.asm_6c5bc
	call Func_6c077
	jr .asm_6c5d2
.asm_6c5c1
	ld hl, Data_6f3ac
	jr .asm_6c5d2
.asm_6c5c6
	ld a, [wBlocks + 1 + 1 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6c5d2
	ld a, [hli]
	ldboard_a 2, 2, w6dd80
	ld a, [hli]
	ldboard_a 3, 2, w6dd80
	ld a, [hli]
	ldboard_a 2, 3, w6dd80
	ld a, [hli]
	ldboard_a 3, 3, w6dd80
	ld a, [hli]
	ldboard_a 2, 2, w6dec0
	ld a, [hli]
	ldboard_a 3, 2, w6dec0
	ld a, [hli]
	ldboard_a 2, 3, w6dec0
	ld a, [hli]
	ldboard_a 3, 3, w6dec0
	ld bc, w6d058 + 2 + 1 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 2 + 1 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 2 + 1 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6c624
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6c63d
	bit 1, a
	jr nz, .asm_6c658
	bit 4, a
	jr nz, .asm_6c633
	bit 2, a
	jr nz, .asm_6c638
	bit 6, a
	jr nz, .asm_6c62e
	bit 5, a
	jr nz, .asm_6c629
	ld a, [w6d0b0 + 2 + 1 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6c624
.asm_6c61f
	ld bc, BlockTilesAndAttributes
	jr .asm_6c673
.asm_6c624
	ld hl, Data_6f01c
	jr .asm_6c67f
.asm_6c629
	call Func_6c000
	jr .asm_6c673
.asm_6c62e
	call Func_6c02f
	jr .asm_6c673
.asm_6c633
	call Func_6c05b
	jr .asm_6c673
.asm_6c638
	ld bc, Data_6f184
	jr .asm_6c673
.asm_6c63d
	bit 4, a
	jr nz, .asm_6c64e
	bit 2, a
	jr nz, .asm_6c653
	bit 7, a
	jr nz, .asm_6c61f
	ld bc, BlockTilesAndAttributes
	jr .asm_6c673
.asm_6c64e
	call Func_6c069
	jr .asm_6c67f
.asm_6c653
	ld hl, Data_6f3b4
	jr .asm_6c67f
.asm_6c658
	bit 4, a
	jr nz, .asm_6c669
	bit 2, a
	jr nz, .asm_6c66e
	bit 7, a
	jr nz, .asm_6c61f
	ld bc, BlockTilesAndAttributes
	jr .asm_6c673
.asm_6c669
	call Func_6c077
	jr .asm_6c67f
.asm_6c66e
	ld hl, Data_6f3ac
	jr .asm_6c67f
.asm_6c673
	ld a, [wBlocks + 2 + 1 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6c67f
	ld a, [hli]
	ldboard_a 4, 2, w6dd80
	ld a, [hli]
	ldboard_a 5, 2, w6dd80
	ld a, [hli]
	ldboard_a 4, 3, w6dd80
	ld a, [hli]
	ldboard_a 5, 3, w6dd80
	ld a, [hli]
	ldboard_a 4, 2, w6dec0
	ld a, [hli]
	ldboard_a 5, 2, w6dec0
	ld a, [hli]
	ldboard_a 4, 3, w6dec0
	ld a, [hli]
	ldboard_a 5, 3, w6dec0
	ld bc, w6d058 + 3 + 1 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 3 + 1 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 3 + 1 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6c6d1
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6c6ea
	bit 1, a
	jr nz, .asm_6c705
	bit 4, a
	jr nz, .asm_6c6e0
	bit 2, a
	jr nz, .asm_6c6e5
	bit 6, a
	jr nz, .asm_6c6db
	bit 5, a
	jr nz, .asm_6c6d6
	ld a, [w6d0b0 + 3 + 1 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6c6d1
.asm_6c6cc
	ld bc, BlockTilesAndAttributes
	jr .asm_6c720
.asm_6c6d1
	ld hl, Data_6f01c
	jr .asm_6c72c
.asm_6c6d6
	call Func_6c000
	jr .asm_6c720
.asm_6c6db
	call Func_6c02f
	jr .asm_6c720
.asm_6c6e0
	call Func_6c05b
	jr .asm_6c720
.asm_6c6e5
	ld bc, Data_6f184
	jr .asm_6c720
.asm_6c6ea
	bit 4, a
	jr nz, .asm_6c6fb
	bit 2, a
	jr nz, .asm_6c700
	bit 7, a
	jr nz, .asm_6c6cc
	ld bc, BlockTilesAndAttributes
	jr .asm_6c720
.asm_6c6fb
	call Func_6c069
	jr .asm_6c72c
.asm_6c700
	ld hl, Data_6f3b4
	jr .asm_6c72c
.asm_6c705
	bit 4, a
	jr nz, .asm_6c716
	bit 2, a
	jr nz, .asm_6c71b
	bit 7, a
	jr nz, .asm_6c6cc
	ld bc, BlockTilesAndAttributes
	jr .asm_6c720
.asm_6c716
	call Func_6c077
	jr .asm_6c72c
.asm_6c71b
	ld hl, Data_6f3ac
	jr .asm_6c72c
.asm_6c720
	ld a, [wBlocks + 3 + 1 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6c72c
	ld a, [hli]
	ldboard_a 6, 2, w6dd80
	ld a, [hli]
	ldboard_a 7, 2, w6dd80
	ld a, [hli]
	ldboard_a 6, 3, w6dd80
	ld a, [hli]
	ldboard_a 7, 3, w6dd80
	ld a, [hli]
	ldboard_a 6, 2, w6dec0
	ld a, [hli]
	ldboard_a 7, 2, w6dec0
	ld a, [hli]
	ldboard_a 6, 3, w6dec0
	ld a, [hli]
	ldboard_a 7, 3, w6dec0
	ld bc, w6d058 + 4 + 1 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 4 + 1 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 4 + 1 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6c77e
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6c797
	bit 1, a
	jr nz, .asm_6c7b2
	bit 4, a
	jr nz, .asm_6c78d
	bit 2, a
	jr nz, .asm_6c792
	bit 6, a
	jr nz, .asm_6c788
	bit 5, a
	jr nz, .asm_6c783
	ld a, [w6d0b0 + 4 + 1 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6c77e
.asm_6c779
	ld bc, BlockTilesAndAttributes
	jr .asm_6c7cd
.asm_6c77e
	ld hl, Data_6f01c
	jr .asm_6c7d9
.asm_6c783
	call Func_6c000
	jr .asm_6c7cd
.asm_6c788
	call Func_6c02f
	jr .asm_6c7cd
.asm_6c78d
	call Func_6c05b
	jr .asm_6c7cd
.asm_6c792
	ld bc, Data_6f184
	jr .asm_6c7cd
.asm_6c797
	bit 4, a
	jr nz, .asm_6c7a8
	bit 2, a
	jr nz, .asm_6c7ad
	bit 7, a
	jr nz, .asm_6c779
	ld bc, BlockTilesAndAttributes
	jr .asm_6c7cd
.asm_6c7a8
	call Func_6c069
	jr .asm_6c7d9
.asm_6c7ad
	ld hl, Data_6f3b4
	jr .asm_6c7d9
.asm_6c7b2
	bit 4, a
	jr nz, .asm_6c7c3
	bit 2, a
	jr nz, .asm_6c7c8
	bit 7, a
	jr nz, .asm_6c779
	ld bc, BlockTilesAndAttributes
	jr .asm_6c7cd
.asm_6c7c3
	call Func_6c077
	jr .asm_6c7d9
.asm_6c7c8
	ld hl, Data_6f3ac
	jr .asm_6c7d9
.asm_6c7cd
	ld a, [wBlocks + 4 + 1 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6c7d9
	ld a, [hli]
	ldboard_a 8, 2, w6dd80
	ld a, [hli]
	ldboard_a 9, 2, w6dd80
	ld a, [hli]
	ldboard_a 8, 3, w6dd80
	ld a, [hli]
	ldboard_a 9, 3, w6dd80
	ld a, [hli]
	ldboard_a 8, 2, w6dec0
	ld a, [hli]
	ldboard_a 9, 2, w6dec0
	ld a, [hli]
	ldboard_a 8, 3, w6dec0
	ld a, [hli]
	ldboard_a 9, 3, w6dec0
	ld bc, w6d058 + 5 + 1 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 5 + 1 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 5 + 1 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6c82b
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6c844
	bit 1, a
	jr nz, .asm_6c85f
	bit 4, a
	jr nz, .asm_6c83a
	bit 2, a
	jr nz, .asm_6c83f
	bit 6, a
	jr nz, .asm_6c835
	bit 5, a
	jr nz, .asm_6c830
	ld a, [w6d0b0 + 5 + 1 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6c82b
.asm_6c826
	ld bc, BlockTilesAndAttributes
	jr .asm_6c87a
.asm_6c82b
	ld hl, Data_6f01c
	jr .asm_6c886
.asm_6c830
	call Func_6c000
	jr .asm_6c87a
.asm_6c835
	call Func_6c02f
	jr .asm_6c87a
.asm_6c83a
	call Func_6c05b
	jr .asm_6c87a
.asm_6c83f
	ld bc, Data_6f184
	jr .asm_6c87a
.asm_6c844
	bit 4, a
	jr nz, .asm_6c855
	bit 2, a
	jr nz, .asm_6c85a
	bit 7, a
	jr nz, .asm_6c826
	ld bc, BlockTilesAndAttributes
	jr .asm_6c87a
.asm_6c855
	call Func_6c069
	jr .asm_6c886
.asm_6c85a
	ld hl, Data_6f3b4
	jr .asm_6c886
.asm_6c85f
	bit 4, a
	jr nz, .asm_6c870
	bit 2, a
	jr nz, .asm_6c875
	bit 7, a
	jr nz, .asm_6c826
	ld bc, BlockTilesAndAttributes
	jr .asm_6c87a
.asm_6c870
	call Func_6c077
	jr .asm_6c886
.asm_6c875
	ld hl, Data_6f3ac
	jr .asm_6c886
.asm_6c87a
	ld a, [wBlocks + 5 + 1 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6c886
	ld a, [hli]
	ldboard_a 10, 2, w6dd80
	ld a, [hli]
	ldboard_a 11, 2, w6dd80
	ld a, [hli]
	ldboard_a 10, 3, w6dd80
	ld a, [hli]
	ldboard_a 11, 3, w6dd80
	ld a, [hli]
	ldboard_a 10, 2, w6dec0
	ld a, [hli]
	ldboard_a 11, 2, w6dec0
	ld a, [hli]
	ldboard_a 10, 3, w6dec0
	ld a, [hli]
	ldboard_a 11, 3, w6dec0
	ld bc, w6d058 + 0 + 2 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 0 + 2 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 0 + 2 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6c8d8
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6c8f1
	bit 1, a
	jr nz, .asm_6c90c
	bit 4, a
	jr nz, .asm_6c8e7
	bit 2, a
	jr nz, .asm_6c8ec
	bit 6, a
	jr nz, .asm_6c8e2
	bit 5, a
	jr nz, .asm_6c8dd
	ld a, [w6d0b0 + 0 + 2 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6c8d8
.asm_6c8d3
	ld bc, BlockTilesAndAttributes
	jr .asm_6c927
.asm_6c8d8
	ld hl, Data_6f01c
	jr .asm_6c933
.asm_6c8dd
	call Func_6c000
	jr .asm_6c927
.asm_6c8e2
	call Func_6c02f
	jr .asm_6c927
.asm_6c8e7
	call Func_6c05b
	jr .asm_6c927
.asm_6c8ec
	ld bc, Data_6f184
	jr .asm_6c927
.asm_6c8f1
	bit 4, a
	jr nz, .asm_6c902
	bit 2, a
	jr nz, .asm_6c907
	bit 7, a
	jr nz, .asm_6c8d3
	ld bc, BlockTilesAndAttributes
	jr .asm_6c927
.asm_6c902
	call Func_6c069
	jr .asm_6c933
.asm_6c907
	ld hl, Data_6f3b4
	jr .asm_6c933
.asm_6c90c
	bit 4, a
	jr nz, .asm_6c91d
	bit 2, a
	jr nz, .asm_6c922
	bit 7, a
	jr nz, .asm_6c8d3
	ld bc, BlockTilesAndAttributes
	jr .asm_6c927
.asm_6c91d
	call Func_6c077
	jr .asm_6c933
.asm_6c922
	ld hl, Data_6f3ac
	jr .asm_6c933
.asm_6c927
	ld a, [wBlocks + 0 + 2 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6c933
	ld a, [hli]
	ldboard_a 0, 4, w6dd80
	ld a, [hli]
	ldboard_a 1, 4, w6dd80
	ld a, [hli]
	ldboard_a 0, 5, w6dd80
	ld a, [hli]
	ldboard_a 1, 5, w6dd80
	ld a, [hli]
	ldboard_a 0, 4, w6dec0
	ld a, [hli]
	ldboard_a 1, 4, w6dec0
	ld a, [hli]
	ldboard_a 0, 5, w6dec0
	ld a, [hli]
	ldboard_a 1, 5, w6dec0
	ld bc, w6d058 + 1 + 2 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 1 + 2 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 1 + 2 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6c985
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6c99e
	bit 1, a
	jr nz, .asm_6c9b9
	bit 4, a
	jr nz, .asm_6c994
	bit 2, a
	jr nz, .asm_6c999
	bit 6, a
	jr nz, .asm_6c98f
	bit 5, a
	jr nz, .asm_6c98a
	ld a, [w6d0b0 + 1 + 2 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6c985
.asm_6c980
	ld bc, BlockTilesAndAttributes
	jr .asm_6c9d4
.asm_6c985
	ld hl, Data_6f01c
	jr .asm_6c9e0
.asm_6c98a
	call Func_6c000
	jr .asm_6c9d4
.asm_6c98f
	call Func_6c02f
	jr .asm_6c9d4
.asm_6c994
	call Func_6c05b
	jr .asm_6c9d4
.asm_6c999
	ld bc, Data_6f184
	jr .asm_6c9d4
.asm_6c99e
	bit 4, a
	jr nz, .asm_6c9af
	bit 2, a
	jr nz, .asm_6c9b4
	bit 7, a
	jr nz, .asm_6c980
	ld bc, BlockTilesAndAttributes
	jr .asm_6c9d4
.asm_6c9af
	call Func_6c069
	jr .asm_6c9e0
.asm_6c9b4
	ld hl, Data_6f3b4
	jr .asm_6c9e0
.asm_6c9b9
	bit 4, a
	jr nz, .asm_6c9ca
	bit 2, a
	jr nz, .asm_6c9cf
	bit 7, a
	jr nz, .asm_6c980
	ld bc, BlockTilesAndAttributes
	jr .asm_6c9d4
.asm_6c9ca
	call Func_6c077
	jr .asm_6c9e0
.asm_6c9cf
	ld hl, Data_6f3ac
	jr .asm_6c9e0
.asm_6c9d4
	ld a, [wBlocks + 1 + 2 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6c9e0
	ld a, [hli]
	ldboard_a 2, 4, w6dd80
	ld a, [hli]
	ldboard_a 3, 4, w6dd80
	ld a, [hli]
	ldboard_a 2, 5, w6dd80
	ld a, [hli]
	ldboard_a 3, 5, w6dd80
	ld a, [hli]
	ldboard_a 2, 4, w6dec0
	ld a, [hli]
	ldboard_a 3, 4, w6dec0
	ld a, [hli]
	ldboard_a 2, 5, w6dec0
	ld a, [hli]
	ldboard_a 3, 5, w6dec0
	ld bc, w6d058 + 2 + 2 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 2 + 2 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 2 + 2 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6ca32
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6ca4b
	bit 1, a
	jr nz, .asm_6ca66
	bit 4, a
	jr nz, .asm_6ca41
	bit 2, a
	jr nz, .asm_6ca46
	bit 6, a
	jr nz, .asm_6ca3c
	bit 5, a
	jr nz, .asm_6ca37
	ld a, [w6d0b0 + 2 + 2 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6ca32
.asm_6ca2d
	ld bc, BlockTilesAndAttributes
	jr .asm_6ca81
.asm_6ca32
	ld hl, Data_6f01c
	jr .asm_6ca8d
.asm_6ca37
	call Func_6c000
	jr .asm_6ca81
.asm_6ca3c
	call Func_6c02f
	jr .asm_6ca81
.asm_6ca41
	call Func_6c05b
	jr .asm_6ca81
.asm_6ca46
	ld bc, Data_6f184
	jr .asm_6ca81
.asm_6ca4b
	bit 4, a
	jr nz, .asm_6ca5c
	bit 2, a
	jr nz, .asm_6ca61
	bit 7, a
	jr nz, .asm_6ca2d
	ld bc, BlockTilesAndAttributes
	jr .asm_6ca81
.asm_6ca5c
	call Func_6c069
	jr .asm_6ca8d
.asm_6ca61
	ld hl, Data_6f3b4
	jr .asm_6ca8d
.asm_6ca66
	bit 4, a
	jr nz, .asm_6ca77
	bit 2, a
	jr nz, .asm_6ca7c
	bit 7, a
	jr nz, .asm_6ca2d
	ld bc, BlockTilesAndAttributes
	jr .asm_6ca81
.asm_6ca77
	call Func_6c077
	jr .asm_6ca8d
.asm_6ca7c
	ld hl, Data_6f3ac
	jr .asm_6ca8d
.asm_6ca81
	ld a, [wBlocks + 2 + 2 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6ca8d
	ld a, [hli]
	ldboard_a 4, 4, w6dd80
	ld a, [hli]
	ldboard_a 5, 4, w6dd80
	ld a, [hli]
	ldboard_a 4, 5, w6dd80
	ld a, [hli]
	ldboard_a 5, 5, w6dd80
	ld a, [hli]
	ldboard_a 4, 4, w6dec0
	ld a, [hli]
	ldboard_a 5, 4, w6dec0
	ld a, [hli]
	ldboard_a 4, 5, w6dec0
	ld a, [hli]
	ldboard_a 5, 5, w6dec0
	ld bc, w6d058 + 3 + 2 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 3 + 2 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 3 + 2 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6cadf
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6caf8
	bit 1, a
	jr nz, .asm_6cb13
	bit 4, a
	jr nz, .asm_6caee
	bit 2, a
	jr nz, .asm_6caf3
	bit 6, a
	jr nz, .asm_6cae9
	bit 5, a
	jr nz, .asm_6cae4
	ld a, [w6d0b0 + 3 + 2 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6cadf
.asm_6cada
	ld bc, BlockTilesAndAttributes
	jr .asm_6cb2e
.asm_6cadf
	ld hl, Data_6f01c
	jr .asm_6cb3a
.asm_6cae4
	call Func_6c000
	jr .asm_6cb2e
.asm_6cae9
	call Func_6c02f
	jr .asm_6cb2e
.asm_6caee
	call Func_6c05b
	jr .asm_6cb2e
.asm_6caf3
	ld bc, Data_6f184
	jr .asm_6cb2e
.asm_6caf8
	bit 4, a
	jr nz, .asm_6cb09
	bit 2, a
	jr nz, .asm_6cb0e
	bit 7, a
	jr nz, .asm_6cada
	ld bc, BlockTilesAndAttributes
	jr .asm_6cb2e
.asm_6cb09
	call Func_6c069
	jr .asm_6cb3a
.asm_6cb0e
	ld hl, Data_6f3b4
	jr .asm_6cb3a
.asm_6cb13
	bit 4, a
	jr nz, .asm_6cb24
	bit 2, a
	jr nz, .asm_6cb29
	bit 7, a
	jr nz, .asm_6cada
	ld bc, BlockTilesAndAttributes
	jr .asm_6cb2e
.asm_6cb24
	call Func_6c077
	jr .asm_6cb3a
.asm_6cb29
	ld hl, Data_6f3ac
	jr .asm_6cb3a
.asm_6cb2e
	ld a, [wBlocks + 3 + 2 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6cb3a
	ld a, [hli]
	ldboard_a 6, 4, w6dd80
	ld a, [hli]
	ldboard_a 7, 4, w6dd80
	ld a, [hli]
	ldboard_a 6, 5, w6dd80
	ld a, [hli]
	ldboard_a 7, 5, w6dd80
	ld a, [hli]
	ldboard_a 6, 4, w6dec0
	ld a, [hli]
	ldboard_a 7, 4, w6dec0
	ld a, [hli]
	ldboard_a 6, 5, w6dec0
	ld a, [hli]
	ldboard_a 7, 5, w6dec0
	ld bc, w6d058 + 4 + 2 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 4 + 2 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 4 + 2 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6cb8c
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6cba5
	bit 1, a
	jr nz, .asm_6cbc0
	bit 4, a
	jr nz, .asm_6cb9b
	bit 2, a
	jr nz, .asm_6cba0
	bit 6, a
	jr nz, .asm_6cb96
	bit 5, a
	jr nz, .asm_6cb91
	ld a, [w6d0b0 + 4 + 2 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6cb8c
.asm_6cb87
	ld bc, BlockTilesAndAttributes
	jr .asm_6cbdb
.asm_6cb8c
	ld hl, Data_6f01c
	jr .asm_6cbe7
.asm_6cb91
	call Func_6c000
	jr .asm_6cbdb
.asm_6cb96
	call Func_6c02f
	jr .asm_6cbdb
.asm_6cb9b
	call Func_6c05b
	jr .asm_6cbdb
.asm_6cba0
	ld bc, Data_6f184
	jr .asm_6cbdb
.asm_6cba5
	bit 4, a
	jr nz, .asm_6cbb6
	bit 2, a
	jr nz, .asm_6cbbb
	bit 7, a
	jr nz, .asm_6cb87
	ld bc, BlockTilesAndAttributes
	jr .asm_6cbdb
.asm_6cbb6
	call Func_6c069
	jr .asm_6cbe7
.asm_6cbbb
	ld hl, Data_6f3b4
	jr .asm_6cbe7
.asm_6cbc0
	bit 4, a
	jr nz, .asm_6cbd1
	bit 2, a
	jr nz, .asm_6cbd6
	bit 7, a
	jr nz, .asm_6cb87
	ld bc, BlockTilesAndAttributes
	jr .asm_6cbdb
.asm_6cbd1
	call Func_6c077
	jr .asm_6cbe7
.asm_6cbd6
	ld hl, Data_6f3ac
	jr .asm_6cbe7
.asm_6cbdb
	ld a, [wBlocks + 4 + 2 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6cbe7
	ld a, [hli]
	ldboard_a 8, 4, w6dd80
	ld a, [hli]
	ldboard_a 9, 4, w6dd80
	ld a, [hli]
	ldboard_a 8, 5, w6dd80
	ld a, [hli]
	ldboard_a 9, 5, w6dd80
	ld a, [hli]
	ldboard_a 8, 4, w6dec0
	ld a, [hli]
	ldboard_a 9, 4, w6dec0
	ld a, [hli]
	ldboard_a 8, 5, w6dec0
	ld a, [hli]
	ldboard_a 9, 5, w6dec0
	ld bc, w6d058 + 5 + 2 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 5 + 2 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 5 + 2 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6cc39
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6cc52
	bit 1, a
	jr nz, .asm_6cc6d
	bit 4, a
	jr nz, .asm_6cc48
	bit 2, a
	jr nz, .asm_6cc4d
	bit 6, a
	jr nz, .asm_6cc43
	bit 5, a
	jr nz, .asm_6cc3e
	ld a, [w6d0b0 + 5 + 2 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6cc39
.asm_6cc34
	ld bc, BlockTilesAndAttributes
	jr .asm_6cc88
.asm_6cc39
	ld hl, Data_6f01c
	jr .asm_6cc94
.asm_6cc3e
	call Func_6c000
	jr .asm_6cc88
.asm_6cc43
	call Func_6c02f
	jr .asm_6cc88
.asm_6cc48
	call Func_6c05b
	jr .asm_6cc88
.asm_6cc4d
	ld bc, Data_6f184
	jr .asm_6cc88
.asm_6cc52
	bit 4, a
	jr nz, .asm_6cc63
	bit 2, a
	jr nz, .asm_6cc68
	bit 7, a
	jr nz, .asm_6cc34
	ld bc, BlockTilesAndAttributes
	jr .asm_6cc88
.asm_6cc63
	call Func_6c069
	jr .asm_6cc94
.asm_6cc68
	ld hl, Data_6f3b4
	jr .asm_6cc94
.asm_6cc6d
	bit 4, a
	jr nz, .asm_6cc7e
	bit 2, a
	jr nz, .asm_6cc83
	bit 7, a
	jr nz, .asm_6cc34
	ld bc, BlockTilesAndAttributes
	jr .asm_6cc88
.asm_6cc7e
	call Func_6c077
	jr .asm_6cc94
.asm_6cc83
	ld hl, Data_6f3ac
	jr .asm_6cc94
.asm_6cc88
	ld a, [wBlocks + 5 + 2 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6cc94
	ld a, [hli]
	ldboard_a 10, 4, w6dd80
	ld a, [hli]
	ldboard_a 11, 4, w6dd80
	ld a, [hli]
	ldboard_a 10, 5, w6dd80
	ld a, [hli]
	ldboard_a 11, 5, w6dd80
	ld a, [hli]
	ldboard_a 10, 4, w6dec0
	ld a, [hli]
	ldboard_a 11, 4, w6dec0
	ld a, [hli]
	ldboard_a 10, 5, w6dec0
	ld a, [hli]
	ldboard_a 11, 5, w6dec0
	ld bc, w6d058 + 0 + 3 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 0 + 3 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 0 + 3 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6cce6
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6ccff
	bit 1, a
	jr nz, .asm_6cd1a
	bit 4, a
	jr nz, .asm_6ccf5
	bit 2, a
	jr nz, .asm_6ccfa
	bit 6, a
	jr nz, .asm_6ccf0
	bit 5, a
	jr nz, .asm_6cceb
	ld a, [w6d0b0 + 0 + 3 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6cce6
.asm_6cce1
	ld bc, BlockTilesAndAttributes
	jr .asm_6cd35
.asm_6cce6
	ld hl, Data_6f01c
	jr .asm_6cd41
.asm_6cceb
	call Func_6c000
	jr .asm_6cd35
.asm_6ccf0
	call Func_6c02f
	jr .asm_6cd35
.asm_6ccf5
	call Func_6c05b
	jr .asm_6cd35
.asm_6ccfa
	ld bc, Data_6f184
	jr .asm_6cd35
.asm_6ccff
	bit 4, a
	jr nz, .asm_6cd10
	bit 2, a
	jr nz, .asm_6cd15
	bit 7, a
	jr nz, .asm_6cce1
	ld bc, BlockTilesAndAttributes
	jr .asm_6cd35
.asm_6cd10
	call Func_6c069
	jr .asm_6cd41
.asm_6cd15
	ld hl, Data_6f3b4
	jr .asm_6cd41
.asm_6cd1a
	bit 4, a
	jr nz, .asm_6cd2b
	bit 2, a
	jr nz, .asm_6cd30
	bit 7, a
	jr nz, .asm_6cce1
	ld bc, BlockTilesAndAttributes
	jr .asm_6cd35
.asm_6cd2b
	call Func_6c077
	jr .asm_6cd41
.asm_6cd30
	ld hl, Data_6f3ac
	jr .asm_6cd41
.asm_6cd35
	ld a, [wBlocks + 0 + 3 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6cd41
	ld a, [hli]
	ldboard_a 0, 6, w6dd80
	ld a, [hli]
	ldboard_a 1, 6, w6dd80
	ld a, [hli]
	ldboard_a 0, 7, w6dd80
	ld a, [hli]
	ldboard_a 1, 7, w6dd80
	ld a, [hli]
	ldboard_a 0, 6, w6dec0
	ld a, [hli]
	ldboard_a 1, 6, w6dec0
	ld a, [hli]
	ldboard_a 0, 7, w6dec0
	ld a, [hli]
	ldboard_a 1, 7, w6dec0
	ld bc, w6d058 + 1 + 3 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 1 + 3 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 1 + 3 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6cd93
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6cdac
	bit 1, a
	jr nz, .asm_6cdc7
	bit 4, a
	jr nz, .asm_6cda2
	bit 2, a
	jr nz, .asm_6cda7
	bit 6, a
	jr nz, .asm_6cd9d
	bit 5, a
	jr nz, .asm_6cd98
	ld a, [w6d0b0 + 1 + 3 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6cd93
.asm_6cd8e
	ld bc, BlockTilesAndAttributes
	jr .asm_6cde2
.asm_6cd93
	ld hl, Data_6f01c
	jr .asm_6cdee
.asm_6cd98
	call Func_6c000
	jr .asm_6cde2
.asm_6cd9d
	call Func_6c02f
	jr .asm_6cde2
.asm_6cda2
	call Func_6c05b
	jr .asm_6cde2
.asm_6cda7
	ld bc, Data_6f184
	jr .asm_6cde2
.asm_6cdac
	bit 4, a
	jr nz, .asm_6cdbd
	bit 2, a
	jr nz, .asm_6cdc2
	bit 7, a
	jr nz, .asm_6cd8e
	ld bc, BlockTilesAndAttributes
	jr .asm_6cde2
.asm_6cdbd
	call Func_6c069
	jr .asm_6cdee
.asm_6cdc2
	ld hl, Data_6f3b4
	jr .asm_6cdee
.asm_6cdc7
	bit 4, a
	jr nz, .asm_6cdd8
	bit 2, a
	jr nz, .asm_6cddd
	bit 7, a
	jr nz, .asm_6cd8e
	ld bc, BlockTilesAndAttributes
	jr .asm_6cde2
.asm_6cdd8
	call Func_6c077
	jr .asm_6cdee
.asm_6cddd
	ld hl, Data_6f3ac
	jr .asm_6cdee
.asm_6cde2
	ld a, [wBlocks + 1 + 3 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6cdee
	ld a, [hli]
	ldboard_a 2, 6, w6dd80
	ld a, [hli]
	ldboard_a 3, 6, w6dd80
	ld a, [hli]
	ldboard_a 2, 7, w6dd80
	ld a, [hli]
	ldboard_a 3, 7, w6dd80
	ld a, [hli]
	ldboard_a 2, 6, w6dec0
	ld a, [hli]
	ldboard_a 3, 6, w6dec0
	ld a, [hli]
	ldboard_a 2, 7, w6dec0
	ld a, [hli]
	ldboard_a 3, 7, w6dec0
	ld bc, w6d058 + 2 + 3 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 2 + 3 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 2 + 3 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6ce40
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6ce59
	bit 1, a
	jr nz, .asm_6ce74
	bit 4, a
	jr nz, .asm_6ce4f
	bit 2, a
	jr nz, .asm_6ce54
	bit 6, a
	jr nz, .asm_6ce4a
	bit 5, a
	jr nz, .asm_6ce45
	ld a, [w6d0b0 + 2 + 3 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6ce40
.asm_6ce3b
	ld bc, BlockTilesAndAttributes
	jr .asm_6ce8f
.asm_6ce40
	ld hl, Data_6f01c
	jr .asm_6ce9b
.asm_6ce45
	call Func_6c000
	jr .asm_6ce8f
.asm_6ce4a
	call Func_6c02f
	jr .asm_6ce8f
.asm_6ce4f
	call Func_6c05b
	jr .asm_6ce8f
.asm_6ce54
	ld bc, Data_6f184
	jr .asm_6ce8f
.asm_6ce59
	bit 4, a
	jr nz, .asm_6ce6a
	bit 2, a
	jr nz, .asm_6ce6f
	bit 7, a
	jr nz, .asm_6ce3b
	ld bc, BlockTilesAndAttributes
	jr .asm_6ce8f
.asm_6ce6a
	call Func_6c069
	jr .asm_6ce9b
.asm_6ce6f
	ld hl, Data_6f3b4
	jr .asm_6ce9b
.asm_6ce74
	bit 4, a
	jr nz, .asm_6ce85
	bit 2, a
	jr nz, .asm_6ce8a
	bit 7, a
	jr nz, .asm_6ce3b
	ld bc, BlockTilesAndAttributes
	jr .asm_6ce8f
.asm_6ce85
	call Func_6c077
	jr .asm_6ce9b
.asm_6ce8a
	ld hl, Data_6f3ac
	jr .asm_6ce9b
.asm_6ce8f
	ld a, [wBlocks + 2 + 3 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6ce9b
	ld a, [hli]
	ldboard_a 4, 6, w6dd80
	ld a, [hli]
	ldboard_a 5, 6, w6dd80
	ld a, [hli]
	ldboard_a 4, 7, w6dd80
	ld a, [hli]
	ldboard_a 5, 7, w6dd80
	ld a, [hli]
	ldboard_a 4, 6, w6dec0
	ld a, [hli]
	ldboard_a 5, 6, w6dec0
	ld a, [hli]
	ldboard_a 4, 7, w6dec0
	ld a, [hli]
	ldboard_a 5, 7, w6dec0
	ld bc, w6d058 + 3 + 3 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 3 + 3 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 3 + 3 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6ceed
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6cf06
	bit 1, a
	jr nz, .asm_6cf21
	bit 4, a
	jr nz, .asm_6cefc
	bit 2, a
	jr nz, .asm_6cf01
	bit 6, a
	jr nz, .asm_6cef7
	bit 5, a
	jr nz, .asm_6cef2
	ld a, [w6d0b0 + 3 + 3 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6ceed
.asm_6cee8
	ld bc, BlockTilesAndAttributes
	jr .asm_6cf3c
.asm_6ceed
	ld hl, Data_6f01c
	jr .asm_6cf48
.asm_6cef2
	call Func_6c000
	jr .asm_6cf3c
.asm_6cef7
	call Func_6c02f
	jr .asm_6cf3c
.asm_6cefc
	call Func_6c05b
	jr .asm_6cf3c
.asm_6cf01
	ld bc, Data_6f184
	jr .asm_6cf3c
.asm_6cf06
	bit 4, a
	jr nz, .asm_6cf17
	bit 2, a
	jr nz, .asm_6cf1c
	bit 7, a
	jr nz, .asm_6cee8
	ld bc, BlockTilesAndAttributes
	jr .asm_6cf3c
.asm_6cf17
	call Func_6c069
	jr .asm_6cf48
.asm_6cf1c
	ld hl, Data_6f3b4
	jr .asm_6cf48
.asm_6cf21
	bit 4, a
	jr nz, .asm_6cf32
	bit 2, a
	jr nz, .asm_6cf37
	bit 7, a
	jr nz, .asm_6cee8
	ld bc, BlockTilesAndAttributes
	jr .asm_6cf3c
.asm_6cf32
	call Func_6c077
	jr .asm_6cf48
.asm_6cf37
	ld hl, Data_6f3ac
	jr .asm_6cf48
.asm_6cf3c
	ld a, [wBlocks + 3 + 3 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6cf48
	ld a, [hli]
	ldboard_a 6, 6, w6dd80
	ld a, [hli]
	ldboard_a 7, 6, w6dd80
	ld a, [hli]
	ldboard_a 6, 7, w6dd80
	ld a, [hli]
	ldboard_a 7, 7, w6dd80
	ld a, [hli]
	ldboard_a 6, 6, w6dec0
	ld a, [hli]
	ldboard_a 7, 6, w6dec0
	ld a, [hli]
	ldboard_a 6, 7, w6dec0
	ld a, [hli]
	ldboard_a 7, 7, w6dec0
	ld bc, w6d058 + 4 + 3 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 4 + 3 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 4 + 3 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6cf9a
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6cfb3
	bit 1, a
	jr nz, .asm_6cfce
	bit 4, a
	jr nz, .asm_6cfa9
	bit 2, a
	jr nz, .asm_6cfae
	bit 6, a
	jr nz, .asm_6cfa4
	bit 5, a
	jr nz, .asm_6cf9f
	ld a, [w6d0b0 + 4 + 3 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6cf9a
.asm_6cf95
	ld bc, BlockTilesAndAttributes
	jr .asm_6cfe9
.asm_6cf9a
	ld hl, Data_6f01c
	jr .asm_6cff5
.asm_6cf9f
	call Func_6c000
	jr .asm_6cfe9
.asm_6cfa4
	call Func_6c02f
	jr .asm_6cfe9
.asm_6cfa9
	call Func_6c05b
	jr .asm_6cfe9
.asm_6cfae
	ld bc, Data_6f184
	jr .asm_6cfe9
.asm_6cfb3
	bit 4, a
	jr nz, .asm_6cfc4
	bit 2, a
	jr nz, .asm_6cfc9
	bit 7, a
	jr nz, .asm_6cf95
	ld bc, BlockTilesAndAttributes
	jr .asm_6cfe9
.asm_6cfc4
	call Func_6c069
	jr .asm_6cff5
.asm_6cfc9
	ld hl, Data_6f3b4
	jr .asm_6cff5
.asm_6cfce
	bit 4, a
	jr nz, .asm_6cfdf
	bit 2, a
	jr nz, .asm_6cfe4
	bit 7, a
	jr nz, .asm_6cf95
	ld bc, BlockTilesAndAttributes
	jr .asm_6cfe9
.asm_6cfdf
	call Func_6c077
	jr .asm_6cff5
.asm_6cfe4
	ld hl, Data_6f3ac
	jr .asm_6cff5
.asm_6cfe9
	ld a, [wBlocks + 4 + 3 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6cff5
	ld a, [hli]
	ldboard_a 8, 6, w6dd80
	ld a, [hli]
	ldboard_a 9, 6, w6dd80
	ld a, [hli]
	ldboard_a 8, 7, w6dd80
	ld a, [hli]
	ldboard_a 9, 7, w6dd80
	ld a, [hli]
	ldboard_a 8, 6, w6dec0
	ld a, [hli]
	ldboard_a 9, 6, w6dec0
	ld a, [hli]
	ldboard_a 8, 7, w6dec0
	ld a, [hli]
	ldboard_a 9, 7, w6dec0
	ld bc, w6d058 + 5 + 3 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 5 + 3 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 5 + 3 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6d047
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6d060
	bit 1, a
	jr nz, .asm_6d07b
	bit 4, a
	jr nz, .asm_6d056
	bit 2, a
	jr nz, .asm_6d05b
	bit 6, a
	jr nz, .asm_6d051
	bit 5, a
	jr nz, .asm_6d04c
	ld a, [w6d0b0 + 5 + 3 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6d047
.asm_6d042
	ld bc, BlockTilesAndAttributes
	jr .asm_6d096
.asm_6d047
	ld hl, Data_6f01c
	jr .asm_6d0a2
.asm_6d04c
	call Func_6c000
	jr .asm_6d096
.asm_6d051
	call Func_6c02f
	jr .asm_6d096
.asm_6d056
	call Func_6c05b
	jr .asm_6d096
.asm_6d05b
	ld bc, Data_6f184
	jr .asm_6d096
.asm_6d060
	bit 4, a
	jr nz, .asm_6d071
	bit 2, a
	jr nz, .asm_6d076
	bit 7, a
	jr nz, .asm_6d042
	ld bc, BlockTilesAndAttributes
	jr .asm_6d096
.asm_6d071
	call Func_6c069
	jr .asm_6d0a2
.asm_6d076
	ld hl, Data_6f3b4
	jr .asm_6d0a2
.asm_6d07b
	bit 4, a
	jr nz, .asm_6d08c
	bit 2, a
	jr nz, .asm_6d091
	bit 7, a
	jr nz, .asm_6d042
	ld bc, BlockTilesAndAttributes
	jr .asm_6d096
.asm_6d08c
	call Func_6c077
	jr .asm_6d0a2
.asm_6d091
	ld hl, Data_6f3ac
	jr .asm_6d0a2
.asm_6d096
	ld a, [wBlocks + 5 + 3 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6d0a2
	ld a, [hli]
	ldboard_a 10, 6, w6dd80
	ld a, [hli]
	ldboard_a 11, 6, w6dd80
	ld a, [hli]
	ldboard_a 10, 7, w6dd80
	ld a, [hli]
	ldboard_a 11, 7, w6dd80
	ld a, [hli]
	ldboard_a 10, 6, w6dec0
	ld a, [hli]
	ldboard_a 11, 6, w6dec0
	ld a, [hli]
	ldboard_a 10, 7, w6dec0
	ld a, [hli]
	ldboard_a 11, 7, w6dec0
	ld bc, w6d058 + 0 + 4 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 0 + 4 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 0 + 4 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6d0f4
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6d10d
	bit 1, a
	jr nz, .asm_6d128
	bit 4, a
	jr nz, .asm_6d103
	bit 2, a
	jr nz, .asm_6d108
	bit 6, a
	jr nz, .asm_6d0fe
	bit 5, a
	jr nz, .asm_6d0f9
	ld a, [w6d0b0 + 0 + 4 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6d0f4
.asm_6d0ef
	ld bc, BlockTilesAndAttributes
	jr .asm_6d143
.asm_6d0f4
	ld hl, Data_6f01c
	jr .asm_6d14f
.asm_6d0f9
	call Func_6c000
	jr .asm_6d143
.asm_6d0fe
	call Func_6c02f
	jr .asm_6d143
.asm_6d103
	call Func_6c05b
	jr .asm_6d143
.asm_6d108
	ld bc, Data_6f184
	jr .asm_6d143
.asm_6d10d
	bit 4, a
	jr nz, .asm_6d11e
	bit 2, a
	jr nz, .asm_6d123
	bit 7, a
	jr nz, .asm_6d0ef
	ld bc, BlockTilesAndAttributes
	jr .asm_6d143
.asm_6d11e
	call Func_6c069
	jr .asm_6d14f
.asm_6d123
	ld hl, Data_6f3b4
	jr .asm_6d14f
.asm_6d128
	bit 4, a
	jr nz, .asm_6d139
	bit 2, a
	jr nz, .asm_6d13e
	bit 7, a
	jr nz, .asm_6d0ef
	ld bc, BlockTilesAndAttributes
	jr .asm_6d143
.asm_6d139
	call Func_6c077
	jr .asm_6d14f
.asm_6d13e
	ld hl, Data_6f3ac
	jr .asm_6d14f
.asm_6d143
	ld a, [wBlocks + 0 + 4 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6d14f
	ld a, [hli]
	ldboard_a 0, 8, w6dd80
	ld a, [hli]
	ldboard_a 1, 8, w6dd80
	ld a, [hli]
	ldboard_a 0, 9, w6dd80
	ld a, [hli]
	ldboard_a 1, 9, w6dd80
	ld a, [hli]
	ldboard_a 0, 8, w6dec0
	ld a, [hli]
	ldboard_a 1, 8, w6dec0
	ld a, [hli]
	ldboard_a 0, 9, w6dec0
	ld a, [hli]
	ldboard_a 1, 9, w6dec0
	ld bc, w6d058 + 1 + 4 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 1 + 4 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 1 + 4 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6d1a1
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6d1ba
	bit 1, a
	jr nz, .asm_6d1d5
	bit 4, a
	jr nz, .asm_6d1b0
	bit 2, a
	jr nz, .asm_6d1b5
	bit 6, a
	jr nz, .asm_6d1ab
	bit 5, a
	jr nz, .asm_6d1a6
	ld a, [w6d0b0 + 1 + 4 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6d1a1
.asm_6d19c
	ld bc, BlockTilesAndAttributes
	jr .asm_6d1f0
.asm_6d1a1
	ld hl, Data_6f01c
	jr .asm_6d1fc
.asm_6d1a6
	call Func_6c000
	jr .asm_6d1f0
.asm_6d1ab
	call Func_6c02f
	jr .asm_6d1f0
.asm_6d1b0
	call Func_6c05b
	jr .asm_6d1f0
.asm_6d1b5
	ld bc, Data_6f184
	jr .asm_6d1f0
.asm_6d1ba
	bit 4, a
	jr nz, .asm_6d1cb
	bit 2, a
	jr nz, .asm_6d1d0
	bit 7, a
	jr nz, .asm_6d19c
	ld bc, BlockTilesAndAttributes
	jr .asm_6d1f0
.asm_6d1cb
	call Func_6c069
	jr .asm_6d1fc
.asm_6d1d0
	ld hl, Data_6f3b4
	jr .asm_6d1fc
.asm_6d1d5
	bit 4, a
	jr nz, .asm_6d1e6
	bit 2, a
	jr nz, .asm_6d1eb
	bit 7, a
	jr nz, .asm_6d19c
	ld bc, BlockTilesAndAttributes
	jr .asm_6d1f0
.asm_6d1e6
	call Func_6c077
	jr .asm_6d1fc
.asm_6d1eb
	ld hl, Data_6f3ac
	jr .asm_6d1fc
.asm_6d1f0
	ld a, [wBlocks + 1 + 4 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6d1fc
	ld a, [hli]
	ldboard_a 2, 8, w6dd80
	ld a, [hli]
	ldboard_a 3, 8, w6dd80
	ld a, [hli]
	ldboard_a 2, 9, w6dd80
	ld a, [hli]
	ldboard_a 3, 9, w6dd80
	ld a, [hli]
	ldboard_a 2, 8, w6dec0
	ld a, [hli]
	ldboard_a 3, 8, w6dec0
	ld a, [hli]
	ldboard_a 2, 9, w6dec0
	ld a, [hli]
	ldboard_a 3, 9, w6dec0
	ld bc, w6d058 + 2 + 4 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 2 + 4 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 2 + 4 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6d24e
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6d267
	bit 1, a
	jr nz, .asm_6d282
	bit 4, a
	jr nz, .asm_6d25d
	bit 2, a
	jr nz, .asm_6d262
	bit 6, a
	jr nz, .asm_6d258
	bit 5, a
	jr nz, .asm_6d253
	ld a, [w6d0b0 + 2 + 4 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6d24e
.asm_6d249
	ld bc, BlockTilesAndAttributes
	jr .asm_6d29d
.asm_6d24e
	ld hl, Data_6f01c
	jr .asm_6d2a9
.asm_6d253
	call Func_6c000
	jr .asm_6d29d
.asm_6d258
	call Func_6c02f
	jr .asm_6d29d
.asm_6d25d
	call Func_6c05b
	jr .asm_6d29d
.asm_6d262
	ld bc, Data_6f184
	jr .asm_6d29d
.asm_6d267
	bit 4, a
	jr nz, .asm_6d278
	bit 2, a
	jr nz, .asm_6d27d
	bit 7, a
	jr nz, .asm_6d249
	ld bc, BlockTilesAndAttributes
	jr .asm_6d29d
.asm_6d278
	call Func_6c069
	jr .asm_6d2a9
.asm_6d27d
	ld hl, Data_6f3b4
	jr .asm_6d2a9
.asm_6d282
	bit 4, a
	jr nz, .asm_6d293
	bit 2, a
	jr nz, .asm_6d298
	bit 7, a
	jr nz, .asm_6d249
	ld bc, BlockTilesAndAttributes
	jr .asm_6d29d
.asm_6d293
	call Func_6c077
	jr .asm_6d2a9
.asm_6d298
	ld hl, Data_6f3ac
	jr .asm_6d2a9
.asm_6d29d
	ld a, [wBlocks + 2 + 4 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6d2a9
	ld a, [hli]
	ldboard_a 4, 8, w6dd80
	ld a, [hli]
	ldboard_a 5, 8, w6dd80
	ld a, [hli]
	ldboard_a 4, 9, w6dd80
	ld a, [hli]
	ldboard_a 5, 9, w6dd80
	ld a, [hli]
	ldboard_a 4, 8, w6dec0
	ld a, [hli]
	ldboard_a 5, 8, w6dec0
	ld a, [hli]
	ldboard_a 4, 9, w6dec0
	ld a, [hli]
	ldboard_a 5, 9, w6dec0
	ld bc, w6d058 + 3 + 4 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 3 + 4 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 3 + 4 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6d2fb
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6d314
	bit 1, a
	jr nz, .asm_6d32f
	bit 4, a
	jr nz, .asm_6d30a
	bit 2, a
	jr nz, .asm_6d30f
	bit 6, a
	jr nz, .asm_6d305
	bit 5, a
	jr nz, .asm_6d300
	ld a, [w6d0b0 + 3 + 4 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6d2fb
.asm_6d2f6
	ld bc, BlockTilesAndAttributes
	jr .asm_6d34a
.asm_6d2fb
	ld hl, Data_6f01c
	jr .asm_6d356
.asm_6d300
	call Func_6c000
	jr .asm_6d34a
.asm_6d305
	call Func_6c02f
	jr .asm_6d34a
.asm_6d30a
	call Func_6c05b
	jr .asm_6d34a
.asm_6d30f
	ld bc, Data_6f184
	jr .asm_6d34a
.asm_6d314
	bit 4, a
	jr nz, .asm_6d325
	bit 2, a
	jr nz, .asm_6d32a
	bit 7, a
	jr nz, .asm_6d2f6
	ld bc, BlockTilesAndAttributes
	jr .asm_6d34a
.asm_6d325
	call Func_6c069
	jr .asm_6d356
.asm_6d32a
	ld hl, Data_6f3b4
	jr .asm_6d356
.asm_6d32f
	bit 4, a
	jr nz, .asm_6d340
	bit 2, a
	jr nz, .asm_6d345
	bit 7, a
	jr nz, .asm_6d2f6
	ld bc, BlockTilesAndAttributes
	jr .asm_6d34a
.asm_6d340
	call Func_6c077
	jr .asm_6d356
.asm_6d345
	ld hl, Data_6f3ac
	jr .asm_6d356
.asm_6d34a
	ld a, [wBlocks + 3 + 4 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6d356
	ld a, [hli]
	ldboard_a 6, 8, w6dd80
	ld a, [hli]
	ldboard_a 7, 8, w6dd80
	ld a, [hli]
	ldboard_a 6, 9, w6dd80
	ld a, [hli]
	ldboard_a 7, 9, w6dd80
	ld a, [hli]
	ldboard_a 6, 8, w6dec0
	ld a, [hli]
	ldboard_a 7, 8, w6dec0
	ld a, [hli]
	ldboard_a 6, 9, w6dec0
	ld a, [hli]
	ldboard_a 7, 9, w6dec0
	ld bc, w6d058 + 4 + 4 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 4 + 4 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 4 + 4 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6d3a8
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6d3c1
	bit 1, a
	jr nz, .asm_6d3dc
	bit 4, a
	jr nz, .asm_6d3b7
	bit 2, a
	jr nz, .asm_6d3bc
	bit 6, a
	jr nz, .asm_6d3b2
	bit 5, a
	jr nz, .asm_6d3ad
	ld a, [w6d0b0 + 4 + 4 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6d3a8
.asm_6d3a3
	ld bc, BlockTilesAndAttributes
	jr .asm_6d3f7
.asm_6d3a8
	ld hl, Data_6f01c
	jr .asm_6d403
.asm_6d3ad
	call Func_6c000
	jr .asm_6d3f7
.asm_6d3b2
	call Func_6c02f
	jr .asm_6d3f7
.asm_6d3b7
	call Func_6c05b
	jr .asm_6d3f7
.asm_6d3bc
	ld bc, Data_6f184
	jr .asm_6d3f7
.asm_6d3c1
	bit 4, a
	jr nz, .asm_6d3d2
	bit 2, a
	jr nz, .asm_6d3d7
	bit 7, a
	jr nz, .asm_6d3a3
	ld bc, BlockTilesAndAttributes
	jr .asm_6d3f7
.asm_6d3d2
	call Func_6c069
	jr .asm_6d403
.asm_6d3d7
	ld hl, Data_6f3b4
	jr .asm_6d403
.asm_6d3dc
	bit 4, a
	jr nz, .asm_6d3ed
	bit 2, a
	jr nz, .asm_6d3f2
	bit 7, a
	jr nz, .asm_6d3a3
	ld bc, BlockTilesAndAttributes
	jr .asm_6d3f7
.asm_6d3ed
	call Func_6c077
	jr .asm_6d403
.asm_6d3f2
	ld hl, Data_6f3ac
	jr .asm_6d403
.asm_6d3f7
	ld a, [wBlocks + 4 + 4 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6d403
	ld a, [hli]
	ldboard_a 8, 8, w6dd80
	ld a, [hli]
	ldboard_a 9, 8, w6dd80
	ld a, [hli]
	ldboard_a 8, 9, w6dd80
	ld a, [hli]
	ldboard_a 9, 9, w6dd80
	ld a, [hli]
	ldboard_a 8, 8, w6dec0
	ld a, [hli]
	ldboard_a 9, 8, w6dec0
	ld a, [hli]
	ldboard_a 8, 9, w6dec0
	ld a, [hli]
	ldboard_a 9, 9, w6dec0
	ld bc, w6d058 + 5 + 4 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 5 + 4 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 5 + 4 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6d455
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6d46e
	bit 1, a
	jr nz, .asm_6d489
	bit 4, a
	jr nz, .asm_6d464
	bit 2, a
	jr nz, .asm_6d469
	bit 6, a
	jr nz, .asm_6d45f
	bit 5, a
	jr nz, .asm_6d45a
	ld a, [w6d0b0 + 5 + 4 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6d455
.asm_6d450
	ld bc, BlockTilesAndAttributes
	jr .asm_6d4a4
.asm_6d455
	ld hl, Data_6f01c
	jr .asm_6d4b0
.asm_6d45a
	call Func_6c000
	jr .asm_6d4a4
.asm_6d45f
	call Func_6c02f
	jr .asm_6d4a4
.asm_6d464
	call Func_6c05b
	jr .asm_6d4a4
.asm_6d469
	ld bc, Data_6f184
	jr .asm_6d4a4
.asm_6d46e
	bit 4, a
	jr nz, .asm_6d47f
	bit 2, a
	jr nz, .asm_6d484
	bit 7, a
	jr nz, .asm_6d450
	ld bc, BlockTilesAndAttributes
	jr .asm_6d4a4
.asm_6d47f
	call Func_6c069
	jr .asm_6d4b0
.asm_6d484
	ld hl, Data_6f3b4
	jr .asm_6d4b0
.asm_6d489
	bit 4, a
	jr nz, .asm_6d49a
	bit 2, a
	jr nz, .asm_6d49f
	bit 7, a
	jr nz, .asm_6d450
	ld bc, BlockTilesAndAttributes
	jr .asm_6d4a4
.asm_6d49a
	call Func_6c077
	jr .asm_6d4b0
.asm_6d49f
	ld hl, Data_6f3ac
	jr .asm_6d4b0
.asm_6d4a4
	ld a, [wBlocks + 5 + 4 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6d4b0
	ld a, [hli]
	ldboard_a 10, 8, w6dd80
	ld a, [hli]
	ldboard_a 11, 8, w6dd80
	ld a, [hli]
	ldboard_a 10, 9, w6dd80
	ld a, [hli]
	ldboard_a 11, 9, w6dd80
	ld a, [hli]
	ldboard_a 10, 8, w6dec0
	ld a, [hli]
	ldboard_a 11, 8, w6dec0
	ld a, [hli]
	ldboard_a 10, 9, w6dec0
	ld a, [hli]
	ldboard_a 11, 9, w6dec0
	ld bc, w6d058 + 0 + 5 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 0 + 5 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 0 + 5 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6d502
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6d51b
	bit 1, a
	jr nz, .asm_6d536
	bit 4, a
	jr nz, .asm_6d511
	bit 2, a
	jr nz, .asm_6d516
	bit 6, a
	jr nz, .asm_6d50c
	bit 5, a
	jr nz, .asm_6d507
	ld a, [w6d0b0 + 0 + 5 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6d502
.asm_6d4fd
	ld bc, BlockTilesAndAttributes
	jr .asm_6d551
.asm_6d502
	ld hl, Data_6f01c
	jr .asm_6d55d
.asm_6d507
	call Func_6c000
	jr .asm_6d551
.asm_6d50c
	call Func_6c02f
	jr .asm_6d551
.asm_6d511
	call Func_6c05b
	jr .asm_6d551
.asm_6d516
	ld bc, Data_6f184
	jr .asm_6d551
.asm_6d51b
	bit 4, a
	jr nz, .asm_6d52c
	bit 2, a
	jr nz, .asm_6d531
	bit 7, a
	jr nz, .asm_6d4fd
	ld bc, BlockTilesAndAttributes
	jr .asm_6d551
.asm_6d52c
	call Func_6c069
	jr .asm_6d55d
.asm_6d531
	ld hl, Data_6f3b4
	jr .asm_6d55d
.asm_6d536
	bit 4, a
	jr nz, .asm_6d547
	bit 2, a
	jr nz, .asm_6d54c
	bit 7, a
	jr nz, .asm_6d4fd
	ld bc, BlockTilesAndAttributes
	jr .asm_6d551
.asm_6d547
	call Func_6c077
	jr .asm_6d55d
.asm_6d54c
	ld hl, Data_6f3ac
	jr .asm_6d55d
.asm_6d551
	ld a, [wBlocks + 0 + 5 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6d55d
	ld a, [hli]
	ldboard_a 0, 10, w6dd80
	ld a, [hli]
	ldboard_a 1, 10, w6dd80
	ld a, [hli]
	ldboard_a 0, 11, w6dd80
	ld a, [hli]
	ldboard_a 1, 11, w6dd80
	ld a, [hli]
	ldboard_a 0, 10, w6dec0
	ld a, [hli]
	ldboard_a 1, 10, w6dec0
	ld a, [hli]
	ldboard_a 0, 11, w6dec0
	ld a, [hli]
	ldboard_a 1, 11, w6dec0
	ld bc, w6d058 + 1 + 5 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 1 + 5 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 1 + 5 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6d5af
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6d5c8
	bit 1, a
	jr nz, .asm_6d5e3
	bit 4, a
	jr nz, .asm_6d5be
	bit 2, a
	jr nz, .asm_6d5c3
	bit 6, a
	jr nz, .asm_6d5b9
	bit 5, a
	jr nz, .asm_6d5b4
	ld a, [w6d0b0 + 1 + 5 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6d5af
.asm_6d5aa
	ld bc, BlockTilesAndAttributes
	jr .asm_6d5fe
.asm_6d5af
	ld hl, Data_6f01c
	jr .asm_6d60a
.asm_6d5b4
	call Func_6c000
	jr .asm_6d5fe
.asm_6d5b9
	call Func_6c02f
	jr .asm_6d5fe
.asm_6d5be
	call Func_6c05b
	jr .asm_6d5fe
.asm_6d5c3
	ld bc, Data_6f184
	jr .asm_6d5fe
.asm_6d5c8
	bit 4, a
	jr nz, .asm_6d5d9
	bit 2, a
	jr nz, .asm_6d5de
	bit 7, a
	jr nz, .asm_6d5aa
	ld bc, BlockTilesAndAttributes
	jr .asm_6d5fe
.asm_6d5d9
	call Func_6c069
	jr .asm_6d60a
.asm_6d5de
	ld hl, Data_6f3b4
	jr .asm_6d60a
.asm_6d5e3
	bit 4, a
	jr nz, .asm_6d5f4
	bit 2, a
	jr nz, .asm_6d5f9
	bit 7, a
	jr nz, .asm_6d5aa
	ld bc, BlockTilesAndAttributes
	jr .asm_6d5fe
.asm_6d5f4
	call Func_6c077
	jr .asm_6d60a
.asm_6d5f9
	ld hl, Data_6f3ac
	jr .asm_6d60a
.asm_6d5fe
	ld a, [wBlocks + 1 + 5 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6d60a
	ld a, [hli]
	ldboard_a 2, 10, w6dd80
	ld a, [hli]
	ldboard_a 3, 10, w6dd80
	ld a, [hli]
	ldboard_a 2, 11, w6dd80
	ld a, [hli]
	ldboard_a 3, 11, w6dd80
	ld a, [hli]
	ldboard_a 2, 10, w6dec0
	ld a, [hli]
	ldboard_a 3, 10, w6dec0
	ld a, [hli]
	ldboard_a 2, 11, w6dec0
	ld a, [hli]
	ldboard_a 3, 11, w6dec0
	ld bc, w6d058 + 2 + 5 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 2 + 5 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 2 + 5 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6d65c
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6d675
	bit 1, a
	jr nz, .asm_6d690
	bit 4, a
	jr nz, .asm_6d66b
	bit 2, a
	jr nz, .asm_6d670
	bit 6, a
	jr nz, .asm_6d666
	bit 5, a
	jr nz, .asm_6d661
	ld a, [w6d0b0 + 2 + 5 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6d65c
.asm_6d657
	ld bc, BlockTilesAndAttributes
	jr .asm_6d6ab
.asm_6d65c
	ld hl, Data_6f01c
	jr .asm_6d6b7
.asm_6d661
	call Func_6c000
	jr .asm_6d6ab
.asm_6d666
	call Func_6c02f
	jr .asm_6d6ab
.asm_6d66b
	call Func_6c05b
	jr .asm_6d6ab
.asm_6d670
	ld bc, Data_6f184
	jr .asm_6d6ab
.asm_6d675
	bit 4, a
	jr nz, .asm_6d686
	bit 2, a
	jr nz, .asm_6d68b
	bit 7, a
	jr nz, .asm_6d657
	ld bc, BlockTilesAndAttributes
	jr .asm_6d6ab
.asm_6d686
	call Func_6c069
	jr .asm_6d6b7
.asm_6d68b
	ld hl, Data_6f3b4
	jr .asm_6d6b7
.asm_6d690
	bit 4, a
	jr nz, .asm_6d6a1
	bit 2, a
	jr nz, .asm_6d6a6
	bit 7, a
	jr nz, .asm_6d657
	ld bc, BlockTilesAndAttributes
	jr .asm_6d6ab
.asm_6d6a1
	call Func_6c077
	jr .asm_6d6b7
.asm_6d6a6
	ld hl, Data_6f3ac
	jr .asm_6d6b7
.asm_6d6ab
	ld a, [wBlocks + 2 + 5 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6d6b7
	ld a, [hli]
	ldboard_a 4, 10, w6dd80
	ld a, [hli]
	ldboard_a 5, 10, w6dd80
	ld a, [hli]
	ldboard_a 4, 11, w6dd80
	ld a, [hli]
	ldboard_a 5, 11, w6dd80
	ld a, [hli]
	ldboard_a 4, 10, w6dec0
	ld a, [hli]
	ldboard_a 5, 10, w6dec0
	ld a, [hli]
	ldboard_a 4, 11, w6dec0
	ld a, [hli]
	ldboard_a 5, 11, w6dec0
	ld bc, w6d058 + 3 + 5 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 3 + 5 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 3 + 5 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6d709
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6d722
	bit 1, a
	jr nz, .asm_6d73d
	bit 4, a
	jr nz, .asm_6d718
	bit 2, a
	jr nz, .asm_6d71d
	bit 6, a
	jr nz, .asm_6d713
	bit 5, a
	jr nz, .asm_6d70e
	ld a, [w6d0b0 + 3 + 5 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6d709
.asm_6d704
	ld bc, BlockTilesAndAttributes
	jr .asm_6d758
.asm_6d709
	ld hl, Data_6f01c
	jr .asm_6d764
.asm_6d70e
	call Func_6c000
	jr .asm_6d758
.asm_6d713
	call Func_6c02f
	jr .asm_6d758
.asm_6d718
	call Func_6c05b
	jr .asm_6d758
.asm_6d71d
	ld bc, Data_6f184
	jr .asm_6d758
.asm_6d722
	bit 4, a
	jr nz, .asm_6d733
	bit 2, a
	jr nz, .asm_6d738
	bit 7, a
	jr nz, .asm_6d704
	ld bc, BlockTilesAndAttributes
	jr .asm_6d758
.asm_6d733
	call Func_6c069
	jr .asm_6d764
.asm_6d738
	ld hl, Data_6f3b4
	jr .asm_6d764
.asm_6d73d
	bit 4, a
	jr nz, .asm_6d74e
	bit 2, a
	jr nz, .asm_6d753
	bit 7, a
	jr nz, .asm_6d704
	ld bc, BlockTilesAndAttributes
	jr .asm_6d758
.asm_6d74e
	call Func_6c077
	jr .asm_6d764
.asm_6d753
	ld hl, Data_6f3ac
	jr .asm_6d764
.asm_6d758
	ld a, [wBlocks + 3 + 5 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6d764
	ld a, [hli]
	ldboard_a 6, 10, w6dd80
	ld a, [hli]
	ldboard_a 7, 10, w6dd80
	ld a, [hli]
	ldboard_a 6, 11, w6dd80
	ld a, [hli]
	ldboard_a 7, 11, w6dd80
	ld a, [hli]
	ldboard_a 6, 10, w6dec0
	ld a, [hli]
	ldboard_a 7, 10, w6dec0
	ld a, [hli]
	ldboard_a 6, 11, w6dec0
	ld a, [hli]
	ldboard_a 7, 11, w6dec0
	ld bc, w6d058 + 4 + 5 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 4 + 5 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 4 + 5 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6d7b6
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6d7cf
	bit 1, a
	jr nz, .asm_6d7ea
	bit 4, a
	jr nz, .asm_6d7c5
	bit 2, a
	jr nz, .asm_6d7ca
	bit 6, a
	jr nz, .asm_6d7c0
	bit 5, a
	jr nz, .asm_6d7bb
	ld a, [w6d0b0 + 4 + 5 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6d7b6
.asm_6d7b1
	ld bc, BlockTilesAndAttributes
	jr .asm_6d805
.asm_6d7b6
	ld hl, Data_6f01c
	jr .asm_6d811
.asm_6d7bb
	call Func_6c000
	jr .asm_6d805
.asm_6d7c0
	call Func_6c02f
	jr .asm_6d805
.asm_6d7c5
	call Func_6c05b
	jr .asm_6d805
.asm_6d7ca
	ld bc, Data_6f184
	jr .asm_6d805
.asm_6d7cf
	bit 4, a
	jr nz, .asm_6d7e0
	bit 2, a
	jr nz, .asm_6d7e5
	bit 7, a
	jr nz, .asm_6d7b1
	ld bc, BlockTilesAndAttributes
	jr .asm_6d805
.asm_6d7e0
	call Func_6c069
	jr .asm_6d811
.asm_6d7e5
	ld hl, Data_6f3b4
	jr .asm_6d811
.asm_6d7ea
	bit 4, a
	jr nz, .asm_6d7fb
	bit 2, a
	jr nz, .asm_6d800
	bit 7, a
	jr nz, .asm_6d7b1
	ld bc, BlockTilesAndAttributes
	jr .asm_6d805
.asm_6d7fb
	call Func_6c077
	jr .asm_6d811
.asm_6d800
	ld hl, Data_6f3ac
	jr .asm_6d811
.asm_6d805
	ld a, [wBlocks + 4 + 5 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6d811
	ld a, [hli]
	ldboard_a 8, 10, w6dd80
	ld a, [hli]
	ldboard_a 9, 10, w6dd80
	ld a, [hli]
	ldboard_a 8, 11, w6dd80
	ld a, [hli]
	ldboard_a 9, 11, w6dd80
	ld a, [hli]
	ldboard_a 8, 10, w6dec0
	ld a, [hli]
	ldboard_a 9, 10, w6dec0
	ld a, [hli]
	ldboard_a 8, 11, w6dec0
	ld a, [hli]
	ldboard_a 9, 11, w6dec0
	ld bc, w6d058 + 5 + 5 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 5 + 5 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 5 + 5 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6d863
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6d87c
	bit 1, a
	jr nz, .asm_6d897
	bit 4, a
	jr nz, .asm_6d872
	bit 2, a
	jr nz, .asm_6d877
	bit 6, a
	jr nz, .asm_6d86d
	bit 5, a
	jr nz, .asm_6d868
	ld a, [w6d0b0 + 5 + 5 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6d863
.asm_6d85e
	ld bc, BlockTilesAndAttributes
	jr .asm_6d8b2
.asm_6d863
	ld hl, Data_6f01c
	jr .asm_6d8be
.asm_6d868
	call Func_6c000
	jr .asm_6d8b2
.asm_6d86d
	call Func_6c02f
	jr .asm_6d8b2
.asm_6d872
	call Func_6c05b
	jr .asm_6d8b2
.asm_6d877
	ld bc, Data_6f184
	jr .asm_6d8b2
.asm_6d87c
	bit 4, a
	jr nz, .asm_6d88d
	bit 2, a
	jr nz, .asm_6d892
	bit 7, a
	jr nz, .asm_6d85e
	ld bc, BlockTilesAndAttributes
	jr .asm_6d8b2
.asm_6d88d
	call Func_6c069
	jr .asm_6d8be
.asm_6d892
	ld hl, Data_6f3b4
	jr .asm_6d8be
.asm_6d897
	bit 4, a
	jr nz, .asm_6d8a8
	bit 2, a
	jr nz, .asm_6d8ad
	bit 7, a
	jr nz, .asm_6d85e
	ld bc, BlockTilesAndAttributes
	jr .asm_6d8b2
.asm_6d8a8
	call Func_6c077
	jr .asm_6d8be
.asm_6d8ad
	ld hl, Data_6f3ac
	jr .asm_6d8be
.asm_6d8b2
	ld a, [wBlocks + 5 + 5 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6d8be
	ld a, [hli]
	ldboard_a 10, 10, w6dd80
	ld a, [hli]
	ldboard_a 11, 10, w6dd80
	ld a, [hli]
	ldboard_a 10, 11, w6dd80
	ld a, [hli]
	ldboard_a 11, 11, w6dd80
	ld a, [hli]
	ldboard_a 10, 10, w6dec0
	ld a, [hli]
	ldboard_a 11, 10, w6dec0
	ld a, [hli]
	ldboard_a 10, 11, w6dec0
	ld a, [hli]
	ldboard_a 11, 11, w6dec0
	ld bc, w6d058 + 0 + 6 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 0 + 6 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 0 + 6 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6d910
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6d929
	bit 1, a
	jr nz, .asm_6d944
	bit 4, a
	jr nz, .asm_6d91f
	bit 2, a
	jr nz, .asm_6d924
	bit 6, a
	jr nz, .asm_6d91a
	bit 5, a
	jr nz, .asm_6d915
	ld a, [w6d0b0 + 0 + 6 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6d910
.asm_6d90b
	ld bc, BlockTilesAndAttributes
	jr .asm_6d95f
.asm_6d910
	ld hl, Data_6f01c
	jr .asm_6d96b
.asm_6d915
	call Func_6c000
	jr .asm_6d95f
.asm_6d91a
	call Func_6c02f
	jr .asm_6d95f
.asm_6d91f
	call Func_6c05b
	jr .asm_6d95f
.asm_6d924
	ld bc, Data_6f184
	jr .asm_6d95f
.asm_6d929
	bit 4, a
	jr nz, .asm_6d93a
	bit 2, a
	jr nz, .asm_6d93f
	bit 7, a
	jr nz, .asm_6d90b
	ld bc, BlockTilesAndAttributes
	jr .asm_6d95f
.asm_6d93a
	call Func_6c069
	jr .asm_6d96b
.asm_6d93f
	ld hl, Data_6f3b4
	jr .asm_6d96b
.asm_6d944
	bit 4, a
	jr nz, .asm_6d955
	bit 2, a
	jr nz, .asm_6d95a
	bit 7, a
	jr nz, .asm_6d90b
	ld bc, BlockTilesAndAttributes
	jr .asm_6d95f
.asm_6d955
	call Func_6c077
	jr .asm_6d96b
.asm_6d95a
	ld hl, Data_6f3ac
	jr .asm_6d96b
.asm_6d95f
	ld a, [wBlocks + 0 + 6 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6d96b
	ld a, [hli]
	ldboard_a 0, 12, w6dd80
	ld a, [hli]
	ldboard_a 1, 12, w6dd80
	ld a, [hli]
	ldboard_a 0, 13, w6dd80
	ld a, [hli]
	ldboard_a 1, 13, w6dd80
	ld a, [hli]
	ldboard_a 0, 12, w6dec0
	ld a, [hli]
	ldboard_a 1, 12, w6dec0
	ld a, [hli]
	ldboard_a 0, 13, w6dec0
	ld a, [hli]
	ldboard_a 1, 13, w6dec0
	ld bc, w6d058 + 1 + 6 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 1 + 6 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 1 + 6 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6d9bd
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6d9d6
	bit 1, a
	jr nz, .asm_6d9f1
	bit 4, a
	jr nz, .asm_6d9cc
	bit 2, a
	jr nz, .asm_6d9d1
	bit 6, a
	jr nz, .asm_6d9c7
	bit 5, a
	jr nz, .asm_6d9c2
	ld a, [w6d0b0 + 1 + 6 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6d9bd
.asm_6d9b8
	ld bc, BlockTilesAndAttributes
	jr .asm_6da0c
.asm_6d9bd
	ld hl, Data_6f01c
	jr .asm_6da18
.asm_6d9c2
	call Func_6c000
	jr .asm_6da0c
.asm_6d9c7
	call Func_6c02f
	jr .asm_6da0c
.asm_6d9cc
	call Func_6c05b
	jr .asm_6da0c
.asm_6d9d1
	ld bc, Data_6f184
	jr .asm_6da0c
.asm_6d9d6
	bit 4, a
	jr nz, .asm_6d9e7
	bit 2, a
	jr nz, .asm_6d9ec
	bit 7, a
	jr nz, .asm_6d9b8
	ld bc, BlockTilesAndAttributes
	jr .asm_6da0c
.asm_6d9e7
	call Func_6c069
	jr .asm_6da18
.asm_6d9ec
	ld hl, Data_6f3b4
	jr .asm_6da18
.asm_6d9f1
	bit 4, a
	jr nz, .asm_6da02
	bit 2, a
	jr nz, .asm_6da07
	bit 7, a
	jr nz, .asm_6d9b8
	ld bc, BlockTilesAndAttributes
	jr .asm_6da0c
.asm_6da02
	call Func_6c077
	jr .asm_6da18
.asm_6da07
	ld hl, Data_6f3ac
	jr .asm_6da18
.asm_6da0c
	ld a, [wBlocks + 1 + 6 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6da18
	ld a, [hli]
	ldboard_a 2, 12, w6dd80
	ld a, [hli]
	ldboard_a 3, 12, w6dd80
	ld a, [hli]
	ldboard_a 2, 13, w6dd80
	ld a, [hli]
	ldboard_a 3, 13, w6dd80
	ld a, [hli]
	ldboard_a 2, 12, w6dec0
	ld a, [hli]
	ldboard_a 3, 12, w6dec0
	ld a, [hli]
	ldboard_a 2, 13, w6dec0
	ld a, [hli]
	ldboard_a 3, 13, w6dec0
	ld bc, w6d058 + 2 + 6 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 2 + 6 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 2 + 6 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6da6a
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6da83
	bit 1, a
	jr nz, .asm_6da9e
	bit 4, a
	jr nz, .asm_6da79
	bit 2, a
	jr nz, .asm_6da7e
	bit 6, a
	jr nz, .asm_6da74
	bit 5, a
	jr nz, .asm_6da6f
	ld a, [w6d0b0 + 2 + 6 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6da6a
.asm_6da65
	ld bc, BlockTilesAndAttributes
	jr .asm_6dab9
.asm_6da6a
	ld hl, Data_6f01c
	jr .asm_6dac5
.asm_6da6f
	call Func_6c000
	jr .asm_6dab9
.asm_6da74
	call Func_6c02f
	jr .asm_6dab9
.asm_6da79
	call Func_6c05b
	jr .asm_6dab9
.asm_6da7e
	ld bc, Data_6f184
	jr .asm_6dab9
.asm_6da83
	bit 4, a
	jr nz, .asm_6da94
	bit 2, a
	jr nz, .asm_6da99
	bit 7, a
	jr nz, .asm_6da65
	ld bc, BlockTilesAndAttributes
	jr .asm_6dab9
.asm_6da94
	call Func_6c069
	jr .asm_6dac5
.asm_6da99
	ld hl, Data_6f3b4
	jr .asm_6dac5
.asm_6da9e
	bit 4, a
	jr nz, .asm_6daaf
	bit 2, a
	jr nz, .asm_6dab4
	bit 7, a
	jr nz, .asm_6da65
	ld bc, BlockTilesAndAttributes
	jr .asm_6dab9
.asm_6daaf
	call Func_6c077
	jr .asm_6dac5
.asm_6dab4
	ld hl, Data_6f3ac
	jr .asm_6dac5
.asm_6dab9
	ld a, [wBlocks + 2 + 6 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6dac5
	ld a, [hli]
	ldboard_a 4, 12, w6dd80
	ld a, [hli]
	ldboard_a 5, 12, w6dd80
	ld a, [hli]
	ldboard_a 4, 13, w6dd80
	ld a, [hli]
	ldboard_a 5, 13, w6dd80
	ld a, [hli]
	ldboard_a 4, 12, w6dec0
	ld a, [hli]
	ldboard_a 5, 12, w6dec0
	ld a, [hli]
	ldboard_a 4, 13, w6dec0
	ld a, [hli]
	ldboard_a 5, 13, w6dec0
	ld bc, w6d058 + 3 + 6 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 3 + 6 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 3 + 6 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6db17
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6db30
	bit 1, a
	jr nz, .asm_6db4b
	bit 4, a
	jr nz, .asm_6db26
	bit 2, a
	jr nz, .asm_6db2b
	bit 6, a
	jr nz, .asm_6db21
	bit 5, a
	jr nz, .asm_6db1c
	ld a, [w6d0b0 + 3 + 6 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6db17
.asm_6db12
	ld bc, BlockTilesAndAttributes
	jr .asm_6db66
.asm_6db17
	ld hl, Data_6f01c
	jr .asm_6db72
.asm_6db1c
	call Func_6c000
	jr .asm_6db66
.asm_6db21
	call Func_6c02f
	jr .asm_6db66
.asm_6db26
	call Func_6c05b
	jr .asm_6db66
.asm_6db2b
	ld bc, Data_6f184
	jr .asm_6db66
.asm_6db30
	bit 4, a
	jr nz, .asm_6db41
	bit 2, a
	jr nz, .asm_6db46
	bit 7, a
	jr nz, .asm_6db12
	ld bc, BlockTilesAndAttributes
	jr .asm_6db66
.asm_6db41
	call Func_6c069
	jr .asm_6db72
.asm_6db46
	ld hl, Data_6f3b4
	jr .asm_6db72
.asm_6db4b
	bit 4, a
	jr nz, .asm_6db5c
	bit 2, a
	jr nz, .asm_6db61
	bit 7, a
	jr nz, .asm_6db12
	ld bc, BlockTilesAndAttributes
	jr .asm_6db66
.asm_6db5c
	call Func_6c077
	jr .asm_6db72
.asm_6db61
	ld hl, Data_6f3ac
	jr .asm_6db72
.asm_6db66
	ld a, [wBlocks + 3 + 6 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6db72
	ld a, [hli]
	ldboard_a 6, 12, w6dd80
	ld a, [hli]
	ldboard_a 7, 12, w6dd80
	ld a, [hli]
	ldboard_a 6, 13, w6dd80
	ld a, [hli]
	ldboard_a 7, 13, w6dd80
	ld a, [hli]
	ldboard_a 6, 12, w6dec0
	ld a, [hli]
	ldboard_a 7, 12, w6dec0
	ld a, [hli]
	ldboard_a 6, 13, w6dec0
	ld a, [hli]
	ldboard_a 7, 13, w6dec0
	ld bc, w6d058 + 4 + 6 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 4 + 6 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 4 + 6 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6dbc4
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6dbdd
	bit 1, a
	jr nz, .asm_6dbf8
	bit 4, a
	jr nz, .asm_6dbd3
	bit 2, a
	jr nz, .asm_6dbd8
	bit 6, a
	jr nz, .asm_6dbce
	bit 5, a
	jr nz, .asm_6dbc9
	ld a, [w6d0b0 + 4 + 6 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6dbc4
.asm_6dbbf
	ld bc, BlockTilesAndAttributes
	jr .asm_6dc13
.asm_6dbc4
	ld hl, Data_6f01c
	jr .asm_6dc1f
.asm_6dbc9
	call Func_6c000
	jr .asm_6dc13
.asm_6dbce
	call Func_6c02f
	jr .asm_6dc13
.asm_6dbd3
	call Func_6c05b
	jr .asm_6dc13
.asm_6dbd8
	ld bc, Data_6f184
	jr .asm_6dc13
.asm_6dbdd
	bit 4, a
	jr nz, .asm_6dbee
	bit 2, a
	jr nz, .asm_6dbf3
	bit 7, a
	jr nz, .asm_6dbbf
	ld bc, BlockTilesAndAttributes
	jr .asm_6dc13
.asm_6dbee
	call Func_6c069
	jr .asm_6dc1f
.asm_6dbf3
	ld hl, Data_6f3b4
	jr .asm_6dc1f
.asm_6dbf8
	bit 4, a
	jr nz, .asm_6dc09
	bit 2, a
	jr nz, .asm_6dc0e
	bit 7, a
	jr nz, .asm_6dbbf
	ld bc, BlockTilesAndAttributes
	jr .asm_6dc13
.asm_6dc09
	call Func_6c077
	jr .asm_6dc1f
.asm_6dc0e
	ld hl, Data_6f3ac
	jr .asm_6dc1f
.asm_6dc13
	ld a, [wBlocks + 4 + 6 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6dc1f
	ld a, [hli]
	ldboard_a 8, 12, w6dd80
	ld a, [hli]
	ldboard_a 9, 12, w6dd80
	ld a, [hli]
	ldboard_a 8, 13, w6dd80
	ld a, [hli]
	ldboard_a 9, 13, w6dd80
	ld a, [hli]
	ldboard_a 8, 12, w6dec0
	ld a, [hli]
	ldboard_a 9, 12, w6dec0
	ld a, [hli]
	ldboard_a 8, 13, w6dec0
	ld a, [hli]
	ldboard_a 9, 13, w6dec0
	ld bc, w6d058 + 5 + 6 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 5 + 6 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 5 + 6 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6dc71
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6dc8a
	bit 1, a
	jr nz, .asm_6dca5
	bit 4, a
	jr nz, .asm_6dc80
	bit 2, a
	jr nz, .asm_6dc85
	bit 6, a
	jr nz, .asm_6dc7b
	bit 5, a
	jr nz, .asm_6dc76
	ld a, [w6d0b0 + 5 + 6 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6dc71
.asm_6dc6c
	ld bc, BlockTilesAndAttributes
	jr .asm_6dcc0
.asm_6dc71
	ld hl, Data_6f01c
	jr .asm_6dccc
.asm_6dc76
	call Func_6c000
	jr .asm_6dcc0
.asm_6dc7b
	call Func_6c02f
	jr .asm_6dcc0
.asm_6dc80
	call Func_6c05b
	jr .asm_6dcc0
.asm_6dc85
	ld bc, Data_6f184
	jr .asm_6dcc0
.asm_6dc8a
	bit 4, a
	jr nz, .asm_6dc9b
	bit 2, a
	jr nz, .asm_6dca0
	bit 7, a
	jr nz, .asm_6dc6c
	ld bc, BlockTilesAndAttributes
	jr .asm_6dcc0
.asm_6dc9b
	call Func_6c069
	jr .asm_6dccc
.asm_6dca0
	ld hl, Data_6f3b4
	jr .asm_6dccc
.asm_6dca5
	bit 4, a
	jr nz, .asm_6dcb6
	bit 2, a
	jr nz, .asm_6dcbb
	bit 7, a
	jr nz, .asm_6dc6c
	ld bc, BlockTilesAndAttributes
	jr .asm_6dcc0
.asm_6dcb6
	call Func_6c077
	jr .asm_6dccc
.asm_6dcbb
	ld hl, Data_6f3ac
	jr .asm_6dccc
.asm_6dcc0
	ld a, [wBlocks + 5 + 6 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6dccc
	ld a, [hli]
	ldboard_a 10, 12, w6dd80
	ld a, [hli]
	ldboard_a 11, 12, w6dd80
	ld a, [hli]
	ldboard_a 10, 13, w6dd80
	ld a, [hli]
	ldboard_a 11, 13, w6dd80
	ld a, [hli]
	ldboard_a 10, 12, w6dec0
	ld a, [hli]
	ldboard_a 11, 12, w6dec0
	ld a, [hli]
	ldboard_a 10, 13, w6dec0
	ld a, [hli]
	ldboard_a 11, 13, w6dec0
	ld bc, w6d058 + 0 + 7 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 0 + 7 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 0 + 7 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6dd1e
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6dd37
	bit 1, a
	jr nz, .asm_6dd52
	bit 4, a
	jr nz, .asm_6dd2d
	bit 2, a
	jr nz, .asm_6dd32
	bit 6, a
	jr nz, .asm_6dd28
	bit 5, a
	jr nz, .asm_6dd23
	ld a, [w6d0b0 + 0 + 7 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6dd1e
.asm_6dd19
	ld bc, BlockTilesAndAttributes
	jr .asm_6dd6d
.asm_6dd1e
	ld hl, Data_6f01c
	jr .asm_6dd79
.asm_6dd23
	call Func_6c000
	jr .asm_6dd6d
.asm_6dd28
	call Func_6c02f
	jr .asm_6dd6d
.asm_6dd2d
	call Func_6c05b
	jr .asm_6dd6d
.asm_6dd32
	ld bc, Data_6f184
	jr .asm_6dd6d
.asm_6dd37
	bit 4, a
	jr nz, .asm_6dd48
	bit 2, a
	jr nz, .asm_6dd4d
	bit 7, a
	jr nz, .asm_6dd19
	ld bc, BlockTilesAndAttributes
	jr .asm_6dd6d
.asm_6dd48
	call Func_6c069
	jr .asm_6dd79
.asm_6dd4d
	ld hl, Data_6f3b4
	jr .asm_6dd79
.asm_6dd52
	bit 4, a
	jr nz, .asm_6dd63
	bit 2, a
	jr nz, .asm_6dd68
	bit 7, a
	jr nz, .asm_6dd19
	ld bc, BlockTilesAndAttributes
	jr .asm_6dd6d
.asm_6dd63
	call Func_6c077
	jr .asm_6dd79
.asm_6dd68
	ld hl, Data_6f3ac
	jr .asm_6dd79
.asm_6dd6d
	ld a, [wBlocks + 0 + 7 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6dd79
	ld a, [hli]
	ldboard_a 0, 14, w6dd80
	ld a, [hli]
	ldboard_a 1, 14, w6dd80
	ld a, [hli]
	ldboard_a 0, 15, w6dd80
	ld a, [hli]
	ldboard_a 1, 15, w6dd80
	ld a, [hli]
	ldboard_a 0, 14, w6dec0
	ld a, [hli]
	ldboard_a 1, 14, w6dec0
	ld a, [hli]
	ldboard_a 0, 15, w6dec0
	ld a, [hli]
	ldboard_a 1, 15, w6dec0
	ld bc, w6d058 + 1 + 7 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 1 + 7 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 1 + 7 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6ddcb
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6dde4
	bit 1, a
	jr nz, .asm_6ddff
	bit 4, a
	jr nz, .asm_6ddda
	bit 2, a
	jr nz, .asm_6dddf
	bit 6, a
	jr nz, .asm_6ddd5
	bit 5, a
	jr nz, .asm_6ddd0
	ld a, [w6d0b0 + 1 + 7 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6ddcb
.asm_6ddc6
	ld bc, BlockTilesAndAttributes
	jr .asm_6de1a
.asm_6ddcb
	ld hl, Data_6f01c
	jr .asm_6de26
.asm_6ddd0
	call Func_6c000
	jr .asm_6de1a
.asm_6ddd5
	call Func_6c02f
	jr .asm_6de1a
.asm_6ddda
	call Func_6c05b
	jr .asm_6de1a
.asm_6dddf
	ld bc, Data_6f184
	jr .asm_6de1a
.asm_6dde4
	bit 4, a
	jr nz, .asm_6ddf5
	bit 2, a
	jr nz, .asm_6ddfa
	bit 7, a
	jr nz, .asm_6ddc6
	ld bc, BlockTilesAndAttributes
	jr .asm_6de1a
.asm_6ddf5
	call Func_6c069
	jr .asm_6de26
.asm_6ddfa
	ld hl, Data_6f3b4
	jr .asm_6de26
.asm_6ddff
	bit 4, a
	jr nz, .asm_6de10
	bit 2, a
	jr nz, .asm_6de15
	bit 7, a
	jr nz, .asm_6ddc6
	ld bc, BlockTilesAndAttributes
	jr .asm_6de1a
.asm_6de10
	call Func_6c077
	jr .asm_6de26
.asm_6de15
	ld hl, Data_6f3ac
	jr .asm_6de26
.asm_6de1a
	ld a, [wBlocks + 1 + 7 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6de26
	ld a, [hli]
	ldboard_a 2, 14, w6dd80
	ld a, [hli]
	ldboard_a 3, 14, w6dd80
	ld a, [hli]
	ldboard_a 2, 15, w6dd80
	ld a, [hli]
	ldboard_a 3, 15, w6dd80
	ld a, [hli]
	ldboard_a 2, 14, w6dec0
	ld a, [hli]
	ldboard_a 3, 14, w6dec0
	ld a, [hli]
	ldboard_a 2, 15, w6dec0
	ld a, [hli]
	ldboard_a 3, 15, w6dec0
	ld bc, w6d058 + 2 + 7 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 2 + 7 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 2 + 7 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6de78
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6de91
	bit 1, a
	jr nz, .asm_6deac
	bit 4, a
	jr nz, .asm_6de87
	bit 2, a
	jr nz, .asm_6de8c
	bit 6, a
	jr nz, .asm_6de82
	bit 5, a
	jr nz, .asm_6de7d
	ld a, [w6d0b0 + 2 + 7 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6de78
.asm_6de73
	ld bc, BlockTilesAndAttributes
	jr .asm_6dec7
.asm_6de78
	ld hl, Data_6f01c
	jr .asm_6ded3
.asm_6de7d
	call Func_6c000
	jr .asm_6dec7
.asm_6de82
	call Func_6c02f
	jr .asm_6dec7
.asm_6de87
	call Func_6c05b
	jr .asm_6dec7
.asm_6de8c
	ld bc, Data_6f184
	jr .asm_6dec7
.asm_6de91
	bit 4, a
	jr nz, .asm_6dea2
	bit 2, a
	jr nz, .asm_6dea7
	bit 7, a
	jr nz, .asm_6de73
	ld bc, BlockTilesAndAttributes
	jr .asm_6dec7
.asm_6dea2
	call Func_6c069
	jr .asm_6ded3
.asm_6dea7
	ld hl, Data_6f3b4
	jr .asm_6ded3
.asm_6deac
	bit 4, a
	jr nz, .asm_6debd
	bit 2, a
	jr nz, .asm_6dec2
	bit 7, a
	jr nz, .asm_6de73
	ld bc, BlockTilesAndAttributes
	jr .asm_6dec7
.asm_6debd
	call Func_6c077
	jr .asm_6ded3
.asm_6dec2
	ld hl, Data_6f3ac
	jr .asm_6ded3
.asm_6dec7
	ld a, [wBlocks + 2 + 7 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6ded3
	ld a, [hli]
	ldboard_a 4, 14, w6dd80
	ld a, [hli]
	ldboard_a 5, 14, w6dd80
	ld a, [hli]
	ldboard_a 4, 15, w6dd80
	ld a, [hli]
	ldboard_a 5, 15, w6dd80
	ld a, [hli]
	ldboard_a 4, 14, w6dec0
	ld a, [hli]
	ldboard_a 5, 14, w6dec0
	ld a, [hli]
	ldboard_a 4, 15, w6dec0
	ld a, [hli]
	ldboard_a 5, 15, w6dec0
	ld bc, w6d058 + 3 + 7 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 3 + 7 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 3 + 7 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6df25
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6df3e
	bit 1, a
	jr nz, .asm_6df59
	bit 4, a
	jr nz, .asm_6df34
	bit 2, a
	jr nz, .asm_6df39
	bit 6, a
	jr nz, .asm_6df2f
	bit 5, a
	jr nz, .asm_6df2a
	ld a, [w6d0b0 + 3 + 7 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6df25
.asm_6df20
	ld bc, BlockTilesAndAttributes
	jr .asm_6df74
.asm_6df25
	ld hl, Data_6f01c
	jr .asm_6df80
.asm_6df2a
	call Func_6c000
	jr .asm_6df74
.asm_6df2f
	call Func_6c02f
	jr .asm_6df74
.asm_6df34
	call Func_6c05b
	jr .asm_6df74
.asm_6df39
	ld bc, Data_6f184
	jr .asm_6df74
.asm_6df3e
	bit 4, a
	jr nz, .asm_6df4f
	bit 2, a
	jr nz, .asm_6df54
	bit 7, a
	jr nz, .asm_6df20
	ld bc, BlockTilesAndAttributes
	jr .asm_6df74
.asm_6df4f
	call Func_6c069
	jr .asm_6df80
.asm_6df54
	ld hl, Data_6f3b4
	jr .asm_6df80
.asm_6df59
	bit 4, a
	jr nz, .asm_6df6a
	bit 2, a
	jr nz, .asm_6df6f
	bit 7, a
	jr nz, .asm_6df20
	ld bc, BlockTilesAndAttributes
	jr .asm_6df74
.asm_6df6a
	call Func_6c077
	jr .asm_6df80
.asm_6df6f
	ld hl, Data_6f3ac
	jr .asm_6df80
.asm_6df74
	ld a, [wBlocks + 3 + 7 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6df80
	ld a, [hli]
	ldboard_a 6, 14, w6dd80
	ld a, [hli]
	ldboard_a 7, 14, w6dd80
	ld a, [hli]
	ldboard_a 6, 15, w6dd80
	ld a, [hli]
	ldboard_a 7, 15, w6dd80
	ld a, [hli]
	ldboard_a 6, 14, w6dec0
	ld a, [hli]
	ldboard_a 7, 14, w6dec0
	ld a, [hli]
	ldboard_a 6, 15, w6dec0
	ld a, [hli]
	ldboard_a 7, 15, w6dec0
	ld bc, w6d058 + 4 + 7 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 4 + 7 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 4 + 7 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6dfd2
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6dfeb
	bit 1, a
	jr nz, .asm_6e006
	bit 4, a
	jr nz, .asm_6dfe1
	bit 2, a
	jr nz, .asm_6dfe6
	bit 6, a
	jr nz, .asm_6dfdc
	bit 5, a
	jr nz, .asm_6dfd7
	ld a, [w6d0b0 + 4 + 7 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6dfd2
.asm_6dfcd
	ld bc, BlockTilesAndAttributes
	jr .asm_6e021
.asm_6dfd2
	ld hl, Data_6f01c
	jr .asm_6e02d
.asm_6dfd7
	call Func_6c000
	jr .asm_6e021
.asm_6dfdc
	call Func_6c02f
	jr .asm_6e021
.asm_6dfe1
	call Func_6c05b
	jr .asm_6e021
.asm_6dfe6
	ld bc, Data_6f184
	jr .asm_6e021
.asm_6dfeb
	bit 4, a
	jr nz, .asm_6dffc
	bit 2, a
	jr nz, .asm_6e001
	bit 7, a
	jr nz, .asm_6dfcd
	ld bc, BlockTilesAndAttributes
	jr .asm_6e021
.asm_6dffc
	call Func_6c069
	jr .asm_6e02d
.asm_6e001
	ld hl, Data_6f3b4
	jr .asm_6e02d
.asm_6e006
	bit 4, a
	jr nz, .asm_6e017
	bit 2, a
	jr nz, .asm_6e01c
	bit 7, a
	jr nz, .asm_6dfcd
	ld bc, BlockTilesAndAttributes
	jr .asm_6e021
.asm_6e017
	call Func_6c077
	jr .asm_6e02d
.asm_6e01c
	ld hl, Data_6f3ac
	jr .asm_6e02d
.asm_6e021
	ld a, [wBlocks + 4 + 7 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6e02d
	ld a, [hli]
	ldboard_a 8, 14, w6dd80
	ld a, [hli]
	ldboard_a 9, 14, w6dd80
	ld a, [hli]
	ldboard_a 8, 15, w6dd80
	ld a, [hli]
	ldboard_a 9, 15, w6dd80
	ld a, [hli]
	ldboard_a 8, 14, w6dec0
	ld a, [hli]
	ldboard_a 9, 14, w6dec0
	ld a, [hli]
	ldboard_a 8, 15, w6dec0
	ld a, [hli]
	ldboard_a 9, 15, w6dec0
	ld bc, w6d058 + 5 + 7 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 5 + 7 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 5 + 7 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6e07f
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6e098
	bit 1, a
	jr nz, .asm_6e0b3
	bit 4, a
	jr nz, .asm_6e08e
	bit 2, a
	jr nz, .asm_6e093
	bit 6, a
	jr nz, .asm_6e089
	bit 5, a
	jr nz, .asm_6e084
	ld a, [w6d0b0 + 5 + 7 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6e07f
.asm_6e07a
	ld bc, BlockTilesAndAttributes
	jr .asm_6e0ce
.asm_6e07f
	ld hl, Data_6f01c
	jr .asm_6e0da
.asm_6e084
	call Func_6c000
	jr .asm_6e0ce
.asm_6e089
	call Func_6c02f
	jr .asm_6e0ce
.asm_6e08e
	call Func_6c05b
	jr .asm_6e0ce
.asm_6e093
	ld bc, Data_6f184
	jr .asm_6e0ce
.asm_6e098
	bit 4, a
	jr nz, .asm_6e0a9
	bit 2, a
	jr nz, .asm_6e0ae
	bit 7, a
	jr nz, .asm_6e07a
	ld bc, BlockTilesAndAttributes
	jr .asm_6e0ce
.asm_6e0a9
	call Func_6c069
	jr .asm_6e0da
.asm_6e0ae
	ld hl, Data_6f3b4
	jr .asm_6e0da
.asm_6e0b3
	bit 4, a
	jr nz, .asm_6e0c4
	bit 2, a
	jr nz, .asm_6e0c9
	bit 7, a
	jr nz, .asm_6e07a
	ld bc, BlockTilesAndAttributes
	jr .asm_6e0ce
.asm_6e0c4
	call Func_6c077
	jr .asm_6e0da
.asm_6e0c9
	ld hl, Data_6f3ac
	jr .asm_6e0da
.asm_6e0ce
	ld a, [wBlocks + 5 + 7 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6e0da
	ld a, [hli]
	ldboard_a 10, 14, w6dd80
	ld a, [hli]
	ldboard_a 11, 14, w6dd80
	ld a, [hli]
	ldboard_a 10, 15, w6dd80
	ld a, [hli]
	ldboard_a 11, 15, w6dd80
	ld a, [hli]
	ldboard_a 10, 14, w6dec0
	ld a, [hli]
	ldboard_a 11, 14, w6dec0
	ld a, [hli]
	ldboard_a 10, 15, w6dec0
	ld a, [hli]
	ldboard_a 11, 15, w6dec0
	ld bc, w6d058 + 0 + 8 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 0 + 8 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 0 + 8 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6e12c
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6e145
	bit 1, a
	jr nz, .asm_6e160
	bit 4, a
	jr nz, .asm_6e13b
	bit 2, a
	jr nz, .asm_6e140
	bit 6, a
	jr nz, .asm_6e136
	bit 5, a
	jr nz, .asm_6e131
	ld a, [w6d0b0 + 0 + 8 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6e12c
.asm_6e127
	ld bc, BlockTilesAndAttributes
	jr .asm_6e17b
.asm_6e12c
	ld hl, Data_6f01c
	jr .asm_6e187
.asm_6e131
	call Func_6c000
	jr .asm_6e17b
.asm_6e136
	call Func_6c02f
	jr .asm_6e17b
.asm_6e13b
	call Func_6c05b
	jr .asm_6e17b
.asm_6e140
	ld bc, Data_6f184
	jr .asm_6e17b
.asm_6e145
	bit 4, a
	jr nz, .asm_6e156
	bit 2, a
	jr nz, .asm_6e15b
	bit 7, a
	jr nz, .asm_6e127
	ld bc, BlockTilesAndAttributes
	jr .asm_6e17b
.asm_6e156
	call Func_6c069
	jr .asm_6e187
.asm_6e15b
	ld hl, Data_6f3b4
	jr .asm_6e187
.asm_6e160
	bit 4, a
	jr nz, .asm_6e171
	bit 2, a
	jr nz, .asm_6e176
	bit 7, a
	jr nz, .asm_6e127
	ld bc, BlockTilesAndAttributes
	jr .asm_6e17b
.asm_6e171
	call Func_6c077
	jr .asm_6e187
.asm_6e176
	ld hl, Data_6f3ac
	jr .asm_6e187
.asm_6e17b
	ld a, [wBlocks + 0 + 8 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6e187
	ld a, [hli]
	ldboard_a 0, 16, w6dd80
	ld a, [hli]
	ldboard_a 1, 16, w6dd80
	ld a, [hli]
	ldboard_a 0, 17, w6dd80
	ld a, [hli]
	ldboard_a 1, 17, w6dd80
	ld a, [hli]
	ldboard_a 0, 16, w6dec0
	ld a, [hli]
	ldboard_a 1, 16, w6dec0
	ld a, [hli]
	ldboard_a 0, 17, w6dec0
	ld a, [hli]
	ldboard_a 1, 17, w6dec0
	ld bc, w6d058 + 1 + 8 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 1 + 8 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 1 + 8 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6e1d9
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6e1f2
	bit 1, a
	jr nz, .asm_6e20d
	bit 4, a
	jr nz, .asm_6e1e8
	bit 2, a
	jr nz, .asm_6e1ed
	bit 6, a
	jr nz, .asm_6e1e3
	bit 5, a
	jr nz, .asm_6e1de
	ld a, [w6d0b0 + 1 + 8 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6e1d9
.asm_6e1d4
	ld bc, BlockTilesAndAttributes
	jr .asm_6e228
.asm_6e1d9
	ld hl, Data_6f01c
	jr .asm_6e234
.asm_6e1de
	call Func_6c000
	jr .asm_6e228
.asm_6e1e3
	call Func_6c02f
	jr .asm_6e228
.asm_6e1e8
	call Func_6c05b
	jr .asm_6e228
.asm_6e1ed
	ld bc, Data_6f184
	jr .asm_6e228
.asm_6e1f2
	bit 4, a
	jr nz, .asm_6e203
	bit 2, a
	jr nz, .asm_6e208
	bit 7, a
	jr nz, .asm_6e1d4
	ld bc, BlockTilesAndAttributes
	jr .asm_6e228
.asm_6e203
	call Func_6c069
	jr .asm_6e234
.asm_6e208
	ld hl, Data_6f3b4
	jr .asm_6e234
.asm_6e20d
	bit 4, a
	jr nz, .asm_6e21e
	bit 2, a
	jr nz, .asm_6e223
	bit 7, a
	jr nz, .asm_6e1d4
	ld bc, BlockTilesAndAttributes
	jr .asm_6e228
.asm_6e21e
	call Func_6c077
	jr .asm_6e234
.asm_6e223
	ld hl, Data_6f3ac
	jr .asm_6e234
.asm_6e228
	ld a, [wBlocks + 1 + 8 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6e234
	ld a, [hli]
	ldboard_a 2, 16, w6dd80
	ld a, [hli]
	ldboard_a 3, 16, w6dd80
	ld a, [hli]
	ldboard_a 2, 17, w6dd80
	ld a, [hli]
	ldboard_a 3, 17, w6dd80
	ld a, [hli]
	ldboard_a 2, 16, w6dec0
	ld a, [hli]
	ldboard_a 3, 16, w6dec0
	ld a, [hli]
	ldboard_a 2, 17, w6dec0
	ld a, [hli]
	ldboard_a 3, 17, w6dec0
	ld bc, w6d058 + 2 + 8 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 2 + 8 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 2 + 8 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6e286
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6e29f
	bit 1, a
	jr nz, .asm_6e2ba
	bit 4, a
	jr nz, .asm_6e295
	bit 2, a
	jr nz, .asm_6e29a
	bit 6, a
	jr nz, .asm_6e290
	bit 5, a
	jr nz, .asm_6e28b
	ld a, [w6d0b0 + 2 + 8 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6e286
.asm_6e281
	ld bc, BlockTilesAndAttributes
	jr .asm_6e2d5
.asm_6e286
	ld hl, Data_6f01c
	jr .asm_6e2e1
.asm_6e28b
	call Func_6c000
	jr .asm_6e2d5
.asm_6e290
	call Func_6c02f
	jr .asm_6e2d5
.asm_6e295
	call Func_6c05b
	jr .asm_6e2d5
.asm_6e29a
	ld bc, Data_6f184
	jr .asm_6e2d5
.asm_6e29f
	bit 4, a
	jr nz, .asm_6e2b0
	bit 2, a
	jr nz, .asm_6e2b5
	bit 7, a
	jr nz, .asm_6e281
	ld bc, BlockTilesAndAttributes
	jr .asm_6e2d5
.asm_6e2b0
	call Func_6c069
	jr .asm_6e2e1
.asm_6e2b5
	ld hl, Data_6f3b4
	jr .asm_6e2e1
.asm_6e2ba
	bit 4, a
	jr nz, .asm_6e2cb
	bit 2, a
	jr nz, .asm_6e2d0
	bit 7, a
	jr nz, .asm_6e281
	ld bc, BlockTilesAndAttributes
	jr .asm_6e2d5
.asm_6e2cb
	call Func_6c077
	jr .asm_6e2e1
.asm_6e2d0
	ld hl, Data_6f3ac
	jr .asm_6e2e1
.asm_6e2d5
	ld a, [wBlocks + 2 + 8 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6e2e1
	ld a, [hli]
	ldboard_a 4, 16, w6dd80
	ld a, [hli]
	ldboard_a 5, 16, w6dd80
	ld a, [hli]
	ldboard_a 4, 17, w6dd80
	ld a, [hli]
	ldboard_a 5, 17, w6dd80
	ld a, [hli]
	ldboard_a 4, 16, w6dec0
	ld a, [hli]
	ldboard_a 5, 16, w6dec0
	ld a, [hli]
	ldboard_a 4, 17, w6dec0
	ld a, [hli]
	ldboard_a 5, 17, w6dec0
	ld bc, w6d058 + 3 + 8 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 3 + 8 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 3 + 8 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6e333
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6e34c
	bit 1, a
	jr nz, .asm_6e367
	bit 4, a
	jr nz, .asm_6e342
	bit 2, a
	jr nz, .asm_6e347
	bit 6, a
	jr nz, .asm_6e33d
	bit 5, a
	jr nz, .asm_6e338
	ld a, [w6d0b0 + 3 + 8 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6e333
.asm_6e32e
	ld bc, BlockTilesAndAttributes
	jr .asm_6e382
.asm_6e333
	ld hl, Data_6f01c
	jr .asm_6e38e
.asm_6e338
	call Func_6c000
	jr .asm_6e382
.asm_6e33d
	call Func_6c02f
	jr .asm_6e382
.asm_6e342
	call Func_6c05b
	jr .asm_6e382
.asm_6e347
	ld bc, Data_6f184
	jr .asm_6e382
.asm_6e34c
	bit 4, a
	jr nz, .asm_6e35d
	bit 2, a
	jr nz, .asm_6e362
	bit 7, a
	jr nz, .asm_6e32e
	ld bc, BlockTilesAndAttributes
	jr .asm_6e382
.asm_6e35d
	call Func_6c069
	jr .asm_6e38e
.asm_6e362
	ld hl, Data_6f3b4
	jr .asm_6e38e
.asm_6e367
	bit 4, a
	jr nz, .asm_6e378
	bit 2, a
	jr nz, .asm_6e37d
	bit 7, a
	jr nz, .asm_6e32e
	ld bc, BlockTilesAndAttributes
	jr .asm_6e382
.asm_6e378
	call Func_6c077
	jr .asm_6e38e
.asm_6e37d
	ld hl, Data_6f3ac
	jr .asm_6e38e
.asm_6e382
	ld a, [wBlocks + 3 + 8 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6e38e
	ld a, [hli]
	ldboard_a 6, 16, w6dd80
	ld a, [hli]
	ldboard_a 7, 16, w6dd80
	ld a, [hli]
	ldboard_a 6, 17, w6dd80
	ld a, [hli]
	ldboard_a 7, 17, w6dd80
	ld a, [hli]
	ldboard_a 6, 16, w6dec0
	ld a, [hli]
	ldboard_a 7, 16, w6dec0
	ld a, [hli]
	ldboard_a 6, 17, w6dec0
	ld a, [hli]
	ldboard_a 7, 17, w6dec0
	ld bc, w6d058 + 4 + 8 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 4 + 8 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 4 + 8 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6e3e0
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6e3f9
	bit 1, a
	jr nz, .asm_6e414
	bit 4, a
	jr nz, .asm_6e3ef
	bit 2, a
	jr nz, .asm_6e3f4
	bit 6, a
	jr nz, .asm_6e3ea
	bit 5, a
	jr nz, .asm_6e3e5
	ld a, [w6d0b0 + 4 + 8 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6e3e0
.asm_6e3db
	ld bc, BlockTilesAndAttributes
	jr .asm_6e42f
.asm_6e3e0
	ld hl, Data_6f01c
	jr .asm_6e43b
.asm_6e3e5
	call Func_6c000
	jr .asm_6e42f
.asm_6e3ea
	call Func_6c02f
	jr .asm_6e42f
.asm_6e3ef
	call Func_6c05b
	jr .asm_6e42f
.asm_6e3f4
	ld bc, Data_6f184
	jr .asm_6e42f
.asm_6e3f9
	bit 4, a
	jr nz, .asm_6e40a
	bit 2, a
	jr nz, .asm_6e40f
	bit 7, a
	jr nz, .asm_6e3db
	ld bc, BlockTilesAndAttributes
	jr .asm_6e42f
.asm_6e40a
	call Func_6c069
	jr .asm_6e43b
.asm_6e40f
	ld hl, Data_6f3b4
	jr .asm_6e43b
.asm_6e414
	bit 4, a
	jr nz, .asm_6e425
	bit 2, a
	jr nz, .asm_6e42a
	bit 7, a
	jr nz, .asm_6e3db
	ld bc, BlockTilesAndAttributes
	jr .asm_6e42f
.asm_6e425
	call Func_6c077
	jr .asm_6e43b
.asm_6e42a
	ld hl, Data_6f3ac
	jr .asm_6e43b
.asm_6e42f
	ld a, [wBlocks + 4 + 8 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6e43b
	ld a, [hli]
	ldboard_a 8, 16, w6dd80
	ld a, [hli]
	ldboard_a 9, 16, w6dd80
	ld a, [hli]
	ldboard_a 8, 17, w6dd80
	ld a, [hli]
	ldboard_a 9, 17, w6dd80
	ld a, [hli]
	ldboard_a 8, 16, w6dec0
	ld a, [hli]
	ldboard_a 9, 16, w6dec0
	ld a, [hli]
	ldboard_a 8, 17, w6dec0
	ld a, [hli]
	ldboard_a 9, 17, w6dec0
	ld bc, w6d058 + 5 + 8 * BOARD_VIRTUAL_WIDTH
	ld hl, w6d150 + 5 + 8 * BOARD_VIRTUAL_WIDTH
	ld a, [w6d0b0 + 5 + 8 * BOARD_VIRTUAL_WIDTH]
	and $01
	jr nz, .asm_6e48d
	ld a, [bc]
	bit 0, a
	jr nz, .asm_6e4a6
	bit 1, a
	jr nz, .asm_6e4c1
	bit 4, a
	jr nz, .asm_6e49c
	bit 2, a
	jr nz, .asm_6e4a1
	bit 6, a
	jr nz, .asm_6e497
	bit 5, a
	jr nz, .asm_6e492
	ld a, [w6d0b0 + 5 + 8 * BOARD_VIRTUAL_WIDTH]
	and $10
	jr nz, .asm_6e48d
.asm_6e488
	ld bc, BlockTilesAndAttributes
	jr .asm_6e4dc
.asm_6e48d
	ld hl, Data_6f01c
	jr .asm_6e4e8
.asm_6e492
	call Func_6c000
	jr .asm_6e4dc
.asm_6e497
	call Func_6c02f
	jr .asm_6e4dc
.asm_6e49c
	call Func_6c05b
	jr .asm_6e4dc
.asm_6e4a1
	ld bc, Data_6f184
	jr .asm_6e4dc
.asm_6e4a6
	bit 4, a
	jr nz, .asm_6e4b7
	bit 2, a
	jr nz, .asm_6e4bc
	bit 7, a
	jr nz, .asm_6e488
	ld bc, BlockTilesAndAttributes
	jr .asm_6e4dc
.asm_6e4b7
	call Func_6c069
	jr .asm_6e4e8
.asm_6e4bc
	ld hl, Data_6f3b4
	jr .asm_6e4e8
.asm_6e4c1
	bit 4, a
	jr nz, .asm_6e4d2
	bit 2, a
	jr nz, .asm_6e4d7
	bit 7, a
	jr nz, .asm_6e488
	ld bc, BlockTilesAndAttributes
	jr .asm_6e4dc
.asm_6e4d2
	call Func_6c077
	jr .asm_6e4e8
.asm_6e4d7
	ld hl, Data_6f3ac
	jr .asm_6e4e8
.asm_6e4dc
	ld a, [wBlocks + 5 + 8 * BOARD_VIRTUAL_WIDTH]
	and $3f
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
.asm_6e4e8
	ld a, [hli]
	ldboard_a 10, 16, w6dd80
	ld a, [hli]
	ldboard_a 11, 16, w6dd80
	ld a, [hli]
	ldboard_a 10, 17, w6dd80
	ld a, [hli]
	ldboard_a 11, 17, w6dd80
	ld a, [hli]
	ldboard_a 10, 16, w6dec0
	ld a, [hli]
	ldboard_a 11, 16, w6dec0
	ld a, [hli]
	ldboard_a 10, 17, w6dec0
	ld a, [hli]
	ldboard_a 11, 17, w6dec0
	ret
; 0x6e509

SECTION "Bank 1B@701c", ROMX[$701c], BANK[$1b]

Data_6f01c:
	; NONE
	db $60, $60, $60, $60, 6 | BG_BANK1, 6 | BG_BANK1, 6 | BG_BANK1, 6 | BG_BANK1
	; BLOCK_HEART
	db $8e, $8f, $9e, $9f, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0
	; BLOCK_SQUARE
	db $ae, $af, $be, $bf, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0
	; BLOCK_TRIANGLE
	db $ce, $cf, $de, $df, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0
	; BLOCK_STAR
	db $ee, $ef, $fe, $ff, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0
	; BLOCK_DIAMOND
	db $0e, $0f, $1e, $1f, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0
	; BLOCK_DELTA
	db $2e, $2f, $3e, $3f, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0
	; BLOCK_SHOCK
	db $4e, $4f, $5e, $5f, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0
	; BLOCK_08
	db $aa, $ab, $ba, $bb, 1 | BG_BANK0, 1 | BG_BANK0, 1 | BG_BANK0, 1 | BG_BANK0

	; NONE
	db $60, $60, $60, $60, 6 | BG_BANK1, 6 | BG_BANK1, 6 | BG_BANK1, 6 | BG_BANK1
	; BLOCK_HEART
	db $80, $81, $90, $91, 0 | BG_BANK0, 0 | BG_BANK0, 0 | BG_BANK0, 0 | BG_BANK0
	; BLOCK_SQUARE
	db $82, $83, $92, $93, 2 | BG_BANK0, 2 | BG_BANK0, 2 | BG_BANK0, 2 | BG_BANK0
	; BLOCK_TRIANGLE
	db $84, $85, $94, $95, 1 | BG_BANK0, 1 | BG_BANK0, 1 | BG_BANK0, 1 | BG_BANK0
	; BLOCK_STAR
	db $86, $87, $96, $97, 0 | BG_BANK0, 0 | BG_BANK0, 0 | BG_BANK0, 0 | BG_BANK0
	; BLOCK_DIAMOND
	db $88, $89, $98, $99, 2 | BG_BANK0, 2 | BG_BANK0, 2 | BG_BANK0, 2 | BG_BANK0
	; BLOCK_DELTA
	db $8a, $8b, $9a, $9b, 1 | BG_BANK0, 1 | BG_BANK0, 1 | BG_BANK0, 1 | BG_BANK0
	; BLOCK_SHOCK
	db $8c, $8d, $9c, $9d, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0
	; BLOCK_08
	db $aa, $ab, $ba, $bb, 1 | BG_BANK0, 1 | BG_BANK0, 1 | BG_BANK0, 1 | BG_BANK0
	
	; NONE
	db $60, $60, $60, $60, 6 | BG_BANK1, 6 | BG_BANK1, 6 | BG_BANK1, 6 | BG_BANK1
	; BLOCK_HEART
	db $a0, $a1, $b0, $b1, 0 | BG_BANK0, 0 | BG_BANK0, 0 | BG_BANK0, 0 | BG_BANK0
	; BLOCK_SQUARE
	db $a2, $a3, $b2, $b3, 2 | BG_BANK0, 2 | BG_BANK0, 2 | BG_BANK0, 2 | BG_BANK0
	; BLOCK_TRIANGLE
	db $a4, $a5, $b4, $b5, 1 | BG_BANK0, 1 | BG_BANK0, 1 | BG_BANK0, 1 | BG_BANK0
	; BLOCK_STAR
	db $a6, $a7, $b6, $b7, 0 | BG_BANK0, 0 | BG_BANK0, 0 | BG_BANK0, 0 | BG_BANK0
	; BLOCK_DIAMOND
	db $a8, $a9, $b8, $b9, 2 | BG_BANK0, 2 | BG_BANK0, 2 | BG_BANK0, 2 | BG_BANK0
	; BLOCK_DELTA
	db $aa, $ab, $ba, $bb, 1 | BG_BANK0, 1 | BG_BANK0, 1 | BG_BANK0, 1 | BG_BANK0
	; BLOCK_SHOCK
	db $ac, $ad, $bc, $bd, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0
	; BLOCK_08
	db $aa, $ab, $ba, $bb, 1 | BG_BANK0, 1 | BG_BANK0, 1 | BG_BANK0, 1 | BG_BANK0

	; NONE
	db $60, $60, $60, $60, 6 | BG_BANK1, 6 | BG_BANK1, 6 | BG_BANK1, 6 | BG_BANK1
	; BLOCK_HEART
	db $e0, $e1, $f0, $f1, 0 | BG_BANK0, 0 | BG_BANK0, 0 | BG_BANK0, 0 | BG_BANK0
	; BLOCK_SQUARE
	db $e2, $e3, $f2, $f3, 2 | BG_BANK0, 2 | BG_BANK0, 2 | BG_BANK0, 2 | BG_BANK0
	; BLOCK_TRIANGLE
	db $e4, $e5, $f4, $f5, 1 | BG_BANK0, 1 | BG_BANK0, 1 | BG_BANK0, 1 | BG_BANK0
	; BLOCK_STAR
	db $e6, $e7, $f6, $f7, 0 | BG_BANK0, 0 | BG_BANK0, 0 | BG_BANK0, 0 | BG_BANK0
	; BLOCK_DIAMOND
	db $e8, $e9, $f8, $f9, 2 | BG_BANK0, 2 | BG_BANK0, 2 | BG_BANK0, 2 | BG_BANK0
	; BLOCK_DELTA
	db $ea, $eb, $fa, $fb, 1 | BG_BANK0, 1 | BG_BANK0, 1 | BG_BANK0, 1 | BG_BANK0
	; BLOCK_SHOCK
	db $ec, $ed, $fc, $fd, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0
	; BLOCK_08
	db $aa, $ab, $ba, $bb, 1 | BG_BANK0, 1 | BG_BANK0, 1 | BG_BANK0, 1 | BG_BANK0

	; NONE
	db $60, $60, $60, $60, 6 | BG_BANK1, 6 | BG_BANK1, 6 | BG_BANK1, 6 | BG_BANK1
	; BLOCK_HEART
	db $40, $41, $50, $51, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0
	; BLOCK_SQUARE
	db $42, $43, $52, $53, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0
	; BLOCK_TRIANGLE
	db $44, $45, $54, $55, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0
	; BLOCK_STAR
	db $46, $47, $56, $57, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0
	; BLOCK_DIAMOND
	db $48, $49, $58, $59, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0
	; BLOCK_DELTA
	db $4a, $4b, $5a, $5b, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0
	; BLOCK_SHOCK
	db $4c, $4d, $5c, $5d, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0
	; BLOCK_08
	db $aa, $ab, $ba, $bb, 1 | BG_BANK0, 1 | BG_BANK0, 1 | BG_BANK0, 1 | BG_BANK0

Data_6f184:
	; NONE
	db $60, $60, $60, $60, 6 | BG_BANK1, 6 | BG_BANK1, 6 | BG_BANK1, 6 | BG_BANK1
	; BLOCK_HEART
	db $60, $61, $70, $71, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0
	; BLOCK_SQUARE
	db $62, $63, $72, $73, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0
	; BLOCK_TRIANGLE
	db $64, $65, $74, $75, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0
	; BLOCK_STAR
	db $66, $67, $76, $77, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0
	; BLOCK_DIAMOND
	db $68, $69, $78, $79, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0
	; BLOCK_DELTA
	db $6a, $6b, $7a, $7b, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0
	; BLOCK_SHOCK
	db $6c, $6d, $7c, $7d, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0
	; BLOCK_08
	db $aa, $ab, $ba, $bb, 1 | BG_BANK0, 1 | BG_BANK0, 1 | BG_BANK0, 1 | BG_BANK0

; tiles, attributes
BlockTilesAndAttributes:
	; NONE
	db $60, $60, $60, $60, 6 | BG_BANK1,            6 | BG_BANK1,            6 | BG_BANK1,            6 | BG_BANK1
	; BLOCK_HEART
	db $c0, $c1, $d0, $d1, 0 | BG_BANK0,            0 | BG_BANK0,            0 | BG_BANK0,            0 | BG_BANK0
	; BLOCK_SQUARE
	db $c2, $c3, $d2, $d3, 2 | BG_BANK0,            2 | BG_BANK0,            2 | BG_BANK0,            2 | BG_BANK0
	; BLOCK_TRIANGLE
	db $c4, $c5, $d4, $d5, 1 | BG_BANK0,            1 | BG_BANK0,            1 | BG_BANK0,            1 | BG_BANK0
	; BLOCK_STAR
	db $c6, $c7, $d6, $d7, 0 | BG_BANK0,            0 | BG_BANK0,            0 | BG_BANK0,            0 | BG_BANK0
	; BLOCK_DIAMOND
	db $c8, $c9, $d8, $d9, 2 | BG_BANK0,            2 | BG_BANK0,            2 | BG_BANK0,            2 | BG_BANK0
	; BLOCK_DELTA
	db $ca, $cb, $da, $db, 1 | BG_BANK0,            1 | BG_BANK0,            1 | BG_BANK0,            1 | BG_BANK0
	; BLOCK_SHOCK
	db $cc, $cd, $dc, $dd, 3 | BG_BANK0,            3 | BG_BANK0,            3 | BG_BANK0,            3 | BG_BANK0
	; BLOCK_08
	db $aa, $ab, $ba, $bb, 1 | BG_BANK0,            1 | BG_BANK0,            1 | BG_BANK0,            1 | BG_BANK0
	; BLOCK_09
	db $04, $05, $14, $15, 4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1
	; BLOCK_0A
	db $00, $0e, $03, $1c, 4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1
	; BLOCK_0B
	db $0f, $08, $1d, $1a, 4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1
	; BLOCK_0C
	db $09, $0e, $1b, $1c, 4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1
	; BLOCK_0D
	db $0f, $02, $1d, $13, 4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1
	; BLOCK_0E
	db $00, $08, $10, $18, 4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1
	; BLOCK_0F
	db $07, $07, $17, $17, 4 | BG_BANK1 | BG_XFLIP, 4 | BG_BANK1,            4 | BG_BANK1 | BG_XFLIP, 4 | BG_BANK1
	; BLOCK_20
	db $09, $02, $19, $12, 4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1
	; BLOCK_21
	db $03, $0a, $03, $1a, 4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1
	; BLOCK_22
	db $0b, $0c, $1b, $1c, 4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1
	; BLOCK_23
	db $0d, $0a, $1d, $01, 4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK0
	; BLOCK_24
	db $0b, $0c, $01, $1c, 4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK0,            4 | BG_BANK1
	; BLOCK_25
	db $0d, $0a, $1d, $1a, 4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1
	; BLOCK_26
	db $0b, $13, $1b, $13, 4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1
	; BLOCK_27
	db $09, $07, $19, $17, 4 | BG_BANK1,            4 | BG_BANK1 | BG_XFLIP, 4 | BG_BANK1,            4 | BG_BANK1 | BG_XFLIP
	; BLOCK_28
	db $07, $08, $17, $18, 4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1
	; BLOCK_29
	db $03, $0c, $03, $1c, 4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1
	; BLOCK_2A
	db $0b, $06, $1b, $16, 4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1
	; BLOCK_2B
	db $06, $0a, $16, $1a, 4 | BG_BANK1 | BG_XFLIP, 4 | BG_BANK1,            4 | BG_BANK1 | BG_XFLIP, 4 | BG_BANK1
	; BLOCK_2C
	db $0d, $13, $1d, $13, 4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1
	; BLOCK_2D
	db $09, $08, $19, $18, 4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1
	; BLOCK_2E
	db $0d, $01, $1d, $1a, 4 | BG_BANK1,            4 | BG_BANK0,            4 | BG_BANK1,            4 | BG_BANK1
	; BLOCK_2F
	db $01, $0c, $1b, $1c, 4 | BG_BANK0,            4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1
	; BLOCK_30
	db $03, $0c, $10, $1e, 4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1
	; BLOCK_31
	db $0d, $0a, $1f, $18, 4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1
	; BLOCK_32
	db $0b, $0c, $19, $1e, 4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1
	; BLOCK_33
	db $0d, $13, $1f, $12, 4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1
	; BLOCK_34
	db $00, $08, $03, $1a, 4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1
	; BLOCK_35
	db $09, $08, $1b, $1a, 4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1
	; BLOCK_36
	db $09, $01, $1b, $06, 4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1
	; BLOCK_37
	db $01, $08, $06, $1a, 4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1 | BG_XFLIP, 4 | BG_BANK1
	; BLOCK_38
	db $09, $02, $1b, $13, 4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1
	; BLOCK_39
	db $03, $0a, $10, $18, 4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1
	; BLOCK_3A
	db $0b, $0a, $19, $18, 4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1
	; BLOCK_3B
	db $0b, $16, $19, $11, 4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1
	; BLOCK_3C
	db $16, $0a, $11, $18, 4 | BG_BANK1 | BG_XFLIP, 4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1
	; BLOCK_3D
	db $0b, $13, $19, $12, 4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1
	; BLOCK_3E
	db $0d, $01, $1d, $06, 4 | BG_BANK1,            4 | BG_BANK0,            4 | BG_BANK1,            4 | BG_BANK1
	; BLOCK_3F
	db $01, $0c, $06, $1c, 4 | BG_BANK0,            4 | BG_BANK1,            4 | BG_BANK1 | BG_XFLIP, 4 | BG_BANK1
	; BLOCK_40
	db $0d, $06, $1d, $16, 4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1
	; BLOCK_41
	db $06, $0c, $16, $1c, 4 | BG_BANK1 | BG_XFLIP, 4 | BG_BANK1,            4 | BG_BANK1 | BG_XFLIP, 4 | BG_BANK1
	; BLOCK_42
	db $0b, $16, $1b, $01, 4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK0
	; BLOCK_43
	db $16, $0a, $01, $1a, 4 | BG_BANK1 | BG_XFLIP, 4 | BG_BANK1,            4 | BG_BANK0,            4 | BG_BANK1
	; BLOCK_44
	db $0b, $01, $1b, $06, 4 | BG_BANK1,            4 | BG_BANK0,            4 | BG_BANK1,            4 | BG_BANK1
	; BLOCK_45
	db $01, $0a, $06, $1a, 4 | BG_BANK0,            4 | BG_BANK1,            4 | BG_BANK1 | BG_XFLIP, 4 | BG_BANK1
	; BLOCK_46
	db $0d, $16, $1d, $01, 4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK1,            4 | BG_BANK0
	; BLOCK_47
	db $16, $0c, $01, $1c, 4 | BG_BANK1 | BG_XFLIP, 4 | BG_BANK1,            4 | BG_BANK0,            4 | BG_BANK1
	; BLOCK_48
	db $05, $06, $08, $09, 3 | BG_BANK0,            3 | BG_BANK0,            3 | BG_BANK0,            3 | BG_BANK0
	; BLOCK_49
	db $06, $06, $09, $09, 3 | BG_BANK0,            3 | BG_BANK0,            3 | BG_BANK0,            3 | BG_BANK0
	; BLOCK_4A
	db $06, $07, $09, $0a, 3 | BG_BANK0,            3 | BG_BANK0,            3 | BG_BANK0,            3 | BG_BANK0

Data_6f3a4:
	db $6e, $6f, $7e, $7f, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0

Data_6f3ac:
	db $05, $07, $08, $0a, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0, 3 | BG_BANK0

Data_6f3b4:
	db $04, $05, $14, $15, 4 | BG_BANK1, 4 | BG_BANK1, 4 | BG_BANK1, 4 | BG_BANK1
