InitTextEngine::
	ld b, BANK(NULL)
	ld de, NULL
	farcall PrepareTextProcessing ; unnecessary farcall
	; set language to English
	ld a, ENGLISH
	ld [wLanguage], a
	ret

; input:
; - b:de = text to process
PrepareTextProcessing::
	ldh a, [hWRAMBank]
	push af
	ld a, BANK("Text RAM")
	wramswitch

	push bc
	push de
	ld b, BANK(wPendingTextGfxOperation)
	ld de, wPendingTextGfxOperation
	ld a, $00
	fill_mem $b
	ld b, BANK("Text RAM")
	ld de, STARTOF("Text RAM")
	ld a, $00
	fill_mem SIZEOF("Text RAM")
	pop de
	pop bc

	; de == NULL?
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
	ld a, TXPROC_NEXT_CHAR
	ld [wTextProcessMode], a
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
	ld a, 1
	ld [wTextDelay], a

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

Func_10c153::
	ldh a, [hWRAMBank]
	push af
	ld a, BANK("Text RAM")
	wramswitch
	xor a
	ld [wPendingTextGfxOperation], a
	ld [wTextProcessMode], a ; TXPROC_DONE
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
	ld [wTextSpeedingUp], a
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

; fills wTextTile1 and wTextTile2 with color given by [wTextFillColor]
Func_10c1a6:
	ld a, [wTextFillColor]
	call GetPixelRow

	ld hl, wTextTile1
	REPT TILE_HEIGHT
		ld a, e
		ld [hli], a
		ld a, d
		ld [hli], a
	ENDR

	; hl = wTextTile2
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
	ld a, TXPROC_PUSH_CHAR
	ld [wTextProcessMode], a
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

; processes text that was initialized in PrepareTextProcessing
; this is supposed to be called in a loop, as long as it returns carry
; when any tiles need to be pushed to VRAM, [wPendingTextGfxOperation]
; will be non-zero and the caller is expected to handle it
; (through ProcessPendingTextGfxOperation)
ProcessText::
	ldh a, [hWRAMBank]
	push af
	ld a, BANK("Text RAM")
	wramswitch
	ld a, [wTextProcessMode]
	and a ; cp TXPROC_DONE
	jp z, .no_carry
	dec a ; cp TXPROC_NEXT_CHAR
	jp z, .asm_10c2a2
	dec a ; TXPROC_PUSH_CHAR
	jp z, .asm_10c251

.set_carry
; still more processing pending
	pop af
	wramswitch
	scf
	ret

.no_carry
; no more processing to do
	pop af
	wramswitch
	and a
	ret

.asm_10c251
	call Func_3438
	ld a, e
	ld [wTextTile1DestPtr + 0], a
	ld a, d
	ld [wTextTile1DestPtr + 1], a
	ld a, b
	ld [wTextTile1DestBank], a

	; c == 0?
	inc c
	dec c
	jr z, .asm_10c26f ; yes
	call .Func_10c28d
	ld a, PUSH_1_TEXT_TILE
	ld [wPendingTextGfxOperation], a
	jp .set_carry
.asm_10c26f
	call Func_3438
	ld a, e
	ld [wTextTile2DestPtr + 0], a
	ld a, d
	ld [wTextTile2DestPtr + 1], a
	ld a, b
	ld [wTextTile2DestBank], a
	inc c
	dec c
	jr z, .asm_10c285
	call .Func_10c28d
.asm_10c285
	ld a, PUSH_2_TEXT_TILES
	ld [wPendingTextGfxOperation], a
	jp .set_carry

.Func_10c28d:
	ld a, TXPROC_NEXT_CHAR
	ld [wTextProcessMode], a
	call Func_10c169
	ret

.TickTextDelayTimer:
	ld hl, wTextDelayTimer
	ld a, [hl]
	sub LOW(1)
	ld [hli], a
	ld a, [hl]
	sbc HIGH(1)
	ld [hld], a
	ret

