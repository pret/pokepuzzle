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
	dw $4090
	dw $40c0
	dw $40f0
	dw $4120
	dw NULL
; 0x10c090

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
	add hl, hl
	ld bc, $531e
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
	ld bc, $501e
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
	ld a, [w2dd16]
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
	add b
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
	ld [w2dd15], a
	call Func_33f5
	ld [w2dd16], a
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
	add a
	rl b
	add a
	rl b
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
	add a
	rl b
	add a
	rl b
	add a
	rl b
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
	add a
	rl b
	add a
	rl b
	add a
	rl b
	add a
	rl b
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
	add a
	rl b
	add a
	rl b
	add a
	rl b
	add a
	rl b
	add a
	rl b
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
	add a
	rl b
	add a
	rl b
	add a
	rl b
	add a
	rl b
	add a
	rl b
	add a
	rl b
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
	add a
	rl b
	add a
	rl b
	add a
	rl b
	add a
	rl b
	add a
	rl b
	add a
	rl b
	add a
	rl b
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
