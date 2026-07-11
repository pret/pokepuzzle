Func_10c000::
	ld b, BANK(NULL)
	ld de, NULL
	farcall Func_10c011 ; unnecessary farcall
	; set language to English
	ld a, ENGLISH
	ld [wLanguage], a
	ret

; input:
; - b:de = ?
Func_10c011:
	ldh a, [hWRAMBank]
	push af
	ld a, BANK("WRAM2")
	wramswitch

	push bc
	push de
	ld b, BANK(wcf0c)
	ld de, wcf0c
	ld a, $00
	fill_mem $b, $100
	ld b, BANK(w2dd00)
	ld de, w2dd00
	ld a, $00
	fill_mem $40, $100
	pop de
	pop bc

	; d == NULL?
	inc d
	dec d
	jr z, .asm_10c04f ; yes
	; stores input b:de
	ld a, e
	ld [wTextDataPtr + 0], a
	ld a, d
	ld [wTextDataPtr + 1], a
	ld a, b
	ld [wTextDataBank], a
	ld a, $01
	ld [w2dd10], a
.asm_10c04f
	ld a, LOW(.PtrTable)
	ld [w2dd12 + 0], a
	ld a, HIGH(.PtrTable)
	ld [w2dd12 + 1], a
	ld a, BANK(.PtrTable)
	ld [w2dd14], a
	xor a
	call Func_3416
	ld a, e
	ld [w2dd1c + 0], a
	ld a, d
	ld [w2dd1c + 1], a
	ld a, [w2dd14]
	ld [w2dd1e], a

	ld a, $03
	ld [w2dd19], a
	ld a, $01
	ld [w2dd1b], a

	call Func_10c1a6
	call Func_10c1f0
	pop af
	wramswitch
	ret

.PtrTable:
	dw .Data_10c090
	dw .Data_10c0c0
	dw .Data_10c0f0
	dw .Data_10c120
	dw NULL

.Data_10c090:
	dwb v0Tiles1 tile $00, BANK(v0Tiles1)
	dwb v0Tiles1 tile $01, BANK(v0Tiles1)
	dwb v0Tiles1 tile $02, BANK(v0Tiles1)
	dwb v0Tiles1 tile $03, BANK(v0Tiles1)
	dwb v0Tiles1 tile $04, BANK(v0Tiles1)
	dwb v0Tiles1 tile $05, BANK(v0Tiles1)
	dwb v0Tiles1 tile $06, BANK(v0Tiles1)
	dwb v0Tiles1 tile $07, BANK(v0Tiles1)
	dwb v0Tiles1 tile $08, BANK(v0Tiles1)
	dwb v0Tiles1 tile $09, BANK(v0Tiles1)
	dwb v0Tiles1 tile $0a, BANK(v0Tiles1)
	dwb v0Tiles1 tile $0b, BANK(v0Tiles1)
	dwb v0Tiles1 tile $0c, BANK(v0Tiles1)
	dwb v0Tiles1 tile $0d, BANK(v0Tiles1)
	dwb v0Tiles1 tile $0e, BANK(v0Tiles1)
	dwb v0Tiles1 tile $0f, BANK(v0Tiles1)

.Data_10c0c0:
	dwb v0Tiles1 tile $10, BANK(v0Tiles1)
	dwb v0Tiles1 tile $11, BANK(v0Tiles1)
	dwb v0Tiles1 tile $12, BANK(v0Tiles1)
	dwb v0Tiles1 tile $13, BANK(v0Tiles1)
	dwb v0Tiles1 tile $14, BANK(v0Tiles1)
	dwb v0Tiles1 tile $15, BANK(v0Tiles1)
	dwb v0Tiles1 tile $16, BANK(v0Tiles1)
	dwb v0Tiles1 tile $17, BANK(v0Tiles1)
	dwb v0Tiles1 tile $18, BANK(v0Tiles1)
	dwb v0Tiles1 tile $19, BANK(v0Tiles1)
	dwb v0Tiles1 tile $1a, BANK(v0Tiles1)
	dwb v0Tiles1 tile $1b, BANK(v0Tiles1)
	dwb v0Tiles1 tile $1c, BANK(v0Tiles1)
	dwb v0Tiles1 tile $1d, BANK(v0Tiles1)
	dwb v0Tiles1 tile $1e, BANK(v0Tiles1)
	dwb v0Tiles1 tile $1f, BANK(v0Tiles1)

.Data_10c0f0:
	dwb v0Tiles1 tile $20, BANK(v0Tiles1)
	dwb v0Tiles1 tile $21, BANK(v0Tiles1)
	dwb v0Tiles1 tile $22, BANK(v0Tiles1)
	dwb v0Tiles1 tile $23, BANK(v0Tiles1)
	dwb v0Tiles1 tile $24, BANK(v0Tiles1)
	dwb v0Tiles1 tile $25, BANK(v0Tiles1)
	dwb v0Tiles1 tile $26, BANK(v0Tiles1)
	dwb v0Tiles1 tile $27, BANK(v0Tiles1)
	dwb v0Tiles1 tile $28, BANK(v0Tiles1)
	dwb v0Tiles1 tile $29, BANK(v0Tiles1)
	dwb v0Tiles1 tile $2a, BANK(v0Tiles1)
	dwb v0Tiles1 tile $2b, BANK(v0Tiles1)
	dwb v0Tiles1 tile $2c, BANK(v0Tiles1)
	dwb v0Tiles1 tile $2d, BANK(v0Tiles1)
	dwb v0Tiles1 tile $2e, BANK(v0Tiles1)
	dwb v0Tiles1 tile $2f, BANK(v0Tiles1)

