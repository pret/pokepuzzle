SECTION "Bank 2@5b2d", ROMX[$5b2d], BANK[$2]

Func_9b2d:
	ld a, [wceab]
	farcall_saveregs Func_10130e
	ld [$cd08], a
	add a
	ld c, a
	ld b, $00
	ld hl, $6028
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, l
	ld [$cd09], a
	ld a, h
	ld [$cd0a], a
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
	ld [$cd0b], a
	ld [$cd0d], a
	ld [$cd0f], a
	ld a, [hli]
	ld [$cd0c], a
	ld [$cd0e], a
	ld [$cd10], a
	ld a, [hli]
	ld [$cd13], a
	ld a, [hli]
	ld [$cd14], a
	ld a, [hli]
	ld [$cd11], a
	ld a, [hli]
	ld [$cd12], a
	ld a, [hli]
	ld [$cd15], a
	ld a, [hli]
	ld [$cd16], a
	ld a, [hli]
	ld [$cd17], a
	ld a, [hli]
	ld [$cd18], a
	ld a, [hli]
	ld [$cd19], a
	ld [$cd1b], a
	ld a, [hli]
	ld [$cd1a], a
	ld [$cd1c], a
	ld a, [hli]
	ld [$cd1d], a
	ld a, [hli]
	ld [$cd1e], a
	ld a, [hli]
	ld [$cd1f], a
	ld a, [hli]
	ld [$cd20], a
	ld a, [hli]
	ld [$cd28], a
	ld [$cd2a], a
	ld a, [hli]
	ld [$cd29], a
	ld [$cd2b], a
	xor a
	ld [$cd21], a
	ld [$cd22], a
	ld [$cd23], a
	ld [$cd24], a
	ld [$cd25], a
	xor a
	ld [$cd26], a
	ld [$cd27], a
	ld [$cd2c], a
	ld [$cd2d], a
	ld [$cd2e], a
	xor a
	ld [$cd2f], a
	ld [$cd30], a
	ld [$cd31], a
	ld [$cd32], a
	ld [$cd34], a
	ld hl, $cd0d
	ld a, [hli]
	ld d, [hl]
	ld e, a
	ld bc, NULL
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
	ld hl, $cd44
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
	ld hl, $cd42
	ld a, e
	ld [hli], a
	ld [hl], d
	call Func_9fd7
	ret
; 0x9c22

SECTION "Bank 2@5e52", ROMX[$5e52], BANK[$2]

Func_9e52:
	ld a, b
	call Func_9f5f
	ret
; 0x9e57

SECTION "Bank 2@5f5f", ROMX[$5f5f], BANK[$2]

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
	ld hl, $cd27
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
	ld hl, $cd21
	ld a, [hl]
	add e
	ld [hli], a
	ld a, [hl]
	adc d
	ld [hl], a
	ld hl, $cd23
	ld a, [hl]
	add e
	ld [hli], a
	ld a, [hl]
	adc d
	ld [hl], a
	pop bc
	ret
; 0x9f92

SECTION "Bank 2@5fd7", ROMX[$5fd7], BANK[$2]

Func_9fd7:
	ld bc, NULL
	ld hl, $cd0f
	ld a, [hli]
	ldh [hff8a], a
	or [hl]
	jr z, .asm_a024
	ld a, [hl]
	ldh [hff8b], a
	ld hl, $cd44
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
	ld hl, $cd42
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
	ld [$cd46], a
	ret
; 0xa028
