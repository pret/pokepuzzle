SECTION "Bank 66@4c5c", ROMX[$4c5c], BANK[$66]

Func_198c5c::
	xor a
	ld [wc7c9], a
	ld a, [wc7b4]
	and a
	jr z, .asm_198c79
	xor a
	ld [wc7b4], a
	xor a
	ldh [AUD1RAM], a
	ldh [rAUD1LEN], a
	ldh [rAUD1LOW], a
	ld a, AUD1ENV_UP
	ldh [rAUD1ENV], a
	ld a, AUD1HIGH_RESTART
	ldh [rAUD1HIGH], a

.asm_198c79
	ld a, [wc7bd]
	and a
	jr z, .asm_198c90
	xor a
	ld [wc7bd], a
	xor a
	ldh [rAUD2LEN], a
	ldh [rAUD2LOW], a
	ld a, AUD2ENV_UP
	ldh [rAUD2ENV], a
	ld a, AUD2HIGH_RESTART
	ldh [rAUD2HIGH], a

.asm_198c90
	ld a, [wc7c6]
	and a
	jr z, .asm_198ca7
	xor a
	ld [wc7c6], a
	xor a
	ldh [rAUD4LEN], a
	ldh [rAUD4POLY], a
	ld a, AUD4ENV_UP
	ldh [rAUD4ENV], a
	ld a, AUD4GO_RESTART
	ldh [rAUD4GO], a

.asm_198ca7
	ld hl, wc602
	bit 0, [hl]
	jr z, .asm_198cb0
	res 0, [hl]
.asm_198cb0
	ld hl, wc632
	bit 0, [hl]
	jr z, .asm_198cb9
	res 0, [hl]
.asm_198cb9
	ld hl, wc662
	bit 0, [hl]
	jr z, .asm_198cc5
	res 0, [hl]
	call Func_1462
.asm_198cc5
	ld hl, wc692
	bit 0, [hl]
	jr z, .asm_198cce
	res 0, [hl]
.asm_198cce
	ret
; 0x198ccf
