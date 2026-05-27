; seems to be the main routine that controls block line clearing
Func_78000:
	ld hl, w6d100
	REPT BOARD_HEIGHT
		REPT BOARD_WIDTH
			ld a, [hl]
			and a
			jr z, :+
			dec a
		:
			ld [hli], a
		ENDR
		inc l
		inc l
	ENDR

	ld a, [wcadf]
	and a
	jr nz, .asm_78163
	xor a
	ld [wcae0], a
.asm_78163
	ld b, a
	ld d, a

	FOR _row, BOARD_HEIGHT - 1, -1, -1
		FOR _col, BOARD_WIDTH - 1, -1, -1
			; do we have a block at this position?
			ld a, [wBlocks + _col + _row * BOARD_VIRTUAL_WIDTH]
			and a
			jp z, .done_{_col}_{_row} ; no block

			ld a, [w6d058 + _col + _row * BOARD_VIRTUAL_WIDTH]
			and $03
			jp nz, .branch_9_{_col}_{_row}
			ld a, [w6d0b0 + _col + _row * BOARD_VIRTUAL_WIDTH]
			and $09
			jp nz, .done_{_col}_{_row}
			ld a, [w6d0b0 + _col + _row * BOARD_VIRTUAL_WIDTH]
			bit 2, a
			jr z, .branch_1_{_col}_{_row}
			ld a, [w6d100 + _col + _row * BOARD_VIRTUAL_WIDTH]
			and a
			jp nz, .done_{_col}_{_row}
			ld hl, w6d0b0 + _col + _row * BOARD_VIRTUAL_WIDTH
			ld a, [hl]
			and $df
			ld [hl], a
			ld a, [w6d100 + _col + (_row + 1) * BOARD_VIRTUAL_WIDTH]
			and a
			jp nz, .branch_3_{_col}_{_row}
			ld a, [w6d0b0 + _col + (_row + 1) * BOARD_VIRTUAL_WIDTH]
			bit 0, a
			jr nz, .branch_5_{_col}_{_row}
			and $04
			jr nz, .branch_4_{_col}_{_row}
			ld a, [wBlocks + _col + (_row + 1) * BOARD_VIRTUAL_WIDTH]
			and a
			jr nz, .branch_5_{_col}_{_row}
			jr .drop_block_{_col}_{_row}

		.branch_1_{_col}_{_row}
			ld a, [w6d100 + _col + (_row + 1) * BOARD_VIRTUAL_WIDTH]
			and a
			jr nz, .branch_2_{_col}_{_row}
			ld a, [wBlocks + _col + (_row + 1) * BOARD_VIRTUAL_WIDTH]
			and a
			jp nz, .done_{_col}_{_row}
			ld hl, wcad4
			ld a, [hli]
			cp _col + (_row + 1) * BOARD_VIRTUAL_WIDTH
			jp z, .done_{_col}_{_row}
			ld a, [hl]
			cp _col + (_row + 1) * BOARD_VIRTUAL_WIDTH
			jp z, .done_{_col}_{_row}
			ld hl, w6d0b0 + _col + _row * BOARD_VIRTUAL_WIDTH
			ld a, [hl]
			or $04
			ld [hl], a
			ld a, [wca1d]
			dec a
			ld [w6d100 + _col + _row * BOARD_VIRTUAL_WIDTH], a
			jp .done_{_col}_{_row}

		.branch_2_{_col}_{_row}
			ld hl, w6d0b0 + _col + _row * BOARD_VIRTUAL_WIDTH
			ld a, [hl]
			or $04
			ld [hl], a
		.branch_3_{_col}_{_row}
			ld a, [w6d100 + _col + (_row + 1) * BOARD_VIRTUAL_WIDTH]
			ld [w6d100 + _col + _row * BOARD_VIRTUAL_WIDTH], a
			jp .done_{_col}_{_row}
		.branch_4_{_col}_{_row}
			ld hl, w6d0b0 + _col + _row * BOARD_VIRTUAL_WIDTH
			ld a, [hl]
			or $04
			ld [hl], a
			jr .branch_6_{_col}_{_row}

		.branch_5_{_col}_{_row}
			ld hl, w6d0b0 + _col + _row * BOARD_VIRTUAL_WIDTH
			ld a, [hl]
			and $40
			ld [hl], a
		.branch_6_{_col}_{_row}
			ld hl, w6d058 + _col + _row * BOARD_VIRTUAL_WIDTH
			ld a, [hl]
			or $40
			ld [hl], a
			xor a
			ld [w6d150 + _col + _row * BOARD_VIRTUAL_WIDTH], a
			inc a
			ld [wc892], a
			ld a, [wc7ce]
			and a
			jr nz, .branch_7_{_col}_{_row}
			ld a, $09
			ld [wc7cb], a
		.branch_7_{_col}_{_row}
			jp .done_{_col}_{_row}

		.drop_block_{_col}_{_row}
			ld bc, _col + _row * BOARD_VIRTUAL_WIDTH
			ld de, _col + (_row + 1) * BOARD_VIRTUAL_WIDTH
			call .DropBlock
			jp .done_{_col}_{_row}

		.branch_9_{_col}_{_row}
			ld a, [w6d0b0 + _col + _row * BOARD_VIRTUAL_WIDTH]
			and $09
			jp nz, .done_{_col}_{_row}
			ld a, [w6d058 + _col + _row * BOARD_VIRTUAL_WIDTH]
			and $80
			jp nz, .done_{_col}_{_row}
			ld a, [w6d100 + _col + _row * BOARD_VIRTUAL_WIDTH]
			and a
			jp nz, .done_{_col}_{_row}
			ld bc, _col + _row * BOARD_VIRTUAL_WIDTH
			ld de, _col + (_row + 1) * BOARD_VIRTUAL_WIDTH
			call Func_7bd9c
			ld a, [wc905]
			dec a
			jr z, .branch_10_{_col}_{_row}
			dec a
			jr z, .branch_11_{_col}_{_row}
			dec a
			jr nz, .done_{_col}_{_row}
			ld hl, w6d058 + _col + _row * BOARD_VIRTUAL_WIDTH
			ld a, [hl]
			or $08
			ld [hl], a
			jr .drop_block_{_col}_{_row}
		.branch_10_{_col}_{_row}
			ld [w6d0b0 + _col + _row * BOARD_VIRTUAL_WIDTH], a
			jr .branch_12_{_col}_{_row}
		.branch_11_{_col}_{_row}
			ld hl, w6d0b0 + _col + _row * BOARD_VIRTUAL_WIDTH
			ld a, [hl]
			or $04
			ld [hl], a
			ld a, [wc906]
			ld [w6d100 + _col + _row * BOARD_VIRTUAL_WIDTH], a

		.branch_12_{_col}_{_row}
			ld hl, w6d058 + _col + _row * BOARD_VIRTUAL_WIDTH
			ld a, [hl]
			and $08
			jp z, .done_{_col}_{_row}
			ld a, [hl]
			and $f7
			ld [hl], a
			ld a, [wBlocks + _col + _row * BOARD_VIRTUAL_WIDTH]
			ld c, a
			ld a, [w6d1a0 + _col + _row * BOARD_VIRTUAL_WIDTH]
			ld b, a
			call .Func_7bd18

		.done_{_col}_{_row}
		ENDR
	ENDR

	ret