.asm_10c2a2
	ld hl, wTextDelayTimer
	ld a, [hli]
	or [hl]
	jr z, .next_char
.asm_10c2a9
	call .TickTextDelayTimer
	call .UpdateTextSpeedup
	jp .set_carry

.next_char
	call GetNextTextByte

	; check if it's any control character
	cp TX_END
	jp z, .end
	cp TX_UNKFE
	jp z, .unk_fe
	cp TX_FONT1
	jp z, .set_font1
	cp TX_FONT2
	jp z, .set_font2
	cp TX_FONT3
	jp z, .set_font3
	cp TX_NEWLINE
	jp z, .newline
	cp TX_CLEAR
	jp z, .clear_text
	cp TX_SET_VRAM_TILES
	jp z, .set_vram_tiles
	cp TX_COLOR
	jp z, .set_color
	cp TX_FILL_COLOR
	jp z, .set_text_fill_color
	cp TX_SET_DELAY
	jp z, .set_delay
	cp TX_SPEEDUP_ENABLED
	jp z, .set_speedup_enabled
	cp TX_JUMP
	jp z, .jump
	cp TX_LANGUAGE_BRANCH
	jp z, .lang_branch
	cp TX_EXEC
	jp z, .exec
	cp TX_CONDITION
	jp z, .condition
	cp TX_UNKEF
	jp z, .unk_ef
	cp TX_WAIT
	jp z, .wait
	cp TX_CALL
	jp z, .call
	cp TX_RET
	jp z, .ret

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
	ld bc, CharWidths
	add hl, bc
	ld a, [hl]
	ld hl, w2dd34
	add [hl]
	ld [hl], a
	ld a, [w2dd34] ; unneeded load
	cp TILE_WIDTH + 1
	jr nc, .asm_10c3b6
	ld a, PUSH_1_TEXT_TILE
	ld [wPendingTextGfxOperation], a
	ld a, [w2dd3a + 0]
	ld [wTextTile1DestPtr + 0], a
	ld a, [w2dd3a + 1]
	ld [wTextTile1DestPtr + 1], a
	ld a, [w2dd3c]
	ld [wTextTile1DestBank], a
	jr .asm_10c3df
.asm_10c3b6
	ld a, PUSH_2_TEXT_TILES
	ld [wPendingTextGfxOperation], a
	ld a, [w2dd3a + 0]
	ld [wTextTile1DestPtr + 0], a
	ld a, [w2dd3a + 1]
	ld [wTextTile1DestPtr + 1], a
	ld a, [w2dd3c]
	ld [wTextTile1DestBank], a
	ld a, [w2dd3d + 0]
	ld [wTextTile2DestPtr + 0], a
	ld a, [w2dd3d + 1]
	ld [wTextTile2DestPtr + 1], a
	ld a, [w2dd3f]
	ld [wTextTile2DestBank], a

.asm_10c3df
	; w2dd15 != nullptr?
	ld a, [w2dd15 + 1]
	and a
	jr z, .asm_10c3e8
	; invoke it
	call Func_3597
.asm_10c3e8
	ld a, [wTextDelay]
	ld [wTextDelayTimer + 0], a
	xor a
	ld [wTextDelayTimer + 1], a
	ld a, [wTextSpeedingUp]
	and a
	jr z, .not_speeding_up
	; speeding up, set timer to 1
	ld a, 1
	ld [wTextDelayTimer + 0], a
.not_speeding_up
	jp .asm_10c2a9

; if A button is pressed and [wTextSpeedupEnabled] is TRUE
; then set [wTextSpeedingUp] to TRUE
.UpdateTextSpeedup:
	ldh a, [hJoypadPressed]
	and PAD_A
	ret z ; no A btn
	ld a, [wTextSpeedupEnabled]
	and $1
	ret z ; not enabled
	ld a, TRUE
	ld [wTextSpeedingUp], a
	ret

.end
	xor a ; TXPROC_DONE
	ld [wTextProcessMode], a
	jp .no_carry

