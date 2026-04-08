SETCHARMAP ascii

SECTION "Bank 1a@4a0f", ROMX[$4a0f], BANK[$1a]

Func_68a0f:
	push bc
	call Func_1f38
	ld a, [hl]
	and $f0
	swap a
	add a
	ld c, a
	add a
	add a
	add c
	ld c, a
	call Func_1f38
	ld a, [hl]
	and $0f
	add c
	ld c, a
	ld a, [wcead]
	and a
	ld a, c
	jr nz, .asm_68a31
	add $00
	jr .asm_68a33
.asm_68a31
	add $3f
.asm_68a33
	ldh [hff8a], a
	pop bc
	ret

Func_68a37:
	ldh a, [hff8a]
	ld l, a
	ld h, $00
	add hl, hl
	ld c, l
	ld b, h
	ld hl, $4000
	add hl, bc
	ld a, [hli]
	ld c, a
	ld a, [hl]
	and $1f
	ld b, a
	ld a, [hl]
	and $e0
	swap a
	ld e, a
	ld d, $00
	xor a
	ldh [hff8c], a
	ld a, $08
	ldh [hff8d], a
	ld hl, $4000
	add hl, bc
	push hl
	ld hl, $4aa7
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl
; 0x68a65

SECTION "Bank 1a@4b26", ROMX[$4b26], BANK[$1a]

Func_68b26:
	push bc
	ldh a, [hff8a]
	ld c, a
	ld b, $00
	ld hl, $4895
	add hl, bc
	ld a, [hl]
	ld [wc8dc], a
	xor a
	ld [wc8da], a
	ld [wc8db], a
	pop bc
	ret

Func_68b3d:
	push bc
	ldh a, [hff8a]
	add a
	ld c, a
	ld b, $00
	ld hl, $4913
	add hl, bc
	ld a, [hli]
	ld [wc8dd], a
	ld a, [hl]
	ld [wc8de], a
	pop bc
	ret

Func_68b52:
	ldh a, [hWRAMBank]
	push af
	ld a, $02
	wramswitch
	ld bc, $d000
	ld de, NULL
.asm_68b61
	call Func_68c31
	ld hl, $d180
	call Func_68c53
	jr c, .asm_68b61
	ld bc, $d0c0
	ld de, NULL
.asm_68b72
	call Func_68c31
	ld hl, $d480
	call Func_68c53
	jr c, .asm_68b72
	ld de, NULL
.asm_68b80
	ld hl, $d480
	add hl, de
	ld a, [hli]
	ldh [hff8a], a
	ld a, [hli]
	ldh [hff8b], a
	ld a, [hli]
	ldh [hff8c], a
	ld a, [hli]
	ldh [hff8d], a
	ld a, [hli]
	ldh [hff8e], a
	ld a, [hl]
	ldh [hff8f], a
	ld hl, $d180
	add hl, de
	ldh a, [hff8a]
	sub [hl]
	ld c, a
	inc hl
	ldh a, [hff8b]
	sbc [hl]
	ld b, a
	inc hl
	sra b
	rr c
	sra b
	rr c
	sra b
	rr c
	sra b
	rr c
	sra b
	rr c
	ld a, c
	ldh [hff8a], a
	ld a, b
	ldh [hff8b], a
	ldh a, [hff8c]
	sub [hl]
	ld c, a
	inc hl
	ldh a, [hff8d]
	sbc [hl]
	ld b, a
	inc hl
	sra b
	rr c
	sra b
	rr c
	sra b
	rr c
	sra b
	rr c
	sra b
	rr c
	ld a, c
	ldh [hff8c], a
	ld a, b
	ldh [hff8d], a
	ldh a, [hff8e]
	sub [hl]
	ld c, a
	inc hl
	ldh a, [hff8f]
	sbc [hl]
	ld b, a
	inc hl
	sra b
	rr c
	sra b
	rr c
	sra b
	rr c
	sra b
	rr c
	sra b
	rr c
	ld a, c
	ldh [hff8e], a
	ld a, b
	ldh [hff8f], a
	ld hl, $d780
	add hl, de
	ldh a, [hff8a]
	ld [hli], a
	ldh a, [hff8b]
	ld [hli], a
	ldh a, [hff8c]
	ld [hli], a
	ldh a, [hff8d]
	ld [hli], a
	ldh a, [hff8e]
	ld [hli], a
	ldh a, [hff8f]
	ld [hl], a
	ld hl, $8
	add hl, de
	ld d, h
	ld e, l
	ld a, e
	sub $00
	ld a, d
	sbc $03
	jp c, .asm_68b80
	pop af
	wramswitch
	ret

Func_68c31:
	ld a, [bc]
	and $1f
	ldh [hff8a], a
	ld a, [bc]
	inc bc
	and $e0
	swap a
	sra a
	ld l, a
	ld a, [bc]
	and $03
	add a
	add a
	add a
	or l
	ldh [hff8b], a
	ld a, [bc]
	inc bc
	and $7c
	sra a
	sra a
	ldh [hff8c], a
	ret

Func_68c53:
	add hl, de
	xor a
	ld [hli], a
	ldh a, [hff8a]
	ld [hli], a
	xor a
	ld [hli], a
	ldh a, [hff8b]
	ld [hli], a
	xor a
	ld [hli], a
	ldh a, [hff8c]
	ld [hli], a
	xor a
	ld [hli], a
	ld [hl], a
	ld hl, $8
	add hl, de
	ld d, h
	ld e, l
	ld a, e
	sub $00
	ld a, d
	sbc $03
	ret

Func_68c73::
	ldh a, [hWRAMBank]
	push af
	ld a, $02
	wramswitch
	ld hl, $d780
	add hl, de
	ld a, [hli]
	ldh [hff8a], a
	ld a, [hli]
	ldh [hff8b], a
	ld a, [hli]
	ldh [hff8c], a
	ld a, [hli]
	ldh [hff8d], a
	ld a, [hli]
	ldh [hff8e], a
	ld a, [hl]
	ldh [hff8f], a
	ld hl, $d480
	add hl, de
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ld hl, $d180
	add hl, de
	ldh a, [hff8a]
	add [hl]
	ld [hli], a
	ldh a, [hff8b]
	adc [hl]
	ld [hld], a
	ld a, [hli]
	sub c
	ld a, [hl]
	sbc b
	jr c, .asm_68caf
	ld a, b
	ld [hld], a
	ld a, c
	ld [hli], a
