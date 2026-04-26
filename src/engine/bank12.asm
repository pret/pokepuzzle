SECTION "Bank 12@42f5", ROMX[$42f5], BANK[$12]
Gfx_482f5: INCBIN "gfx/gfx_482f5.2bpp"

SECTION "Bank 12@44f5", ROMX[$44f5], BANK[$12]
StarGfx: INCBIN "gfx/star.2bpp"

SECTION "Bank 12@5182", ROMX[$5182], BANK[$12]

Func_49182:
	push af
	jr Func_491dd
	cp $00
	jr z, .asm_4919e
	cp $01
	jr nz, Func_491dd
	ld a, [$c8ec]
	ldh [rSCY], a
	ld a, $18
	ld [$c343], a
	ld a, $58
	ld [$c344], a
	jr Func_491dd
.asm_4919e
	ld a, [$c8e7]
	ldh [rSCY], a
	jr Func_491dd
	ldh a, [rLY]
	cp $3f
	jr z, .asm_491b5
	cp $6f
	jr nz, Func_491dd
	ldh a, [hSCY]
	ldh [rSCY], a
	jr Func_491dd
.asm_491b5
	ld a, $80
	ldh [rSCY], a
	jr Func_491dd
	ldh a, [rLY]
	cp $68
	jr z, .asm_491cb
	cp $90
	jr nz, Func_491dd
	ldh a, [hSCY]
	ldh [rSCY], a
	jr Func_491dd
.asm_491cb
	ld a, $00
	ldh [rSCY], a
	jr Func_491dd
	ldh a, [rLY]
	cp $57
	jr nz, Func_491dd
	ld a, $10
	ldh [rSCY], a
	jr Func_491dd

Func_491dd:
	ldh a, [rLY]
	cp $08
	jr z, .asm_491e5
	pop af
	reti

.asm_491e5
	push hl
	push bc

	; white out palette 5
	ld hl, NULL ; (address in 0:0000 is filled with $ff)
	ld a, palette 5 | BGPI_AUTOINC
	ldh [rBGPI], a
	ld c, LOW(rBGPD)
	REPT PAL_SIZE - 1
		ld a, [hli]
		ld [$ff00+c], a
	ENDR
	ld a, [hl]
	ld [$ff00+c], a

	ld bc, $c3e0
	ld hl, $c3a0
	ld a, [bc]
	ld [hl], a
	inc bc
	ld hl, $c3a8
	ld a, [bc]
	ld [hli], a
	inc bc
	ld a, [bc]
	ld [hl], a
	inc bc
	ld hl, $c3c1
	ld a, [bc]
	add [hl]
	ld [hli], a
	inc bc
	ld a, [bc]
	adc [hl]
	ld [hl], a
	pop bc
	pop hl
	pop af
	reti
; 0x49220

SECTION "Bank 12@5265", ROMX[$5265], BANK[$12]

Func_49265:
	ld a, [wGameMode]
	cp GAMEMODE_UNKE
	jr nz, .asm_4926d
	ret
.asm_4926d
	ld bc, $9e
	ld hl, Func_49182
	ld de, wHBlankHandler
	call CopyHLtoDE

	ld a, [wGameMode]
	cp GAMEMODE_UNKD
	jr nz, .asm_49282
	debug_loop
.asm_49282
	ld a, [wGameMode]
	add a
	add a ; *4
	ld c, a
	ld b, $00
	ld hl, .Table
	add hl, bc
	ld a, [hli]
	ld b, [hl]
	ld c, a
	inc hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, $c3e0
	call CopyHLtoDE

	ld hl, $c3e0
	ld a, [hli]
	ld [$c3a0], a
	ld a, [hli]
	ld bc, $c3a8
	ld [bc], a
	inc bc
	ld a, [hl]
	ld [bc], a
	ld hl, $c3c1
	ld a, $05
	add [hl]
	ld [hli], a
	inc bc
	ld a, $00
	adc [hl]
	ld [hl], a
	ret