.unk_fe
	jp .no_carry

.set_font1
	ld a, FONT1
	ld [wFont], a
	jp .next_char

.set_font2
	ld a, FONT2
	ld [wFont], a
	jp .next_char

.set_font3
	ld a, FONT3
	ld [wFont], a
	jp .next_char

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
	jp .next_char

.clear_text
	call Func_10c20f
	jp .set_carry

.set_vram_tiles
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
	jp .next_char

.set_color
	call GetNextTextByte
	ld [w2dd19], a
	jp .next_char

.set_text_fill_color
	call GetNextTextByte
	ld [wTextFillColor], a
	call Func_10c1a6
	jp .next_char

.set_delay
	call GetNextTextByte
	ld [wTextDelay], a
	jp .next_char

.set_speedup_enabled
	call GetNextTextByte
	ld [wTextSpeedupEnabled], a
	jp .next_char

.jump
	call .Func_10c4af
	jp .next_char

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

.lang_branch
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
	jp .next_char

.exec
	call GetNextTextByte
	ld [w2dd24 + 0], a
	call GetNextTextByte
	ld [w2dd24 + 1], a
	call GetNextTextByte
	ld [w2dd26], a
	call Func_3549
	ld hl, wTextDelayTimer
	ld a, [hli]
	or [hl]
	jp nz, .asm_10c2a9
	jp .next_char

.condition
	call GetNextTextByte
	ld [w2dd24 + 0], a
	call GetNextTextByte
	ld [w2dd24 + 1], a
	call GetNextTextByte
	ld [w2dd26], a
	call Func_3568
	jp nc, .next_char
	ld a, [wTextDataPtr + 0]
	sub LOW($4)
	ld [wTextDataPtr + 0], a
	ld a, [wTextDataPtr + 1]
	sbc HIGH($4)
	ld [wTextDataPtr + 1], a
	ld hl, wTextDelayTimer
	ld a, [hli]
	or [hl]
	jp nz, .asm_10c2a9
	jp .set_carry

.unk_ef
	call GetNextTextByte
	ld [w2dd15 + 0], a
	call GetNextTextByte
	ld [w2dd15 + 1], a
	call GetNextTextByte
	ld [w2dd17], a
	jp .next_char

.wait
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
	ld [wTextDelayTimer + 0], a
	ld a, h
	ld [wTextDelayTimer + 1], a
	jp .set_carry

.call
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
	add LOW($3)
	ld [hli], a
	ld a, [wTextDataPtr + 1]
	adc HIGH($3)
	ld [hli], a
	ld a, [wTextDataBank]
	ld [hli], a
	call .Func_10c4af
	jp .next_char

.ret
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
	jp .next_char

Func_10c5c1:
	ld hl, wTextTile1
	ld bc, TILE_SIZE
	ld de, -TILE_SIZE

	; copy wTextTile2 to wTextTile1
	REPT TILE_SIZE
		add hl, bc
		ld a, [hl]
		add hl, de
		ld [hli], a
	ENDR

	; fill wTextTile2 with color in [wTextFillColor]
	ld a, [wTextFillColor]
	call GetPixelRow
	ld hl, wTextTile2
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
		ld a, [wTextTile1 + (2*n + 0)]
		and b
		ld [wTextTile1 + (2*n + 0)], a
		ld a, [wTextTile1 + (2*n + 1)]
		and b
		ld [wTextTile1 + (2*n + 1)], a
	ENDR

	FOR n, 0, TILE_HEIGHT
		ld a, [w2dd00 + (2*n + 1)]
		cpl
		ld b, a
		ld a, [wTextTile2 + (2*n + 0)]
		and b
		ld [wTextTile2 + (2*n + 0)], a
		ld a, [wTextTile2 + (2*n + 1)]
		and b
		ld [wTextTile2 + (2*n + 1)], a
	ENDR
	ret