.Func_7bd18:
	ld a, c
	and $c0
	cp $c0
	jr z, .asm_7bd27
	swap a
	sra a
	sra a
	jr .asm_7bd36
.asm_7bd27
	ld a, b
	and $f0
	swap a
	cp $03
	jr nc, .asm_7bd34
	add $02
	jr .asm_7bd36
.asm_7bd34
	ld a, $05
.asm_7bd36
	ld hl, wcae0
	cp [hl]
	ret c
	ld [hl], a
	add a ; *2
	ld hl, .PtrTable
	add l
	ld l, a
	ld a, h
	adc $00
	ld h, a
	ld a, [hli]
	ld [wcae4 + 0], a
	ld a, [hl]
	ld [wcae4 + 1], a
	ld a, $01
	ld [wcadf], a
	ld a, $01
	ld [wc8d5], a

	farcall SetPlayerMonHurtAnimation
	ret

.PtrTable:
	dw $4174
	dw $4189
	dw $419e
	dw $41b9
	dw $41e6
	dw $422b

; given block positions bc and de:
; - remove block from position bc
; - overwrite position de with block that was in bc
.DropBlock:
	ld hl, wBlocks
	add hl, bc
	ld a, [hl]
	ld [hl], $00
	ld hl, wBlocks
	add hl, de
	ld [hl], a

	ld hl, w6d058
	add hl, bc
	ld a, [hl]
	ld [hl], $00
	ld hl, w6d058
	add hl, de
	ld [hl], a

	ld hl, w6d0b0
	add hl, bc
	ld a, [hl]
	ld [hl], $00
	ld hl, w6d0b0
	add hl, de
	ld [hl], a

	ld hl, w6d1a0
	add hl, bc
	ld a, [hl]
	ld [hl], $00
	ld hl, w6d1a0
	add hl, de
	ld [hl], a
	ret

Func_7bd9c:
	push de
	push bc
	ld hl, wBlocks
	add hl, bc
	ld a, [hl]
	and $c0
	swap a
	sra a
	add $06
	ld c, a
	ld b, $00
	ld hl, wc904
	ld a, [hl]
	and a
	jr nz, .asm_7bdbd
	ld a, c
	sra a
	ld [hl], a
	xor a
	ld [wc905], a
