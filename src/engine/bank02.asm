SECTION "Bank 2@5b2d", ROMX[$5b2d], BANK[$2]

Func_9b2d:
	ld a, [wceab]
	farcall_saveregs Func_10130e
	ld [wcd08], a
	add a
	ld c, a
	ld b, $00
	ld hl, $6028
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, l
	ld [wcd09], a
	ld a, h
	ld [wcd0a], a
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
	ld [wcd0b], a
	ld [wcd0d], a
	ld [wcd0f], a
	ld a, [hli]
	ld [wcd0c], a
	ld [wcd0d + 1], a
	ld [wcd10], a
	ld a, [hli]
	ld [wcd13], a
	ld a, [hli]
	ld [wcd14], a
	ld a, [hli]
	ld [wcd11], a
	ld a, [hli]
	ld [wcd12], a
	ld a, [hli]
	ld [wcd15], a
	ld a, [hli]
	ld [wcd16], a
	ld a, [hli]
	ld [wcd17], a
	ld a, [hli]
	ld [wcd18], a
	ld a, [hli]
	ld [wcd19], a
	ld [wcd1b], a
	ld a, [hli]
	ld [wcd1a], a
	ld [wcd1c], a
	ld a, [hli]
	ld [wcd1d], a
	ld a, [hli]
	ld [wcd1e], a
	ld a, [hli]
	ld [wcd1f], a
	ld a, [hli]
	ld [wcd20], a
	ld a, [hli]
	ld [wcd28], a
	ld [wcd2a], a
	ld a, [hli]
	ld [wcd29], a
	ld [wcd2b], a
	xor a
	ld [wcd21 + 0], a
	ld [wcd21 + 1], a
	ld [wcd23 + 0], a
	ld [wcd23 + 1], a
	ld [wcd25], a
	xor a
	ld [wcd26], a
	ld [wcd27], a
	ld [wcd2c], a
	ld [wcd2d], a
	ld [wcd2e], a
	xor a
	ld [wcd2f], a
	ld [wcd30], a
	ld [wcd31], a
	ld [wcd32], a
	ld [wcd34], a
	ld hl, wcd0d
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
	ld hl, wcd44
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
	ld hl, wcd42
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
	ld hl, wcd27
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
	ld hl, wcd21
	ld a, [hl]
	add e
	ld [hli], a
	ld a, [hl]
	adc d
	ld [hl], a
	ld hl, wcd23
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
	ld hl, wcd0f
	ld a, [hli]
	ldh [hff8a], a
	or [hl]
	jr z, .asm_a024
	ld a, [hl]
	ldh [hff8b], a
	ld hl, wcd44
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
	ld hl, wcd42
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
	ld [wcd46], a
	ret
; 0xa028