.asm_68caf
	ld b, d
	ld c, e
	sra b
	rr c
	sra b
	rr c
	ld a, [hl]
	ld hl, $d000
	add hl, bc
	ld c, a
	ld a, [hl]
	and $e0
	or c
	ld [hl], a
	ld hl, $d482
	add hl, de
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ld hl, wPdPBlock0fUnk4
	add hl, de
	ldh a, [hff8c]
	add [hl]
	ld [hli], a
	ldh a, [hff8d]
	adc [hl]
	ld [hld], a
	ld a, [hli]
	sub c
	ld a, [hl]
	sbc b
	jr c, .asm_68ce1
	ld a, b
	ld [hld], a
	ld a, c
	ld [hli], a
.asm_68ce1
	ld b, d
	ld c, e
	sra b
	rr c
	sra b
	rr c
	ld a, [hl]
	ld hl, $d000
	add hl, bc
	ld b, a
	and $07
	swap a
	add a
	ld c, a
	ld a, [hl]
	and $1f
	or c
	ld [hli], a
	ld a, b
	and $18
	rra
	rra
	rra
	ld c, a
	ld a, [hl]
	and $fc
	or c
	ld [hl], a
	ld hl, $d484
	add hl, de
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ld hl, wPdPBlock10Type
	add hl, de
	ldh a, [hff8e]
	add [hl]
	ld [hli], a
	ldh a, [hff8f]
	adc [hl]
	ld [hld], a
	ld a, [hli]
	sub c
	ld a, [hl]
	sbc b
	jr c, .asm_68d25
	ld a, b
	ld [hld], a
	ld a, c
	ld [hli], a
.asm_68d25
	ld b, d
	ld c, e
	sra b
	rr c
	sra b
	rr c
	ld a, [hl]
	ld hl, $d001
	add hl, bc
	add a
	add a
	ld c, a
	ld a, [hl]
	and $83
	or c
	ld [hl], a
	pop af
	wramswitch
	ret
; 0x68d42

SECTION "Bank 1a@4ebb", ROMX[$4ebb], BANK[$1a]

Func_68ebb:
	xor a
	ld [wcdad + 0], a
	ld [wcdad + 1], a
	ld [wcdaf], a
	ld [wcdb0], a
	ld [wcdb1], a
	ld [wcdb2], a
	ld [wcdb3], a
	ld [wcdb4], a
	ld [wcdb5], a
	ld [wcdb6], a
	ld [wcdb7], a
	ld [wcdb8], a
	ld [wcdb9], a
	ld [wcdba], a
	ld [wcdbb], a
	ld [wcdbc], a
	ld [wcdbd], a
	ld [wcdbe], a
	ld [wcdbf], a
	ld [wcdc0], a
	ret

