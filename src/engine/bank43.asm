Func_10c000::
	ld b, BANK(NULL)
	ld de, NULL
	farcall Func_10c011 ; unnecessary farcall
	ld a, $01
	ld [wcf0b], a
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
	ld a, e
	ld [w2dd1f + 0], a
	ld a, d
	ld [w2dd1f + 1], a
	ld a, b
	ld [w2dd21], a
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
; 0x10c153

SECTION "Bank 43@4169", ROMX[$4169], BANK[$43]

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

; fills wc300 and wc310 with color given by [w2dd1a]
Func_10c1a6:
	ld a, [w2dd1a]
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
	sub $01
	ld [hli], a
	ld a, [hl]
	sbc $00
	ld [hld], a
	ret

.asm_10c2a2
	ld hl, w2dd22
	ld a, [hli]
	or [hl]
	jr z, .asm_10c2b2
.asm_10c2a9
	call .Func_10c296
	call .Func_10c400
	jp .set_carry

.asm_10c2b2
	call Func_33f5
	cp $ff
	jp z, .asm_10c411
	cp $fe
	jp z, .asm_10c418
	cp $fd
	jp z, .asm_10c41b
	cp $fc
	jp z, .asm_10c423
	cp $fb
	jp z, .asm_10c42b
	cp $fa
	jp z, .asm_10c433
	cp $f9
	jp z, .asm_10c452
	cp $f8
	jp z, .asm_10c458
	cp $f7
	jp z, .asm_10c482
	cp $f6
	jp z, .asm_10c48b
	cp $f5
	jp z, .asm_10c497
	cp $f4
	jp z, .asm_10c4a0
	cp $f3
	jp z, .asm_10c4a9
	cp $f2
	jp z, .asm_10c4cc
	cp $f1
	jp z, .asm_10c4e8
	cp $f0
	jp z, .asm_10c508
	cp $ef
	jp z, .asm_10c53b
	cp $ee
	jp z, .asm_10c550
	cp $ed
	jp z, .asm_10c56b
	cp $ec
	jp z, .asm_10c59a

	ld [w2dd31], a
	ld l, a
	ld a, [w2dd18]
	ld h, a
	add hl, hl
	add hl, hl
	add hl, hl ; *8
	ld bc, Data_10d31e
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

	ld a, [w2dd31]
	ld l, a
	ld a, [w2dd18]
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

.asm_10c411
	xor a
	ld [w2dd10], a
	jp .no_carry

.asm_10c418
	jp .no_carry

.asm_10c41b
	ld a, $00
	ld [w2dd18], a
	jp .asm_10c2b2

.asm_10c423
	ld a, $01
	ld [w2dd18], a
	jp .asm_10c2b2

.asm_10c42b
	ld a, $02
	ld [w2dd18], a
	jp .asm_10c2b2

.asm_10c433
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
	jp .asm_10c2b2

.asm_10c452
	call Func_10c20f
	jp .set_carry

.asm_10c458
	call Func_33f5
	ld [w2dd12 + 0], a
	call Func_33f5
	ld [w2dd12 + 1], a
	call Func_33f5
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
	jp .asm_10c2b2

.asm_10c482
	call Func_33f5
	ld [w2dd19], a
	jp .asm_10c2b2

.asm_10c48b
	call Func_33f5
	ld [w2dd1a], a
	call Func_10c1a6
	jp .asm_10c2b2

.asm_10c497
	call Func_33f5
	ld [w2dd1b], a
	jp .asm_10c2b2

.asm_10c4a0
	call Func_33f5
	ld [w2dd11], a
	jp .asm_10c2b2

.asm_10c4a9
	call .Func_10c4af
	jp .asm_10c2b2

.Func_10c4af:
	call Func_33f5
	push af
	call Func_33f5
	push af
	call Func_33f5
	ld b, a
	pop af
	ld d, a
	pop af
	ld e, a
	ld a, e
	ld [w2dd1f + 0], a
	ld a, d
	ld [w2dd1f + 1], a
	ld a, b
	ld [w2dd21], a
	ret

.asm_10c4cc
	ld a, [wcf0b]
	ld b, a
	add a
	add b ; *3
	ld b, a
	ld a, [w2dd1f + 0]
	add b
	ld [w2dd1f + 0], a
	ld a, [w2dd1f + 1]
	adc $00
	ld [w2dd1f + 1], a
	call .Func_10c4af
	jp .asm_10c2b2

.asm_10c4e8
	call Func_33f5
	ld [w2dd24 + 0], a
	call Func_33f5
	ld [w2dd24 + 1], a
	call Func_33f5
	ld [w2dd26], a
	call Func_3549
	ld hl, w2dd22
	ld a, [hli]
	or [hl]
	jp nz, .asm_10c2a9
	jp .asm_10c2b2

.asm_10c508
	call Func_33f5
	ld [w2dd24 + 0], a
	call Func_33f5
	ld [w2dd24 + 1], a
	call Func_33f5
	ld [w2dd26], a
	call Func_3568
	jp nc, .asm_10c2b2
	ld a, [w2dd1f + 0]
	sub $04
	ld [w2dd1f + 0], a
	ld a, [w2dd1f + 1]
	sbc $00
	ld [w2dd1f + 1], a
	ld hl, w2dd22
	ld a, [hli]
	or [hl]
	jp nz, .asm_10c2a9
	jp .set_carry

.asm_10c53b
	call Func_33f5
	ld [w2dd15 + 0], a
	call Func_33f5
	ld [w2dd15 + 1], a
	call Func_33f5
	ld [w2dd17], a
	jp .asm_10c2b2

.asm_10c550
	call Func_33f5
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
	ld a, [w2dd1f + 0]
	add $03
	ld [hli], a
	ld a, [w2dd1f + 1]
	adc $00
	ld [hli], a
	ld a, [w2dd21]
	ld [hli], a
	call .Func_10c4af
	jp .asm_10c2b2

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
	ld [w2dd1f + 0], a
	ld a, [hli]
	ld [w2dd1f + 1], a
	ld a, [hli]
	ld [w2dd21], a
	jp .asm_10c2b2

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

	; fill wc310 with color in [w2dd1a]
	ld a, [w2dd1a]
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