.Data_10c120:
	dwb v0Tiles1 tile $30, BANK(v0Tiles1)
	dwb v0Tiles1 tile $31, BANK(v0Tiles1)
	dwb v0Tiles1 tile $32, BANK(v0Tiles1)
	dwb v0Tiles1 tile $33, BANK(v0Tiles1)
	dwb v0Tiles1 tile $34, BANK(v0Tiles1)
	dwb v0Tiles1 tile $35, BANK(v0Tiles1)
	dwb v0Tiles1 tile $36, BANK(v0Tiles1)
	dwb v0Tiles1 tile $37, BANK(v0Tiles1)
	dwb v0Tiles1 tile $38, BANK(v0Tiles1)
	dwb v0Tiles1 tile $39, BANK(v0Tiles1)
	dwb v0Tiles1 tile $3a, BANK(v0Tiles1)
	dwb v0Tiles1 tile $3b, BANK(v0Tiles1)
	dwb v0Tiles1 tile $3c, BANK(v0Tiles1)
	dwb v0Tiles1 tile $3d, BANK(v0Tiles1)
	dwb v0Tiles1 tile $3e, BANK(v0Tiles1)
	dwb v0Tiles1 tile $3f, BANK(v0Tiles1)
	dab NULL

Func_10c153:
	ldh a, [hWRAMBank]
	push af
	ld a, $02
	wramswitch
	xor a
	ld [wcf0c], a
	ld [w2dd10], a
	pop af
	wramswitch
	ret

Func_10c169:
	xor a
	call Func_3416
	ld a, e
	ld [w2dd1c + 0], a
	ld a, d
	ld [w2dd1c + 1], a
	ld a, [w2dd14]
	ld [w2dd1e], a
	call Func_10c1f0
	xor a
	ld [w2dd33], a
	ld [w2dd34], a
	ld [w2dd35], a
	xor a
	ld [w2dd32], a
	ret

; outputs in de the row of pixels with color according to a
; - a == 0: color 0
; - a == 1: color 1
; - a == 2: color 2
; - a >= 3: color 3
GetPixelRow:
	and a
	jr z, .col0
	dec a
	jr z, .col1
	dec a
	jr z, .col2
;col3
	ld de, `33333333
	ret
.col2
	ld de, `22222222
	ret
.col1
	ld de, `11111111
	ret
.col0
	ld de, `00000000
	ret

; fills wc300 and wc310 with color given by [wTextFillColor]
Func_10c1a6:
	ld a, [wTextFillColor]
	call GetPixelRow

	ld hl, wc300
	REPT TILE_HEIGHT
		ld a, e
		ld [hli], a
		ld a, d
		ld [hli], a
	ENDR

	; hl = wc310
	REPT TILE_HEIGHT
		ld a, e
		ld [hli], a
		ld a, d
		ld [hli], a
	ENDR

	ret

Func_10c1f0:
	call Func_3438
	ld a, e
	ld [w2dd3a + 0], a
	ld a, d
	ld [w2dd3a + 1], a
	ld a, b
	ld [w2dd3c], a

	call Func_3438
	ld a, e
	ld [w2dd3d + 0], a
	ld a, d
	ld [w2dd3d + 1], a
	ld a, b
	ld [w2dd3f], a
	ret

Func_10c20f:
	ld a, $02
	ld [w2dd10], a
	ld a, $00
	call Func_3416
	ld a, e
	ld [w2dd1c + 0], a
	ld a, d
	ld [w2dd1c + 1], a
	ld a, [w2dd14]
	ld [w2dd1e], a
	call Func_10c1a6
	ret

Func_10c22b:
	ldh a, [hWRAMBank]
	push af
	ld a, BANK("WRAM2")
	wramswitch
	ld a, [w2dd10]
	and a
	jp z, .no_carry
	dec a
	jp z, .asm_10c2a2
	dec a
	jp z, .asm_10c251

.set_carry
	pop af
	wramswitch
	scf
	ret

.no_carry
	pop af
	wramswitch
	and a
	ret

.asm_10c251
	call Func_3438
	ld a, e
	ld [wcf0d + 0], a
	ld a, d
	ld [wcf0d + 1], a
	ld a, b
	ld [wcf0f], a

	; c == 0?
	inc c
	dec c
	jr z, .asm_10c26f ; yes
	call .Func_10c28d
	ld a, $01
	ld [wcf0c], a
	jp .set_carry
.asm_10c26f
	call Func_3438
	ld a, e
	ld [wcf10], a
	ld a, d
	ld [wcf11], a
	ld a, b
	ld [wcf12], a
	inc c
	dec c
	jr z, .asm_10c285
	call .Func_10c28d
.asm_10c285
	ld a, $02
	ld [wcf0c], a
	jp .set_carry

.Func_10c28d:
	ld a, $01
	ld [w2dd10], a
	call Func_10c169
	ret

.Func_10c296:
	ld hl, w2dd22
	ld a, [hl]
	sub LOW(1)
	ld [hli], a
	ld a, [hl]
	sbc HIGH(1)
	ld [hld], a
	ret

.asm_10c2a2
	ld hl, w2dd22
	ld a, [hli]
	or [hl]
	jr z, .next_command
.asm_10c2a9
	call .Func_10c296
	call .Func_10c400
	jp .set_carry

.next_command
	call GetNextTextByte
	cp TX_END
	jp z, .end
	cp TX_UNKFE
	jp z, .asm_10c418
	cp TX_FONT1
	jp z, .set_font1
	cp TX_FONT2
	jp z, .set_font2
	cp TX_FONT3
	jp z, .set_font3
	cp TX_NEWLINE
	jp z, .newline
	cp TX_CLEAR
	jp z, .asm_10c452
	cp TX_UNKF8
	jp z, .asm_10c458
	cp TX_UNKF7
	jp z, .asm_10c482
	cp TX_FILL_COLOR
	jp z, .set_text_fill_color
	cp TX_UNKF5
	jp z, .asm_10c497
	cp TX_UNKF4
	jp z, .asm_10c4a0
	cp TX_UNKF3
	jp z, .asm_10c4a9
	cp TX_UNKF2
	jp z, .asm_10c4cc
	cp TX_UNKF1
	jp z, .asm_10c4e8
	cp TX_UNKF0
	jp z, .asm_10c508
	cp TX_UNKEF
	jp z, .asm_10c53b
	cp TX_UNKEE
	jp z, .asm_10c550
	cp TX_UNKED
	jp z, .asm_10c56b
	cp TX_UNKEC
	jp z, .asm_10c59a

	; is a character to print
	ld [wCharToPrint], a
	ld l, a
	ld a, [wFont]
	ld h, a
	add hl, hl
	add hl, hl
	add hl, hl ; *8
	ld bc, FontGfx
	add hl, bc
	ld a, [hli]
	ld [w2dd00 + $1], a
	ld a, [hli]
	ld [w2dd00 + $3], a
	ld a, [hli]
	ld [w2dd00 + $5], a
	ld a, [hli]
	ld [w2dd00 + $7], a
	ld a, [hli]
	ld [w2dd00 + $9], a
	ld a, [hli]
	ld [w2dd00 + $b], a
	ld a, [hli]
	ld [w2dd00 + $d], a
	ld a, [hli]
	ld [w2dd00 + $f], a

	xor a
	ld [w2dd00 + $0], a
	ld [w2dd00 + $2], a
	ld [w2dd00 + $4], a
	ld [w2dd00 + $6], a
	ld [w2dd00 + $8], a
	ld [w2dd00 + $a], a
	ld [w2dd00 + $c], a
	ld [w2dd00 + $e], a

	ld a, [w2dd34]
	cp $08
	jr c, .asm_10c377
	and $07
	ld [w2dd34], a
	ld a, [w2dd35]
	inc a
	ld [w2dd35], a
	call Func_10c5c1