.asm_10cbe5
	FOR n, 0, TILE_HEIGHT
		ld a, [w2dd00 + (2*n + 0)]
		ld b, a
		ld a, [wTextTile1 + (2*n + 0)]
		or b
		ld [wTextTile1 + (2*n + 0)], a
	ENDR

	FOR n, 0, TILE_HEIGHT
		ld a, [w2dd00 + (2*n + 0)]
		cpl
		ld b, a
		ld a, [wTextTile1 + (2*n + 1)]
		and b
		ld [wTextTile1 + (2*n + 1)], a
	ENDR

	FOR n, 0, TILE_HEIGHT
		ld a, [w2dd00 + (2*n + 1)]
		ld b, a
		ld a, [wTextTile2 + (2*n + 0)]
		or b
		ld [wTextTile2 + (2*n + 0)], a
	ENDR

	FOR n, 0, TILE_HEIGHT
		ld a, [w2dd00 + (2*n + 1)]
		cpl
		ld b, a
		ld a, [wTextTile2 + (2*n + 1)]
		and b
		ld [wTextTile2 + (2*n + 1)], a
	ENDR

	ret

.asm_10cd56
	FOR n, 0, TILE_HEIGHT
		ld a, [w2dd00 + (2*n + 0)]
		cpl
		ld b, a
		ld a, [wTextTile1 + (2*n + 0)]
		and b
		ld [wTextTile1 + (2*n + 0)], a
	ENDR

	FOR n, 0, TILE_HEIGHT
		ld a, [w2dd00 + (2*n + 0)]
		ld b, a
		ld a, [wTextTile1 + (2*n + 1)]
		or b
		ld [wTextTile1 + (2*n + 1)], a
	ENDR

	FOR n, 0, TILE_HEIGHT
		ld a, [w2dd00 + (2*n + 1)]
		cpl
		ld b, a
		ld a, [wTextTile2 + (2*n + 0)]
		and b
		ld [wTextTile2 + (2*n + 0)], a
	ENDR

	FOR n, 0, TILE_HEIGHT
		ld a, [w2dd00 + (2*n + 1)]
		ld b, a
		ld a, [wTextTile2 + (2*n + 1)]
		or b
		ld [wTextTile2 + (2*n + 1)], a
	ENDR

	ret

.asm_10cec7
	FOR n, 0, TILE_HEIGHT
		ld a, [w2dd00 + (2*n + 0)]
		ld b, a
		ld a, [wTextTile1 + (2*n + 0)]
		or b
		ld [wTextTile1 + (2*n + 0)], a
		ld a, [wTextTile1 + (2*n + 1)]
		or b
		ld [wTextTile1 + (2*n + 1)], a
	ENDR

	FOR n, 0, TILE_HEIGHT
		ld a, [w2dd00 + (2*n + 1)]
		ld b, a
		ld a, [wTextTile2 + (2*n + 0)]
		or b
		ld [wTextTile2 + (2*n + 0)], a
		ld a, [wTextTile2 + (2*n + 1)]
		or b
		ld [wTextTile2 + (2*n + 1)], a
	ENDR

	ret

Func_10cfe8:
	ld a, $0d
	ld [wc7cb], a
	ret

Func_10cfee:
	ldh a, [hJoypadPressed]
	and PAD_A
	jr nz, .asm_10d01c
	ldh a, [hffb7]
	and $1f
	cp $10
	jr c, .asm_10cffe
	scf
	ret
.asm_10cffe
	ldh a, [hVirtualOAMSize]
	cp OAM_SIZE
	jr z, .asm_10d01a
	ld l, a
	ld h, HIGH(wVirtualOAM)
	ld a, [w2dd37]
	ld [hli], a
	ld a, [w2dd36]
	ld [hli], a
	ld a, [w2dd38]
	ld [hli], a
	ld a, [w2dd39]
	ld [hli], a
	ld a, l
	ldh [hVirtualOAMSize], a
.asm_10d01a
	scf
	ret
.asm_10d01c
	and a
	ret
