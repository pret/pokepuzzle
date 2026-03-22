SECTION "Bank 10@647d", ROMX[$647d], BANK[$10]

Func_4247d:
	push bc
	ld a, [wcea3]
	ld l, a
	ld h, $00
	ld c, l
	ld b, h
	add hl, hl
	add hl, bc
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl ; *48
	ld bc, $533c
	add hl, bc
	ld a, $40
	call GetFarByte
	inc hl
	ld [$c9b2], a
	ld a, $40
	call GetFarByte
	inc hl
	ld [$c9b3], a
	ld a, $40
	call GetFarByte
	ld [$c9b4], a
	xor a
	ld [$c9b5], a
	pop bc
	ret
; 0x424b0
