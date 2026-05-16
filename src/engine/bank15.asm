SECTION "Bank 15@449d", ROMX[$449d], BANK[$15]

Func_5449d:
	ld a, $01
	ld [wcadf], a
	ld bc, $7d3f
	ld hl, wcae4
	ld [hl], c
	inc hl
	ld [hl], b
	ret

Func_544ac:
	call Func_1ff0
	ret
; 0x544b0

SECTION "Bank 15@45b3", ROMX[$45b3], BANK[$15]

Func_545b3:
	ld hl, wBGPals palette 0
	ld a, BGPI_AUTOINC
	ldh [rBGPI], a
	ld c, LOW(rBGPD)
	REPT 3 palettes
		ld a, [hli]
		ld [$ff00+c], a
	ENDR
	ret
; 0x545ed

SECTION "Bank 15@46b6", ROMX[$46b6], BANK[$15]

Func_546b6:
	xor a
	vramswitch
	ld hl, rVDMA_SRC_HIGH
	ld a, HIGH(w6d300)
	ld [hli], a ; rVDMA_SRC_HIGH
	ld a, LOW(w6d300)
	ld [hli], a ; rVDMA_SRC_LOW
	ld a, HIGH(v0Tiles1 tile $40)
	ld [hli], a ; rVDMA_DEST_HIGH
	xor a ; LOW(v0Tiles1 tile $40)
	ld [hli], a ; rVDMA_DEST_LOW
	ld a, 11 ; 12 tiles
	ld [hl], a ; rVDMA_LEN

	ld hl, rVDMA_SRC_HIGH
	ld a, $d3
	ld [hli], a ; rVDMA_SRC_HIGH
	ld a, $c0
	ld [hli], a ; rVDMA_SRC_LOW
	ld a, $8d
	ld [hli], a ; rVDMA_DEST_HIGH
	xor a
	ld [hli], a ; rVDMA_DEST_LOW
	ld a, 11 ; 12 tiles
	ld [hl], a ; rVDMA_LEN
	ret
; 0x546de
