Func_7c000::
	call Func_1426
	farcall Func_840c0

	call TurnLCDOff

	ld a, $01
	wramswitch
	xor a
	ldh [hSCX], a
	ldh [hSCY], a
	ldh [hWX], a
	ldh [hWY], a
	ld [wce3b], a
	call Func_504

	xor a
	ld [wce35], a
	ld [w1daa3], a
	ld [w1daa2], a
	ld [w1daa4], a
	ld [w1daa5], a
	ld [w1daa6], a
	ld [w1daa7], a

	call Func_7c051
	call Func_2dc3

	ld a, LCDC_BG_ON | LCDC_OBJ_ON | LCDC_ON
	ldh [hLCDC], a
	ldh [rLCDC], a
	xor a
	ldh [rIF], a
	ld a, IE_VBLANK
	ldh [hIE], a
	ldh [rIE], a

	ld hl, wce34
	inc [hl]
	ret

Func_7c051:
	ld b, BANK(v0BGMap0)
	ld de, v0BGMap0
	ld a, $d9
	fill_mem $14, $80c

	ld b, BANK(v1BGMap0)
	ld de, v1BGMap0
	ld a, $05
	fill_mem $14, $80c

	copy_box v0BGMap0, Tilemap_14d1d3, 0, 8, SCREEN_WIDTH, 10
	copy_box v1BGMap0, Attrmap_14d33b, 0, 8, SCREEN_WIDTH, 10

	ld de, v0Tiles1
	ld c, BANK(v0Tiles1)
	ld hl, $4a52
	ld a, $53
	call Func_93d

	copy_data wBGPals, Pals_14d0f3, 8 palettes
	call FlushPalettes
	ret

Func_7c0a7::
	call .Func_7c0b3
	ld a, [w1daa7]
	and a
	ret z
	call .Func_7c15a
	ret

.Func_7c0b3:
	ld a, [w1daa3]
	ld e, a
	ld d, $00
	ld hl, .PtrTable
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.PtrTable:
	dw .Wait40Frames
	dw .Func_7c0d8
	dw .Func_7c10d
	dw .Func_7c117
	dw .Func_7c120

.Wait40Frames:
	ld a, [wce35]
	cp $40
	jr nz, .asm_7c0d7
	ld hl, w1daa3
	inc [hl]
.asm_7c0d7
	ret

.Func_7c0d8:
	safe_copy_data $9905, $00, Tilemap_14d4cb, $a, $16, $a
	safe_copy_data $9905, $01, Attrmap_14d52f, $a, $16, $a
	safe_copy_data $9800, $00, Tilemap_14d133, $14, $c, $8
	safe_copy_data $9800, $01, Attrmap_14d29b, $14, $c, $8

	ld hl, w1daa3
	inc [hl]
	ret

.Func_7c10d:
	ld a, $01
	ld [w1daa7], a
	ld hl, w1daa3
	inc [hl]
	ret

.Func_7c117:
	xor a
	ld [wce35], a
	ld hl, w1daa3
	inc [hl]
	ret

.Func_7c120:
	ld a, [w1daa5]
	and a
	jr z, .asm_7c133
	ld b, $27
	farcall Func_840e1
	ld a, b
	and a
	ret nz
	jr .asm_7c139
.asm_7c133
	ld a, [wce35]
	cp $80
	ret nz
.asm_7c139
	farcall Func_6af04
	ld a, b
	and a
	jr z, .asm_7c154
	cp $02
	jr nz, .asm_7c154
	ld a, $1e
	ld [wce34], a
	ld a, GAMESTATE_1A
	ldh [hGameState], a
	xor a
	ldh [hVBlankTrampolinePtr + 1], a
	ret
.asm_7c154
	ld a, $34
	ld [wce34], a
	ret

.Func_7c15a:
	ld a, [w1daa6]
	and a
	jr nz, .asm_7c16c
	call Func_7c17b
	ld a, [w1daa6]
	and a
	ret nz
	call Func_7c18a
	ret
.asm_7c16c
	ld a, [w1daa6]
	cp $01
	jr nz, .asm_7c177
	call Func_7c17b
	ret
.asm_7c177
	call Func_7c18a
	ret

Func_7c17b:
	ld a, [w1daa4]
	ld e, a
	ld d, $00
	ld hl, $4199
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

Func_7c18a:
	ld a, [w1daa4]
	ld e, a
	ld d, $00
	ld hl, $41a1
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl
; 0x7c199