.asm_10c377
	ld a, [w2dd34]
	ld b, a
	ld a, $08
	sub b
	call Func_10c655
	call Func_10ca9f

	ld a, [wCharToPrint]
	ld l, a
	ld a, [wFont]
	ld h, a
	ld bc, Data_10d01e
	add hl, bc
	ld a, [hl]
	ld hl, w2dd34
	add [hl]
	ld [hl], a
	ld a, [w2dd34]
	cp $09
	jr nc, .asm_10c3b6
	ld a, $01
	ld [wcf0c], a
	ld a, [w2dd3a + 0]
	ld [wcf0d + 0], a
	ld a, [w2dd3a + 1]
	ld [wcf0d + 1], a
	ld a, [w2dd3c]
	ld [wcf0f], a
	jr .asm_10c3df
.asm_10c3b6
	ld a, $02
	ld [wcf0c], a
	ld a, [w2dd3a + 0]
	ld [wcf0d + 0], a
	ld a, [w2dd3a + 1]
	ld [wcf0d + 1], a
	ld a, [w2dd3c]
	ld [wcf0f], a
	ld a, [w2dd3d + 0]
	ld [wcf10], a
	ld a, [w2dd3d + 1]
	ld [wcf11], a
	ld a, [w2dd3f]
	ld [wcf12], a
.asm_10c3df
	ld a, [w2dd15 + 1]
	and a
	jr z, .asm_10c3e8
	call Func_3597
.asm_10c3e8
	ld a, [w2dd1b]
	ld [w2dd22 + 0], a
	xor a
	ld [w2dd22 + 1], a
	ld a, [w2dd32]
	and a
	jr z, .asm_10c3fd
	ld a, $01
	ld [w2dd22 + 0], a
.asm_10c3fd
	jp .asm_10c2a9

.Func_10c400:
	ldh a, [hJoypadPressed]
	and PAD_A
	ret z ; no A btn
	ld a, [w2dd11]
	and $01
	ret z
	ld a, $01
	ld [w2dd32], a
	ret

.end
	xor a
	ld [w2dd10], a
	jp .no_carry

.asm_10c418
	jp .no_carry

.set_font1
	ld a, FONT1
	ld [wFont], a
	jp .next_command

.set_font2
	ld a, FONT2
	ld [wFont], a
	jp .next_command

.set_font3
	ld a, FONT3
	ld [wFont], a
	jp .next_command

.newline
	xor a
	ld [w2dd34], a
	ld a, [w2dd33]
	inc a
	ld [w2dd33], a
	call Func_3416
	ld a, e
	ld [w2dd1c + 0], a
	ld a, d
	ld [w2dd1c + 1], a
	call Func_10c1a6
	call Func_10c1f0
	jp .next_command

.asm_10c452
	call Func_10c20f
	jp .set_carry

.asm_10c458
	call GetNextTextByte
	ld [w2dd12 + 0], a
	call GetNextTextByte
	ld [w2dd12 + 1], a
	call GetNextTextByte
	ld [w2dd14], a
	xor a
	call Func_3416
	ld a, e
	ld [w2dd1c + 0], a
	ld a, d
	ld [w2dd1c + 1], a
	ld a, [w2dd14]
	ld [w2dd1e], a
	call Func_10c1f0
	jp .next_command

.asm_10c482
	call GetNextTextByte
	ld [w2dd19], a
	jp .next_command

.set_text_fill_color
	call GetNextTextByte
	ld [wTextFillColor], a
	call Func_10c1a6
	jp .next_command

.asm_10c497
	call GetNextTextByte
	ld [w2dd1b], a
	jp .next_command

.asm_10c4a0
	call GetNextTextByte
	ld [w2dd11], a
	jp .next_command

.asm_10c4a9
	call .Func_10c4af
	jp .next_command

.Func_10c4af:
	call GetNextTextByte
	push af
	call GetNextTextByte
	push af
	call GetNextTextByte
	ld b, a
	pop af
	ld d, a
	pop af
	ld e, a
	ld a, e
	ld [wTextDataPtr + 0], a
	ld a, d
	ld [wTextDataPtr + 1], a
	ld a, b
	ld [wTextDataBank], a
	ret

.asm_10c4cc
	ld a, [wLanguage]
	ld b, a
	add a
	add b ; *3
	ld b, a
	ld a, [wTextDataPtr + 0]
	add b
	ld [wTextDataPtr + 0], a
	ld a, [wTextDataPtr + 1]
	adc $00
	ld [wTextDataPtr + 1], a
	call .Func_10c4af
	jp .next_command

.asm_10c4e8
	call GetNextTextByte
	ld [w2dd24 + 0], a
	call GetNextTextByte
	ld [w2dd24 + 1], a
	call GetNextTextByte
	ld [w2dd26], a
	call Func_3549
	ld hl, w2dd22
	ld a, [hli]
	or [hl]
	jp nz, .asm_10c2a9
	jp .next_command