RandomSamples::
	db $2c, $c5, $05, $24, $b7, $f5, $2a, $ad, $4f, $22, $de, $70, $97, $c2, $21, $f4
	db $c2, $45, $b0, $96, $b1, $e4, $3b, $fd, $54, $ab, $e5, $c1, $3f, $ca, $fd, $57
	db $8b, $18, $fb, $40, $f0, $e8, $be, $72, $20, $11, $05, $06, $66, $38, $2b, $24
	db $7f, $61, $27, $2c, $b9, $b6, $c4, $26, $4a, $96, $1d, $6c, $f3, $e1, $5b, $96
	db $d5, $83, $b3, $a6, $93, $3f, $9a, $75, $aa, $bd, $4b, $5e, $0d, $d7, $7c, $28
	db $04, $20, $5c, $39, $47, $b6, $d0, $fa, $56, $4a, $ef, $85, $1b, $6d, $bc, $96
	db $c3, $1d, $23, $b0, $d9, $90, $36, $8e, $a5, $3f, $a8, $ce, $c4, $36, $8a, $d9
	db $09, $9b, $45, $16, $93, $7e, $d9, $4f, $2f, $e0, $55, $63, $f0, $06, $96, $2d
	db $0c, $ff, $43, $b5, $fa, $73, $09, $96, $ca, $af, $14, $af, $c4, $ee, $ce, $0e
	db $44, $ea, $dc, $19, $d5, $a3, $55, $fe, $8d, $6f, $45, $5e, $a8, $43, $62, $35
	db $68, $40, $0d, $0d, $2c, $81, $8c, $63, $cf, $24, $86, $59, $44, $97, $c0, $9e
	db $6f, $24, $17, $9b, $46, $c0, $bd, $e0, $28, $10, $b8, $cd, $7d, $bd, $98, $85
	db $90, $f9, $78, $0f, $a9, $52, $37, $cf, $6e, $b6, $f8, $25, $7c, $c8, $d8, $63
	db $41, $62, $ef, $f5, $1d, $6b, $89, $cb, $b9, $da, $a6, $0a, $a7, $0b, $af, $f4
	db $3b, $42, $7b, $15, $a8, $7d, $82, $b0, $5f, $7f, $60, $69, $a4, $19, $8d, $34
	db $73, $bb, $5b, $7d, $92, $3c, $31, $99, $f7, $e6, $06, $6c, $5c, $c6, $21, $5c
	db $21, $32, $0f, $76, $62, $9b, $e5, $e0, $59, $94, $b7, $7f, $f5, $23, $59, $e8
	db $bb, $48, $55, $8c, $de, $cc, $2c, $20, $9a, $4c, $d2, $4b, $d6, $85, $64, $94
	db $fa, $e1, $2c, $8a, $0e, $43, $d7, $35, $14, $10, $f5, $bd, $a6, $7e, $b2, $59
	db $d4, $21, $d3, $7b, $38, $b3, $f4, $3a, $5b, $23, $00, $ff, $4d, $e1, $f1, $74
	db $7f, $69, $ca, $aa, $e4, $0e, $d1, $89, $48, $09, $12, $7d, $f0, $c1, $11, $5e
	db $73, $5d, $ce, $a1, $d8, $88, $ff, $be, $f1, $84, $89, $e1, $f7, $72, $40, $d4
	db $67, $df, $e0, $2c, $1c, $93, $4b, $b3, $ae, $97, $05, $16, $0a, $85, $ee, $cf
	db $52, $14, $3e, $55, $f7, $e3, $c6, $83, $14, $86, $65, $47, $0e, $cf, $c9, $8c
	db $6a, $5e, $67, $69, $ef, $6b, $bd, $8a, $fd, $d3, $c7, $df, $2c, $61, $c0, $84
	db $28, $5f, $1b, $f1, $cc, $5e, $c1, $63, $7d, $41, $8c, $8a, $c9, $90, $03, $74
	db $41, $fc, $58, $b9, $94, $2e, $9f, $e8, $ed, $d4, $51, $32, $8e, $ee, $01, $56
	db $ad, $56, $5c, $cc, $8f, $8e, $67, $35, $e3, $cf, $f5, $02, $61, $4f, $67, $64
	db $a3, $d1, $a9, $75, $43, $73, $69, $a4, $36, $b4, $98, $66, $69, $c4, $27, $1b
	db $9a, $10, $fb, $3e, $78, $0e, $32, $d1, $fe, $46, $9a, $08, $0d, $a1, $6e, $34
	db $48, $f6, $52, $f3, $35, $d2, $92, $96, $91, $88, $97, $d3, $f4, $7a, $ab, $ac
	db $a6, $a6, $ee, $9f, $c0, $74, $98, $0f, $87, $be, $71, $f2, $05, $21, $8d, $bd
	db $e9, $83, $4d, $8c, $a1, $e5, $93, $96, $b6, $6a, $45, $d1, $67, $a8, $05, $e1
	db $89, $2f, $2e, $47, $9e, $58, $12, $c7, $35, $50, $73, $1a, $81, $65, $3f, $d5
	db $3d, $8f, $90, $99, $bf, $42, $e4, $7c, $5b, $72, $99, $b8, $fb, $e8, $ac, $93
	db $fc, $c4, $b3, $8e, $4b, $53, $18, $d1, $c0, $14, $97, $d6, $ba, $05, $fb, $55
	db $fc, $33, $15, $71, $c8, $81, $fd, $21, $3a, $b8, $8c, $e0, $e7, $cf, $1a, $98
	db $b6, $7d, $74, $cc, $fe, $fd, $22, $05, $e0, $21, $d7, $80, $e7, $9a, $38, $16
	db $df, $86, $d2, $6b, $f3, $3b, $55, $5b, $0a, $53, $16, $a1, $63, $f8, $c5, $ca
	db $6f, $71, $6b, $59, $ef, $ed, $a7, $3c, $4e, $90, $29, $6f, $41, $bc, $6f, $ee
	db $9d, $a1, $bf, $e1, $78, $07, $66, $03, $84, $5b, $2f, $54, $a8, $f9, $26, $ff
	db $e0, $b9, $8e, $8e, $56, $bc, $20, $4c, $c1, $78, $87, $fb, $ff, $02, $18, $b7
	db $ee, $9b, $d6, $2a, $90, $7e, $a6, $f2, $5e, $e9, $cf, $4f, $ed, $6a, $b5, $11
	db $bf, $6c, $d6, $c1, $6c, $01, $05, $0e, $f2, $f2, $e7, $7b, $59, $04, $ab, $48
	db $8b, $8d, $0e, $9e, $72, $38, $8e, $fe, $53, $15, $ed, $eb, $6a, $e4, $ea, $d7
	db $c7, $a3, $3b, $4b, $68, $55, $ce, $5b, $98, $15, $41, $49, $87, $5c, $a0, $78
	db $2a, $8f, $5e, $95, $56, $cc, $96, $00, $18, $f6, $82, $81, $57, $ff, $3c, $28
	db $ad, $75, $b5, $85, $82, $50, $f3, $09, $6b, $fa, $8f, $bc, $c2, $a0, $6e, $21
	db $86, $b8, $bf, $67, $74, $d3, $35, $d1, $67, $a5, $86, $67, $ed, $52, $24, $de
	db $2b, $fb, $3b, $c5, $f3, $89, $ec, $f2, $23, $b9, $c7, $2c, $41, $68, $8e, $1a
	db $54, $20, $29, $6c, $05, $e4, $e5, $48, $f7, $39, $f1, $f7, $63, $75, $1b, $d0
	db $f8, $4c, $c7, $65, $f2, $98, $30, $ed, $79, $69, $e3, $f1, $3c, $4d, $78, $3b
	db $4e, $e1, $94, $fc, $40, $98, $1c, $3c, $80, $cb, $bb, $87, $f2, $02, $97, $d6
	db $cc, $81, $4f, $bb, $b7, $16, $38, $d1, $24, $22, $d9, $64, $eb, $e6, $a4, $5c
	db $2b, $10, $f7, $6f, $5e, $86, $53, $87, $bb, $72, $db, $71, $d0, $8e, $10, $c8
	db $60, $b2, $cc, $21, $7b, $9b, $7c, $78, $dc, $fd, $a2, $db, $87, $cc, $8a, $55
	db $a3, $c8, $4b, $1d, $95, $47, $02, $00, $5f, $47, $4b, $0c, $37, $b4, $00, $7e
	db $6b, $f6, $35, $ee, $75, $be, $74, $b9, $5a, $12, $35, $af, $48, $97, $a1, $fe
	db $6f, $1f, $89, $5e, $1f, $73, $a1, $7f, $24, $62, $01, $b0, $5f, $0a, $dd, $d0
	db $a6, $65, $84, $7a, $dd, $18, $97, $6c, $55, $79, $8c, $38, $64, $de, $63, $2f
	db $46, $2d, $a6, $8b, $34, $a1, $a7, $dc, $c3, $da, $f6, $b4, $7f, $28, $21, $96
	db $c7, $19, $af, $1d, $eb, $40, $5f, $69, $85, $48, $9d, $cf, $15, $3a, $46, $c1
	db $e0, $0b, $9d, $fa, $0a, $6a, $8d, $ef, $f2, $c7, $21, $72, $cf, $a7, $42, $a9
	db $88, $28, $af, $2f, $d8, $cf, $42, $88, $a2, $9a, $61, $ca, $92, $42, $c3, $8a
	db $f6, $d1, $65, $05, $db, $65, $cc, $90, $6c, $43, $7c, $41, $87, $1f, $b8, $df
	db $a1, $aa, $7c, $08, $db, $5d, $b9, $a1, $65, $85, $d0, $83, $14, $8f, $51, $63
	db $3f, $96, $f5, $02, $df, $2b, $da, $97, $e6, $63, $fd, $79, $e0, $27, $fd, $11
	db $c8, $b8, $0e, $00, $2d, $81, $3c, $8c, $86, $21, $e2, $50, $d1, $b9, $6a, $25
	db $73, $73, $46, $4b, $4c, $53, $2f, $dc, $1a, $42, $9d, $73, $11, $58, $87, $18
	db $b7, $69, $5d, $6f, $05, $d4, $43, $21, $bb, $88, $8f, $8b, $04, $57, $84, $a6
	db $4b, $7f, $51, $37, $5c, $76, $45, $37, $bf, $f6, $54, $85, $52, $49, $d0, $ca
	db $25, $d6, $60, $ad, $9b, $ed, $45, $39, $be, $cf, $ce, $8b, $e2, $01, $19, $c0
	db $7e, $d3, $0b, $1d, $47, $2b, $92, $81, $8e, $97, $1a, $08, $db, $93, $4e, $01
	db $cb, $17, $11, $12, $27, $65, $bb, $aa, $46, $11, $98, $a8, $a5, $51, $9f, $49
	db $c4, $86, $6f, $57, $43, $0b, $8f, $90, $3e, $3e, $e7, $54, $e5, $cd, $7a, $94
	db $60, $43, $66, $f7, $e2, $d3, $1d, $4d, $0b, $63, $e5, $39, $84, $dc, $8e, $1b
	db $d5, $b1, $73, $3c, $8a, $ae, $b4, $3d, $87, $03, $b2, $c2, $a7, $90, $cb, $5a
	db $9c, $73, $57, $b2, $03, $d0, $e3, $fb, $c6, $e0, $ad, $98, $b7, $3d, $60, $0d
	db $6a, $6c, $11, $24, $53, $ab, $79, $61, $21, $fd, $74, $a8, $5a, $74, $bb, $2d
	db $37, $be, $de, $9d, $c2, $f3, $85, $8a, $2e, $9e, $e8, $1c, $77, $09, $8b, $f6
	db $3a, $ce, $3f, $67, $d7, $9b, $56, $d2, $c5, $45, $26, $60, $35, $10, $c0, $e4
	db $ea, $3d, $f2, $0e, $58, $d5, $7b, $d4, $fc, $b5, $8d, $1d, $fb, $db, $89, $b0
	db $fe, $ef, $f6, $5d, $4d, $15, $c2, $6a, $2a, $f2, $bd, $40, $70, $fd, $53, $57
	db $6c, $08, $8a, $5f, $fc, $0e, $3c, $b0, $e6, $3e, $95, $f3, $7b, $49, $d0, $12
	db $6d, $e9, $2d, $5e, $ed, $b2, $37, $00, $08, $1d, $34, $a2, $43, $d2, $ec, $5e
	db $76, $36, $9f, $e6, $e6, $35, $41, $f5, $a6, $51, $f8, $f7, $30, $eb, $d9, $f4
	db $3f, $d1, $de, $c2, $ef, $09, $2b, $6b, $18, $dd, $82, $dd, $e7, $28, $03, $d1
	db $bf, $df, $29, $fd, $4f, $e3, $02, $7d, $f4, $05, $ae, $7f, $51, $5a, $1b, $2e
	db $2c, $c2, $ff, $e1, $8c, $b3, $16, $85, $11, $4b, $9e, $48, $93, $96, $10, $88
	db $ff, $1c, $20, $fb, $6e, $af, $f7, $1f, $86, $73, $af, $e4, $16, $2e, $10, $98
	db $ed, $d2, $89, $14, $fb, $48, $72, $25, $ab, $7f, $81, $3d, $80, $b5, $8a, $5b
	db $ee, $05, $7b, $38, $7b, $32, $97, $b3, $16, $b2, $f3, $7e, $b7, $fe, $2e, $0a
	db $39, $19, $74, $b1, $74, $5f, $b6, $23, $9f, $90, $23, $13, $e4, $1c, $ea, $22
	db $45, $b1, $34, $0b, $ae, $03, $5c, $11, $5b, $db, $71, $a6, $6d, $63, $ee, $5d
	db $c8, $b0, $b8, $12, $30, $91, $59, $57, $a4, $97, $7c, $22, $f9, $65, $a8, $b5
	db $bb, $39, $41, $ce, $40, $bb, $bc, $11, $0e, $06, $22, $b2, $6f, $f4, $c8, $67
	db $53, $af, $4d, $8d, $66, $75, $d4, $99, $72, $ab, $83, $c2, $f7, $25, $3c, $ed
	db $08, $b4, $9b, $d8, $68, $f1, $30, $8b, $e6, $4a, $fe, $fc, $f6, $4a, $34, $01
	db $91, $2d, $2a, $7c, $4e, $a4, $9f, $c1, $c1, $e5, $31, $4b, $14, $f6, $1e, $a0
	db $e5, $3b, $3a, $81, $5f, $3f, $30, $57, $9b, $bf, $fd, $da, $39, $fd, $a9, $04
	db $3a, $43, $48, $35, $21, $b5, $32, $a7, $4a, $5c, $7f, $15, $8a, $70, $c5, $a7
	db $08, $e6, $15, $22, $5c, $3a, $34, $4d, $e6, $7e, $16, $a6, $70, $a4, $a1, $46
	db $07, $08, $9f, $12, $16, $41, $04, $24, $c4, $29, $63, $78, $91, $2a, $ab, $db
	db $2c, $cc, $26, $11, $97, $7c, $b3, $46, $7d, $9f, $43, $b7, $d3, $d7, $92, $a1
	db $af, $95, $27, $6a, $65, $df, $8f, $0e, $e8, $63, $d5, $cd, $5f, $bd, $46, $13
	db $06, $05, $63, $a7, $48, $9d, $26, $18, $1b, $39, $7a, $65, $9b, $2f, $f5, $eb
	db $ea, $01, $d8, $94, $47, $28, $49, $3e, $6d, $23, $cf, $6a, $2e, $c1, $0f, $26
	db $50, $ab, $c5, $3c, $a8, $34, $05, $9c, $75, $65, $b4, $07, $ff, $44, $42, $fe
	db $70, $65, $a9, $ea, $f3, $b4, $ab, $8d, $0b, $81, $47, $a8, $35, $cd, $7d, $ee
	db $c1, $d3, $44, $29, $ee, $da, $c8, $ab, $45, $3a, $e9, $f7, $37, $ad, $f0, $b1
	db $fa, $d9, $94, $c3, $a1, $1a, $2d, $d1, $7a, $94, $37, $e0, $ad, $79, $0a, $42
	db $12, $98, $d8, $c4, $52, $27, $e7, $1b, $42, $d1, $10, $8c, $7c, $03, $79, $dc
	db $3f, $74, $8f, $77, $89, $f3, $46, $e4, $73, $75, $95, $68, $cd, $5e, $2c, $f9
	db $fa, $10, $78, $67, $0d, $b2, $da, $c6, $24, $42, $23, $1e, $05, $de, $53, $56
	db $f8, $4e, $93, $5e, $e4, $d6, $70, $9c, $ad, $3b, $5a, $9a, $cd, $14, $5c, $ed
	db $31, $53, $1d, $68, $56, $13, $18, $82, $a4, $a4, $18, $05, $0a, $d5, $f7, $f9
	db $dc, $81, $97, $d0, $e9, $5c, $21, $d3, $e0, $ff, $7d, $cc, $e5, $32, $12, $f5
	db $6f, $7a, $c0, $21, $65, $e3, $1a, $29, $79, $10, $e8, $9a, $c4, $80, $dd, $9c
	db $a3, $22, $95, $25, $d1, $1c, $d2, $60, $c5, $d9, $f8, $58, $4e, $51, $c6, $e9
	db $6d, $9d, $56, $e9, $73, $ba, $58, $92, $5b, $9d, $8b, $33, $6a, $78, $7d, $17
	db $05, $4c, $83, $b6, $d2, $af, $fb, $1b, $13, $e0, $c1, $95, $3f, $08, $f0, $a1
	db $e2, $d3, $da, $17, $b7, $2f, $4a, $95, $03, $64, $f9, $29, $34, $55, $4e, $42
	db $bb, $15, $5a, $d9, $26, $ad, $14, $dc, $82, $2c, $d1, $db, $f0, $f0, $07, $f5
	db $86, $34, $43, $05, $69, $db, $68, $0a, $28, $7c, $29, $d4, $5b, $ae, $c9, $f6
	db $7c, $95, $12, $e7, $05, $ad, $94, $7a, $cb, $d6, $20, $82, $9a, $a1, $84, $be
	db $12, $da, $88, $0a, $c1, $56, $29, $c9, $82, $fe, $15, $8d, $16, $1c, $66, $09
	db $00, $e5, $a3, $39, $a5, $48, $f5, $cf, $a5, $f6, $a6, $e1, $74, $b2, $df, $d2
	db $3d, $da, $a2, $7e, $f8, $37, $06, $aa, $ca, $01, $b3, $aa, $9d, $36, $9d, $54