Data_10d31e:
	db $00, $00, $18, $2c, $66, $34, $18, $00 ; $000
	db $00, $00, $18, $38, $18, $18, $3c, $00 ; $001
	db $00, $00, $3c, $66, $1c, $30, $7e, $00 ; $002
	db $00, $00, $7c, $06, $3c, $06, $7c, $00 ; $003
	db $00, $00, $0c, $1c, $2c, $7e, $0c, $00 ; $004
	db $00, $00, $7c, $60, $7c, $06, $7c, $00 ; $005
	db $00, $00, $1c, $30, $7c, $66, $3c, $00 ; $006
	db $00, $00, $7e, $66, $0c, $18, $18, $00 ; $007
	db $00, $00, $3c, $66, $3c, $66, $3c, $00 ; $008
	db $00, $00, $3c, $66, $3e, $0c, $38, $00 ; $009
	db $00, $00, $3c, $66, $66, $7e, $66, $00 ; $00a
	db $00, $00, $7c, $66, $7c, $66, $7c, $00 ; $00b
	db $00, $00, $3c, $66, $60, $66, $3c, $00 ; $00c
	db $00, $00, $7c, $66, $66, $66, $7c, $00 ; $00d
	db $00, $00, $3e, $60, $7c, $60, $3e, $00 ; $00e
	db $00, $00, $3e, $60, $7c, $60, $60, $00 ; $00f
	db $00, $00, $3e, $60, $6e, $66, $3e, $00 ; $010
	db $00, $00, $66, $66, $7e, $66, $66, $00 ; $011
	db $00, $00, $3c, $18, $18, $18, $3c, $00 ; $012
	db $00, $00, $3e, $0c, $0c, $6c, $38, $00 ; $013
	db $00, $00, $66, $6c, $78, $6c, $66, $00 ; $014
	db $00, $00, $60, $60, $60, $60, $3e, $00 ; $015
	db $00, $00, $42, $66, $7e, $7e, $66, $00 ; $016
	db $00, $00, $66, $76, $7e, $5e, $4e, $00 ; $017
	db $00, $00, $3c, $66, $66, $66, $3c, $00 ; $018
	db $00, $00, $7c, $66, $7c, $60, $60, $00 ; $019
	db $00, $00, $3c, $66, $76, $6c, $3a, $00 ; $01a
	db $00, $00, $7c, $66, $7c, $6c, $66, $00 ; $01b
	db $00, $00, $3e, $70, $3c, $0e, $7c, $00 ; $01c
	db $00, $00, $7e, $18, $18, $18, $18, $00 ; $01d
	db $00, $00, $66, $66, $66, $66, $3c, $00 ; $01e
	db $00, $00, $66, $66, $3c, $3c, $18, $00 ; $01f
	db $00, $00, $66, $66, $7e, $3c, $24, $00 ; $020
	db $00, $00, $66, $3c, $18, $3c, $66, $00 ; $021
	db $00, $00, $66, $66, $3c, $18, $18, $00 ; $022
	db $00, $00, $7e, $0c, $18, $30, $7e, $00 ; $023
	db $00, $00, $00, $00, $30, $30, $10, $00 ; $024
	db $00, $00, $00, $00, $00, $18, $18, $00 ; $025
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $026
	db $00, $10, $28, $28, $10, $2a, $44, $3a ; $027
	db $00, $18, $18, $18, $18, $00, $18, $18 ; $028
	db $00, $7c, $c6, $1e, $18, $00, $18, $18 ; $029
	db $00, $1c, $10, $10, $10, $10, $10, $00 ; $02a
	db $00, $08, $08, $08, $08, $08, $38, $00 ; $02b
	db $00, $18, $30, $30, $30, $30, $30, $18 ; $02c
	db $00, $30, $18, $18, $18, $18, $18, $30 ; $02d
	db $00, $00, $6c, $fe, $fe, $7c, $38, $10 ; $02e
	db $00, $10, $38, $7c, $fe, $7c, $10, $7c ; $02f
	db $00, $00, $20, $78, $28, $78, $b4, $68 ; $030
	db $00, $20, $3c, $e0, $3c, $6a, $92, $64 ; $031
	db $00, $00, $00, $48, $44, $84, $90, $60 ; $032
	db $00, $00, $24, $42, $42, $82, $90, $60 ; $033
	db $00, $00, $30, $00, $18, $64, $04, $38 ; $034
	db $00, $38, $00, $1c, $62, $02, $04, $38 ; $035
	db $00, $00, $00, $10, $7c, $08, $30, $4c ; $036
	db $00, $38, $00, $38, $c4, $18, $70, $8e ; $037
	db $00, $00, $20, $74, $20, $78, $a4, $68 ; $038
	db $00, $20, $74, $22, $7c, $a2, $a2, $64 ; $039
	db $00, $24, $f2, $4a, $4a, $88, $88, $30 ; $03a
	db $00, $2a, $fa, $4c, $4a, $8a, $88, $30 ; $03b
	db $00, $2c, $70, $1c, $70, $08, $80, $78 ; $03c
	db $00, $4a, $ea, $20, $fc, $10, $80, $78 ; $03d
	db $00, $08, $10, $20, $40, $20, $10, $08 ; $03e
	db $00, $1a, $2a, $40, $80, $40, $20, $10 ; $03f
	db $00, $10, $8e, $b8, $84, $84, $84, $48 ; $040
	db $00, $0a, $8a, $bc, $84, $84, $84, $48 ; $041
	db $00, $00, $38, $44, $08, $20, $42, $3c ; $042
	db $00, $0a, $7a, $88, $10, $40, $84, $78 ; $043
	db $00, $10, $7c, $08, $38, $44, $40, $3c ; $044
	db $00, $2a, $fa, $10, $70, $88, $80, $78 ; $045
	db $00, $10, $20, $20, $40, $44, $44, $38 ; $046
	db $00, $10, $20, $2a, $4a, $40, $44, $38 ; $047
	db $00, $08, $0e, $f8, $24, $1c, $04, $18 ; $048
	db $00, $2a, $1a, $f0, $48, $38, $08, $30 ; $049
	db $00, $08, $44, $5e, $e4, $48, $42, $3c ; $04a
	db $00, $0a, $4a, $5c, $e8, $40, $42, $3c ; $04b
	db $00, $44, $44, $2e, $f0, $20, $42, $3c ; $04c
	db $00, $4a, $4a, $2c, $f0, $20, $42, $3c ; $04d
	db $00, $20, $f8, $20, $5e, $40, $92, $8c ; $04e
	db $00, $4a, $ea, $40, $5e, $80, $92, $8c ; $04f
	db $00, $20, $7c, $20, $5c, $62, $02, $3c ; $050
	db $00, $2a, $7a, $20, $5c, $62, $02, $3c ; $051
	db $00, $00, $00, $00, $18, $64, $04, $18 ; $052
	db $00, $00, $1c, $62, $02, $02, $04, $18 ; $053
	db $00, $0a, $1a, $64, $02, $02, $04, $38 ; $054
	db $00, $00, $06, $f8, $10, $20, $20, $1c ; $055
	db $00, $0a, $0a, $f8, $10, $20, $20, $1c ; $056
	db $00, $40, $2c, $30, $20, $40, $42, $3c ; $057
	db $00, $4a, $4a, $2c, $30, $40, $42, $3c ; $058
	db $00, $44, $f2, $40, $84, $9c, $26, $18 ; $059
	db $00, $00, $8c, $92, $80, $80, $92, $4c ; $05a
	db $00, $08, $48, $7c, $d2, $b6, $aa, $4c ; $05b
	db $00, $00, $4c, $d2, $62, $46, $ca, $44 ; $05c
	db $00, $00, $38, $54, $92, $a2, $a2, $44 ; $05d
	db $00, $10, $8e, $b8, $84, $9c, $a6, $58 ; $05e
	db $00, $0a, $8a, $bc, $84, $9c, $a6, $58 ; $05f
	db $00, $0e, $8a, $be, $84, $9c, $a6, $58 ; $060
	db $00, $20, $e4, $46, $84, $84, $48, $30 ; $061
	db $00, $2a, $ea, $40, $86, $84, $48, $30 ; $062
	db $00, $2e, $ea, $4c, $86, $84, $48, $30 ; $063
	db $00, $70, $08, $10, $4a, $8a, $8a, $30 ; $064
	db $00, $6a, $1a, $20, $12, $8a, $8a, $30 ; $065
	db $00, $6e, $1a, $2e, $90, $8a, $8a, $30 ; $066
	db $00, $30, $48, $48, $84, $04, $02, $02 ; $067
	db $00, $2a, $5a, $48, $84, $04, $02, $02 ; $068
	db $00, $2e, $5a, $4e, $84, $04, $02, $02 ; $069
	db $00, $bc, $88, $9e, $84, $9c, $a6, $58 ; $06a
	db $0a, $ba, $88, $9e, $84, $9c, $a6, $58 ; $06b
	db $0e, $ba, $8c, $9e, $84, $9c, $a6, $58 ; $06c
	db $00, $7c, $08, $7c, $08, $78, $8c, $70 ; $06d
	db $00, $70, $10, $14, $74, $9e, $a4, $48 ; $06e
	db $00, $20, $f8, $62, $a0, $a0, $62, $1c ; $06f
	db $00, $08, $48, $7c, $4a, $aa, $92, $64 ; $070
	db $00, $10, $78, $20, $f8, $42, $44, $38 ; $071
	db $00, $00, $00, $50, $58, $e4, $48, $40 ; $072
	db $00, $48, $4c, $32, $e2, $24, $10, $10 ; $073
	db $00, $00, $00, $08, $5c, $6a, $4c, $10 ; $074
	db $00, $20, $bc, $d2, $8a, $8a, $1c, $20 ; $075
	db $00, $00, $00, $10, $0c, $38, $4c, $30 ; $076
	db $00, $20, $1c, $10, $08, $78, $8e, $70 ; $077
	db $00, $18, $24, $20, $5c, $62, $02, $1c ; $078
	db $00, $48, $54, $54, $24, $04, $08, $30 ; $079
	db $00, $70, $08, $1c, $62, $1a, $26, $1c ; $07a
	db $00, $40, $e8, $54, $64, $48, $c8, $46 ; $07b
	db $00, $70, $08, $1c, $22, $02, $22, $1c ; $07c
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $07d
	db $00, $40, $e8, $54, $62, $42, $c4, $48 ; $07e
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $07f
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $080
	db $00, $20, $f8, $40, $ec, $30, $44, $38 ; $081
	db $00, $10, $20, $20, $40, $72, $92, $8c ; $082
	db $00, $00, $00, $78, $04, $18, $10, $20 ; $083
	db $00, $fc, $02, $14, $18, $10, $10, $60 ; $084
	db $00, $00, $00, $04, $08, $70, $10, $10 ; $085
	db $00, $02, $04, $18, $e8, $08, $08, $08 ; $086
	db $00, $00, $00, $00, $10, $7c, $44, $18 ; $087
	db $00, $10, $1c, $e2, $82, $82, $04, $38 ; $088
	db $00, $00, $00, $00, $38, $10, $10, $7c ; $089
	db $00, $00, $1c, $70, $10, $10, $3c, $c2 ; $08a
	db $00, $00, $00, $08, $7c, $18, $28, $48 ; $08b
	db $00, $08, $3e, $d8, $28, $48, $88, $30 ; $08c
	db $00, $20, $3c, $e2, $22, $42, $42, $84 ; $08d
	db $00, $2a, $3a, $e4, $24, $44, $44, $88 ; $08e
	db $00, $2c, $f0, $10, $1e, $f8, $08, $08 ; $08f
	db $00, $2a, $fa, $10, $1e, $78, $08, $08 ; $090
	db $00, $58, $64, $44, $84, $04, $08, $30 ; $091
	db $00, $0a, $5a, $64, $84, $04, $08, $30 ; $092
	db $00, $40, $4e, $78, $84, $04, $08, $30 ; $093
	db $00, $4a, $4a, $7e, $88, $04, $08, $30 ; $094
	db $00, $00, $7c, $02, $02, $02, $02, $7c ; $095
	db $00, $0a, $fa, $04, $04, $04, $04, $f8 ; $096
	db $00, $48, $5e, $e4, $44, $24, $08, $30 ; $097
	db $00, $4a, $5a, $e4, $44, $24, $08, $30 ; $098
	db $00, $c0, $30, $c0, $32, $04, $18, $60 ; $099
	db $00, $0a, $ca, $20, $c0, $24, $18, $e0 ; $09a
	db $00, $38, $c4, $04, $08, $08, $14, $62 ; $09b
	db $00, $0a, $3a, $c4, $04, $08, $14, $62 ; $09c
	db $00, $40, $5c, $e2, $44, $48, $42, $3c ; $09d
	db $00, $4a, $5a, $e4, $44, $48, $42, $3c ; $09e
	db $00, $00, $82, $42, $44, $04, $08, $10 ; $09f
	db $00, $0a, $8a, $44, $44, $08, $08, $10 ; $0a0
	db $00, $58, $64, $c4, $34, $0c, $08, $70 ; $0a1
	db $00, $0a, $5a, $64, $e4, $1c, $08, $70 ; $0a2
	db $00, $06, $38, $08, $7e, $04, $08, $70 ; $0a3
	db $00, $0a, $7a, $10, $fe, $08, $10, $60 ; $0a4
	db $00, $00, $00, $00, $54, $54, $08, $30 ; $0a5
	db $00, $00, $a2, $92, $54, $04, $08, $10 ; $0a6
	db $00, $0a, $aa, $a4, $a4, $08, $08, $10 ; $0a7
	db $00, $1c, $60, $0e, $f8, $08, $08, $30 ; $0a8
	db $00, $0a, $7a, $00, $fe, $08, $08, $30 ; $0a9
	db $00, $40, $40, $20, $38, $26, $20, $40 ; $0aa
	db $00, $4a, $4a, $20, $38, $26, $20, $40 ; $0ab
	db $00, $10, $1e, $e8, $04, $04, $08, $30 ; $0ac
	db $00, $00, $1c, $60, $00, $00, $1e, $e0 ; $0ad
	db $00, $1c, $62, $02, $12, $0c, $0c, $72 ; $0ae
	db $00, $10, $38, $c4, $04, $18, $f6, $10 ; $0af
	db $00, $04, $04, $04, $08, $08, $10, $20 ; $0b0
	db $00, $08, $44, $44, $42, $82, $82, $82 ; $0b1
	db $00, $0a, $0a, $44, $44, $82, $82, $82 ; $0b2
	db $00, $0e, $0a, $4e, $44, $82, $82, $82 ; $0b3
	db $00, $80, $8c, $f0, $80, $80, $82, $7c ; $0b4
	db $00, $8a, $8a, $f0, $80, $80, $82, $7c ; $0b5
	db $00, $8e, $8a, $fe, $80, $80, $82, $7c ; $0b6
	db $00, $00, $fc, $02, $02, $04, $08, $70 ; $0b7
	db $00, $0a, $fa, $04, $04, $08, $10, $60 ; $0b8
	db $00, $0e, $fa, $0e, $04, $08, $10, $60 ; $0b9
	db $00, $00, $30, $48, $48, $84, $04, $02 ; $0ba
	db $00, $0a, $3a, $48, $48, $84, $04, $02 ; $0bb
	db $00, $0e, $3a, $4e, $48, $84, $04, $02 ; $0bc
	db $00, $10, $fe, $10, $54, $52, $92, $92 ; $0bd
	db $00, $2a, $fa, $20, $14, $52, $92, $92 ; $0be
	db $00, $2e, $fa, $2e, $50, $54, $92, $92 ; $0bf
	db $00, $fc, $02, $02, $44, $38, $10, $10 ; $0c0
	db $00, $70, $0c, $60, $18, $04, $60, $1c ; $0c1
	db $00, $10, $20, $28, $48, $44, $9e, $e2 ; $0c2
	db $00, $04, $04, $64, $18, $08, $14, $e2 ; $0c3
	db $00, $7c, $20, $2e, $f0, $20, $22, $1c ; $0c4
	db $00, $00, $00, $20, $3c, $62, $14, $10 ; $0c5
	db $00, $40, $5c, $e2, $22, $24, $10, $10 ; $0c6
	db $00, $00, $00, $00, $10, $68, $08, $7c ; $0c7
	db $00, $00, $30, $c8, $08, $08, $08, $fe ; $0c8
	db $00, $00, $00, $70, $08, $78, $08, $70 ; $0c9
	db $00, $7c, $02, $02, $7e, $02, $02, $7c ; $0ca
	db $00, $7c, $00, $fc, $02, $02, $04, $38 ; $0cb
	db $00, $48, $44, $44, $44, $04, $08, $30 ; $0cc
	db $00, $10, $50, $50, $52, $52, $54, $98 ; $0cd
	db $00, $40, $40, $42, $42, $44, $48, $70 ; $0ce
	db $00, $3c, $42, $42, $42, $42, $42, $3c ; $0cf
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0d0
	db $00, $1c, $e2, $82, $82, $04, $08, $30 ; $0d1
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0d2
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0d3
	db $00, $1c, $e2, $02, $7e, $04, $08, $70 ; $0d4
	db $00, $c0, $30, $00, $02, $04, $18, $e0 ; $0d5
	db $00, $2a, $2a, $f8, $84, $04, $08, $30 ; $0d6
	db $00, $00, $00, $0e, $70, $00, $00, $00 ; $0d7
	db $00, $00, $00, $60, $92, $0c, $00, $00 ; $0d8
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0d9
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0da
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0db
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0dc
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0dd
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0de
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0df
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0e0
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0e1
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0e2
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0e3
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0e4
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0e5
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0e6
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0e7
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0e8
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0e9
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0ea
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0eb
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0ec
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0ed
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0ee
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0ef
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0f0
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0f1
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0f2
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0f3
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0f4
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0f5
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0f6
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0f7
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0f8
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0f9
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0fa
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0fb
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0fc
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0fd
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0fe
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $0ff
	db $00, $7c, $c6, $c6, $c6, $c6, $7c, $00 ; $100
	db $00, $18, $38, $18, $18, $18, $3c, $00 ; $101
	db $00, $7c, $c6, $0e, $78, $e0, $fe, $00 ; $102
	db $00, $7e, $06, $1c, $06, $c6, $7c, $00 ; $103
	db $00, $1c, $3c, $6c, $cc, $fe, $0c, $00 ; $104
	db $00, $fc, $c0, $fc, $06, $c6, $7c, $00 ; $105
	db $00, $7c, $c0, $fc, $c6, $c6, $7c, $00 ; $106
	db $00, $fe, $c6, $0c, $18, $30, $30, $00 ; $107
	db $00, $7c, $c6, $7c, $c6, $c6, $7c, $00 ; $108
	db $00, $7c, $c6, $c6, $7e, $06, $7c, $00 ; $109
	db $00, $00, $10, $10, $7c, $10, $10, $00 ; $10a
	db $00, $00, $00, $00, $7e, $00, $00, $00 ; $10b
	db $00, $00, $44, $28, $10, $28, $44, $00 ; $10c
	db $00, $02, $04, $08, $10, $20, $40, $80 ; $10d
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $10e
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $10f
	db $10, $28, $28, $44, $7c, $82, $82, $00 ; $110
	db $f8, $84, $84, $fc, $82, $82, $fc, $00 ; $111
	db $3c, $42, $80, $80, $80, $42, $3c, $00 ; $112
	db $f8, $84, $82, $82, $82, $84, $f8, $00 ; $113
	db $fe, $80, $80, $fc, $80, $80, $fe, $00 ; $114
	db $fe, $80, $80, $fc, $80, $80, $80, $00 ; $115
	db $3c, $42, $80, $9e, $82, $42, $3e, $00 ; $116
	db $82, $82, $82, $fe, $82, $82, $82, $00 ; $117
	db $7c, $10, $10, $10, $10, $10, $7c, $00 ; $118
	db $7e, $08, $08, $08, $88, $88, $70, $00 ; $119
	db $84, $88, $90, $b0, $c8, $84, $82, $00 ; $11a
	db $80, $80, $80, $80, $80, $80, $fe, $00 ; $11b
	db $82, $c6, $aa, $92, $82, $82, $82, $00 ; $11c
	db $82, $c2, $a2, $92, $8a, $86, $82, $00 ; $11d
	db $38, $44, $82, $82, $82, $44, $38, $00 ; $11e
	db $fc, $82, $82, $fc, $80, $80, $80, $00 ; $11f
	db $38, $44, $82, $82, $8a, $44, $3a, $00 ; $120
	db $f8, $84, $84, $f8, $88, $84, $84, $00 ; $121
	db $78, $84, $80, $7c, $02, $82, $7c, $00 ; $122
	db $fe, $10, $10, $10, $10, $10, $10, $00 ; $123
	db $82, $82, $82, $82, $82, $44, $38, $00 ; $124
	db $82, $82, $44, $44, $28, $28, $10, $00 ; $125
	db $82, $82, $92, $aa, $aa, $c6, $44, $00 ; $126
	db $c6, $44, $28, $10, $28, $44, $c6, $00 ; $127
	db $82, $44, $28, $10, $10, $10, $10, $00 ; $128
	db $fe, $04, $08, $10, $20, $40, $fe, $00 ; $129
	db $06, $08, $10, $10, $10, $08, $06, $00 ; $12a
	db $c0, $20, $10, $10, $10, $20, $c0, $00 ; $12b
	db $00, $18, $18, $00, $00, $18, $18, $00 ; $12c
	db $00, $18, $18, $00, $18, $18, $08, $10 ; $12d
	db $0e, $08, $08, $08, $08, $08, $0e, $00 ; $12e
	db $e0, $20, $20, $20, $20, $20, $e0, $00 ; $12f
	db $00, $00, $38, $04, $3c, $44, $3e, $00 ; $130
	db $40, $40, $40, $7c, $42, $42, $7c, $00 ; $131
	db $00, $00, $3c, $42, $40, $42, $3c, $00 ; $132
	db $02, $02, $02, $3e, $42, $42, $3e, $00 ; $133
	db $00, $00, $3c, $42, $7e, $40, $3e, $00 ; $134
	db $0c, $12, $10, $7e, $10, $10, $10, $00 ; $135
	db $00, $00, $3e, $42, $42, $3e, $02, $7c ; $136
	db $40, $40, $40, $78, $44, $44, $44, $00 ; $137
	db $00, $10, $00, $10, $10, $10, $10, $00 ; $138
	db $00, $08, $00, $08, $08, $08, $08, $30 ; $139
	db $40, $40, $44, $48, $70, $48, $46, $00 ; $13a
	db $10, $10, $10, $10, $10, $10, $10, $00 ; $13b
	db $00, $00, $ec, $92, $92, $92, $92, $00 ; $13c
	db $00, $00, $78, $44, $44, $44, $44, $00 ; $13d
	db $00, $00, $3c, $42, $42, $42, $3c, $00 ; $13e
	db $00, $00, $7c, $42, $42, $7c, $40, $40 ; $13f
	db $00, $00, $3e, $42, $42, $3e, $02, $02 ; $140
	db $00, $00, $2e, $30, $20, $20, $20, $00 ; $141
	db $00, $00, $3c, $40, $3c, $02, $7c, $00 ; $142
	db $00, $10, $3c, $10, $10, $10, $0c, $00 ; $143
	db $00, $00, $44, $44, $44, $44, $3c, $00 ; $144
	db $00, $00, $44, $44, $44, $28, $10, $00 ; $145
	db $00, $00, $82, $92, $92, $aa, $44, $00 ; $146
	db $00, $00, $c4, $28, $10, $28, $46, $00 ; $147
	db $00, $00, $44, $44, $44, $3c, $04, $38 ; $148
	db $00, $00, $7e, $04, $18, $20, $7e, $00 ; $149
	db $18, $18, $08, $10, $00, $00, $00, $00 ; $14a
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $14b
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $14c
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $14d
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $14e
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $14f
	db $e0, $90, $e0, $8a, $8a, $0c, $0a, $0a ; $150
	db $88, $d8, $a8, $88, $92, $1a, $16, $12 ; $151
	db $e0, $90, $e0, $8c, $92, $12, $12, $0c ; $152
	db $a0, $a2, $cc, $a0, $ac, $1e, $10, $0c ; $153
	db $18, $18, $00, $18, $73, $e7, $7e, $00 ; $154
	db $18, $00, $18, $18, $3c, $3c, $18, $00 ; $155
	db $7e, $e7, $ce, $18, $00, $18, $18, $00 ; $156
	db $18, $3c, $3c, $18, $18, $00, $18, $00 ; $157
	db $00, $00, $00, $00, $00, $30, $30, $00 ; $158
	db $30, $68, $68, $32, $5a, $cc, $7a, $00 ; $159
	db $60, $50, $48, $44, $48, $50, $60, $00 ; $15a
	db $60, $70, $78, $7c, $78, $70, $60, $00 ; $15b
	db $00, $fe, $fe, $7c, $38, $10, $00, $00 ; $15c
	db $10, $38, $54, $92, $38, $44, $44, $38 ; $15d
	db $38, $44, $44, $38, $10, $7c, $10, $10 ; $15e
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $15f
	db $3c, $24, $3c, $20, $70, $20, $70, $20 ; $160
	db $00, $00, $00, $00, $00, $30, $30, $00 ; $161
	db $00, $00, $00, $00, $60, $60, $20, $40 ; $162
	db $12, $24, $36, $36, $00, $00, $00, $00 ; $163
	db $6c, $6c, $24, $48, $00, $00, $00, $00 ; $164
	db $00, $00, $00, $18, $18, $00, $00, $00 ; $165
	db $00, $00, $00, $00, $92, $00, $00, $00 ; $166
	db $00, $00, $30, $48, $48, $30, $00, $00 ; $167
	db $02, $04, $08, $10, $08, $04, $02, $00 ; $168
	db $80, $40, $20, $10, $20, $40, $80, $00 ; $169
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $16a
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $16b
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $16c
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $16d
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $16e
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $16f
	db $28, $00, $10, $28, $44, $fe, $82, $00 ; $170
	db $10, $08, $10, $28, $44, $fe, $82, $00 ; $171
	db $10, $20, $10, $28, $44, $fe, $82, $00 ; $172
	db $08, $04, $7f, $40, $7e, $40, $7f, $00 ; $173
	db $08, $10, $7f, $40, $7e, $40, $7f, $00 ; $174
	db $08, $04, $3e, $08, $08, $08, $3e, $00 ; $175
	db $08, $10, $3e, $08, $08, $08, $3e, $00 ; $176
	db $28, $00, $7c, $82, $82, $82, $7c, $00 ; $177
	db $10, $08, $7c, $82, $82, $82, $7c, $00 ; $178
	db $10, $20, $7c, $82, $82, $82, $7c, $00 ; $179
	db $28, $00, $82, $82, $82, $82, $7c, $00 ; $17a
	db $08, $04, $41, $41, $41, $41, $3e, $00 ; $17b
	db $08, $10, $41, $41, $41, $41, $3e, $00 ; $17c
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $17d
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $17e
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $17f
	db $28, $00, $38, $04, $3c, $44, $3e, $00 ; $180
	db $20, $10, $38, $04, $3c, $44, $3e, $00 ; $181
	db $08, $10, $38, $04, $3c, $44, $3e, $00 ; $182
	db $10, $28, $38, $04, $3c, $44, $3e, $00 ; $183
	db $28, $00, $3c, $42, $7e, $40, $3e, $00 ; $184
	db $10, $08, $3c, $42, $7e, $40, $3e, $00 ; $185
	db $10, $20, $3c, $42, $7e, $40, $3e, $00 ; $186
	db $10, $28, $3c, $42, $7e, $40, $3e, $00 ; $187
	db $00, $28, $00, $10, $10, $10, $10, $00 ; $188
	db $20, $10, $00, $10, $10, $10, $10, $00 ; $189
	db $08, $10, $00, $10, $10, $10, $10, $00 ; $18a
	db $10, $28, $00, $10, $10, $10, $10, $00 ; $18b
	db $28, $00, $3c, $42, $42, $42, $3c, $00 ; $18c
	db $20, $10, $3c, $42, $42, $42, $3c, $00 ; $18d
	db $08, $10, $3c, $42, $42, $42, $3c, $00 ; $18e
	db $10, $28, $3c, $42, $42, $42, $3c, $00 ; $18f
	db $28, $00, $44, $44, $44, $44, $3c, $00 ; $190
	db $20, $10, $44, $44, $44, $44, $3c, $00 ; $191
	db $08, $10, $44, $44, $44, $44, $3c, $00 ; $192
	db $10, $28, $44, $44, $44, $44, $3c, $00 ; $193
	db $03, $01, $7a, $84, $80, $84, $78, $00 ; $194
	db $62, $22, $42, $1e, $22, $22, $1e, $00 ; $195
	db $0b, $09, $0a, $78, $88, $88, $78, $00 ; $196
	db $06, $12, $04, $10, $10, $10, $10, $60 ; $197
	db $c8, $48, $88, $08, $08, $08, $08, $00 ; $198
	db $16, $12, $14, $10, $10, $10, $10, $00 ; $199
	db $c0, $40, $96, $29, $29, $29, $29, $00 ; $19a
	db $03, $01, $da, $a4, $a4, $a4, $a4, $00 ; $19b
	db $03, $01, $7a, $44, $44, $44, $44, $00 ; $19c
	db $03, $01, $f2, $88, $88, $f0, $80, $80 ; $19d
	db $c0, $40, $96, $18, $10, $10, $10, $00 ; $19e
	db $c0, $40, $9e, $20, $1e, $01, $3e, $00 ; $19f
	db $03, $01, $7a, $80, $78, $04, $f8, $00 ; $1a0
	db $c0, $48, $9e, $08, $08, $08, $06, $00 ; $1a1
	db $03, $21, $7a, $20, $20, $20, $18, $00 ; $1a2
	db $03, $01, $8a, $88, $88, $88, $78, $00 ; $1a3
	db $c0, $40, $a2, $22, $22, $14, $08, $00 ; $1a4
	db $03, $01, $46, $44, $44, $3c, $04, $38 ; $1a5
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1a6
	db $f0, $88, $88, $b8, $84, $a4, $98, $00 ; $1a7
	db $00, $00, $3c, $42, $40, $3c, $08, $18 ; $1a8
	db $19, $26, $61, $51, $49, $45, $43, $00 ; $1a9
	db $32, $4c, $3c, $22, $22, $22, $22, $00 ; $1aa
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1ab
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1ac
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1ad
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1ae
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1af
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1b0
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1b1
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1b2
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1b3
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1b4
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1b5
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1b6
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1b7
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1b8
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1b9
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1ba
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1bb
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1bc
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1bd
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1be
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1bf
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1c0
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1c1
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1c2
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1c3
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1c4
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1c5
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1c6
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1c7
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1c8
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1c9
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1ca
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1cb
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1cc
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1cd
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1ce
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1cf
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1d0
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1d1
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1d2
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1d3
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1d4
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1d5
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1d6
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1d7
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1d8
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1d9
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1da
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1db
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1dc
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1dd
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1de
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1df
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1e0
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1e1
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1e2
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1e3
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1e4
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1e5
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1e6
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1e7
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1e8
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1e9
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1ea
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1eb
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1ec
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1ed
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1ee
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1ef
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1f0
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1f1
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1f2
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1f3
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1f4
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1f5
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1f6
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1f7
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1f8
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1f9
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1fa
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1fb
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1fc
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1fd
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1fe
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $1ff
	db $00, $78, $cc, $cc, $cc, $cc, $78, $00 ; $200
	db $00, $60, $e0, $60, $60, $60, $f0, $00 ; $201
	db $00, $78, $cc, $1c, $38, $60, $fc, $00 ; $202
	db $00, $fc, $0c, $38, $0c, $8c, $78, $00 ; $203
	db $00, $18, $38, $78, $d8, $fc, $18, $00 ; $204
	db $00, $f8, $c0, $f8, $0c, $8c, $78, $00 ; $205
	db $00, $78, $c0, $f8, $cc, $cc, $78, $00 ; $206
	db $00, $fc, $cc, $18, $30, $30, $30, $00 ; $207
	db $00, $78, $cc, $78, $cc, $cc, $78, $00 ; $208
	db $00, $78, $cc, $cc, $7c, $0c, $78, $00 ; $209
	db $00, $00, $20, $20, $f8, $20, $20, $00 ; $20a
	db $00, $00, $00, $00, $fc, $00, $00, $00 ; $20b
	db $00, $00, $88, $50, $20, $50, $88, $00 ; $20c
	db $00, $04, $08, $10, $20, $40, $80, $00 ; $20d
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $20e
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $20f
	db $30, $48, $84, $84, $fc, $84, $84, $00 ; $210
	db $f0, $88, $88, $f8, $84, $84, $f8, $00 ; $211
	db $38, $44, $80, $80, $80, $44, $38, $00 ; $212
	db $f0, $88, $84, $84, $84, $88, $f0, $00 ; $213
	db $fc, $80, $80, $f8, $80, $80, $fc, $00 ; $214
	db $fc, $80, $80, $f8, $80, $80, $80, $00 ; $215
	db $78, $84, $80, $9c, $84, $84, $7c, $00 ; $216
	db $84, $84, $84, $fc, $84, $84, $84, $00 ; $217
	db $e0, $40, $40, $40, $40, $40, $e0, $00 ; $218
	db $3c, $08, $08, $08, $88, $88, $70, $00 ; $219
	db $88, $90, $a0, $e0, $90, $88, $84, $00 ; $21a
	db $80, $80, $80, $80, $80, $80, $f8, $00 ; $21b
	db $82, $c6, $aa, $92, $82, $82, $82, $00 ; $21c
	db $84, $c4, $a4, $94, $8c, $84, $84, $00 ; $21d
	db $78, $84, $84, $84, $84, $84, $78, $00 ; $21e
	db $f8, $84, $84, $f8, $80, $80, $80, $00 ; $21f
	db $30, $48, $84, $84, $94, $48, $34, $00 ; $220
	db $f8, $84, $84, $f8, $88, $84, $84, $00 ; $221
	db $78, $84, $80, $78, $04, $84, $78, $00 ; $222
	db $fe, $10, $10, $10, $10, $10, $10, $00 ; $223
	db $84, $84, $84, $84, $84, $84, $78, $00 ; $224
	db $84, $84, $84, $84, $48, $48, $30, $00 ; $225
	db $82, $82, $92, $aa, $aa, $c6, $44, $00 ; $226
	db $c6, $44, $28, $10, $28, $44, $c6, $00 ; $227
	db $82, $44, $28, $10, $10, $10, $10, $00 ; $228
	db $fc, $08, $10, $20, $40, $80, $fc, $00 ; $229
	db $30, $40, $80, $80, $80, $40, $30, $00 ; $22a
	db $c0, $20, $10, $10, $10, $20, $c0, $00 ; $22b
	db $00, $c0, $c0, $00, $00, $c0, $c0, $00 ; $22c
	db $00, $c0, $c0, $00, $c0, $c0, $40, $80 ; $22d
	db $e0, $80, $80, $80, $80, $80, $e0, $00 ; $22e
	db $e0, $20, $20, $20, $20, $20, $e0, $00 ; $22f
	db $00, $00, $70, $08, $78, $88, $7c, $00 ; $230
	db $80, $80, $80, $f0, $88, $88, $f0, $00 ; $231
	db $00, $00, $70, $88, $80, $88, $70, $00 ; $232
	db $08, $08, $08, $78, $88, $88, $78, $00 ; $233
	db $00, $00, $70, $88, $f8, $80, $78, $00 ; $234
	db $30, $48, $40, $f8, $40, $40, $40, $00 ; $235
	db $00, $00, $78, $88, $88, $78, $08, $f0 ; $236
	db $80, $80, $80, $f0, $88, $88, $88, $00 ; $237
	db $00, $80, $00, $80, $80, $80, $80, $00 ; $238
	db $00, $20, $00, $20, $20, $20, $20, $c0 ; $239
	db $80, $80, $90, $a0, $e0, $90, $88, $00 ; $23a
	db $80, $80, $80, $80, $80, $80, $80, $00 ; $23b
	db $00, $00, $ec, $92, $92, $92, $92, $00 ; $23c
	db $00, $00, $f0, $88, $88, $88, $88, $00 ; $23d
	db $00, $00, $70, $88, $88, $88, $70, $00 ; $23e
	db $00, $00, $f0, $88, $88, $f0, $80, $80 ; $23f
	db $00, $00, $78, $88, $88, $78, $08, $08 ; $240
	db $00, $00, $b0, $c0, $80, $80, $80, $00 ; $241
	db $00, $00, $70, $80, $70, $08, $f0, $00 ; $242
	db $00, $40, $f0, $40, $40, $40, $30, $00 ; $243
	db $00, $00, $88, $88, $88, $88, $78, $00 ; $244
	db $00, $00, $88, $88, $88, $50, $20, $00 ; $245
	db $00, $00, $84, $84, $b4, $cc, $48, $00 ; $246
	db $00, $00, $88, $50, $20, $50, $88, $00 ; $247
	db $00, $00, $88, $88, $88, $70, $10, $60 ; $248
	db $00, $00, $f8, $10, $20, $40, $f8, $00 ; $249
	db $c0, $c0, $40, $80, $00, $00, $00, $00 ; $24a
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $24b
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $24c
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $24d
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $24e
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $24f
	db $e0, $90, $e0, $8a, $8a, $0c, $0a, $0a ; $250
	db $88, $d8, $a8, $88, $92, $1a, $16, $12 ; $251
	db $e0, $90, $e0, $8c, $92, $12, $12, $0c ; $252
	db $a0, $a2, $cc, $a0, $ac, $1e, $10, $0e ; $253
	db $30, $30, $00, $30, $e6, $ce, $7c, $00 ; $254
	db $60, $00, $60, $60, $f0, $f0, $60, $00 ; $255
	db $7c, $e6, $ce, $18, $00, $18, $18, $00 ; $256
	db $60, $f0, $f0, $60, $60, $00, $60, $00 ; $257
	db $00, $00, $00, $00, $00, $c0, $c0, $00 ; $258
	db $30, $68, $68, $32, $5a, $cc, $7a, $00 ; $259
	db $c0, $a0, $90, $88, $90, $a0, $c0, $00 ; $25a
	db $c0, $e0, $f0, $f8, $f0, $e0, $c0, $00 ; $25b
	db $00, $fe, $fe, $7c, $38, $10, $00, $00 ; $25c
	db $10, $38, $54, $92, $38, $44, $44, $38 ; $25d
	db $70, $88, $88, $70, $20, $f8, $20, $20 ; $25e
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $25f
	db $78, $48, $78, $40, $e0, $40, $e0, $40 ; $260
	db $00, $00, $00, $00, $00, $c0, $c0, $00 ; $261
	db $00, $00, $00, $00, $c0, $c0, $40, $80 ; $262
	db $48, $90, $d8, $d8, $00, $00, $00, $00 ; $263
	db $d8, $d8, $48, $90, $00, $00, $00, $00 ; $264
	db $00, $00, $00, $c0, $c0, $00, $00, $00 ; $265
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $266
	db $00, $00, $60, $90, $90, $60, $00, $00 ; $267
	db $10, $20, $40, $80, $40, $20, $10, $00 ; $268
	db $80, $40, $20, $10, $20, $40, $80, $00 ; $269
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $26a
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $26b
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $26c
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $26d
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $26e
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $26f
	db $50, $00, $30, $48, $84, $fc, $84, $00 ; $270
	db $10, $08, $30, $48, $84, $fc, $84, $00 ; $271
	db $20, $40, $30, $48, $84, $fc, $84, $00 ; $272
	db $20, $10, $fc, $80, $f8, $80, $fc, $00 ; $273
	db $10, $20, $fc, $80, $f8, $80, $fc, $00 ; $274
	db $40, $20, $e0, $40, $40, $40, $e0, $00 ; $275
	db $40, $80, $e0, $40, $40, $40, $e0, $00 ; $276
	db $50, $00, $78, $84, $84, $84, $78, $00 ; $277
	db $20, $10, $78, $84, $84, $84, $78, $00 ; $278
	db $10, $20, $78, $84, $84, $84, $78, $00 ; $279
	db $50, $00, $84, $84, $84, $84, $78, $00 ; $27a
	db $20, $10, $84, $84, $84, $84, $78, $00 ; $27b
	db $10, $20, $84, $84, $84, $84, $78, $00 ; $27c
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $27d
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $27e
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $27f
	db $50, $00, $70, $08, $78, $88, $7c, $00 ; $280
	db $40, $20, $70, $08, $78, $88, $7c, $00 ; $281
	db $10, $20, $70, $08, $78, $88, $7c, $00 ; $282
	db $20, $50, $70, $08, $78, $88, $7c, $00 ; $283
	db $50, $00, $70, $88, $f8, $80, $78, $00 ; $284
	db $40, $20, $70, $88, $f8, $80, $78, $00 ; $285
	db $20, $40, $70, $88, $f8, $80, $78, $00 ; $286
	db $20, $50, $70, $88, $f8, $80, $78, $00 ; $287
	db $00, $a0, $00, $40, $40, $40, $40, $00 ; $288
	db $80, $40, $00, $40, $40, $40, $40, $00 ; $289
	db $40, $80, $00, $80, $80, $80, $80, $00 ; $28a
	db $40, $a0, $00, $40, $40, $40, $40, $00 ; $28b
	db $50, $00, $70, $88, $88, $88, $70, $00 ; $28c
	db $40, $20, $70, $88, $88, $88, $70, $00 ; $28d
	db $10, $20, $70, $88, $88, $88, $70, $00 ; $28e
	db $20, $50, $70, $88, $88, $88, $70, $00 ; $28f
	db $50, $00, $88, $88, $88, $88, $78, $00 ; $290
	db $40, $20, $88, $88, $88, $88, $78, $00 ; $291
	db $10, $20, $88, $88, $88, $88, $78, $00 ; $292
	db $20, $50, $88, $88, $88, $88, $78, $00 ; $293
	db $06, $02, $74, $88, $80, $88, $70, $00 ; $294
	db $c4, $44, $84, $3c, $44, $44, $3c, $00 ; $295
	db $0b, $09, $0a, $78, $88, $88, $78, $00 ; $296
	db $0c, $24, $08, $20, $20, $20, $20, $c0 ; $297
	db $d0, $50, $90, $10, $10, $10, $10, $00 ; $298
	db $b0, $90, $a0, $80, $80, $80, $80, $00 ; $299
	db $c0, $40, $b4, $2a, $2a, $2a, $2a, $00 ; $29a
	db $06, $02, $d4, $a8, $a8, $a8, $a8, $00 ; $29b
	db $0c, $04, $e8, $90, $90, $90, $90, $00 ; $29c
	db $06, $02, $f4, $88, $88, $f0, $80, $80 ; $29d
	db $c0, $40, $ac, $30, $20, $20, $20, $00 ; $29e
	db $c0, $40, $9c, $20, $1c, $02, $3c, $00 ; $29f
	db $06, $02, $74, $80, $70, $08, $f0, $00 ; $2a0
	db $c0, $50, $bc, $10, $10, $10, $0c, $00 ; $2a1
	db $0c, $44, $e8, $40, $40, $40, $30, $00 ; $2a2
	db $03, $01, $8a, $88, $88, $88, $78, $00 ; $2a3
	db $c0, $40, $a2, $22, $22, $14, $08, $00 ; $2a4
	db $06, $02, $8c, $88, $88, $70, $10, $60 ; $2a5
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2a6
	db $f0, $88, $88, $b8, $84, $a4, $98, $00 ; $2a7
	db $00, $00, $78, $84, $80, $78, $10, $30 ; $2a8
	db $64, $98, $42, $62, $52, $4a, $46, $00 ; $2a9
	db $64, $98, $00, $78, $44, $44, $44, $00 ; $2aa
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2ab
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2ac
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2ad
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2ae
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2af
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2b0
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2b1
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2b2
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2b3
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2b4
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2b5
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2b6
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2b7
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2b8
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2b9
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2ba
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2bb
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2bc
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2bd
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2be
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2bf
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2c0
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2c1
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2c2
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2c3
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2c4
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2c5
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2c6
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2c7
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2c8
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2c9
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2ca
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2cb
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2cc
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2cd
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2ce
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2cf
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2d0
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2d1
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2d2
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2d3
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2d4
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2d5
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2d6
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2d7
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2d8
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2d9
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2da
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2db
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2dc
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2dd
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2de
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2df
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2e0
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2e1
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2e2
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2e3
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2e4
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2e5
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2e6
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2e7
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2e8
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2e9
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2ea
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2eb
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2ec
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2ed
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2ee
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2ef
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2f0
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2f1
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2f2
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2f3
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2f4
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2f5
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2f6
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2f7
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2f8
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2f9
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2fa
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2fb
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2fc
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2fd
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2fe
	db $00, $00, $00, $00, $00, $00, $00, $00 ; $2ff