.asm_10c508
	call GetNextTextByte
	ld [w2dd24 + 0], a
	call GetNextTextByte
	ld [w2dd24 + 1], a
	call GetNextTextByte
	ld [w2dd26], a
	call Func_3568
	jp nc, .next_command
	ld a, [wTextDataPtr + 0]
	sub $04
	ld [wTextDataPtr + 0], a
	ld a, [wTextDataPtr + 1]
	sbc $00
	ld [wTextDataPtr + 1], a
	ld hl, w2dd22
	ld a, [hli]
	or [hl]
	jp nz, .asm_10c2a9
	jp .set_carry

.asm_10c53b
	call GetNextTextByte
	ld [w2dd15 + 0], a
	call GetNextTextByte
	ld [w2dd15 + 1], a
	call GetNextTextByte
	ld [w2dd17], a
	jp .next_command

.asm_10c550
	call GetNextTextByte
	ld l, a
	ld h, $00
	ld c, l
	ld b, h
	add hl, hl
	add hl, bc
	add hl, hl
	add hl, bc
	add hl, hl
	add hl, bc
	add hl, hl
	add hl, hl ; *60
	ld a, l
	ld [w2dd22 + 0], a
	ld a, h
	ld [w2dd22 + 1], a
	jp .set_carry

.asm_10c56b
	ld a, [w2dd27]
	cp $09
	jr c, .asm_10c574
	debug_loop
.asm_10c574
	ld c, a
	inc a
	inc a
	inc a
	ld [w2dd27], a
	ld hl, w2dd28
	ld a, l
	add c
	ld l, a
	jr nc, .asm_10c584
	inc h
.asm_10c584
	ld a, [wTextDataPtr + 0]
	add $03
	ld [hli], a
	ld a, [wTextDataPtr + 1]
	adc $00
	ld [hli], a
	ld a, [wTextDataBank]
	ld [hli], a
	call .Func_10c4af
	jp .next_command

.asm_10c59a
	ld a, [w2dd27]
	and a
	jr nz, .asm_10c5a2
	debug_loop
.asm_10c5a2
	dec a
	dec a
	dec a
	ld [w2dd27], a
	ld c, a
	ld hl, w2dd28
	ld a, l
	add c
	ld l, a
	jr nc, .asm_10c5b2
	inc h
.asm_10c5b2
	ld a, [hli]
	ld [wTextDataPtr + 0], a
	ld a, [hli]
	ld [wTextDataPtr + 1], a
	ld a, [hli]
	ld [wTextDataBank], a
	jp .next_command

Func_10c5c1:
	ld hl, wc300
	ld bc, TILE_SIZE
	ld de, -TILE_SIZE

	; copy wc310 to wc300
	REPT TILE_SIZE
		add hl, bc
		ld a, [hl]
		add hl, de
		ld [hli], a
	ENDR

	; fill wc310 with color in [wTextFillColor]
	ld a, [wTextFillColor]
	call GetPixelRow
	ld hl, wc310
	REPT TILE_HEIGHT
		ld a, e
		ld [hli], a
		ld a, d
		ld [hli], a
	ENDR

	ld a, [w2dd3d + 0]
	ld [w2dd3a + 0], a
	ld a, [w2dd3d + 1]
	ld [w2dd3a + 1], a
	ld a, [w2dd3f]
	ld [w2dd3c], a
	call Func_3438
	ld a, e
	ld [w2dd3d + 0], a
	ld a, d
	ld [w2dd3d + 1], a
	ld a, b
	ld [w2dd3f], a
	ret

Func_10c655:
	and a
.asm_10c656
	jr z, .asm_10c656
	ld hl, w2dd00
	dec a
	jp z, .asm_10c67d
	dec a
	jp z, .asm_10c6c6
	dec a
	jp z, .asm_10c727
	dec a
	jp z, .asm_10c7a0
	dec a
	jp z, .asm_10c831
	dec a
	jp z, .asm_10c8da
	dec a
	jp z, .asm_10c99b
	dec a
	jp z, .asm_10ca74
	debug_loop

.asm_10c67d
	REPT 8
		inc hl
		ld a, [hld]
		ld b, [hl]
		add a
		rl b
		ld [hl], b
		inc hl
		ld [hli], a
	ENDR

	ret

.asm_10c6c6
	REPT 8
		inc hl
		ld a, [hld]
		ld b, [hl]
		REPT 2
			add a
			rl b
		ENDR
		ld [hl], b
		inc hl
		ld [hli], a
	ENDR

	ret

.asm_10c727
	REPT 8
		inc hl
		ld a, [hld]
		ld b, [hl]
		REPT 3
			add a
			rl b
		ENDR
		ld [hl], b
		inc hl
		ld [hli], a
	ENDR

	ret

.asm_10c7a0
	REPT 8
		inc hl
		ld a, [hld]
		ld b, [hl]
		REPT 4
			add a
			rl b
		ENDR
		ld [hl], b
		inc hl
		ld [hli], a
	ENDR

	ret

.asm_10c831
	REPT 8
		inc hl
		ld a, [hld]
		ld b, [hl]
		REPT 5
			add a
			rl b
		ENDR
		ld [hl], b
		inc hl
		ld [hli], a
	ENDR

	ret

.asm_10c8da
	REPT 8
		inc hl
		ld a, [hld]
		ld b, [hl]
		REPT 6
			add a
			rl b
		ENDR
		ld [hl], b
		inc hl
		ld [hli], a
	ENDR

	ret

.asm_10c99b
	REPT 8
		inc hl
		ld a, [hld]
		ld b, [hl]
		REPT 7
			add a
			rl b
		ENDR
		ld [hl], b
		inc hl
		ld [hli], a
	ENDR

	ret

.asm_10ca74
	ld b, $00
	REPT 8
		inc hl
		ld a, [hld]
		ld [hli], a
		ld a, b
		ld [hli], a
	ENDR
	ret

Func_10ca9f:
	ld a, [w2dd19]
	and a
	jp z, .asm_10cab4
	dec a
	jp z, .asm_10cbe5
	dec a
	jp z, .asm_10cd56
	dec a
	jp z, .asm_10cec7
	debug_loop