; 0x696f9

SECTION "Bank 1a@5a7d", ROMX[$5a7d], BANK[$1a]

Func_69a7d:
	xor a
	ldh [hff8e], a
	ldh [hff8f], a
	ldh [hff90], a
	ldh [hff91], a
	ldh [hff94], a
	ldh [hff95], a
	ldh [hff96], a
	ldh [hff97], a
	ld a, b
	or c
	or d
	or e
.asm_69a92
	jr z, .asm_69a92
	ld a, $20
.asm_69a96
	push af
	ldh a, [hff8a]
	sla a
	ldh [hff8a], a
	ldh a, [hff8b]
	rla
	ldh [hff8b], a
	ldh a, [hff8c]
	rla
	ldh [hff8c], a
	ldh a, [hff8d]
	rla
	ldh [hff8d], a
	ldh a, [hff8e]
	rla
	ldh [hff8e], a
	ldh a, [hff8f]
	rla
	ldh [hff8f], a
	ldh a, [hff90]
	rla
	ldh [hff90], a
	ldh a, [hff91]
	rla
	ldh [hff91], a
	ldh a, [hff8e]
	sub e
	ldh a, [hff8f]
	sbc d
	ldh a, [hff90]
	sbc c
	ldh a, [hff91]
	sbc b
	jr c, .asm_69ae2
	ldh a, [hff8e]
	sub e
	ldh [hff8e], a
	ldh a, [hff8f]
	sbc d
	ldh [hff8f], a
	ldh a, [hff90]
	sbc c
	ldh [hff90], a
	ldh a, [hff91]
	sbc b
	ldh [hff91], a