.asm_7bdbd
	dec [hl]
	ld a, [wc905]
	and a
	jr z, .asm_7bdc7
	pop bc
	pop de
	ret
.asm_7bdc7
	ld hl, .PtrTable
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.PtrTable:
	dw .InvalidLength
	dw .InvalidLength
	dw .InvalidLength
	dw .Length_3
	dw .Length_4
	dw .Length_5
	dw .Length_6

.InvalidLength:
	jp .InvalidLength

.Length_6:
	ld hl, wBlocks
	add hl, de
	ld a, [hld]
	REPT 6 - 2
		or [hl]
		dec hl
	ENDR
	or [hl]
	jp z, .asm_7beda
	call .Func_7be30
	jp .asm_7be45

.Length_5:
	ld hl, wBlocks
	add hl, de
	ld a, [hld]
	REPT 5 - 2
		or [hl]
		dec hl
	ENDR
	or [hl]
	jp z, .asm_7beda
	call .Func_7be30
	jp .asm_7be58

.Length_4:
	ld hl, wBlocks
	add hl, de
	ld a, [hld]
	REPT 4 - 2
		or [hl]
		dec hl
	ENDR
	or [hl]
	jp z, .asm_7beda
	call .Func_7be30
	jp .asm_7be6b

.Length_3:
	ld hl, wBlocks
	add hl, de
	ld a, [hld]
	or [hl]
	dec hl
	or [hl]
	jp z, .asm_7beda
	call .Func_7be30
	jp .asm_7be7e

.Func_7be30:
	ld hl, w6d0b0
	add hl, de
	ld c, l
	ld b, h
	ld hl, w6d100
	add hl, de
	push hl
	ld hl, wBlocks
	add hl, de
	pop de
	xor a
	ld [wc906], a
	ret

.asm_7be45
	ld a, [hld]
	and a
	jr z, .asm_7be4f
	ld a, [bc]
	and $04
	jp z, .asm_7beb8
.asm_7be4f
	ld a, [de]
	and a
	jr z, .asm_7be56
	ld [wc906], a
.asm_7be56
	dec bc
	dec de
.asm_7be58
	ld a, [hld]
	and a
	jr z, .asm_7be62
	ld a, [bc]
	and $04
	jp z, .asm_7beb8
.asm_7be62
	ld a, [de]
	and a
	jr z, .asm_7be69
	ld [wc906], a
.asm_7be69
	dec bc
	dec de
.asm_7be6b
	ld a, [hld]
	and a
	jr z, .asm_7be75
	ld a, [bc]
	and $04
	jp z, .asm_7beb8
.asm_7be75
	ld a, [de]
	and a
	jr z, .asm_7be7c
	ld [wc906], a
.asm_7be7c
	dec bc
	dec de
.asm_7be7e
	ld a, [hld]
	and a
	jr z, .asm_7be88
	ld a, [bc]
	and $04
	jp z, .asm_7beb8
.asm_7be88
	ld a, [de]
	and a
	jr z, .asm_7be8f
	ld [wc906], a
.asm_7be8f
	dec bc
	dec de
	ld a, [hld]
	and a
	jr z, .asm_7be9b
	ld a, [bc]
	and $04
	jp z, .asm_7beb8
.asm_7be9b
	ld a, [de]
	and a
	jr z, .asm_7bea2
	ld [wc906], a
.asm_7bea2
	dec bc
	dec de
	ld a, [hl]
	and a
	jr z, .asm_7beaf
	ld a, [bc]
	and $04
	jp z, .asm_7beb8
	ld a, [de]
.asm_7beaf
	and a
	jr z, .asm_7beb5
	ld [wc906], a
.asm_7beb5
	jp .asm_7bed2

.asm_7beb8
	pop bc
	push bc
	ld hl, w6d0b0
	add hl, bc
	ld a, [hl]
	and $04
	jr z, .asm_7beed
	ld a, $01
	ld [wc905], a
	pop bc
	pop de
	ret
.asm_7becb
	ld a, [wca1d]
	dec a
	ld [wc906], a
.asm_7bed2
	ld a, $02
	ld [wc905], a
	pop bc
	pop de
	ret

.asm_7beda
	pop bc
	push bc
	ld hl, w6d0b0
	add hl, bc
	ld a, [hl]
	and $04
	jr z, .asm_7becb
	ld a, $03
	ld [wc905], a
	pop bc
	pop de
	ret

.asm_7beed
	ld a, $ff
	ld [wc905], a
	pop bc
	pop de
	ret
; 0x7bef5