.Table:
	table_width 4
	; length, data
	dw 25, $52f7 ; GAMEMODE_MARATHON
	dw 25, $5310 ; GAMEMODE_TIME_ZONE
	dw 25, $5329 ; GAMEMODE_LINE_CLEAR
	dw 25, $5342 ; GAMEMODE_PUZZLE
	dw 25, $535b ; GAMEMODE_GARBAGE
	dw 25, $5374 ; GAMEMODE_CHALLENGE
	dw 35, $538d ; GAMEMODE_2P_VS
	dw 40, $53b0 ; GAMEMODE_2P_TIME_ZONE
	dw 35, $538d ; GAMEMODE_2P_LINE_CLEAR
	dw  0, NULL  ; GAMEMODE_UNK9
	dw  0, NULL  ; GAMEMODE_UNKA
	dw  0, NULL  ; GAMEMODE_UNKB
	dw  0, NULL  ; GAMEMODE_UNKC
	dw 15, $53d8 ; GAMEMODE_UNKD
	dw 10, $53e7 ; GAMEMODE_UNKE
	dw 25, $53f1 ; GAMEMODE_UNKF
	assert_table_length NUM_GAME_MODES
; 0x492f7

SECTION "Bank 12@5420", ROMX[$5420], BANK[$12]
Gfx_49420:: INCBIN "gfx/gfx_49420.2bpp"
Gfx_496a0: INCBIN "gfx/gfx_496a0.2bpp"
SECTION "Bank 12@5cb0", ROMX[$5cb0], BANK[$12]
Gfx_49cb0: INCBIN "gfx/gfx_49cb0.2bpp"
Gfx_49dd0: INCBIN "gfx/gfx_49dd0.2bpp"

SECTION "Bank 12@5ae8", ROMX[$5ae8], BANK[$12]

PortraitBGMap_49ae8:
	; tiles
	db $80, $81, $82, $83
	db $84, $85, $86, $87
	db $88, $89, $8a, $8b
	db $8c, $8d, $8e, $8f
	; attributes
	db 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1
	db 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1
	db 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1
	db 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1

	; tiles
	db $90, $91, $92, $93
	db $94, $95, $96, $97
	db $98, $99, $9a, $9b
	db $9c, $9d, $9e, $9f
	; attributes
	db 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1
	db 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1
	db 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1
	db 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1

	; tiles
	db $a0, $a1, $a2, $a3
	db $a4, $a5, $a6, $a7
	db $a8, $a9, $aa, $ab
	db $ac, $ad, $ae, $af
	; attributes
	db 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1
	db 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1
	db 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1
	db 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1

	; tiles
	db $b0, $b1, $b2, $b3
	db $b4, $b5, $b6, $b7
	db $b8, $b9, $ba, $bb
	db $bc, $bd, $be, $bf
	; attributes
	db 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1
	db 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1
	db 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1
	db 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1

PortraitBGMap_49b68:
	; tiles
	db $c0, $c1, $c2, $c3
	db $c4, $c5, $c6, $c7
	db $c8, $c9, $ca, $cb
	db $cc, $cd, $ce, $cf
	; attributes
	db 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1
	db 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1
	db 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1
	db 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1

	; tiles
	db $d0, $d1, $d2, $d3
	db $d4, $d5, $d6, $d7
	db $d8, $d9, $da, $db
	db $dc, $dd, $de, $df
	; attributes
	db 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1
	db 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1
	db 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1
	db 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1

	; tiles
	db $e0, $e1, $e2, $e3
	db $e4, $e5, $e6, $e7
	db $e8, $e9, $ea, $eb
	db $ec, $ed, $ee, $ef
	; attributes
	db 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1
	db 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1
	db 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1
	db 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1

	; tiles
	db $f0, $f1, $f2, $f3
	db $f4, $f5, $f6, $f7
	db $f8, $f9, $fa, $fb
	db $fc, $fd, $fe, $ff
	; attributes
	db 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1
	db 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1
	db 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1
	db 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1, 5 | BG_BANK1
; 0x49be8

SECTION "Bank 12@5f10", ROMX[$5f10], BANK[$12]
StageNumbersGfx: INCBIN "gfx/stage_numbers.2bpp"