.asm_69ae2
	ccf
	ldh a, [hff94]
	rla
	ldh [hff94], a
	ldh a, [hff95]
	rla
	ldh [hff95], a
	ldh a, [hff96]
	rla
	ldh [hff96], a
	ldh a, [hff97]
	rla
	ldh [hff97], a
	pop af
	dec a
	jr nz, .asm_69a96
	ldh a, [hff94]
	ld e, a
	ldh a, [hff95]
	ld d, a
	ldh a, [hff96]
	ld c, a
	ldh a, [hff97]
	ld b, a
	ret
; 0x69b08

SECTION "Bank 1a@6209", ROMX[$6209], BANK[$1a]

Func_6a209:
	call Func_2380
	ret
; 0x6a20d

SECTION "Bank 1a@62ec", ROMX[$62ec], BANK[$1a]

Func_6a2ec:
	call Func_2470
	ret
; 0x6a2f0

SECTION "Bank 1a@62f4", ROMX[$62f4], BANK[$1a]

Func_6a2f4:
	call Func_25ab
	ret
; 0x6a2f8

SECTION "Bank 1a@666d", ROMX[$666d], BANK[$1a]

Func_6a66d:
	ld a, $01
	ld [wcdc5], a
	call Func_2a3c
	ret
; 0x6a676

SECTION "Bank 1a@67a8", ROMX[$67a8], BANK[$1a]

; beside the checksum, save data must have
; this string in the header to be considered valid
SaveDataMagicString:
	db "POKEPONCGB", $0c, $00

Func_6a7b4::
	ld b, FALSE
	jr Func_6a7bc

	ld b, TRUE
	jr Func_6a7bc ; useless jump

; if b = TRUE, then overwrite save data with a fresh save;
; otherwise, validate both main and backup save data and,
; if neither are valid, then also overwrite with new save data
Func_6a7bc:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $01
	sramswitch
	ld a, b
	and a
	jr nz, .new_game
	ld hl, sSaveDataContent
	ld bc, sSaveDataEnd - sSaveDataContent
	call CalculateChecksum
	; is the checksum valid?
	ld hl, sSaveDataChecksum
	ld a, e
	cp [hl]
	jr nz, .invalid_checksum
	inc hl
	ld a, d
	cp [hl]
	jr nz, .invalid_checksum
	jr .valid_checksum

.invalid_checksum
	; overwrites sSaveData with sBackupSaveData
	copy_data wScratch, sBackupSaveData, sSaveDataEnd - sSaveData
	copy_data sSaveData, wScratch, sSaveDataEnd - sSaveData

	ld hl, sSaveDataContent
	ld bc, sSaveDataEnd - sSaveDataContent
	call CalculateChecksum
	; is the backup checksum valid?
	ld hl, sSaveDataChecksum
	ld a, e
	cp [hl]
	jr nz, .new_game
	inc hl
	ld a, d
	cp [hl]
	jr nz, .new_game
	; yes it's valid, continue
.valid_checksum
	ld hl, sUnkData
	ld bc, sUnkDataEnd - sUnkData
	call CalculateChecksum
	ld hl, sUnkChecksum
	ld a, e
	cp [hl]
	jp nz, .asm_6a8dc
	inc hl
	ld a, d
	cp [hl]
	jp nz, .asm_6a8dc

	; do the magic values match?
	ld hl, SaveDataMagicString
	ld de, sSaveDataMagic
	ld bc, 12
	call CompareHLtoDE
	jr nz, .new_game ; no

	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