.asm_10cab4
	FOR n, 0, TILE_HEIGHT
		ld a, [w2dd00 + (2*n + 0)]
		cpl
		ld b, a
		ld a, [wc300 + (2*n + 0)]
		and b
		ld [wc300 + (2*n + 0)], a
		ld a, [wc300 + (2*n + 1)]
		and b
		ld [wc300 + (2*n + 1)], a
	ENDR

	FOR n, 0, TILE_HEIGHT
		ld a, [w2dd00 + (2*n + 1)]
		cpl
		ld b, a
		ld a, [wc310 + (2*n + 0)]
		and b
		ld [wc310 + (2*n + 0)], a
		ld a, [wc310 + (2*n + 1)]
		and b
		ld [wc310 + (2*n + 1)], a
	ENDR
	ret

.asm_10cbe5
	FOR n, 0, TILE_HEIGHT
		ld a, [w2dd00 + (2*n + 0)]
		ld b, a
		ld a, [wc300 + (2*n + 0)]
		or b
		ld [wc300 + (2*n + 0)], a
	ENDR

	FOR n, 0, TILE_HEIGHT
		ld a, [w2dd00 + (2*n + 0)]
		cpl
		ld b, a
		ld a, [wc300 + (2*n + 1)]
		and b
		ld [wc300 + (2*n + 1)], a
	ENDR

	FOR n, 0, TILE_HEIGHT
		ld a, [w2dd00 + (2*n + 1)]
		ld b, a
		ld a, [wc310 + (2*n + 0)]
		or b
		ld [wc310 + (2*n + 0)], a
	ENDR

	FOR n, 0, TILE_HEIGHT
		ld a, [w2dd00 + (2*n + 1)]
		cpl
		ld b, a
		ld a, [wc310 + (2*n + 1)]
		and b
		ld [wc310 + (2*n + 1)], a
	ENDR

	ret

.asm_10cd56
	FOR n, 0, TILE_HEIGHT
		ld a, [w2dd00 + (2*n + 0)]
		cpl
		ld b, a
		ld a, [wc300 + (2*n + 0)]
		and b
		ld [wc300 + (2*n + 0)], a
	ENDR

	FOR n, 0, TILE_HEIGHT
		ld a, [w2dd00 + (2*n + 0)]
		ld b, a
		ld a, [wc300 + (2*n + 1)]
		or b
		ld [wc300 + (2*n + 1)], a
	ENDR

	FOR n, 0, TILE_HEIGHT
		ld a, [w2dd00 + (2*n + 1)]
		cpl
		ld b, a
		ld a, [wc310 + (2*n + 0)]
		and b
		ld [wc310 + (2*n + 0)], a
	ENDR

	FOR n, 0, TILE_HEIGHT
		ld a, [w2dd00 + (2*n + 1)]
		ld b, a
		ld a, [wc310 + (2*n + 1)]
		or b
		ld [wc310 + (2*n + 1)], a
	ENDR

	ret

.asm_10cec7
	FOR n, 0, TILE_HEIGHT
		ld a, [w2dd00 + (2*n + 0)]
		ld b, a
		ld a, [wc300 + (2*n + 0)]
		or b
		ld [wc300 + (2*n + 0)], a
		ld a, [wc300 + (2*n + 1)]
		or b
		ld [wc300 + (2*n + 1)], a
	ENDR

	FOR n, 0, TILE_HEIGHT
		ld a, [w2dd00 + (2*n + 1)]
		ld b, a
		ld a, [wc310 + (2*n + 0)]
		or b
		ld [wc310 + (2*n + 0)], a
		ld a, [wc310 + (2*n + 1)]
		or b
		ld [wc310 + (2*n + 1)], a
	ENDR

	ret
; 0x10cfe8

SECTION "Bank 43@501e", ROMX[$501e], BANK[$43]