.new_game
	; overwrite data with a new game save file
	ldh a, [hWRAMBank]
	push af
	ld a, $03
	wramswitch

	; zero out the checksums
	xor a
	ldh [hff8a], a
	ldh [hff8b], a
	ldh [hff8c], a
	copy_data sSaveDataChecksum, hff8a, $3
	copy_data sBackupSaveDataChecksum, hff8a, $3

	ld de, $d000
	ld bc, $1000
	ld a, $ff
	call FillMemory

	; fill all SRAM1 with $ff
	ld de, STARTOF("SRAM1")
	ld bc, SIZEOF(SRAM)
	ld a, $ff
	call FillMemory

	; fill all SRAM2 with $ff
	copy_data $a000, $02, $d000, $03, $1000 ; a000, d000
	copy_data $b000, $02, $d000, $03, $1000 ; b000, d000
	pop af
	wramswitch

	; fill in the magic string
	ld hl, SaveDataMagicString
	ld de, sSaveDataMagic
	ld bc, 12
	call CopyHLtoDE

	ld de, sSaveDataUnk52C
	ld bc, $158
	ld a, $00
	call FillMemory

	call Func_6a8f0
	call Func_6a95b
	call Func_6ad0e
	call Func_6ad66
	call Func_6addf
	call Func_6ae21
	call Func_6ae73
	call Func_6aede

	ld de, sSaveDataUnk632
	ld bc, 14
	ld a, $ff
	call FillMemory

	call SetSaveDataChecksumAndBackup
.asm_6a8dc
	xor a
	ld [s1ab36], a
	call Func_20d4
	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

Func_6a8f0:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $01
	sramswitch

	ld de, sSaveDataUnk00E
	ld bc, $24
	ld a, $ff
	call FillMemory

	ld de, sSaveDataUnk03B
	ld bc, $4
	ld a, $00
	call FillMemory

	ld de, sSaveDataUnk03F
	ld bc, $2
	ld a, $00
	call FillMemory

	ld hl, sSaveDataUnk032
	ld a, $00
	ld [hli], a
	ld a, $00
	ld [hli], a
	ld a, $00
	ld [hl], a

	ld hl, sSaveDataUnk035
	ld a, $00
	ld [hli], a
	ld a, $00
	ld [hli], a
	ld a, $00
	ld [hl], a

	ld hl, sSaveDataUnk038
	ld a, $00
	ld [hli], a
	ld a, $00
	ld [hli], a
	ld a, $00
	ld [hl], a

	ld a, $1e
	ld [sSaveDataUnk041], a
	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

Func_6a95b:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $01
	sramswitch

	call Func_6a993
	call Func_6aa8c
	call Func_6ab85
	call Func_6ac7e

	ld de, sSaveDataUnk106
	ld bc, $2
	ld a, $00
	call FillMemory

	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

Func_6a993:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $01
	sramswitch

	ld a, $d0
	ld [sSaveDataUnk076 + $0], a
	ld a, $07
	ld [sSaveDataUnk076 + $1], a
	ld a, $00
	ld [sSaveDataUnk076 + $2], a
	ld hl, .sen_string
	jr .copy_sen_string
.sen_string
	db "SEN"
.copy_sen_string
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $03], a
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $04], a
	ld a, [hl]
	sub 'A'
	ld [sSaveDataUnk076 + $05], a

	ld a, $e8
	ld [sSaveDataUnk076 + $06], a
	ld a, $03
	ld [sSaveDataUnk076 + $07], a
	ld a, $00
	ld [sSaveDataUnk076 + $08], a
	ld hl, .chi_string
	jr .copy_chi_string
.chi_string
	db "CHI"
.copy_chi_string
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $09], a
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $0a], a
	ld a, [hl]
	sub 'A'
	ld [sSaveDataUnk076 + $0b], a

	ld a, $20
	ld [sSaveDataUnk076 + $0c], a
	ld a, $03
	ld [sSaveDataUnk076 + $0d], a
	ld a, $00
	ld [sSaveDataUnk076 + $0e], a
	ld hl, .mur_string
	jr .copy_mur_string
.mur_string
	db "MUR"
.copy_mur_string
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $0f], a
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $10], a
	ld a, [hl]
	sub 'A'
	ld [sSaveDataUnk076 + $11], a

	ld a, $90
	ld [sSaveDataUnk076 + $12], a
	ld a, $01
	ld [sSaveDataUnk076 + $13], a
	ld a, $00
	ld [sSaveDataUnk076 + $14], a
	ld hl, .nis_string
	jr .copy_nis_string
.nis_string
	db "NIS"
.copy_nis_string
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $15], a
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $16], a
	ld a, [hl]
	sub 'A'
	ld [sSaveDataUnk076 + $17], a

	ld a, $c8
	ld [sSaveDataUnk076 + $18], a
	ld a, $00
	ld [sSaveDataUnk076 + $19], a
	ld a, $00
	ld [sSaveDataUnk076 + $1a], a
	ld hl, .yam_string
	jr .copy_yam_string
.yam_string
	db "YAM"
.copy_yam_string
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $1b], a
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $1c], a
	ld a, [hl]
	sub 'A'
	ld [sSaveDataUnk076 + $1d], a

	ld de, sSaveDataUnk0E2
	ld bc, $3
	ld a, $00
	call FillMemory

	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

Func_6aa8c:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $01
	sramswitch

	ld a, $dc
	ld [sSaveDataUnk076 + $24], a
	ld a, $05
	ld [sSaveDataUnk076 + $25], a
	ld a, $00
	ld [sSaveDataUnk076 + $26], a
	ld hl, .ymu_string
	jr .copy_ymu_string
.ymu_string
	db "YMU"
.copy_ymu_string
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $27], a
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $28], a
	ld a, [hl]
	sub 'A'
	ld [sSaveDataUnk076 + $29], a

	ld a, $20
	ld [sSaveDataUnk076 + $2a], a
	ld a, $03
	ld [sSaveDataUnk076 + $2b], a
	ld a, $00
	ld [sSaveDataUnk076 + $2c], a
	ld hl, .ima_string
	jr .copy_ima_string
.ima_string
	db "IMA"
.copy_ima_string
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $2d], a
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $2e], a
	ld a, [hl]
	sub 'A'
	ld [sSaveDataUnk076 + $2f], a

	ld a, $f4
	ld [sSaveDataUnk076 + $30], a
	ld a, $01
	ld [sSaveDataUnk076 + $31], a
	ld a, $00
	ld [sSaveDataUnk076 + $32], a
	ld hl, .ymg_string
	jr .copy_ymg_string
.ymg_string
	db "YMG"
.copy_ymg_string
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $33], a
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $34], a
	ld a, [hl]
	sub 'A'
	ld [sSaveDataUnk076 + $35], a

	ld a, $2c
	ld [sSaveDataUnk076 + $36], a
	ld a, $01
	ld [sSaveDataUnk076 + $37], a
	ld a, $00
	ld [sSaveDataUnk076 + $38], a
	ld hl, .nsm_string
	jr .copy_nsm_string
.nsm_string
	db "NSM"
.copy_nsm_string
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $39], a
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $3a], a
	ld a, [hl]
	sub 'A'
	ld [sSaveDataUnk076 + $3b], a

	ld a, $96
	ld [sSaveDataUnk076 + $3c], a
	ld a, $00
	ld [sSaveDataUnk076 + $3d], a
	ld a, $00
	ld [sSaveDataUnk076 + $3e], a
	ld hl, .hig_string
	jr .copy_hig_string
.hig_string
	db "HIG"
.copy_hig_string
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $3f], a
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $40], a
	ld a, [hl]
	sub 'A'
	ld [sSaveDataUnk076 + $41], a

	ld de, sSaveDataUnk0E5
	ld bc, $3
	ld a, $00
	call FillMemory

	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

Func_6ab85:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $01
	sramswitch

	ld a, $e8
	ld [sSaveDataUnk076 + $48], a
	ld a, $03
	ld [sSaveDataUnk076 + $49], a
	ld a, $00
	ld [sSaveDataUnk076 + $4a], a
	ld hl, .wat_string
	jr .copy_wat_string
.wat_string
	db "WAT"
.copy_wat_string
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $4b], a
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $4c], a
	ld a, [hl]
	sub 'A'
	ld [sSaveDataUnk076 + $4d], a

	ld a, $58
	ld [sSaveDataUnk076 + $4e], a
	ld a, $02
	ld [sSaveDataUnk076 + $4f], a
	ld a, $00
	ld [sSaveDataUnk076 + $50], a
	ld hl, .ish_string
	jr .copy_ish_string
.ish_string
	db "ISH"
.copy_ish_string
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $51], a
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $52], a
	ld a, [hl]
	sub 'A'
	ld [sSaveDataUnk076 + $53], a

	ld a, $2c
	ld [sSaveDataUnk076 + $54], a
	ld a, $01
	ld [sSaveDataUnk076 + $55], a
	ld a, $00
	ld [sSaveDataUnk076 + $56], a
	ld hl, .kas_string
	jr .copy_kas_string
.kas_string
	db "KAS"
.copy_kas_string
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $57], a
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $58], a
	ld a, [hl]
	sub 'A'
	ld [sSaveDataUnk076 + $59], a

	ld a, $c8
	ld [sSaveDataUnk076 + $5a], a
	ld a, $00
	ld [sSaveDataUnk076 + $5b], a
	ld a, $00
	ld [sSaveDataUnk076 + $5c], a
	ld hl, .mor_string
	jr .copy_mor_string
.mor_string
	db "MOR"
.copy_mor_string
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $5d], a
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $5e], a
	ld a, [hl]
	sub 'A'
	ld [sSaveDataUnk076 + $5f], a

	ld a, $64
	ld [sSaveDataUnk076 + $60], a
	ld a, $00
	ld [sSaveDataUnk076 + $61], a
	ld a, $00
	ld [sSaveDataUnk076 + $62], a
	ld hl, .mrs_string
	jr .copy_mrs_string
.mrs_string
	db "MRS"
.copy_mrs_string
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $63], a
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $64], a
	ld a, [hl]
	sub 'A'
	ld [sSaveDataUnk076 + $65], a

	ld de, sSaveDataUnk0E8
	ld bc, $3
	ld a, $00
	call FillMemory

	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

Func_6ac7e:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $01
	sramswitch
	ld a, $88
	ld [sSaveDataUnk0EB + $00], a
	ld a, $13
	ld [sSaveDataUnk0EB + $01], a
	ld a, $00
	ld [sSaveDataUnk0EB + $02], a
	ld a, $00
	ld [sSaveDataUnk0EB + $03], a
	ld a, $d0
	ld [sSaveDataUnk0EB + $04], a
	ld a, $07
	ld [sSaveDataUnk0EB + $05], a
	ld a, $00
	ld [sSaveDataUnk0EB + $06], a
	ld a, $00
	ld [sSaveDataUnk0EB + $07], a
	ld a, $e8
	ld [sSaveDataUnk0EB + $08], a
	ld a, $03
	ld [sSaveDataUnk0EB + $09], a
	ld a, $00
	ld [sSaveDataUnk0EB + $0a], a
	ld a, $00
	ld [sSaveDataUnk0EB + $0b], a
	ld a, $f4
	ld [sSaveDataUnk0EB + $0c], a
	ld a, $01
	ld [sSaveDataUnk0EB + $0d], a
	ld a, $00
	ld [sSaveDataUnk0EB + $0e], a
	ld a, $00
	ld [sSaveDataUnk0EB + $0f], a
	ld a, $c8
	ld [sSaveDataUnk0EB + $10], a
	ld a, $00
	ld [sSaveDataUnk0EB + $11], a
	ld a, $00
	ld [sSaveDataUnk0EB + $12], a
	ld a, $00
	ld [sSaveDataUnk0EB + $13], a

	ld de, sSaveDataUnk103
	ld bc, $3
	ld a, $00
	call FillMemory

	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

Func_6ad0e:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $01
	sramswitch

	ld de, sSaveDataUnk108
	ld bc, $15
	ld a, $ff
	call FillMemory

	ld de, sSaveDataUnk11D
	ld bc, $5a
	ld a, $00
	call FillMemory

	ld de, sSaveDataUnk177
	ld bc, $2
	ld a, $00
	call FillMemory

	ld de, sSaveDataUnk179
	ld bc, $2
	ld a, $ff
	call FillMemory

	ld de, sSaveDataUnk17B
	ld bc, $2
	ld a, $ff
	call FillMemory

	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

Func_6ad66:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $01
	sramswitch

	ld de, sSaveDataUnk17D
	ld bc, $27
	ld a, $ff
	call FillMemory

	ld de, sSaveDataUnk1A4
	ld bc, $8
	ld a, $ff
	call FillMemory

	ld de, sSaveDataUnk1AC
	ld bc, $1a4
	ld a, $00
	call FillMemory

	ld de, sSaveDataUnk350
	ld bc, $8c
	ld a, $00
	call FillMemory

	ld de, sSaveDataUnk3DC
	ld bc, $3
	ld a, $03
	call FillMemory

	ld de, sSaveDataUnk3DF
	ld bc, $24
	ld a, $ff
	call FillMemory

	ld de, sSaveDataUnk403
	ld bc, $3
	ld a, $03
	call FillMemory

	ld de, sSaveDataUnk406
	ld bc, $24
	ld a, $ff
	call FillMemory

	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