Data_10d01e:
	db $08 ; $000
	db $08 ; $001
	db $08 ; $002
	db $08 ; $003
	db $08 ; $004
	db $08 ; $005
	db $08 ; $006
	db $08 ; $007
	db $08 ; $008
	db $08 ; $009
	db $08 ; $00a
	db $08 ; $00b
	db $08 ; $00c
	db $08 ; $00d
	db $08 ; $00e
	db $08 ; $00f
	db $08 ; $010
	db $08 ; $011
	db $08 ; $012
	db $08 ; $013
	db $08 ; $014
	db $08 ; $015
	db $08 ; $016
	db $08 ; $017
	db $08 ; $018
	db $08 ; $019
	db $08 ; $01a
	db $08 ; $01b
	db $08 ; $01c
	db $08 ; $01d
	db $08 ; $01e
	db $08 ; $01f
	db $08 ; $020
	db $08 ; $021
	db $08 ; $022
	db $08 ; $023
	db $08 ; $024
	db $08 ; $025
	db $08 ; $026
	db $08 ; $027
	db $08 ; $028
	db $08 ; $029
	db $08 ; $02a
	db $08 ; $02b
	db $08 ; $02c
	db $08 ; $02d
	db $08 ; $02e
	db $08 ; $02f
	db $08 ; $030
	db $08 ; $031
	db $08 ; $032
	db $08 ; $033
	db $08 ; $034
	db $08 ; $035
	db $08 ; $036
	db $08 ; $037
	db $08 ; $038
	db $08 ; $039
	db $08 ; $03a
	db $08 ; $03b
	db $08 ; $03c
	db $08 ; $03d
	db $08 ; $03e
	db $08 ; $03f
	db $08 ; $040
	db $08 ; $041
	db $08 ; $042
	db $08 ; $043
	db $08 ; $044
	db $08 ; $045
	db $08 ; $046
	db $08 ; $047
	db $08 ; $048
	db $08 ; $049
	db $08 ; $04a
	db $08 ; $04b
	db $08 ; $04c
	db $08 ; $04d
	db $08 ; $04e
	db $08 ; $04f
	db $08 ; $050
	db $08 ; $051
	db $08 ; $052
	db $08 ; $053
	db $08 ; $054
	db $08 ; $055
	db $08 ; $056
	db $08 ; $057
	db $08 ; $058
	db $08 ; $059
	db $08 ; $05a
	db $08 ; $05b
	db $08 ; $05c
	db $08 ; $05d
	db $08 ; $05e
	db $08 ; $05f
	db $08 ; $060
	db $08 ; $061
	db $08 ; $062
	db $08 ; $063
	db $08 ; $064
	db $08 ; $065
	db $08 ; $066
	db $08 ; $067
	db $08 ; $068
	db $08 ; $069
	db $08 ; $06a
	db $08 ; $06b
	db $08 ; $06c
	db $08 ; $06d
	db $08 ; $06e
	db $08 ; $06f
	db $08 ; $070
	db $08 ; $071
	db $08 ; $072
	db $08 ; $073
	db $08 ; $074
	db $08 ; $075
	db $08 ; $076
	db $08 ; $077
	db $08 ; $078
	db $08 ; $079
	db $08 ; $07a
	db $08 ; $07b
	db $08 ; $07c
	db $08 ; $07d
	db $08 ; $07e
	db $08 ; $07f
	db $08 ; $080
	db $08 ; $081
	db $08 ; $082
	db $08 ; $083
	db $08 ; $084
	db $08 ; $085
	db $08 ; $086
	db $08 ; $087
	db $08 ; $088
	db $08 ; $089
	db $08 ; $08a
	db $08 ; $08b
	db $08 ; $08c
	db $08 ; $08d
	db $08 ; $08e
	db $08 ; $08f
	db $08 ; $090
	db $08 ; $091
	db $08 ; $092
	db $08 ; $093
	db $08 ; $094
	db $08 ; $095
	db $08 ; $096
	db $08 ; $097
	db $08 ; $098
	db $08 ; $099
	db $08 ; $09a
	db $08 ; $09b
	db $08 ; $09c
	db $08 ; $09d
	db $00 ; $09e
	db $08 ; $09f
	db $08 ; $0a0
	db $08 ; $0a1
	db $08 ; $0a2
	db $08 ; $0a3
	db $08 ; $0a4
	db $08 ; $0a5
	db $08 ; $0a6
	db $08 ; $0a7
	db $08 ; $0a8
	db $08 ; $0a9
	db $08 ; $0aa
	db $08 ; $0ab
	db $08 ; $0ac
	db $08 ; $0ad
	db $08 ; $0ae
	db $08 ; $0af
	db $08 ; $0b0
	db $08 ; $0b1
	db $08 ; $0b2
	db $08 ; $0b3
	db $08 ; $0b4
	db $08 ; $0b5
	db $08 ; $0b6
	db $08 ; $0b7
	db $08 ; $0b8
	db $08 ; $0b9
	db $08 ; $0ba
	db $08 ; $0bb
	db $08 ; $0bc
	db $08 ; $0bd
	db $08 ; $0be
	db $08 ; $0bf
	db $08 ; $0c0
	db $08 ; $0c1
	db $08 ; $0c2
	db $08 ; $0c3
	db $08 ; $0c4
	db $08 ; $0c5
	db $08 ; $0c6
	db $08 ; $0c7
	db $08 ; $0c8
	db $08 ; $0c9
	db $08 ; $0ca
	db $08 ; $0cb
	db $08 ; $0cc
	db $08 ; $0cd
	db $08 ; $0ce
	db $08 ; $0cf
	db $08 ; $0d0
	db $08 ; $0d1
	db $08 ; $0d2
	db $08 ; $0d3
	db $08 ; $0d4
	db $08 ; $0d5
	db $08 ; $0d6
	db $08 ; $0d7
	db $08 ; $0d8
	db $08 ; $0d9
	db $08 ; $0da
	db $08 ; $0db
	db $08 ; $0dc
	db $08 ; $0dd
	db $08 ; $0de
	db $08 ; $0df
	db $00 ; $0e0
	db $00 ; $0e1
	db $00 ; $0e2
	db $00 ; $0e3
	db $00 ; $0e4
	db $00 ; $0e5
	db $00 ; $0e6
	db $00 ; $0e7
	db $00 ; $0e8
	db $00 ; $0e9
	db $00 ; $0ea
	db $00 ; $0eb
	db $00 ; $0ec
	db $00 ; $0ed
	db $00 ; $0ee
	db $00 ; $0ef
	db $00 ; $0f0
	db $00 ; $0f1
	db $00 ; $0f2
	db $00 ; $0f3
	db $00 ; $0f4
	db $00 ; $0f5
	db $00 ; $0f6
	db $00 ; $0f7
	db $00 ; $0f8
	db $00 ; $0f9
	db $00 ; $0fa
	db $00 ; $0fb
	db $00 ; $0fc
	db $00 ; $0fd
	db $00 ; $0fe
	db $00 ; $0ff

	db $08 ; $100
	db $08 ; $101
	db $08 ; $102
	db $08 ; $103
	db $08 ; $104
	db $08 ; $105
	db $08 ; $106
	db $08 ; $107
	db $08 ; $108
	db $08 ; $109
	db $08 ; $10a
	db $08 ; $10b
	db $08 ; $10c
	db $08 ; $10d
	db $08 ; $10e
	db $08 ; $10f
	db $08 ; $110
	db $08 ; $111
	db $08 ; $112
	db $08 ; $113
	db $08 ; $114
	db $08 ; $115
	db $08 ; $116
	db $08 ; $117
	db $08 ; $118
	db $08 ; $119
	db $08 ; $11a
	db $08 ; $11b
	db $08 ; $11c
	db $08 ; $11d
	db $08 ; $11e
	db $08 ; $11f
	db $08 ; $120
	db $08 ; $121
	db $08 ; $122
	db $08 ; $123
	db $08 ; $124
	db $08 ; $125
	db $08 ; $126
	db $08 ; $127
	db $08 ; $128
	db $08 ; $129
	db $08 ; $12a
	db $08 ; $12b
	db $08 ; $12c
	db $08 ; $12d
	db $08 ; $12e
	db $08 ; $12f
	db $08 ; $130
	db $08 ; $131
	db $08 ; $132
	db $08 ; $133
	db $08 ; $134
	db $08 ; $135
	db $08 ; $136
	db $08 ; $137
	db $08 ; $138
	db $08 ; $139
	db $08 ; $13a
	db $08 ; $13b
	db $08 ; $13c
	db $08 ; $13d
	db $08 ; $13e
	db $08 ; $13f
	db $08 ; $140
	db $08 ; $141
	db $08 ; $142
	db $08 ; $143
	db $08 ; $144
	db $08 ; $145
	db $08 ; $146
	db $08 ; $147
	db $08 ; $148
	db $08 ; $149
	db $08 ; $14a
	db $08 ; $14b
	db $08 ; $14c
	db $08 ; $14d
	db $08 ; $14e
	db $08 ; $14f
	db $08 ; $150
	db $08 ; $151
	db $08 ; $152
	db $08 ; $153
	db $08 ; $154
	db $08 ; $155
	db $08 ; $156
	db $08 ; $157
	db $08 ; $158
	db $08 ; $159
	db $08 ; $15a
	db $08 ; $15b
	db $08 ; $15c
	db $08 ; $15d
	db $08 ; $15e
	db $08 ; $15f
	db $08 ; $160
	db $08 ; $161
	db $08 ; $162
	db $08 ; $163
	db $08 ; $164
	db $08 ; $165
	db $08 ; $166
	db $08 ; $167
	db $08 ; $168
	db $08 ; $169
	db $08 ; $16a
	db $08 ; $16b
	db $08 ; $16c
	db $08 ; $16d
	db $08 ; $16e
	db $08 ; $16f
	db $08 ; $170
	db $08 ; $171
	db $08 ; $172
	db $08 ; $173
	db $08 ; $174
	db $08 ; $175
	db $08 ; $176
	db $08 ; $177
	db $08 ; $178
	db $08 ; $179
	db $08 ; $17a
	db $08 ; $17b
	db $08 ; $17c
	db $08 ; $17d
	db $08 ; $17e
	db $08 ; $17f
	db $08 ; $180
	db $08 ; $181
	db $08 ; $182
	db $08 ; $183
	db $08 ; $184
	db $08 ; $185
	db $08 ; $186
	db $08 ; $187
	db $08 ; $188
	db $08 ; $189
	db $08 ; $18a
	db $08 ; $18b
	db $08 ; $18c
	db $08 ; $18d
	db $08 ; $18e
	db $08 ; $18f
	db $08 ; $190
	db $08 ; $191
	db $08 ; $192
	db $08 ; $193
	db $08 ; $194
	db $08 ; $195
	db $08 ; $196
	db $08 ; $197
	db $08 ; $198
	db $08 ; $199
	db $08 ; $19a
	db $08 ; $19b
	db $08 ; $19c
	db $08 ; $19d
	db $08 ; $19e
	db $08 ; $19f
	db $08 ; $1a0
	db $08 ; $1a1
	db $08 ; $1a2
	db $08 ; $1a3
	db $08 ; $1a4
	db $08 ; $1a5
	db $08 ; $1a6
	db $08 ; $1a7
	db $08 ; $1a8
	db $08 ; $1a9
	db $08 ; $1aa
	db $08 ; $1ab
	db $08 ; $1ac
	db $08 ; $1ad
	db $08 ; $1ae
	db $08 ; $1af
	db $00 ; $1b0
	db $00 ; $1b1
	db $00 ; $1b2
	db $00 ; $1b3
	db $00 ; $1b4
	db $00 ; $1b5
	db $00 ; $1b6
	db $00 ; $1b7
	db $00 ; $1b8
	db $00 ; $1b9
	db $00 ; $1ba
	db $00 ; $1bb
	db $00 ; $1bc
	db $00 ; $1bd
	db $00 ; $1be
	db $00 ; $1bf
	db $00 ; $1c0
	db $00 ; $1c1
	db $00 ; $1c2
	db $00 ; $1c3
	db $00 ; $1c4
	db $00 ; $1c5
	db $00 ; $1c6
	db $00 ; $1c7
	db $00 ; $1c8
	db $00 ; $1c9
	db $00 ; $1ca
	db $00 ; $1cb
	db $00 ; $1cc
	db $00 ; $1cd
	db $00 ; $1ce
	db $00 ; $1cf
	db $00 ; $1d0
	db $00 ; $1d1
	db $00 ; $1d2
	db $00 ; $1d3
	db $00 ; $1d4
	db $00 ; $1d5
	db $00 ; $1d6
	db $00 ; $1d7
	db $00 ; $1d8
	db $00 ; $1d9
	db $00 ; $1da
	db $00 ; $1db
	db $00 ; $1dc
	db $00 ; $1dd
	db $00 ; $1de
	db $00 ; $1df
	db $00 ; $1e0
	db $00 ; $1e1
	db $00 ; $1e2
	db $00 ; $1e3
	db $00 ; $1e4
	db $00 ; $1e5
	db $00 ; $1e6
	db $00 ; $1e7
	db $00 ; $1e8
	db $00 ; $1e9
	db $00 ; $1ea
	db $00 ; $1eb
	db $00 ; $1ec
	db $00 ; $1ed
	db $00 ; $1ee
	db $00 ; $1ef
	db $00 ; $1f0
	db $00 ; $1f1
	db $00 ; $1f2
	db $00 ; $1f3
	db $00 ; $1f4
	db $00 ; $1f5
	db $00 ; $1f6
	db $00 ; $1f7
	db $00 ; $1f8
	db $00 ; $1f9
	db $00 ; $1fa
	db $00 ; $1fb
	db $00 ; $1fc
	db $00 ; $1fd
	db $00 ; $1fe
	db $00 ; $1ff

	db $07 ; $200
	db $05 ; $201
	db $07 ; $202
	db $07 ; $203
	db $07 ; $204
	db $07 ; $205
	db $07 ; $206
	db $07 ; $207
	db $07 ; $208
	db $07 ; $209
	db $06 ; $20a
	db $07 ; $20b
	db $06 ; $20c
	db $07 ; $20d
	db $08 ; $20e
	db $04 ; $20f
	db $07 ; $210
	db $07 ; $211
	db $07 ; $212
	db $07 ; $213
	db $07 ; $214
	db $07 ; $215
	db $07 ; $216
	db $07 ; $217
	db $04 ; $218
	db $07 ; $219
	db $07 ; $21a
	db $06 ; $21b
	db $08 ; $21c
	db $07 ; $21d
	db $07 ; $21e
	db $07 ; $21f
	db $07 ; $220
	db $07 ; $221
	db $07 ; $222
	db $08 ; $223
	db $07 ; $224
	db $07 ; $225
	db $08 ; $226
	db $08 ; $227
	db $08 ; $228
	db $07 ; $229
	db $05 ; $22a
	db $05 ; $22b
	db $03 ; $22c
	db $03 ; $22d
	db $04 ; $22e
	db $04 ; $22f
	db $07 ; $230
	db $06 ; $231
	db $06 ; $232
	db $06 ; $233
	db $06 ; $234
	db $06 ; $235
	db $06 ; $236
	db $06 ; $237
	db $02 ; $238
	db $04 ; $239
	db $06 ; $23a
	db $02 ; $23b
	db $08 ; $23c
	db $06 ; $23d
	db $06 ; $23e
	db $06 ; $23f
	db $06 ; $240
	db $05 ; $241
	db $06 ; $242
	db $05 ; $243
	db $06 ; $244
	db $06 ; $245
	db $07 ; $246
	db $06 ; $247
	db $06 ; $248
	db $06 ; $249
	db $03 ; $24a
	db $00 ; $24b
	db $00 ; $24c
	db $00 ; $24d
	db $00 ; $24e
	db $00 ; $24f
	db $08 ; $250
	db $08 ; $251
	db $08 ; $252
	db $08 ; $253
	db $08 ; $254
	db $05 ; $255
	db $08 ; $256
	db $05 ; $257
	db $03 ; $258
	db $08 ; $259
	db $06 ; $25a
	db $06 ; $25b
	db $08 ; $25c
	db $08 ; $25d
	db $06 ; $25e
	db $00 ; $25f
	db $00 ; $260
	db $03 ; $261
	db $03 ; $262
	db $06 ; $263
	db $06 ; $264
	db $03 ; $265
	db $00 ; $266
	db $05 ; $267
	db $05 ; $268
	db $05 ; $269
	db $00 ; $26a
	db $00 ; $26b
	db $00 ; $26c
	db $00 ; $26d
	db $00 ; $26e
	db $00 ; $26f
	db $07 ; $270
	db $07 ; $271
	db $07 ; $272
	db $08 ; $273
	db $08 ; $274
	db $04 ; $275
	db $04 ; $276
	db $07 ; $277
	db $07 ; $278
	db $07 ; $279
	db $07 ; $27a
	db $07 ; $27b
	db $07 ; $27c
	db $00 ; $27d
	db $00 ; $27e
	db $00 ; $27f
	db $07 ; $280
	db $07 ; $281
	db $07 ; $282
	db $07 ; $283
	db $06 ; $284
	db $06 ; $285
	db $06 ; $286
	db $06 ; $287
	db $04 ; $288
	db $03 ; $289
	db $03 ; $28a
	db $04 ; $28b
	db $06 ; $28c
	db $06 ; $28d
	db $06 ; $28e
	db $06 ; $28f
	db $06 ; $290
	db $06 ; $291
	db $06 ; $292
	db $06 ; $293
	db $07 ; $294
	db $07 ; $295
	db $08 ; $296
	db $07 ; $297
	db $05 ; $298
	db $05 ; $299
	db $07 ; $29a
	db $07 ; $29b
	db $07 ; $29c
	db $08 ; $29d
	db $07 ; $29e
	db $08 ; $29f
	db $08 ; $2a0
	db $08 ; $2a1
	db $08 ; $2a2
	db $08 ; $2a3
	db $08 ; $2a4
	db $08 ; $2a5
	db $07 ; $2a6
	db $00 ; $2a7
	db $07 ; $2a8
	db $08 ; $2a9
	db $07 ; $2aa
	db $00 ; $2ab
	db $00 ; $2ac
	db $00 ; $2ad
	db $00 ; $2ae
	db $00 ; $2af
	db $00 ; $2b0
	db $00 ; $2b1
	db $00 ; $2b2
	db $00 ; $2b3
	db $00 ; $2b4
	db $00 ; $2b5
	db $00 ; $2b6
	db $00 ; $2b7
	db $00 ; $2b8
	db $00 ; $2b9
	db $00 ; $2ba
	db $00 ; $2bb
	db $00 ; $2bc
	db $00 ; $2bd
	db $00 ; $2be
	db $00 ; $2bf
	db $00 ; $2c0
	db $00 ; $2c1
	db $00 ; $2c2
	db $00 ; $2c3
	db $00 ; $2c4
	db $00 ; $2c5
	db $00 ; $2c6
	db $00 ; $2c7
	db $00 ; $2c8
	db $00 ; $2c9
	db $00 ; $2ca
	db $00 ; $2cb
	db $00 ; $2cc
	db $00 ; $2cd
	db $00 ; $2ce
	db $00 ; $2cf
	db $00 ; $2d0
	db $00 ; $2d1
	db $00 ; $2d2
	db $00 ; $2d3
	db $00 ; $2d4
	db $00 ; $2d5
	db $00 ; $2d6
	db $00 ; $2d7
	db $00 ; $2d8
	db $00 ; $2d9
	db $00 ; $2da
	db $00 ; $2db
	db $00 ; $2dc
	db $00 ; $2dd
	db $00 ; $2de
	db $00 ; $2df
	db $00 ; $2e0
	db $00 ; $2e1
	db $00 ; $2e2
	db $00 ; $2e3
	db $00 ; $2e4
	db $00 ; $2e5
	db $00 ; $2e6
	db $00 ; $2e7
	db $00 ; $2e8
	db $00 ; $2e9
	db $00 ; $2ea
	db $00 ; $2eb
	db $00 ; $2ec
	db $00 ; $2ed
	db $00 ; $2ee
	db $00 ; $2ef
	db $00 ; $2f0
	db $00 ; $2f1
	db $00 ; $2f2
	db $00 ; $2f3
	db $00 ; $2f4
	db $00 ; $2f5
	db $00 ; $2f6
	db $00 ; $2f7
	db $00 ; $2f8
	db $00 ; $2f9
	db $00 ; $2fa
	db $00 ; $2fb
	db $00 ; $2fc
	db $00 ; $2fd
	db $00 ; $2fe
	db $00 ; $2ff

FontGfx:
INCBIN "gfx/fonts/1.1bpp"
INCBIN "gfx/fonts/2.1bpp"
INCBIN "gfx/fonts/3.1bpp"