Func_6addf:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $01
	sramswitch

	ld de, sSaveDataUnk42A
	ld bc, $16
	ld a, $ff
	call FillMemory

	ld de, sSaveDataUnk440
	ld bc, $f
	ld a, $ff
	call FillMemory

	ld de, sSaveDataUnk44F
	ld bc, $d
	ld a, $ff
	call FillMemory

	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

Func_6ae21:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $01
	sramswitch

	ld de, sSaveDataUnk45C
	ld bc, $b6
	ld a, $ff
	call FillMemory

	ld hl, .Data
	ld de, sSaveDataUnk512
	ld bc, $1a
	call CopyHLtoDE

	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

.Data:
	db $02, $10, $1e, $0e, $1c, $1d, $ff, $ff, $ff, $ff, $0f, $27, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Func_6ae73:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $01
	sramswitch

	ld de, sSaveDataUnk042
	ld bc, $24
	ld a, $ff
	call FillMemory

	ld de, sSaveDataUnk06F
	ld bc, $4
	ld a, $00
	call FillMemory

	ld de, sSaveDataUnk073
	ld bc, $2
	ld a, $00
	call FillMemory

	ld hl, sSaveDataUnk066
	ld a, $00
	ld [hli], a
	ld a, $00
	ld [hli], a
	ld a, $00
	ld [hl], a

	ld hl, sSaveDataUnk069
	ld a, $00
	ld [hli], a
	ld a, $00
	ld [hli], a
	ld a, $00
	ld [hl], a

	ld hl, sSaveDataUnk06C
	ld a, $00
	ld [hli], a
	ld a, $00
	ld [hli], a
	ld a, $00
	ld [hl], a

	ld a, $1e
	ld [sSaveDataUnk075], a

	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

Func_6aede:
	ld a, $02
	ld [sSaveDataUnk644], a
	xor a
	ld [sSaveDataUnk645], a
	xor a
	ld [sSaveDataUnk674 + $0], a
	ld [sSaveDataUnk674 + $1], a
	ld [sSaveDataUnk674 + $2], a
	ld [sSaveDataUnk674 + $3], a
	ld [sSaveDataUnk674 + $4], a
	ld [sSaveDataUnk674 + $5], a
	ld [sSaveDataUnk674 + $6], a
	ld [sSaveDataUnk674 + $7], a
	call Func_6b30e
	ret

Func_6af04::
	ld c, 1 ; byte
	ld de, s1ab36
	ld hl, hff8a
	call CopySRAM1
	ldh a, [hff8a]
	ld b, a
	ret
; 0x6af13

SECTION "Bank 1a@71cd", ROMX[$71cd], BANK[$1a]

Func_6b1cd:
	ld a, b
	ld [wcdc3], a
	ld de, wcdc4
	ld bc, $7
	ld a, $00
	call FillMemory
	call Func_6a209
	call SetSaveDataChecksumAndBackup
	ret

Func_6b1e3:
	ld a, b
	ld [wcdc3], a
	ld de, wcdc4
	ld bc, $d
	ld a, $00
	call FillMemory
	call Func_6a2ec
	call SetSaveDataChecksumAndBackup
	ret
; 0x6b1f9

SECTION "Bank 1a@72ab", ROMX[$72ab], BANK[$1a]

Func_6b2ab:
	push bc
	ld a, b
	ld [wcdc3], a
	call Func_24ac
	pop bc
	ld a, b
	ld [wcdc3], a
	ld a, c
	ld [$cdcc], a
	ld [$c8e1], a
	call Func_6a2ec
	call SetSaveDataChecksumAndBackup
	ret
; 0x6b2c6

SECTION "Bank 1a@730e", ROMX[$730e], BANK[$1a]

Func_6b30e:
	call Func_6b31e
	call Func_6b338
	call Func_6b39d
	call Func_6b3b7
	call Func_6b3d1
	ret

Func_6b31e:
	ldh a, [hWRAMBank]
	push af
	ld a, $01
	wramswitch
	ld c, 1 ; byte
	ld hl, w1da9e
	ld de, sSaveDataUnk644
	call CopySRAM1
	pop af
	wramswitch
	ret

Func_6b338:
	ldh a, [hWRAMBank]
	push af
	ld de, NULL
.loop
	push de
	ld a, e
	add a
	add e ; *3
	ld c, a
	ld b, d
	ld hl, .WRAMAddresses + $2
	add hl, bc
	ld a, [hld]
	cp $ff
	jr z, .done
	wramswitch
	ld a, [hld]
	ld l, [hl]
	ld h, a
	push hl
	ld a, e
	add a
	ld e, a ; *2
	ld d, $00
	ld hl, .SRAMAddresses
	add hl, de
	ld a, [hli]
	ld d, [hl]
	ld e, a
	ld c, 1 ; byte
	pop hl
	call CopySRAM1
	pop de
	inc e
	jr .loop
.done
	pop de
	pop af
	wramswitch
	ret

.SRAMAddresses:
	dw sSaveDataUnk674 + $0
	dw sSaveDataUnk674 + $1
	dw sSaveDataUnk674 + $2
	dw sSaveDataUnk674 + $3
	dw sSaveDataUnk674 + $4
	dw sSaveDataUnk674 + $5
	dw sSaveDataUnk674 + $6
	dw sSaveDataUnk674 + $7

.WRAMAddresses:
	dab w1da96
	dab w1da97
	dab w1da98
	dab w1da99
	dab w1da9a
	dab w1da9b
	dab w1da9c
	dab w1da9d
	db $ff, $ff, $ff

Func_6b39d:
	ldh a, [hWRAMBank]
	push af
	ld a, $01
	wramswitch
	ld c, 1 ; byte
	ld hl, w1da9f
	ld de, sSaveDataUnk645
	call CopySRAM1
	pop af
	wramswitch
	ret

Func_6b3b7:
	ldh a, [hWRAMBank]
	push af
	ld a, $01
	wramswitch
	ld c, 1 ; byte
	ld hl, w1daa0
	ld de, sSaveDataUnk641
	call CopySRAM1
	pop af
	wramswitch
	ret

Func_6b3d1:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	copy_data wce38, sSaveDataUnk642, $2
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret
; 0x6b3ed
