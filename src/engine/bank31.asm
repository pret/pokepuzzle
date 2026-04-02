Func_c4000:
	ld hl, wcee9 + 1
	ld a, [hld]
	and a
	ret z
	ld l, [hl]
	ld h, a
	call Func_692
	ld bc, 12 + 1
	add hl, bc
	ld a, [hld]
	and a ; NULL?
	jr z, .done
	ld a, l
	ld [wcee9 + 0], a
	ld a, h
	ld [wcee9 + 1], a
	ret
.done
	ld hl, wcee9
	xor a
	ld [hli], a
	ld [hld], a
	ret
; 0xc4023

SECTION "Bank 31@4bc3", ROMX[$4bc3], BANK[$31]

Data_c4bc3:
	dwb $9808, $00
	dwb $b800, $03
	dw $0c
	dw $14
	dw $04

	dwb $9888, $00
	dwb $b830, $03
	dw $0c
	dw $14
	dw $04

	dwb $9908, $00
	dwb $b860, $03
	dw $0c
	dw $14
	dw $02

	dwb $8800, $00
	dwb $a000, $03
	dw $40
	dw $00
	dw $01

	dwb $8840, $00
	dwb $a040, $03
	dw $40
	dw $00
	dw $01

	dwb $8880, $00
	dwb $a080, $03
	dw $40
	dw $00
	dw $01

	dwb $88c0, $00
	dwb $a0c0, $03
	dw $40
	dw $00
	dw $01

	dwb $8900, $00
	dwb $a100, $03
	dw $40
	dw $00
	dw $01

	dwb $8940, $00
	dwb $a140, $03
	dw $40
	dw $00
	dw $01

	dwb $8980, $00
	dwb $a180, $03
	dw $40
	dw $00
	dw $01

	dwb $89c0, $00
	dwb $a1c0, $03
	dw $40
	dw $00
	dw $01

	dwb $8a00, $00
	dwb $a200, $03
	dw $40
	dw $00
	dw $01

	dwb $8a40, $00
	dwb $a240, $03
	dw $40
	dw $00
	dw $01

	dwb $8a80, $00
	dwb $a280, $03
	dw $40
	dw $00
	dw $01

	dwb $8ac0, $00
	dwb $a2c0, $03
	dw $40
	dw $00
	dw $01

	dwb $8b00, $00
	dwb $a300, $03
	dw $40
	dw $00
	dw $01

	dwb $8b40, $00
	dwb $a340, $03
	dw $40
	dw $00
	dw $01

	dwb $8b80, $00
	dwb $a380, $03
	dw $40
	dw $00
	dw $01

	dwb $8bc0, $00
	dwb $a3c0, $03
	dw $40
	dw $00
	dw $01

	dwb $8c00, $00
	dwb $a400, $03
	dw $40
	dw $00
	dw $01

	dwb $8c40, $00
	dwb $a440, $03
	dw $40
	dw $00
	dw $01

	dwb $8c80, $00
	dwb $a480, $03
	dw $40
	dw $00
	dw $01

	dwb $8cc0, $00
	dwb $a4c0, $03
	dw $40
	dw $00
	dw $01

	dwb $8d00, $00
	dwb $a500, $03
	dw $40
	dw $00
	dw $01

	dwb $8d40, $00
	dwb $a540, $03
	dw $40
	dw $00
	dw $01

	dwb $8d80, $00
	dwb $a580, $03
	dw $40
	dw $00
	dw $01

	dwb $8dc0, $00
	dwb $a5c0, $03
	dw $40
	dw $00
	dw $01

	dwb $8e00, $00
	dwb $a600, $03
	dw $40
	dw $00
	dw $01

	dwb $8e40, $00
	dwb $a640, $03
	dw $40
	dw $00
	dw $01

	dwb $8e80, $00
	dwb $a680, $03
	dw $40
	dw $00
	dw $01

	dab NULL
	dab NULL
	dw $00
	dw $00
	dw $01

Data_c4d37:
	dwb $8000, $00
	dwb $a700, $03
	dw $40
	dw $00
	dw $01

	dwb $8040, $00
	dwb $a740, $03
	dw $40
	dw $00
	dw $01

	dwb $8080, $00
	dwb $a780, $03
	dw $40
	dw $00
	dw $01

	dwb $8100, $00
	dwb $a7a0, $03
	dw $40
	dw $00
	dw $01

	dwb $8140, $00
	dwb $a7e0, $03
	dw $40
	dw $00
	dw $01

	dwb $8180, $00
	dwb $a820, $03
	dw $40
	dw $00
	dw $01

	dab NULL
	dab NULL
	dw $00
	dw $00
	dw $01

Data_c4d8b:
	dwb $8200, $00
	dwb $a840, $03
	dw $40
	dw $00
	dw $01

	dwb $8240, $00
	dwb $a880, $03
	dw $40
	dw $00
	dw $01

	dwb $8280, $00
	dwb $a8c0, $03
	dw $40
	dw $00
	dw $01

	dwb $82c0, $00
	dwb $a900, $03
	dw $40
	dw $00
	dw $01

	dab NULL
	dab NULL
	dw $00
	dw $00
	dw $01

Data_c4dc7:
	dwb $8800, $00
	dwb $aea0, $03
	dw $40
	dw $00
	dw $01

	dwb $8840, $00
	dwb $aee0, $03
	dw $40
	dw $00
	dw $01

	dwb $8880, $00
	dwb $af20, $03
	dw $40
	dw $00
	dw $01

	dwb $88c0, $00
	dwb $af60, $03
	dw $40
	dw $00
	dw $01

	dwb $8900, $00
	dwb $afa0, $03
	dw $40
	dw $00
	dw $01

	dwb $8940, $00
	dwb $afe0, $03
	dw $40
	dw $00
	dw $01

	dwb $8980, $00
	dwb $b020, $03
	dw $40
	dw $00
	dw $01

	dwb $89c0, $00
	dwb $b060, $03
	dw $40
	dw $00
	dw $01

	dwb $8a00, $00
	dwb $b0a0, $03
	dw $40
	dw $00
	dw $01

	dwb $8a40, $00
	dwb $b0e0, $03
	dw $40
	dw $00
	dw $01

	dwb $8a80, $00
	dwb $b120, $03
	dw $40
	dw $00
	dw $01

	dwb $8ac0, $00
	dwb $b160, $03
	dw $40
	dw $00
	dw $01

	dwb $8b00, $00
	dwb $b1a0, $03
	dw $40
	dw $00
	dw $01

	dwb $8b40, $00
	dwb $b1e0, $03
	dw $40
	dw $00
	dw $01

	dwb $8b80, $00
	dwb $b220, $03
	dw $40
	dw $00
	dw $01

	dwb $8bc0, $00
	dwb $b260, $03
	dw $40
	dw $00
	dw $01

	dwb $8c00, $00
	dwb $b2a0, $03
	dw $40
	dw $00
	dw $01

	dwb $8c40, $00
	dwb $b2e0, $03
	dw $40
	dw $00
	dw $01

	dwb $8c80, $00
	dwb $b320, $03
	dw $40
	dw $00
	dw $01

	dwb $8cc0, $00
	dwb $b360, $03
	dw $40
	dw $00
	dw $01

	dwb $8d00, $00
	dwb $b3a0, $03
	dw $40
	dw $00
	dw $01

	dwb $8d40, $00
	dwb $b3e0, $03
	dw $40
	dw $00
	dw $01

	dwb $8d80, $00
	dwb $b420, $03
	dw $40
	dw $00
	dw $01

	dwb $8dc0, $00
	dwb $b460, $03
	dw $40
	dw $00
	dw $01

	dwb $8e00, $00
	dwb $b740, $03
	dw $40
	dw $00
	dw $01

	dwb $8e40, $00
	dwb $b780, $03
	dw $40
	dw $00
	dw $01

	dwb $8e80, $00
	dwb $b7c0, $03
	dw $40
	dw $00
	dw $01

	dwb $8f00, $00
	dwb $b470, $03
	dw $40
	dw $00
	dw $01

	dwb $8f40, $00
	dwb $b4b0, $03
	dw $40
	dw $00
	dw $01

	dwb $8f80, $00
	dwb $b4f0, $03
	dw $40
	dw $00
	dw $01

	dwb $8fc0, $00
	dwb $b530, $03
	dw $40
	dw $00
	dw $01

	dwb $9600, $00
	dwb $b540, $03
	dw $40
	dw $00
	dw $01

	dwb $9640, $00
	dwb $b580, $03
	dw $40
	dw $00
	dw $01

	dwb $9680, $00
	dwb $b5c0, $03
	dw $20
	dw $00
	dw $01

	dwb $9700, $00
	dwb $b5e0, $03
	dw $40
	dw $00
	dw $01

	dwb $9740, $00
	dwb $b620, $03
	dw $40
	dw $00
	dw $01

	dwb $9780, $00
	dwb $b660, $03
	dw $20
	dw $00
	dw $01

	dwb $9808, $00
	dwb $b878, $03
	dw $0c
	dw $14
	dw $04

	dwb $9888, $00
	dwb $b8a8, $03
	dw $0c
	dw $14
	dw $04

	dwb $9908, $00
	dwb $b8d8, $03
	dw $0c
	dw $14
	dw $04

	dwb $9988, $00
	dwb $b908, $03
	dw $0c
	dw $14
	dw $04

	dwb $9a08, $00
	dwb $b938, $03
	dw $0c
	dw $14
	dw $02

	dab NULL
	dab NULL
	dw $00
	dw $00
	dw $01

Data_c4fcb:
	dwb $8f00, $00
	dwb $b470, $03
	dw $40
	dw $00
	dw $01

	dwb $8f40, $00
	dwb $b4b0, $03
	dw $40
	dw $00
	dw $01

	dwb $8f80, $00
	dwb $b4f0, $03
	dw $40
	dw $00
	dw $01

	dwb $8fc0, $00
	dwb $b530, $03
	dw $40
	dw $00
	dw $01

	dab NULL
	dab NULL
	dw $00
	dw $00
	dw $01

Data_c5007:
	dwb $96a0, $00
	dwb $b680, $03
	dw $30
	dw $00
	dw $01

	dwb $96d0, $00
	dwb $b6b0, $03
	dw $30
	dw $00
	dw $01

	dwb $97a0, $00
	dwb $b6e0, $03
	dw $30
	dw $00
	dw $01

	dwb $97d0, $00
	dwb $b710, $03
	dw $30
	dw $00
	dw $01

	dab NULL
	dab NULL
	dw $00
	dw $00
	dw $01

Data_c5043:
	dwb $9948, $00
	dwb $b878, $03
	dw $0c
	dw $14
	dw $04

	dwb $99c8, $00
	dwb $b8a8, $03
	dw $0c
	dw $14
	dw $04

	dab NULL
	dab NULL
	dw $00
	dw $00
	dw $01

Data_c5067:
	dwb $8000, $00
	dwb $ada0, $03
	dw $40
	dw $00
	dw $01

	dwb $8040, $00
	dwb $ade0, $03
	dw $40
	dw $00
	dw $01

	dwb $8080, $00
	dwb $ae20, $03
	dw $40
	dw $00
	dw $01

	dwb $80c0, $00
	dwb $ae60, $03
	dw $40
	dw $00
	dw $01

	dab NULL
	dab NULL
	dw $00
	dw $00
	dw $01
; 0xc4bcf

SECTION "Bank 31@50a3", ROMX[$50a3], BANK[$31]

Func_c50a3:
	ld bc, $50ac
	ld a, [wcea3]
	jp Func_c512f
; 0xc50ac

SECTION "Bank 31@50c6", ROMX[$50c6], BANK[$31]

Func_c50c6:
	ld bc, $50cf
	ld a, [wcea3]
	jp Func_c512f
; 0xc50cf

SECTION "Bank 31@512f", ROMX[$512f], BANK[$31]

Func_c512f:
	add a
	ld l, a
	ld h, $00
	add hl, bc
	ld a, [hli]
	ld [wcee9 + 0], a
	ld a, [hld]
	ld [wcee9 + 1], a
	ret

Func_c513d:
	xor a
	ld [$d89e], a
	xor a
	ld [wcee0], a
	ld [wcee1], a
	ld [wcee2], a
	ld [wcee3], a
	ld [wcedb], a
	ld [wcedc], a
	ld [wcedd], a
	ld [wcede], a
	ld [$d864], a
	jp Func_c5676

Func_c5160:
	ldh a, [hffb7]
	and $01
	ret nz
	ld a, [wcedc]
	and a
	ret z
	add a
	ld l, a
	ld h, $00
	ld bc, $5176
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl
; 0xc5176

SECTION "Bank 31@5343", ROMX[$5343], BANK[$31]

Func_c5343:
	ld a, [wcedc]
	and a
	ret z
	add a
	ld l, a
	ld h, $00
	ld bc, $5354
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl
; 0xc5354

SECTION "Bank 31@5432", ROMX[$5432], BANK[$31]

Func_c5432:
	hlbgcoord 8, 0
	jr Func_c543a
Func_c5437:
	hlbgcoord 8, 16
Func_c543a:
	ld de, TILEMAP_WIDTH - 12
	xor a
	ld c, $10
.loop_rows
	REPT 12
		ld [hli], a
	ENDR
	add hl, de
	dec c
	jr nz, .loop_rows
	ret

Func_c5451:
	hlbgcoord 11, 10
	ld a, $fa
	ld [hli], a
	ld a, $fb
	ld [hli], a
	ld a, $fd
	ld [hli], a
	ld a, $fe
	ld [hli], a
	ld de, wcec5 + $5
	ld a, [wGameMode]
	cp $00
	jr z, .asm_c546d
	ld de, wcecc + $5
.asm_c546d
	hlbgcoord 11, 11
	ld b, $f0
	ld c, $05
.asm_c5474
	ld a, [de]
	and a
	jr nz, .asm_c547d
	inc hl
	dec de
	dec c
	jr nz, .asm_c5474
.asm_c547d
	inc c
.asm_c547e
	ld a, [de]
	add b
	ld [hl], a
	inc hl
	dec de
	dec c
	jr nz, .asm_c547e
	hlbgcoord 11, 12
	ld a, $fc
	ld [hli], a
	ld a, $fd
	ld [hli], a
	ld a, $fe
	ld [hli], a
	hlbgcoord 11, 13
	ld de, $d88a
	ld b, $f0
	ld c, $05
.asm_c549c
	ld a, [de]
	and a
	jr nz, .asm_c54a5
	inc hl
	dec de
	dec c
	jr nz, .asm_c549c
.asm_c54a5
	inc c
.asm_c54a6
	ld a, [de]
	add b
	ld [hl], a
	inc hl
	dec de
	dec c
	jr nz, .asm_c54a6
	ret

Func_c54af:
	ldh a, [hffb7]
	jr Func_c54c3
Func_c54b3:
	ldh a, [hffb7]
	jr Func_c54c5
	ldh a, [hffb7]
	jr Func_c54c7
	ldh a, [hffb7]
	jr Func_c54c9
Func_c54bf:
	ldh a, [hffb7]
	jr Func_c54cb

Func_c54c3:
	srl a
Func_c54c5:
	srl a
Func_c54c7:
	srl a
Func_c54c9:
	srl a
Func_c54cb:
	srl a
	bit 2, a
	jr nz, .asm_c54d8
	and $03
	jr z, .asm_c54df
	ld e, $01
	ret
.asm_c54d8
	and $03
	jr z, .asm_c54df
	ld e, $ff
	ret
.asm_c54df
	ld e, $00
	ret
; 0xc54e2

SECTION "Bank 31@54f4", ROMX[$54f4], BANK[$31]

Func_c54f4:
	ldh a, [hffb7]
	srl a
	jr Func_c5507
	ldh a, [hffb7]
	add a
	jr Func_c5507
	ldh a, [hffb7]
	add a
	add a
	jr Func_c5507
Func_c5505:
	ldh a, [hffb7]

Func_c5507:
	push hl
	and $1f
	add $15
	ld l, a
	ld a, $00
	adc $55
	ld h, a
	ld e, [hl]
	pop hl
	ret
; 0xc5515

SECTION "Bank 31@5535", ROMX[$5535], BANK[$31]

Func_c5535:
	ld a, [wcedd]
	and a
	jr z, .asm_c5540
	call Func_c54bf
	jr .asm_c5543
.asm_c5540
	call Func_c54b3
.asm_c5543
	ld b, $19
	ld a, $7b
	add e
	ld c, a
	ld hl, $6d71
	ld e, $32
	call Func_32c
	ret

Func_c5552:
	ld a, [wcec3]
	and a
	jr z, .asm_c555f
	ld hl, $6dcb
	ld e, $00
	jr .asm_c5577
.asm_c555f
	ld a, [wcedd]
	and a
	jr nz, .asm_c556d
	ld hl, $6db2
	call Func_c5505
	jr .asm_c5577
.asm_c556d
	ldh a, [hffb7]
	bit 2, a
	ret z
	ld hl, $6db2
	ld e, $ff
.asm_c5577
	ld b, $20
	ld a, $91
	add e
	ld c, a
	ld e, $32
	call Func_32c
	ret

Func_c5583:
	ld a, [wcec3]
	and a
	jr nz, .asm_c5590
	ld hl, $6df5
	ld e, $00
	jr .asm_c55a8
.asm_c5590
	ld a, [wcedd]
	and a
	jr nz, .asm_c559e
	ld hl, $6de4
	call Func_c5505
	jr .asm_c55a8
.asm_c559e
	ldh a, [hffb7]
	bit 2, a
	ret z
	ld hl, $6de4
	ld e, $ff
.asm_c55a8
	ld b, $50
	ld a, $91
	add e
	ld c, a
	ld e, $32
	call Func_32c
	ret

Func_c55b4:
	ld a, [wcedd]
	and a
	jr z, .asm_c55d2
	ld e, $ff
	ld a, [wcede]
	cp $00
	jr c, .asm_c55c7
	cp $06
	jr c, .asm_c55cb
.asm_c55c7
	ld a, $00
	jr .asm_c55cc
.asm_c55cb
	inc a
.asm_c55cc
	ld [wcede], a
	add a
	jr .asm_c55ea
.asm_c55d2
	call Func_c5505
	ld a, [wcede]
	cp $00
	jr c, .asm_c55e0
	cp $0d
	jr c, .asm_c55e4
.asm_c55e0
	ld a, $00
	jr .asm_c55e5
.asm_c55e4
	inc a
.asm_c55e5
	ld [wcede], a
	and $fe
.asm_c55ea
	ld l, a
	ld h, $00
	ld bc, $560a
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wcec3]
	and a
	jr nz, .asm_c55fe
	ld b, $0f
	jr .asm_c5600
.asm_c55fe
	ld b, $3f
.asm_c5600
	ld a, $8e
	add e
	ld c, a
	ld e, $32
	call Func_32c
	ret
; 0xc560a

SECTION "Bank 31@5618", ROMX[$5618], BANK[$31]

Func_c5618:
	ld hl, $d262
	ld de, $fff9
.asm_c561e
	ld a, [hli]
	cp $01
	jr c, .asm_c562a
	cp $07
	jr nc, .asm_c562a
	add $67
	ld [hl], a
.asm_c562a
	add hl, de
	ld a, $1e
	cp l
	jr nz, .asm_c561e
	ld a, $d1
	cp h
	jr nz, .asm_c561e
	ret
; 0xc5636

SECTION "Bank 31@5676", ROMX[$5676], BANK[$31]

Func_c5676:
	call Func_1426
	ldh a, [hSCY]
	ld [$da94], a
	ld a, $01
	ld [$da95], a
	farcall Func_c3312
	farcall Func_c325c
	farcall Func_c31fe
.asm_c5695
	call ClearOAM
	farcall Func_c2b85
	call DoFrame
	ld a, [w1d58c]
	and a
	jr nz, .asm_c5695
	call Func_c5618
	farcall Func_c2bfa
	call ClearOAM
	call DoFrame
	ld hl, wVBlankHandler
	ld [hl], $c3
	inc hl
	ld [hl], LOW(Func_32df)
	inc hl
	ld [hl], HIGH(Func_32df)
	ld a, [wc7ce]
	and a
	jr nz, .asm_c56cc
	ld a, $08
	ld [wc7cb], a
.asm_c56cc
	ld a, LOW(Func_c5160)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(Func_c5160)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(Func_c5160)
	ldh [hVBlankTrampolinePtr + 1], a

	ld a, $55
	ld [$da92], a
	ld a, $5b
	ld [$da93], a
	ld a, $01
	ld [wcedc], a
.asm_c56e7
	call Func_c5a81
	call DoFrame
	ld a, [$da93]
	ld b, a
	ld a, [wcedc]
	or b
	jr nz, .asm_c56e7
	ld b, $3c
.asm_c56f9
	call Func_c5a81
	call DoFrame
	dec b
	jr nz, .asm_c56f9

	ld a, LOW(Func_c5343)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(Func_c5343)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(Func_c5343)
	ldh [hVBlankTrampolinePtr + 1], a

	ld hl, wVBlankHandler
	ld [hl], $c3
	inc hl
	ld [hl], LOW(Func_32df)
	inc hl
	ld [hl], HIGH(Func_32df)
	ld a, $01
	ld [wcedb], a
	ld [wcedc], a
.asm_c5721
	call Func_c5a81
	call DoFrame
	ld a, [wcedc]
	and a
	jr nz, .asm_c5721
	ld hl, wVBlankHandler
	ld [hl], $c3
	inc hl
	ld [hl], LOW(Func_32df)
	inc hl
	ld [hl], HIGH(Func_32df)

	ld a, LOW(Func_c5432)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(Func_c5432)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(Func_c5432)
	ldh [hVBlankTrampolinePtr + 1], a
	call DoFrame

	ld a, $50
	ldh [hSCY], a
	ld a, LOW(Func_c5437)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(Func_c5437)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(Func_c5437)
	ldh [hVBlankTrampolinePtr + 1], a
	call DoFrame

	ld a, LOW(Func_c4000)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(Func_c4000)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(Func_c4000)
	ldh [hVBlankTrampolinePtr + 1], a

	xor a
	ld [$da94], a
	ldh a, [hSRAMEnabled]
	push af
	enable_sram

	ld de, $a700
	ld c, $03
	ld hl, $60eb
	ld a, $32
	call Func_93d

	ld de, $a840
	ld c, $03
	ld hl, $60eb
	ld a, $32
	call Func_93d

	ld de, $a930
	ld c, $03
	ld hl, $60eb
	ld a, $32
	call Func_93d

	ld de, $acb0
	ld c, $03
	ld hl, $680e
	ld a, $32
	call Func_93d

	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ldh a, [hSRAMEnabled]

	push af
	enable_sram

	ld de, $b800
	ld c, $03
	ld hl, $6c29
	ld a, $32
	call Func_93d

	ld de, s3a000
	ld c, BANK(s3a000)
	ld hl, $6374
	ld a, $32
	call Func_93d

	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ldh a, [hSRAMEnabled]

	push af
	enable_sram
	ld a, LOW(Func_c4000)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(Func_c4000)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(Func_c4000)
	ldh [hVBlankTrampolinePtr + 1], a

	ld a, LOW(Data_c4bc3)
	ld [wcee9 + 0], a
	ld a, HIGH(Data_c4bc3)
	ld [wcee9 + 1], a
.asm_c57f8
	call DoFrame
	ld a, [wcee9 + 1]
	and a
	jr nz, .asm_c57f8

	ld a, $9a
	ld [$da92], a
	ld a, $5b
	ld [$da93], a

	ld a, [wGameMode]
	cp GAMEMODE_MARATHON
	jp z, .asm_c5838
	cp GAMEMODE_TIME_ZONE
	jp z, .asm_c5847
	cp GAMEMODE_LINE_CLEAR
	jp z, .asm_c5838
	cp GAMEMODE_PUZZLE
	jp z, .asm_c5838
	cp GAMEMODE_GARBAGE
	jp z, .asm_c5838
	cp GAMEMODE_CHALLENGE
	jp z, .asm_c5847
	cp GAMEMODE_UNK6
	jp z, .asm_c5847
	cp GAMEMODE_UNK7
	jp z, .asm_c5847
	debug_loop

.asm_c5838
	ld a, $ef
	ld [wcee9 + 0], a
	ld a, $49
	ld [wcee9 + 1], a
	call Func_c59ea
	jr .asm_c5847

.asm_c5847
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
.asm_c584d
	call Func_c5a6e
	jr nz, .asm_c585e
	call Func_c5a81
	call DoFrame
	ld a, [$da93]
	and a
	jr nz, .asm_c584d
.asm_c585e
	ld hl, wVBlankHandler
	ld [hl], $c3
	inc hl
	ld [hl], LOW(VBlankHandler)
	inc hl
	ld [hl], HIGH(VBlankHandler)
	ld a, [wGameMode]
	cp GAMEMODE_MARATHON
	jr z, .asm_c5876
	cp GAMEMODE_GARBAGE
	jr z, .asm_c587b
	jr .asm_c58b4
.asm_c5876
	ld de, wcec5
	jr .asm_c5880
.asm_c587b
	ld de, wcecc
	jr .asm_c5880
.asm_c5880
	ld hl, $d885
	push de
	push hl
	call Func_a31
	pop hl
	pop de
	jr nc, .asm_c5893
	push de
	push hl
	call Func_b04
	pop hl
	pop de
.asm_c5893
	ld a, LOW(Func_c5451)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(Func_c5451)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(Func_c5451)
	ldh [hVBlankTrampolinePtr + 1], a
	call Func_c5a81
	call Func_c5a2e
	call DoFrame
	ld a, LOW(Func_c4000)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(Func_c4000)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(Func_c4000)
	ldh [hVBlankTrampolinePtr + 1], a
.asm_c58b4
	ld a, $ee
	ld [$da92], a
	ld a, $5a
	ld [$da93], a
	ld a, [w1d866]
	cp $00
	jr z, .asm_c58f3
	cp $01
	jr z, .asm_c58e1
	cp $02
	jr z, .asm_c58f3
	cp $03
	jr z, .asm_c5912
	cp $04
	jr z, .asm_c58e1
	cp $05
	jr z, .asm_c58e1
	cp $06
	jr z, .asm_c58f3
	cp $07
	jr z, .asm_c5912
.asm_c58e1
	ld a, [wcea3]
	ld e, a
	ld bc, $434d
	farcall Func_c033c
	call Func_c50a3
	jr .asm_c5903
.asm_c58f3
	ld a, [wcea3]
	ld e, a
	ld bc, $434e
	farcall Func_c033c
	call Func_c50c6
.asm_c5903
	call Func_c5a81
	call Func_c5a2e
	call DoFrame
	ld a, [wcee9 + 1]
	and a
	jr nz, .asm_c5903
.asm_c5912
	call Func_c5a81
	call Func_c5a2e
	call DoFrame
	ld a, [wGameMode]
	cp GAMEMODE_MARATHON
	jr z, .asm_c592e
	cp GAMEMODE_LINE_CLEAR
	jr z, .asm_c592e
	cp GAMEMODE_PUZZLE
	jr z, .asm_c592e
	cp GAMEMODE_GARBAGE
	jr z, .asm_c592e
.asm_c592e
	xor a
	ld [wcec3], a
	ld [wcedd], a
	ld [wcede], a

	ld a, 15
	ldh [hJoypadRepeatDelay], a
	ld a, 3
	ldh [hJoypadRepeatInterval], a

.asm_c5940
	call Func_c5552
	call Func_c5583
	call Func_c55b4
	call Func_c5535
	call Func_c5a81
	call Func_c5a2e
	call Func_39d
	call DoFrame
	ldh a, [hJoypadPressed]
	and PAD_SELECT | PAD_RIGHT | PAD_LEFT
	jr z, .asm_c597c
	ld a, [wcec3]
	cp $00
	jr c, .asm_c5969
	cp $01
	jr c, .asm_c596d
.asm_c5969
	ld a, $00
	jr .asm_c596e
.asm_c596d
	inc a
.asm_c596e
	ld [wcec3], a
	ld a, [wc7ce]
	and a
	jr nz, .asm_c597c
	ld a, $02
	ld [wc7cb], a
.asm_c597c
	ldh a, [hJoypadPressed]
	and PAD_A | PAD_START
	jr nz, .asm_c5984
	jr .asm_c5940
.asm_c5984
	ld a, [wc7ce]
	and a
	jr nz, .asm_c598f
	ld a, $03
	ld [wc7cb], a
.asm_c598f
	ld a, $01
	ld [wcedd], a
	ld b, $3c
.asm_c5996
	push bc
	call Func_c5552
	call Func_c5583
	call Func_c55b4
	call Func_c5535
	call Func_c5a81
	call Func_c5a2e
	call Func_39d
	call DoFrame
	pop bc
	call Func_c5a6e
	jr nz, .asm_c59b8
	dec b
	jr nz, .asm_c5996
.asm_c59b8
	ld a, [wGameMode]
	cp GAMEMODE_MARATHON
	jr z, .asm_c59c5
	cp GAMEMODE_GARBAGE
	jr z, .asm_c59ca
	debug_loop
.asm_c59c5
	ld a, [w1d8ab]
	jr .asm_c59cf
.asm_c59ca
	ld a, [wcef8]
	jr .asm_c59cf
.asm_c59cf
	ld [wSpeedLevel], a
	ld [wcea9], a
	ld a, [wcec3]
	and a
	jr nz, .asm_c59e2
	farcall Func_c7a86
	ret
.asm_c59e2
	ld a, GAMESTATE_LOAD_PDP_MENU
	ldh [hGameState], a
	xor a
	ldh [hVBlankTrampolinePtr + 1], a
	ret

Func_c59ea:
.asm_c59ea
	call Func_c5a81
	call DoFrame
	ld a, [wcee9 + 1]
	and a
	jr nz, .asm_c59ea
	ret
; 0xc59f7

SECTION "Bank 31@5a2e", ROMX[$5a2e], BANK[$31]

Func_c5a2e:
	ld a, [$da95]
	and a
	ret z
	ld a, [wGameMode]
	cp GAMEMODE_MARATHON
	jr z, .asm_c5a43
	cp GAMEMODE_GARBAGE
	jr z, .asm_c5a43
	cp GAMEMODE_UNK7
	jr z, .asm_c5a52
	ret
.asm_c5a43
	ld hl, rLY
.asm_c5a46
	ld a, [hl]
	cp $4d
	jr nz, .asm_c5a46
.asm_c5a4b
	cp [hl]
	jr z, .asm_c5a4b
	xor a
	ldh [rSCY], a
	ret
.asm_c5a52
	ld hl, rLY
.asm_c5a55
	ld a, [hl]
	cp $47
	jr nz, .asm_c5a55
.asm_c5a5a
	cp [hl]
	jr z, .asm_c5a5a
	ld a, $08
	ldh [rSCY], a
.asm_c5a61
	ld a, [hl]
	cp $84
	jr nz, .asm_c5a61
.asm_c5a66
	cp [hl]
	jr z, .asm_c5a66
	ld a, $00
	ldh [rSCY], a
	ret

Func_c5a6e:
	ldh a, [hJoypadPressed]
	and PAD_START
	ret z
	ld a, [wc7ce]
	and a
	jr nz, .asm_c5a7e
	ld a, $03
	ld [wc7cb], a
.asm_c5a7e
	or $ff
	ret

Func_c5a81:
	ld a, [$da93]
	and a
	ret z
	push hl
	push de
	push bc
	ld a, [$da92]
	ld l, a
	ld a, [$da93]
	ld h, a
.asm_c5a91
	ld a, [hli]
	cp $81
	jr nz, .asm_c5a9b
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jr .asm_c5a91
.asm_c5a9b
	cp $82
	jr nz, .asm_c5aab
	ld a, [hli]
	push hl
	ld h, [hl]
	ld l, a
	call .jp_hl
	pop hl
	inc hl
	jr .asm_c5a91

.jp_hl
	jp hl

.asm_c5aab
	ld b, a
	ld a, [$da94]
	add b
	ldh [hSCY], a
	ld a, [hl]
	cp $80
	jr z, .asm_c5ac3
	ld a, l
	ld [$da92], a
	ld a, h
	ld [$da93], a
.asm_c5abf
	pop bc
	pop de
	pop hl
	ret
.asm_c5ac3
	xor a
	ld [$da93], a
	jr .asm_c5abf
; 0xc5ac9

SECTION "Bank 31@5bea", ROMX[$5bea], BANK[$31]

Func_c5bea:
	copy_data w1d28c, Func_11e8b, SIZEOF("WRAM1@d28c")

	farcall Func_c5cf6 ; unnecessary farcall
	farcall Func_c2bfa
	farcall Func_c3110
	farcall Func_c31fe
	farcall Func_c325c
	farcall Func_c3312
	farcall Func_10ed9
.asm_c5c1f
	farcall Func_c2b85
	di
	call w1d28c
	ei
	ld a, [w1d58c]
	and a
	jr nz, .asm_c5c1f
	ret

Func_c5c31:
	ld de, wCursorX
	ld bc, $38
	call ClearMemory
	ld de, w1d100
	ld bc, $996
	call ClearMemory
	ret

Func_c5c44:
	ld a, [wGameMode]
	cp GAMEMODE_LINE_CLEAR
	jr nz, .asm_c5c5b
	ld a, [wceac]
	and a
	jr z, .asm_c5c5b
	; is Line Clear mode and wceac != 0
	ld a, $0b
	ld [wcea2], a
	ld a, $00
	ld [wcea3], a
.asm_c5c5b
	farcall Func_c6883 ; unnecessary farcall
	farcall Func_11c9b
	farcall Func_c6867 ; unnecessary farcall
	ret

Func_c5c6e:
	ld hl, w1d892
	xor a
	ld [hld], a
	ld [hld], a
	ld [hld], a

	ld a, [wPdPScoreLimitSetting]
	and a
	jr z, .asm_c5c81
	ld a, 9
	ld hl, wPdPScoreLimit + 5
	ld [hld], a
.asm_c5c81
	ld a, 9
	ld hl, wPdPScoreLimit + 4
	ld [hld], a
	ld a, 9
	ld hl, wPdPScoreLimit + 3
	ld [hld], a
	ld [hld], a
	ld [hld], a
	ld [hld], a

	ld a, $01
	ld [wceda], a
	ld a, $02
	ld [wced5], a
	xor a
	ld [wced9], a
	xor a
	ld [$d89e], a
	farcall Func_13636

	ld a, 10
	ldh [hJoypadRepeatDelay], a
	ld a, 1
	ldh [hJoypadRepeatInterval], a

	ld a, 103
	ldh [hWX], a
	ldh [rWX], a
	ld a, 0
	ldh [hWY], a
	ldh [rWY], a

	ld a, 0
	ldh [hSCY], a
	ldh [rSCY], a
	ld a, 64
	ldh [hSCX], a
	ldh [rSCX], a

	call Func_c6903

	ld a, [wce9f]
	and a
	jr nz, .asm_c5cd8
	xor a
	ld [wcebe], a
	ld [wcebf], a
.asm_c5cd8
	ld a, [wGameMode]
	cp GAMEMODE_CHALLENGE
	jr nz, .asm_c5ce5
	farcall Func_9b2d
.asm_c5ce5
	farcall Func_c05da
	ld a, [wcebc]
	and a
	jr z, .asm_c5cf5
	xor a
	ld [w1d85f], a
.asm_c5cf5
	ret

Func_c5cf6:
	ld a, [wGameMode]
	cp GAMEMODE_UNK7
	jr z, .asm_c5d23

	; tiles to fill
	ld a, [wcec2]
	ld [w1d506 + $5], a
	lda_coord 5, 5
	ld [w1d506 + $4], a
	lda_coord 4, 5
	ld [w1d506 + $9], a
	lda_coord 3, 5
	ld [w1d506 + $8], a
	lda_coord 2, 5
	ld [w1d506 + $d], a
	lda_coord 1, 5
	ld [w1d506 + $c], a
	jr .asm_c5d51

.asm_c5d23
	; tiles to fill
	ld a, [wcec2]
	ld [w1d506 + $5], a
	lda_coord 5, 2
	ld [w1d506 + $4], a
	lda_coord 4, 2
	ld [w1d506 + $9], a
	lda_coord 3, 2
	ld [w1d506 + $8], a
	lda_coord 2, 2
	ld [w1d506 + $d], a
	lda_coord 1, 2
	ld [w1d506 + $c], a
	; replace origin coordinate with (1, 2)
	ld a, LOW(v0BGMap0 + 7 + 2 * TILEMAP_WIDTH)
	ld [w1d506 + $1], a
	ld a, HIGH(v0BGMap0 + 7 + 2 * TILEMAP_WIDTH)
	ld [w1d506 + $2], a

.asm_c5d51
	ld a, [wcec2]
	ld [w1d518 + $5], a
	lda_coord 5, 11
	ld [w1d518 + $4], a
	lda_coord 4, 11
	ld [w1d518 + $9], a
	lda_coord 3, 11
	ld [w1d518 + $8], a
	lda_coord 2, 11
	ld [w1d518 + $d], a
	lda_coord 1, 11
	ld [w1d518 + $c], a

	ld a, [wcec2]
	ld [$d89f], a
	lda_coord 5, 7
	ld [$d8a0], a
	lda_coord 4, 7
	ld [$d8a1], a
	lda_coord 3, 7
	ld [$d8a2], a
	lda_coord 2, 7
	ld [$d8a3], a
	lda_coord 1, 7
	ld [$d8a4], a

	ld a, [wGameMode]
	cp GAMEMODE_PUZZLE
	jr nz, .asm_c5ddf
	lda_coord 6, 3
	ld [$d8a7], a
	lda_coord 5, 3
	ld [$d8a8], a
	lda_coord 4, 3
	ld [$d8a9], a
	lda_coord 3, 3
	ld [$d8aa], a
	ld a, $43
	ld [$d4e8], a
	ld a, $98
	ld [$d4e9], a
	lda_coord 3, 2
	ld [$d4e6], a
	ld a, [wceab]
	cp $0a
	jr c, .asm_c5ddf
	ld a, $42
	ld [$d4e8], a
	ld a, $98
	ld [$d4e9], a
	lda_coord 2, 2
	ld [$d4e6], a
.asm_c5ddf
	ld a, [wGameMode]
	cp GAMEMODE_CHALLENGE
	jr z, .asm_c5dfc
	cp GAMEMODE_UNK6
	jr z, .asm_c5dfc
	cp GAMEMODE_UNK7
	jr z, .asm_c5e1e
	lda_coord 3, 15
	ld [$d8a5], a
	lda_coord 2, 15
	ld [$d8a6], a
	jr .asm_c5e50

.asm_c5dfc
	lda_coord 4, 16
	ld [$d8a5], a
	lda_coord 3, 16
	ld [$d8a6], a
	; replace origin coordinate with (4, 16)
	ld a, LOW(v0BGMap0 + 8 + 16 * TILEMAP_WIDTH)
	ld [w1d56c + $1], a
	ld a, HIGH(v0BGMap0 + 8 + 16 * TILEMAP_WIDTH)
	ld [w1d56c + $2], a
	; replace origin coordinate with (3, 16)
	ld a, LOW(v0BGMap0 + 5 + 16 * TILEMAP_WIDTH)
	ld [w1d56c + $8], a
	ld a, HIGH(v0BGMap0 + 5 + 16 * TILEMAP_WIDTH)
	ld [w1d56c + $9], a
	jr .asm_c5e3e

.asm_c5e1e
	lda_coord 3, 17
	ld [$d8a5], a
	lda_coord 2, 17
	ld [$d8a6], a
	; replace origin coordinate with (5, 17)
	ld a, LOW(v0BGMap0 + 7 + 17 * TILEMAP_WIDTH)
	ld [w1d56c + $1], a
	ld a, HIGH(v0BGMap0 + 7 + 17 * TILEMAP_WIDTH)
	ld [w1d56c + $2], a
	; replace origin coordinate with (2, 17)
	ld a, LOW(v0BGMap0 + 4 + 17 * TILEMAP_WIDTH)
	ld [w1d56c + $8], a
	ld a, HIGH(v0BGMap0 + 4 + 17 * TILEMAP_WIDTH)
	ld [w1d56c + $9], a

.asm_c5e3e
	ld a, [$5e6a]
	ld [$d57b], a
	ld a, [$5e6b]
	ld [$d57c], a
	ld a, [$5e6c]
	ld [$d57d], a
.asm_c5e50
	ld a, [wGameMode]
	cp GAMEMODE_PUZZLE
	jr z, .asm_c5e69
	ld a, [$5e6a]
	ld [$d4e5], a
	ld a, [$5e6b]
	ld [$d4e6], a
	ld a, [$5e6c]
	ld [$d4e7], a
.asm_c5e69
	ret
; 0xc5e6a

SECTION "Bank 31@5e6d", ROMX[$5e6d], BANK[$31]

; input:
; - e = lcd state afterwards
Func_c5e6d:
	ldh a, [hLCDC]
	and LCDC_ON
	jr z, .lcd_off
	call DoFrame
	ld a, LCDC_ON
	ldh [hLCDC], a
	jr .lcd_on

.lcd_off
	ld a, LCDC_ON
	ldh [hLCDC], a
	ldh [rLCDC], a

.lcd_on
	REPT 4
		call DoFrame
	ENDR

	ld a, e
	ldh [hLCDC], a
	call DoFrame
	ret
; 0xc5e95

SECTION "Bank 31@5f3e", ROMX[$5f3e], BANK[$31]

PtrTable_c5f3e:
	dwb $6b3a, $32
	dwb $6b3a, $32
	dwb $6bba, $32
	dwb $6bba, $32
	dwb $6bba, $32
	dwb $6bba, $32
	dwb $6bba, $32
	dwb $6bba, $32
	dwb $5733, $32
	dwb $5733, $32
	dwb $5733, $32
	dwb $5733, $32
	dwb $5733, $32
	dwb $5971, $32
	dwb $5971, $32
	dwb $5971, $32
	dwb $5971, $32
	dwb $5a01, $32
	dwb $5a91, $32
	dwb $6031, $32
; 0xc5f7a

SECTION "Bank 31@6256", ROMX[$6256], BANK[$31]

Func_c6256:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram

	lddmgpal a, SHADE_WHITE, SHADE_LIGHT, SHADE_DARK, SHADE_BLACK
	ldh [rBGP], a
	lddmgpal a, SHADE_WHITE, SHADE_LIGHT, SHADE_DARK, SHADE_BLACK
	ldh [rOBP0], a
	lddmgpal a, SHADE_BLACK, SHADE_LIGHT, SHADE_WHITE, SHADE_BLACK
	ldh [rOBP1], a

	ld de, v0BGMap0
	ld bc, $400
	call ClearMemory

	ld a, [wGameMode]
	add a ; *2
	ld l, a
	ld h, $00
	ld bc, .PtrTable
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wcea2]
	jp hl

.PtrTable:
	table_width 2
	dw .Marathon ; GAMEMODE_MARATHON
	dw .TimeZone ; GAMEMODE_TIME_ZONE
	dw .LineClear ; GAMEMODE_LINE_CLEAR
	dw .Puzzle ; GAMEMODE_PUZZLE
	dw .Garbage ; GAMEMODE_GARBAGE
	dw .Challenge ; GAMEMODE_CHALLENGE
	dw .Func_c6329 ; GAMEMODE_UNK6
	dw .Func_c633f ; GAMEMODE_UNK7
	assert_table_length NUM_GAME_MODES

.Data_c6297:
	dab v0BGMap0 ; dest
	dab s3a000 ; source
	dw  $8 ; length
	dw $18 ; interval
	dw $12 ; iterations

.Marathon:
	ld de, s3a000
	ld c, BANK(s3a000)
	decompress PtrTable_c5f3e, $3d
	push hl
	ld hl, .Data_c6297
	call Func_692
	pop hl
	jp Func_c6353

.TimeZone:
	ld de, s3a000
	ld c, BANK(s3a000)
	decompress $5f41, $31, $3d ; c5f41
	push hl
	ld hl, .Data_c6297
	call Func_692
	pop hl
	jp Func_c6353

.LineClear:
	ld de, s3a000
	ld c, BANK(s3a000)
	decompress $5f44, $31, $3d ; c5f44
	push hl
	ld hl, .Data_c6297
	call Func_692
	pop hl
	jr Func_c6353

.Puzzle:
	ld de, s3a000
	ld c, BANK(s3a000)
	decompress $5f47, $31, $3d ; c5f47
	push hl
	ld hl, .Data_c6297
	call Func_692
	pop hl
	jr Func_c6353

.Garbage:
	ld de, s3a000
	ld c, BANK(s3a000)
	decompress $5f4a, $31, $3d ; c5f4a
	push hl
	ld hl, .Data_c6297
	call Func_692
	pop hl
	jr Func_c6353

.Challenge:
	ld de, s3a000
	ld c, BANK(s3a000)
	decompress $5f4d, $31, $3d ; c5f4d
	push hl
	ld hl, .Data_c6297
	call Func_692
	pop hl
	jr Func_c6353

.Func_c6329:
	ld de, s3a000
	ld c, BANK(s3a000)
	decompress $5f50, $31, $3d ; c5f50
	push hl
	ld hl, .Data_c6297
	call Func_692
	pop hl
	jr Func_c6353

.Func_c633f:
	ld de, s3a000
	ld c, BANK(s3a000)
	decompress $5f53, $31, $3d ; c5f53
	push hl
	ld hl, .Data_c6297
	call Func_692
	pop hl

Func_c6353:
	ld a, [wGameMode]
	cp GAMEMODE_PUZZLE
	jr nz, .asm_c636b
	ld a, [wcead]
	and a
	jr z, .asm_c636b
	copy_data $9821, $00, $6bba, $32, $6 ; 9821, cabba
.asm_c636b
	farcall Func_10e41
	copy_data v0Tiles0, Gfx_c8000, $80 tiles

	ld de, v0Tiles1
	ld c, BANK(v0Tiles1)
	ld hl, $4800
	ld a, $32
	call Func_93d

	ld a, [wGameMode]
	cp GAMEMODE_PUZZLE
	jr nz, .asm_c63a6
	copy_data $86a0, $00, $4780, $0a, $10 ; 86a0, 28780
	copy_data $8660, $00, $6b3a, $32, $30 ; 8660, cab3a

.asm_c63a6
	ld a, [wGameMode]
	add a ; *2
	ld l, a
	ld h, $00
	ld bc, .PtrTable
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wcea2]
	jp hl

.PtrTable:
	table_width 2
	dw .Marathon ; GAMEMODE_MARATHON
	dw .TimeZone ; GAMEMODE_TIME_ZONE
	dw .LineClear ; GAMEMODE_LINE_CLEAR
	dw .Puzzle ; GAMEMODE_PUZZLE
	dw .Garbage ; GAMEMODE_GARBAGE
	dw .Challenge ; GAMEMODE_CHALLENGE
	dw .Func_c641c ; GAMEMODE_UNK6
	dw .Func_c642a ; GAMEMODE_UNK7
	assert_table_length NUM_GAME_MODES

.Marathon:
	ld de, v0Tiles2 tile $30
	ld c, $00
	decompress $5f56, $31, $3d ; c5f56
	jr Func_c6436

.TimeZone:
	ld de, v0Tiles2 tile $30
	ld c, $00
	decompress $5f59, $31, $3d ; c5f59
	jr Func_c6436

.LineClear:
	ld de, v0Tiles2 tile $30
	ld c, $00
	decompress $5f5c, $31, $3d ; c5f5c
	jr Func_c6436

.Puzzle:
	ld de, v0Tiles2 tile $30
	ld c, $00
	decompress $5f5f, $31, $3d ; c5f5f
	jr Func_c6436

.Garbage:
	ld de, v0Tiles2 tile $30
	ld c, $00
	decompress $5f62, $31, $3d ; c5f62
	jr Func_c6436

.Challenge:
	ld de, v0Tiles2 tile $50
	ld c, $00
	decompress $5f65, $31, $3d ; c5f65
	jr Func_c6436

.Func_c641c:
	ld de, v0Tiles2 tile $50
	ld c, $00
	decompress $5f68, $31, $3d ; c5f68
	jr Func_c6436

.Func_c642a:
	ld de, v0Tiles2 tile $40
	ld c, $00
	decompress $5f6b, $31, $3d ; c5f6b

Func_c6436:
	ld a, [wGameMode]
	add a
	ld l, a
	ld h, $00
	ld bc, .PtrTable
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wcec2]
	jp hl

.PtrTable:
	table_width 2
	dw .Marathon ; GAMEMODE_MARATHON
	dw .TimeZone ; GAMEMODE_TIME_ZONE
	dw .LineClear ; GAMEMODE_LINE_CLEAR
	dw .Puzzle ; GAMEMODE_PUZZLE
	dw .Garbage ; GAMEMODE_GARBAGE
	dw .Challenge ; GAMEMODE_CHALLENGE
	dw .Func_c64bb ; GAMEMODE_UNK6
	dw .Func_c64c9 ; GAMEMODE_UNK7
	assert_table_length NUM_GAME_MODES

.Marathon:
	ld de, v0Tiles2
	ld c, $00
	decompress $5e95, $31, $2a ; c5e95
	jr Func_c64d5

.TimeZone:
	ld de, v0Tiles2
	ld c, $00
	decompress $5e98, $31, $2a ; c5e98
	jr Func_c64d5

.LineClear:
	ld de, v0Tiles2
	ld c, $00
	decompress $5e9b, $31, $2a ; c5e9b
	jr Func_c64d5

.Puzzle:
	ld de, v0Tiles2
	ld c, $00
	decompress $5e9e, $31, $2a ; c5e9e
	jr Func_c64d5

.Garbage:
	ld de, v0Tiles2
	ld c, $00
	decompress $5ea4, $31, $2a ; c5ea4
	ld a, [wcec2]
	ld de, v0Tiles2
	ld c, $00
	decompress $5ea1, $31, $2a ; c5ea1
	jr Func_c64d5

.Challenge:
	ld de, v0Tiles2
	ld c, $00
	decompress $5ea4, $31, $2a ; c5ea4
	jr Func_c64d5

.Func_c64bb:
	ld de, v0Tiles2
	ld c, $00
	decompress $5ea7, $31, $2a ; c5ea7
	jr Func_c64d5

.Func_c64c9:
	ld de, v0Tiles2
	ld c, $00
	decompress $5eaa, $31, $2a ; c5eaa

Func_c64d5:
	ld a, [wGameMode]
	cp GAMEMODE_PUZZLE
	jr z, .asm_c64eb
	ld de, v0Tiles2 tile $60
	ld c, BANK(v0Tiles2)
	ld hl, $4cd8
	ld a, $32
	call Func_93d
	jr .asm_c64f8
.asm_c64eb
	ld de, v0Tiles2 tile $60
	ld c, BANK(v0Tiles2)
	ld hl, $4e08
	ld a, $32
	call Func_93d
.asm_c64f8
	ld a, [wGameMode]
	cp GAMEMODE_MARATHON
	jr z, .asm_c650a
	cp GAMEMODE_TIME_ZONE
	jr z, .asm_c650a
	cp GAMEMODE_GARBAGE
	jr z, .asm_c650a
	jp Func_c657a
.asm_c650a
	ld a, [wGameLevel]
	add a
	ld l, a
	ld h, $00
	ld bc, .PtrTable
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wcec2]
	jp hl

.PtrTable:
	table_width 2
	dw .Easy ; GAMELEVEL_EASY
	dw .Normal ; GAMELEVEL_NORMAL
	dw .Hard ; GAMELEVEL_HARD
	dw .SHard ; GAMELEVEL_S_HARD
	dw .VHard ; GAMELEVEL_V_HARD
	dw .Slow ; GAMELEVEL_SLOW
	assert_table_length NUM_GAME_LEVELS

.Easy:
	ld de, v0Tiles2 tile $20
	ld c, $00
	decompress $5ead, $31, $2a ; c5ead
	jr Func_c657a

.Normal:
	ld de, v0Tiles2 tile $20
	ld c, $00
	decompress $5eb0, $31, $2a ; c5eb0
	jr Func_c657a

.Hard:
	ld de, v0Tiles2 tile $20
	ld c, $00
	decompress $5eb3, $31, $2a ; c5eb3
	jr Func_c657a

.SHard:
	ld de, v0Tiles2 tile $20
	ld c, $00
	decompress $5eb6, $31, $2a ; c5eb6
	jr Func_c657a

.VHard:
	ld de, v0Tiles2 tile $20
	ld c, $00
	decompress $5eb9, $31, $2a ; c5eb9
	jr Func_c657a

.Slow:
	ld de, v0Tiles2 tile $20
	ld c, $00
	decompress $5ebc, $31, $2a ; c5ebc

Func_c657a:
	ld a, [wGameMode]
	cp GAMEMODE_CHALLENGE
	jr z, .asm_c6584
	jp Func_c65f4
.asm_c6584
	ld a, [wGameLevel]
	add a
	ld l, a
	ld h, $00
	ld bc, .PtrTable
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wcec2]
	jp hl

.PtrTable:
	table_width 2
	dw .Easy ; GAMELEVEL_EASY
	dw .Normal ; GAMELEVEL_NORMAL
	dw .Hard ; GAMELEVEL_HARD
	dw .SHard ; GAMELEVEL_S_HARD
	dw .VHard ; GAMELEVEL_V_HARD
	dw .Slow ; GAMELEVEL_SLOW
	assert_table_length NUM_GAME_LEVELS

.Easy:
	ld de, v0Tiles2 tile $24
	ld c, $00
	decompress $5ead, $31, $2a ; c5ead
	jr Func_c65f4

.Normal:
	ld de, v0Tiles2 tile $24
	ld c, $00
	decompress $5eb0, $31, $2a ; c5eb0
	jr Func_c65f4

.Hard:
	ld de, v0Tiles2 tile $24
	ld c, $00
	decompress $5eb3, $31, $2a ; c5eb3
	jr Func_c65f4

.SHard:
	ld de, v0Tiles2 tile $24
	ld c, $00
	decompress $5eb6, $31, $2a ; c5eb6
	jr Func_c65f4

.VHard:
	ld de, v0Tiles2 tile $24
	ld c, $00
	decompress $5eb9, $31, $2a ; c5eb9
	jr Func_c65f4

.Slow:
	ld de, v0Tiles2 tile $24
	ld c, $00
	decompress $5ebc, $31, $2a ; c5ebc

Func_c65f4:
	ld a, [wcea3]
	func_621 v0Tiles2 tile $04, $00, $5f6e, $31, $3d, $90, $0, $1 ; c5f6e
	ld a, [wGameMode]
	cp GAMEMODE_CHALLENGE
	jr z, .asm_c6618
	cp GAMEMODE_UNK6
	jr z, .asm_c6618
	cp GAMEMODE_UNK7
	jr z, .asm_c6618
	jr .asm_c662b
.asm_c6618
	ld a, [wcea4]
	func_621 v0Tiles2 tile $30, $00, $5f6e, $31, $3d, $90, $0, $1 ; c5f6e
.asm_c662b
	ld a, [wGameMode]
	cp GAMEMODE_GARBAGE
	jr z, .garbage
	cp GAMEMODE_CHALLENGE
	jr z, .asm_c6641
	cp GAMEMODE_UNK6
	jr z, .asm_c6641
	jr .asm_c6650
.garbage
	ld a, [wcea3]
	jr .asm_c6644
.asm_c6641
	ld a, [wcea4]
.asm_c6644
	ld de, v0Tiles2 tile $3f
	ld c, $00
	decompress $5f77, $31, $3d ; c5f77
.asm_c6650
	ld a, [wGameMode]
	cp GAMEMODE_LINE_CLEAR
	jr z, .asm_c665d
	cp GAMEMODE_PUZZLE
	jr z, .asm_c665d
	jr .asm_c66a4
.asm_c665d
	ld a, [wceac]
	and a
	jr nz, .asm_c66a4
	ld a, [wceab]
	cp 10 ; >= 10?
	jr nc, .asm_c6685
	ld a, [wceab]
	call ConvertToDigits
	ld a, e
	ldcoord_a 6, 2
	ld a, $1e
	ldcoord_a 5, 2
	ld a, [wceaa]
	call ConvertToDigits
	ld a, e
	ldcoord_a 4, 2
	jr .asm_c66a4
.asm_c6685
	ld a, [wceab]
	call ConvertToDigits
	ld a, e
	ldcoord_a 6, 2
	ld a, d
	ldcoord_a 5, 2
	ld a, $1e
	ldcoord_a 4, 2

	ld a, [wceaa]
	call ConvertToDigits
	ld a, e
	ldcoord_a 3, 2
	jr .asm_c66a4

.asm_c66a4
	ld a, [wGameMode]
	cp GAMEMODE_CHALLENGE
	jr z, .asm_c66ad
	jr .asm_c66bf
.asm_c66ad
	ld a, [wcea4]
	call ConvertToDigits
	ld a, e
	ldcoord_a 7, 11
	ld a, d
	cp $10
	jr z, .asm_c66bf
	ldcoord_a 6, 11
.asm_c66bf
	ld a, [wGameMode]
	cp GAMEMODE_UNK6
	jr z, .asm_c66cc
	cp GAMEMODE_UNK7
	jr z, .asm_c66f2
	jr .asm_c6716
.asm_c66cc
	ld a, [wcea7]
	call ConvertToDigits
	ld a, e
	ldcoord_a 6, 1
	ld a, d
	cp $10
	jr z, .asm_c66de
	ldcoord_a 5, 1
.asm_c66de
	ld a, [wcea8]
	call ConvertToDigits
	ld a, e
	ldcoord_a 7, 10
	ld a, d
	cp $10
	jr z, .asm_c66f0
	ldcoord_a 6, 10
.asm_c66f0
	jr .asm_c6716

.asm_c66f2
	ld a, [wcea7]
	call ConvertToDigits
	ld a, e
	ldcoord_a 3, 4
	ld a, d
	cp $10
	jr z, .asm_c6704
	ldcoord_a 2, 4
.asm_c6704
	ld a, [wcea8]
	call ConvertToDigits
	ld a, e
	ldcoord_a 3, 13
	ld a, d
	cp $10
	jr z, .asm_c6716
	ldcoord_a 2, 13
.asm_c6716
	ld a, [wGameMode]
	cp GAMEMODE_LINE_CLEAR
	jr nz, .asm_c678c
	ld a, [wceac]
	and a
	jr z, .asm_c678c

	ld de, v0Tiles2 tile $30
	ld c, BANK(v0Tiles2)
	ld hl, $5971
	ld a, $32
	call Func_93d

	copy_data v0Tiles2 tile $04, $00, $5c41, $32, $90 ; c9c41
	copy_data v0Tiles2 tile $47, $00, $5cd1, $32, $90 ; c9cd1

	ld de, s3a000
	ld c, BANK(s3a000)
	ld hl, $6c29
	ld a, $32
	call Func_93d
	push hl
	ld hl, .Data_c675d
	call Func_692
	pop hl
	jr .asm_c6769

.Data_c675d:
	dab v0BGMap0 ; dest
	dab s3a000 ; source
	dw  $8 ; length
	dw $18 ; interval
	dw $12 ; iterations

.asm_c6769
	ld a, [wceaa]
	cp $04
	jr nc, .asm_c677f
	ld de, v0Tiles2 tile $20
	ld c, $00
	ld hl, $5971
	ld a, $32
	call Func_93d
	jr .asm_c678c
.asm_c677f
	ld de, v0Tiles2 tile $20
	ld c, $00
	ld hl, $5971
	ld a, $32
	call Func_93d
.asm_c678c
	call Func_c6799
	call Func_c67e5
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

Func_c6799:
	ld a, [wGameMode]
	cp GAMEMODE_UNK6
	jr z, .asm_c67a5
	cp GAMEMODE_UNK7
	jr z, .asm_c67b8
	ret
.asm_c67a5
	hlbgcoord 2, 6
	ld a, [wcebe]
	call Func_c67cb
	hlbgcoord 3, 15
	ld a, [wcebf]
	call Func_c67cb
	ret
.asm_c67b8
	hlbgcoord 2, 7
	ld a, [wcebe]
	call Func_c67cb
	hlbgcoord 2, 16
	ld a, [wcebf]
	call Func_c67cb
	ret

Func_c67cb:
	ld e, a
	ld a, $2c
	ld [hli], a
	ld [hld], a
	ld a, [wceb6]
	and a
	jr z, .asm_c67db
	inc hl
	ld a, [wcec2]
	ld [hld], a
.asm_c67db
	inc e
	dec e
	ret z
	ld a, $2b
	ld [hli], a
	dec e
	ret z
	ld [hl], a
	ret

Func_c67e5:
	ld a, [wceaf]
	cp $00
	jr c, .asm_c67f6
	cp $63
	jr z, .asm_c67fb
	jr c, .asm_c67fb
	ld a, $63
	jr .asm_c67f8
.asm_c67f6
	ld a, $00
.asm_c67f8
	ld [wceaf], a
.asm_c67fb
	ld a, [wceb0]
	cp $00
	jr c, .asm_c680c
	cp $63
	jr z, .asm_c6811
	jr c, .asm_c6811
	ld a, $63
	jr .asm_c680e

.asm_c680c
	ld a, $00
.asm_c680e
	ld [wceb0], a
.asm_c6811
	ld a, [wGameMode]
	cp GAMEMODE_UNK6
	jr z, .asm_c681d
	cp GAMEMODE_UNK7
	jr z, .asm_c6842
	ret
.asm_c681d
	ld a, [wceaf]
	call ConvertToDigits
	ld a, e
	ldcoord_a 6, 6
	ld a, d
	cp $10
	jr z, .asm_c682f
	ldcoord_a 5, 6
.asm_c682f
	ld a, [wceb0]
	call ConvertToDigits
	ld a, e
	ldcoord_a 7, 15
	ld a, d
	cp $10
	jr z, .asm_c6841
	ldcoord_a 6, 15
.asm_c6841
	ret
.asm_c6842
	ld a, [wceaf]
	call ConvertToDigits
	ld a, e
	ldcoord_a 6, 7
	ld a, d
	cp $10
	jr z, .asm_c6854
	ldcoord_a 5, 7
.asm_c6854
	ld a, [wceb0]
	call ConvertToDigits
	ld a, e
	ldcoord_a 6, 16
	ld a, d
	cp $10
	jr z, .asm_c6866
	ldcoord_a 5, 16
.asm_c6866
	ret

Func_c6867:
	ld a, [wcea2]
	ld l, a
	ld h, $00
	push bc
	ld c, l
	ld b, h
	add hl, hl ; *2
	add hl, bc ; *3
	add hl, hl ; *6
	add hl, bc ; *7
	add hl, hl ; *14
	add hl, bc ; *15
	add hl, hl ; *30
	add hl, hl ; *60
	add hl, bc ; *61
	pop bc
	ld bc, $5f3d
	add hl, bc
	ld a, [hl]
	ld [wcec2], a
	ret

Func_c6883:
	farcall Func_104b4

	ld a, [w1d855]
	and a
	jr z, .asm_c6897
	dec a
	jr z, .asm_c689c
	dec a
	jr z, .asm_c68a1
	debug_loop
.asm_c6897
	ld de, Func_c0849
	jr .asm_c68a4
.asm_c689c
	ld de, Func_c0793
	jr .asm_c68a4
.asm_c68a1
	ld de, Func_c079c
.asm_c68a4
	ld a, $c3 ; jp
	ld [w1d856 + 0], a
	ld a, e
	ld [w1d856 + 1], a
	ld a, d
	ld [w1d856 + 2], a

	ld a, [w1d859]
	cp $05
	jr z, .asm_c68be
	cp $06
	jr z, .asm_c68c3
	debug_loop
.asm_c68be
	ld de, Func_3266
	jr .asm_c68c6
.asm_c68c3
	ld de, Func_326c
.asm_c68c6
	ld a, $c3 ; jp
	ld [w1d85a + 0], a
	ld a, e
	ld [w1d85a + 1], a
	ld a, d
	ld [w1d85a + 2], a

	ld a, [$d861]
	cp $04
	jr z, .asm_c68e8
	cp $08
	jr z, .asm_c68ed
	cp $0c
	jr z, .asm_c68f2
	cp $10
	jr z, .asm_c68f7
	debug_loop
.asm_c68e8
	ld de, $4ac3
	jr .asm_c68fa
.asm_c68ed
	ld de, $4ac7
	jr .asm_c68fa
.asm_c68f2
	ld de, $4acf
	jr .asm_c68fa
.asm_c68f7
	ld de, $4adb
.asm_c68fa
	ld a, e
	ld [w1d862 + 0], a
	ld a, d
	ld [w1d862 + 1], a
	ret

Func_c6903:
	ld a, [wceae]
	and a
	ret nz

	ld de, v0Tiles0 tile $10
	ld c, $00
	ld hl, $68b7
	ld a, $32
	call Func_93d

	ld a, [wGameMode]
	cp GAMEMODE_TIME_ZONE
	jr z, .asm_c6929
	cp GAMEMODE_LINE_CLEAR
	jr z, .asm_c6937
	cp GAMEMODE_PUZZLE
	jr z, .asm_c6937
	cp GAMEMODE_UNK7
	jr z, .asm_c6929
	ret

.asm_c6929
	ld de, v0Tiles0 tile $08
	ld c, $00
	ld hl, $697a
	ld a, $32
	call Func_93d
	ret

.asm_c6937
	ld de, v0Tiles0 tile $0a
	ld c, $00
	ld hl, $697a
	ld a, $32
	call Func_93d
	ld a, [wceaa]
	and a
	jr nz, .asm_c694b
	inc a
.asm_c694b
	func_621 $8040, $00, $6993, $31, $3, $20, $0, $1 ; 8040, c6993
	ld a, [wceab]
	and a
	jr nz, .asm_c6962
	inc a
.asm_c6962
	cp $0a
	jr nc, .asm_c6969
	xor a
	jr .asm_c696b
.asm_c6969
	ld a, $01
.asm_c696b
	func_621 $8060, $00, $6993, $31, $3, $20, $0, $1 ; 8060, c6993
	ld a, [wceab]
	and a
	jr nz, .asm_c6982
	inc a
.asm_c6982
	func_621 $8080, $00, $6993, $31, $3, $20, $0, $1 ; 8080, c6993
	ret
; 0xc6993

SECTION "Bank 31@69b4", ROMX[$69b4], BANK[$31]

Func_c69b4:
	ld a, [$d89e]
	and a
	jr nz, .asm_c69bd
	call Func_c6e7a
.asm_c69bd
	call Func_c69c1
	ret

Func_c69c1:
	ld a, [wceda]
	ld l, a
	ld h, $00
	add hl, hl
	ld bc, $69d0
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl
; 0xc69d0

SECTION "Bank 31@6e7a", ROMX[$6e7a], BANK[$31]

Func_c6e7a:
	ldh a, [hffeb]
	and a
	ret z
	call Func_f03
	call Func_f6a
	farcall Func_76bcd
	ret
; 0xc6e8b

SECTION "Bank 31@727a", ROMX[$727a], BANK[$31]

GameState_LoadGBCompatibility::
	call Func_d9f

	ld e, LCDC_OFF
	farcall Func_c5e6d ; unnecessary farcall

	; enable only V-Blank interrupt
	xor a
	ldh [rIF], a
	ld a, IE_VBLANK
	ldh [hIE], a
	ldh [rIE], a

	; white out DMG palette
	xor a
	ldh [rBGP], a
	ldh [rOBP0], a
	ldh [rOBP1], a

	di
	ld hl, wVBlankHandler
	ld [hl], $c3 ; jp
	inc hl
	ld [hl], LOW(VBlankHandler)
	inc hl
	ld [hl], HIGH(VBlankHandler)
	; disable V-Blank trampoline
	xor a
	ldh [hVBlankTrampolinePtr + 1], a
	ei

	; fill bg map
	ld b, BANK(v1BGMap0)
	ld de, v1BGMap0
	ld a, $00
	fill_mem $0, $4, $100
	ld b, BANK(v0BGMap0)
	ld de, v0BGMap0
	ld a, $80
	fill_mem $0, $4, $100

	; load font graphics
	copy_data v0Tiles2, Font1Gfx, $80 tiles
	copy_data v0Tiles1, Font2Gfx, $80 tiles

	call Func_c7aa9

	ld hl, wBGPals
	ld a, $ff
	ld [hli], a
	ld a, $7f
	ld [hli], a
	ld a, $00
	ld [hli], a
	ld a, $00
	ld [hli], a
	ld a, $00
	ld [hli], a
	ld a, $00
	ld [hli], a
	ld a, $00
	ld [hli], a
	ld a, $00
	ld [hli], a
	call FlushPalettes

	ld a, 15
	ldh [hJoypadRepeatDelay], a
	ld a, 3
	ldh [hJoypadRepeatInterval], a

	ld a, $00
	ldh [hSCY], a
	ldh [rSCY], a
	ld a, $00
	ldh [hSCX], a
	ldh [rSCX], a

	xor a
	ld [wPanelDePonCodeAPresses], a
	ld [wPanelDePonCodeBPresses], a

	call Func_1426

	ld e, LCDC_BG_ON | LCDC_ON
	farcall Func_c5e6d

	lddmgpal a, SHADE_WHITE, SHADE_LIGHT, SHADE_DARK, SHADE_BLACK
	ldh [rBGP], a
	lddmgpal a, SHADE_WHITE, SHADE_LIGHT, SHADE_DARK, SHADE_BLACK
	ldh [rOBP0], a
	lddmgpal a, SHADE_BLACK, SHADE_LIGHT, SHADE_WHITE, SHADE_BLACK
	ldh [rOBP1], a

	ld a, GAMESTATE_GB_COMPATIBILITY
	ldh [hGameState], a
	ret

; handles player input to access Panel de Pon
; player needs to press A button at least 24 times
; and then press B button at least 24 times
HandlePanelDePonCode:
	ldh a, [hJoypadPressed]
	and a
	ret z ; no input
	bit B_PAD_A, a
	jr nz, .a_btn
	bit B_PAD_B, a
	jr nz, .b_btn
.reset_code
	xor a
	ld [wPanelDePonCodeAPresses], a
	ld [wPanelDePonCodeBPresses], a
	ret

.a_btn
	; reset number of B presses
	xor a
	ld [wPanelDePonCodeBPresses], a

	; did we already press A 25 times?
	ld a, [wPanelDePonCodeAPresses]
	cp 25
	jr z, .check_a_presses ; yes, skip
	jr c, .increment_a_presses
	ld a, 25 ; cap it to 25
	jr .got_a_presses
.increment_a_presses
	inc a
.got_a_presses
	ld [wPanelDePonCodeAPresses], a
.check_a_presses
	cp 24
	call z, Func_c7846
	ret

.b_btn
	; did we already press A at least 24 times?
	ld a, [wPanelDePonCodeAPresses]
	cp 24
	jr c, .reset_code ; no, reset
	; yes, did we press B 25 times?
	ld a, [wPanelDePonCodeBPresses]
	cp 25
	jr z, .check_b_presses ; yes, skip
	jr c, .increment_b_presses
	ld a, 25 ; cap it to 25
	jr .got_b_presses
.increment_b_presses
	inc a
.got_b_presses
	ld [wPanelDePonCodeBPresses], a
.check_b_presses
	cp 24
	call z, Func_c785e

	; did we already press A and B at least 24 times?
	ld a, [wPanelDePonCodeBPresses]
	cp 24
	jr c, .code_not_yet_active
	; yes, load Panel de Pon menu
	ld a, GAMESTATE_1F
	ldh [hGameState], a
	; disable V-Blank trampoline
	xor a
	ldh [hVBlankTrampolinePtr + 1], a
.code_not_yet_active
	ret

GameState_GBCompatibility::
	call HandlePanelDePonCode
	call DoFrame
	ret

Func_c7391::
	ld e, LCDC_OFF
	farcall Func_c5e6d

	xor a
	ldh [rIF], a
	ld a, IE_VBLANK
	ldh [hIE], a
	ldh [rIE], a

	xor a
	ldh [rBGP], a
	ldh [rOBP0], a
	ldh [rOBP1], a

	di
	ld hl, wVBlankHandler
	ld [hl], $c3 ; jp
	inc hl
	ld [hl], LOW(VBlankHandler)
	inc hl
	ld [hl], HIGH(VBlankHandler)
	xor a
	ldh [hVBlankTrampolinePtr + 1], a
	ei

	ld de, wce9f
	ld bc, $34
	call ClearMemory

	xor a
	ld [wPanelDePonMenuItem], a
	ld [wPanelDePonMenuPrevItem], a

	ld a, $01
	ld [wSpeedLevel], a ; MIN_SPEEDLEVEL
	ld [wcea9], a

	ld a, GAMESTATE_LOAD_PDP_MENU
	ldh [hGameState], a
	ret

GameState_LoadPanelDePonMenu::
	call Func_1426

	ld e, LCDC_OFF
	farcall Func_c5e6d

	xor a
	ldh [rIF], a
	ld a, IE_VBLANK
	ldh [hIE], a
	ldh [rIE], a

	xor a
	ldh [rBGP], a
	ldh [rOBP0], a
	ldh [rOBP1], a

	di
	ld hl, wVBlankHandler
	ld [hl], $c3 ; jp
	inc hl
	ld [hl], LOW(VBlankHandler)
	inc hl
	ld [hl], HIGH(VBlankHandler)

	ld a, LOW(Func_c755d)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(Func_c755d)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(Func_c755d)
	ldh [hVBlankTrampolinePtr + 1], a
	ei

	ld b, $01
	ld de, v0BGMap0
	ld a, $00
	fill_mem $0, $4, $100
	ld b, $00
	ld de, v0BGMap0
	ld a, $80
	fill_mem $0, $4, $100

	copy_data v0Tiles2, Font1Gfx, $80 tiles
	copy_data v0Tiles1, Font2Gfx, $80 tiles

	ld de, v0BGMap1
	ld c, $00
	ld hl, $43a1
	ld a, $58
	call Func_93d

	copy_data_ext v0BGMap0, $0, v0BGMap1, $14, $c, $12

	ld hl, wBGPals
	ld a, $ff
	ld [hli], a
	ld a, $7f
	ld [hli], a
	ld a, $ff
	ld [hli], a
	ld a, $03
	ld [hli], a
	ld a, $1f
	ld [hli], a
	ld a, $00
	ld [hli], a
	ld a, $00
	ld [hli], a
	ld a, $00
	ld [hli], a

	ld hl, wOBPals
	ld b, 8
.loop_ob_pals
	ld a, $ff
	ld [hli], a
	ld a, $7f
	ld [hli], a
	ld a, $a0
	ld [hli], a
	ld a, $7f
	ld [hli], a
	ld a, $ff
	ld [hli], a
	ld a, $7f
	ld [hli], a
	ld a, $00
	ld [hli], a
	ld a, $00
	ld [hli], a
	dec b
	jr nz, .loop_ob_pals
	call FlushPalettes

	ld a, 15
	ldh [hJoypadRepeatDelay], a
	ld a, 3
	ldh [hJoypadRepeatInterval], a

	ld a, $00
	ldh [hSCY], a
	ldh [rSCY], a
	ld a, $00
	ldh [hSCX], a
	ldh [rSCX], a
	ld a, $01
	ld [wceb3], a
	ld [wceb7], a

	ld b, MUSIC_PANEL_DE_PON1
	farcall Func_c0307

	ld e, LCDC_BG_ON | LCDC_ON
	farcall Func_c5e6d

	lddmgpal a, SHADE_WHITE, SHADE_LIGHT, SHADE_DARK, SHADE_BLACK
	ldh [rBGP], a
	lddmgpal a, SHADE_WHITE, SHADE_LIGHT, SHADE_DARK, SHADE_BLACK
	ldh [rOBP0], a
	lddmgpal a, SHADE_BLACK, SHADE_LIGHT, SHADE_WHITE, SHADE_BLACK
	ldh [rOBP1], a

	call Func_c78ac

	ld a, GAMESTATE_PDP_MENU
	ldh [hGameState], a
	ret
; 0xc74d6

SECTION "Bank 31@74ed", ROMX[$74ed], BANK[$31]

MACRO? pdp_menu_item
	dbcoord \1, \2 ; x, y
	dw \3 ; ?
	dw \4 ; draw func
	dw \5 ; input func
ENDM

Data_c74ed:
	table_width 8
	;             x,  y,     ?,  draw func, input func
	pdp_menu_item 1,  2, $1910, Func_c757e, Func_c7722 ; PDPMENU_GAME_MODE
	pdp_menu_item 1,  3, $2118, Func_c7593, Func_c7741 ; PDPMENU_GAME_LEVEL
	pdp_menu_item 1,  4, $2920, Func_c75f0, Func_c778a ; PDPMENU_SPEED_LEVEL
	pdp_menu_item 1,  5, $3128, Func_c7602, Func_c77cf ; PDPMENU_START
	pdp_menu_item 1,  7, $4138, Func_c7603, Func_c77d7 ; PDPMENU_SEMI_SIGN
	pdp_menu_item 1,  8, $4940, Func_c7621, Func_c77de ; PDPMENU_SCORE_LIMIT
	pdp_menu_item 1,  9, $5148, Func_c763f, Func_c77e5 ; PDPMENU_CRY
	pdp_menu_item 1, 10, $5950, Func_c765d, Func_c77ec ; PDPMENU_SPEED_LIMIT
	pdp_menu_item 1, 11, $6158, Func_c767b, Func_c77f3 ; PDPMENU_STOP
	pdp_menu_item 1, 12, $6960, Func_c7699, Func_c77fa ; PDPMENU_FIREWORKS
	pdp_menu_item 1, 13, $7168, Func_c76b7, Func_c7801 ; PDPMENU_MUSIC
	pdp_menu_item 1, 14, $7970, Func_c76d5, Func_c7808 ; PDPMENU_SOUNDS
	pdp_menu_item 1, 15, $8178, Func_c76f3, Func_c780f ; PDPMENU_DANCING
	pdp_menu_item 1, 16, $8980, Func_c7602, Func_c7816 ; PDPMENU_RESET
	assert_table_length NUM_PANELDEPON_MENU_ITEMS

Func_c755d:
	ld e, $00
	ldh a, [hffb7]
	and $08
	jr z, .asm_c7566
	inc e
.asm_c7566
	call Func_c7975
	call Func_c756d
	ret

Func_c756d:
	ld a, [wPanelDePonMenuItem]
	add a
	add a
	add a ; *8
	ld l, a
	ld h, $00
	ld bc, Data_c74ed + $4
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

Func_c757e:
	ld a, [wGameMode]
	cp GAMEMODE_MARATHON
	jr z, .marathon
	cp GAMEMODE_GARBAGE
	jr z, .garbage
	debug_loop
.marathon
	call Func_3339
	ret
.garbage
	call Func_3397
	ret

Func_c7593:
	ld a, [wceb1]
	and a
	jr z, .easy ; GAMELEVELOPT_EASY
	dec a
	jr z, .normal ; GAMELEVELOPT_NORMAL
	dec a
	jr z, .hard ; GAMELEVELOPT_HARD
	dec a
	jr z, .slow3 ; GAMELEVELOPT_SLOW3
	dec a
	jr z, .slow2 ; GAMELEVELOPT_SLOW2
	dec a
	jr z, .slow1 ; GAMELEVELOPT_SLOW1
.easy
	copy_data $986c, $00, $446d, $58, $8 ; 986c, 16046d
	ret
.normal
	copy_data $986c, $00, $4475, $58, $8 ; 986c, 160475
	ret
.hard
	copy_data $986c, $00, $447d, $58, $8 ; 986c, 16047d
	ret
.slow3
	copy_data $986c, $00, $4455, $58, $8 ; 986c, 160455
	ret
.slow2
	copy_data $986c, $00, $445d, $58, $8 ; 986c, 16045d
	ret
.slow1
	copy_data $986c, $00, $4465, $58, $8 ; 986c, 160465
	ret

Func_c75f0:
	ld a, [wSpeedLevel]
	call ConvertToDigits
	hlbgcoord 12, 4
	ld a, d
	and $0f
	ld [hli], a
	ld a, e
	and $0f
	ld [hli], a
	ret

Func_c7602:
	ret

Func_c7603:
	ld a, [wceb2]
	and a
	jr nz, .asm_c7615
	copy_data $98ec, $00, $4485, $58, $8 ; 98ec, 160485
	ret
.asm_c7615
	copy_data $98ec, $00, $448d, $58, $8 ; 98ec, 16048d
	ret

Func_c7621:
	ld a, [wPdPScoreLimitSetting]
	and a
	jr nz, .asm_c7633
	copy_data $990c, $00, $4495, $58, $8 ; 990c, 160495
	ret
.asm_c7633
	copy_data $990c, $00, $449d, $58, $8 ; 990c, 16049d
	ret

Func_c763f:
	ld a, [wceb8]
	and a
	jr nz, .asm_c7651
	copy_data $992c, $00, $44a5, $58, $8 ; 992c, 1604a5
	ret
.asm_c7651
	copy_data $992c, $00, $44ad, $58, $8 ; 992c, 1604ad
	ret

Func_c765d:
	ld a, [wcebc]
	and a
	jr nz, .asm_c766f
	copy_data $994c, $00, $44b5, $58, $8 ; 994c, 1604b5
	ret
.asm_c766f
	copy_data $994c, $00, $44bd, $58, $8 ; 994c, 1604bd
	ret

Func_c767b:
	ld a, [wcebd]
	and a
	jr nz, .asm_c768d
	copy_data $996c, $00, $44b5, $58, $8 ; 996c, 1604b5
	ret
.asm_c768d
	copy_data $996c, $00, $44bd, $58, $8 ; 996c, 1604bd
	ret

Func_c7699:
	ld a, [wceba]
	and a
	jr nz, .asm_c76ab
	copy_data $998c, $00, $44bd, $58, $8 ; 998c, 1604bd
	ret
.asm_c76ab
	copy_data $998c, $00, $44b5, $58, $8 ; 998c, 1604b5
	ret

Func_c76b7:
	ld a, [wc601]
	and a
	jr nz, .asm_c76c9
	copy_data $99ac, $00, $44b5, $58, $8 ; 99ac, 1604b5
	ret
.asm_c76c9
	copy_data $99ac, $00, $44bd, $58, $8 ; 99ac, 1604bd
	ret

Func_c76d5:
	ld a, [wc7ce]
	and a
	jr nz, .asm_c76e7
	copy_data $99cc, $00, $44b5, $58, $8 ; 99cc, 1604b5
	ret
.asm_c76e7
	copy_data $99cc, $00, $44bd, $58, $8 ; 99cc, 1604bd
	ret

Func_c76f3:
	ld a, [wcebb]
	and a
	jr nz, .asm_c7705
	copy_data $99ec, $00, $44b5, $58, $8 ; 99ec, 1604b5
	ret
.asm_c7705
	copy_data $99ec, $00, $44bd, $58, $8 ; 99ec, 1604bd
	ret

Func_c7711:
	ld a, [wPanelDePonMenuItem]
	add a
	add a
	add a ; *8
	ld l, a
	ld h, $00
	ld bc, Data_c74ed + $6
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

Func_c7722:
	ldh a, [hJoypadHeld]
	bit B_PAD_LEFT, a
	jr nz, .left_or_right
	bit B_PAD_RIGHT, a
	jr nz, .left_or_right
	ret
.left_or_right
	call Func_c7852
	; toggle between Marathon and Garbage modes
	ld a, [wGameMode]
	cp GAMEMODE_MARATHON
	jr nz, .switch_to_marathon
	ld a, GAMEMODE_GARBAGE
	jr .got_game_mode
.switch_to_marathon
	ld a, GAMEMODE_MARATHON
.got_game_mode
	ld [wGameMode], a
	ret

Func_c7741:
	ldh a, [hJoypadHeld]
	bit B_PAD_LEFT, a
	jr nz, .d_left
	bit B_PAD_RIGHT, a
	jr nz, .d_right
	ret

.d_left
	ld a, [wceb1]
	cp GAMELEVELOPT_SLOW3
	ret z
	call Func_c7852
	ld a, [wceb1]
	cp GAMELEVELOPT_SLOW1
	jr z, .asm_c775e
	jr nc, .asm_c7764
.asm_c775e
	cp GAMELEVELOPT_EASY
	jr z, .asm_c7764
	jr nz, .asm_c7768
.asm_c7764
	ld a, GAMELEVELOPT_SLOW1
	jr .asm_c7769
.asm_c7768
	dec a
.asm_c7769
	ld [wceb1], a
	ret

.d_right
	ld a, [wceb1]
	cp GAMELEVELOPT_HARD
	ret z
	call Func_c7852
	ld a, [wceb1]
	cp GAMELEVELOPT_EASY
	jr c, .asm_c7781 ; impossible jump
	cp GAMELEVELOPT_SLOW1
	jr c, .asm_c7785
.asm_c7781
	ld a, GAMELEVELOPT_EASY
	jr .asm_c7786
.asm_c7785
	inc a
.asm_c7786
	ld [wceb1], a
	ret

Func_c778a:
	ldh a, [hJoypadHeld]
	bit B_PAD_LEFT, a
	jr nz, .d_left
	bit B_PAD_RIGHT, a
	jr nz, .d_right
	ret

.d_left
	ld a, [wSpeedLevel]
	cp MIN_SPEEDLEVEL
	call nz, Func_c7852
	ld a, [wSpeedLevel]
	cp MIN_SPEEDLEVEL
	jr z, .asm_c77ae
	jr nc, .asm_c77aa
	ld a, MIN_SPEEDLEVEL
	jr .asm_c77ab
.asm_c77aa
	dec a
.asm_c77ab
	ld [wSpeedLevel], a
.asm_c77ae
	ld [wcea9], a
	ret

.d_right
	ld a, [wSpeedLevel]
	cp MAX_SPEEDLEVEL
	call nz, Func_c7852
	ld a, [wSpeedLevel]
	cp MAX_SPEEDLEVEL
	jr z, .asm_c77cb
	jr c, .asm_c77c7
	ld a, MAX_SPEEDLEVEL
	jr .asm_c77c8
.asm_c77c7
	inc a
.asm_c77c8
	ld [wSpeedLevel], a
.asm_c77cb
	ld [wcea9], a
	ret

Func_c77cf:
	ldh a, [hJoypadPressed]
	bit B_PAD_A, a
	call nz, Func_c7a86
	ret

Func_c77d7:
	ld hl, wceb2
	call TogglePdPSetting
	ret

Func_c77de:
	ld hl, wPdPScoreLimitSetting
	call TogglePdPSetting
	ret

Func_c77e5:
	ld hl, wceb8
	call TogglePdPSetting
	ret

Func_c77ec:
	ld hl, wcebc
	call TogglePdPSetting
	ret

Func_c77f3:
	ld hl, wcebd
	call TogglePdPSetting
	ret

Func_c77fa:
	ld hl, wceba
	call TogglePdPSetting
	ret

Func_c7801:
	ld hl, wc601
	call Func_c787f
	ret

Func_c7808:
	ld hl, wc7ce
	call Func_c787f
	ret

Func_c780f:
	ld hl, wcebb
	call TogglePdPSetting
	ret

Func_c7816:
	ldh a, [hJoypadPressed]
	and PAD_A
	ret z

	xor a
	ld [wceb2], a
	ld [wPdPScoreLimitSetting], a
	ld [wceb8], a
	ld [wcebc], a
	ld [wcebd], a
	ld [wceba], a
	ld [wc601], a
	ld [wc7ce], a
	ld [wcebb], a

	ld b, MUSIC_PANEL_DE_PON1
	farcall Func_c0307

	call Func_c7846
	call Func_c78ac
	ret

Func_c7846:
	ld a, [wc7ce]
	and a
	jr nz, .asm_c7851
	ld a, $03
	ld [wc7cb], a
.asm_c7851
	ret

Func_c7852:
	ld a, [wc7ce]
	and a
	jr nz, .asm_c785d
	ld a, $02
	ld [wc7cb], a
.asm_c785d
	ret

Func_c785e:
	call Func_c7846
.asm_c7861
	call DoFrame
	ld b, $03
	farcall Func_840e1
	inc b
	dec b
	jr nz, .asm_c7861
	ret

TogglePdPSetting:
	ldh a, [hJoypadHeld]
	and PAD_RIGHT | PAD_LEFT
	ret z ; no input
	ld a, [hl]
	inc a
	and $1
	ld [hl], a
	call Func_c7852
	ret

Func_c787f:
	ldh a, [hJoypadHeld]
	and PAD_RIGHT | PAD_LEFT
	ret z

	push hl
	ld a, [wc7ce]
	ld l, a
	ld a, [wc601]
	ld h, a
	push hl
	call Func_137a
	pop hl
	ld a, h
	ld [wc601], a
	ld a, l
	ld [wc7ce], a
	pop hl

	ld a, [hl]
	inc a
	and $01
	ld [hl], a

	ld b, MUSIC_PANEL_DE_PON1
	farcall Func_c0307

	call Func_c7852
	ret

Func_c78ac:
	; back up V-Blank trampoline
	ldh a, [hVBlankTrampolineBank]
	push af
	ldh a, [hVBlankTrampolinePtr + 0]
	ld l, a
	ldh a, [hVBlankTrampolinePtr + 1]
	ld h, a
	push hl

	; for each menu item:
	; - set VBlankTrampoline as its update function;
	; - run a single frame to render it.
	ld a, LOW(Func_c757e)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(Func_c757e)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(Func_c757e)
	ldh [hVBlankTrampolinePtr + 1], a
	call DoFrame

	ld a, LOW(Func_c7593)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(Func_c7593)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(Func_c7593)
	ldh [hVBlankTrampolinePtr + 1], a
	call DoFrame

	ld a, LOW(Func_c75f0)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(Func_c75f0)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(Func_c75f0)
	ldh [hVBlankTrampolinePtr + 1], a
	call DoFrame

	ld a, LOW(Func_c7603)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(Func_c7603)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(Func_c7603)
	ldh [hVBlankTrampolinePtr + 1], a
	call DoFrame

	ld a, LOW(Func_c7621)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(Func_c7621)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(Func_c7621)
	ldh [hVBlankTrampolinePtr + 1], a
	call DoFrame

	ld a, LOW(Func_c763f)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(Func_c763f)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(Func_c763f)
	ldh [hVBlankTrampolinePtr + 1], a
	call DoFrame

	ld a, LOW(Func_c765d)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(Func_c765d)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(Func_c765d)
	ldh [hVBlankTrampolinePtr + 1], a
	call DoFrame

	ld a, LOW(Func_c767b)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(Func_c767b)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(Func_c767b)
	ldh [hVBlankTrampolinePtr + 1], a
	call DoFrame

	ld a, LOW(Func_c7699)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(Func_c7699)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(Func_c7699)
	ldh [hVBlankTrampolinePtr + 1], a
	call DoFrame

	ld a, LOW(Func_c76b7)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(Func_c76b7)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(Func_c76b7)
	ldh [hVBlankTrampolinePtr + 1], a
	call DoFrame

	ld a, LOW(Func_c76d5)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(Func_c76d5)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(Func_c76d5)
	ldh [hVBlankTrampolinePtr + 1], a
	call DoFrame

	ld a, LOW(Func_c76f3)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(Func_c76f3)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(Func_c76f3)
	ldh [hVBlankTrampolinePtr + 1], a
	call DoFrame

	; restore V-Blank trampoline
	pop hl
	ld a, h
	ldh [hVBlankTrampolinePtr + 1], a
	ld a, l
	ldh [hVBlankTrampolinePtr + 0], a
	pop af
	ldh [hVBlankTrampolineBank], a
	ret

Func_c7975:
	ld a, [wPanelDePonMenuPrevItem]
	add a
	add a
	add a ; *8
	ld l, a
	ld h, $00
	ld bc, Data_c74ed
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, $80
	ld [hl], a
	inc e
	dec e
	jr z, .asm_c799f
	ld a, [wPanelDePonMenuItem]
	add a
	add a
	add a ; *8
	ld l, a
	ld h, $00
	ld bc, Data_c74ed
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, $2e
	ld [hl], a
.asm_c799f
	ld a, [wPanelDePonMenuItem]
	ld [wPanelDePonMenuPrevItem], a
	ret

Func_c79a6:
	ldh a, [hJoypadDown]
	bit B_PAD_UP, a
	jr nz, .d_up_down
	bit B_PAD_DOWN, a
	jr nz, .d_down_down
	ret
.d_up_down
	ld d, 0
	jr .asm_c79b7
.d_down_down
	ld d, NUM_PANELDEPON_MENU_ITEMS - 1
.asm_c79b7
	ldh a, [hJoypadHeld]
	ld e, a
	ld a, [wPanelDePonMenuItem]
	cp d
	jr nz, .asm_c79c3
	ldh a, [hJoypadPressed]
	ld e, a
.asm_c79c3
	bit B_PAD_UP, e
	jr nz, .d_up_pressed
	bit B_PAD_DOWN, e
	jr nz, .d_down_pressed
	ret

.d_up_pressed
	ld a, [wPanelDePonMenuItem]
	cp NUM_PANELDEPON_MENU_ITEMS - 1
	jr z, .asm_c79d5
	jr nc, .asm_c79db
.asm_c79d5
	cp 0
	jr z, .asm_c79db
	jr nz, .asm_c79df
.asm_c79db
	ld a, NUM_PANELDEPON_MENU_ITEMS - 1
	jr .asm_c79e0
.asm_c79df
	dec a
.asm_c79e0
	ld [wPanelDePonMenuItem], a
	ld a, [wc7ce]
	and a
	jr nz, .asm_c79ee
	ld a, $02
	ld [wc7cb], a
.asm_c79ee
	ret

.d_down_pressed
	ld a, [wPanelDePonMenuItem]
	cp 0
	jr c, .asm_c79fa
	cp NUM_PANELDEPON_MENU_ITEMS - 1
	jr c, .asm_c79fe
.asm_c79fa
	ld a, 0
	jr .asm_c79ff
.asm_c79fe
	inc a
.asm_c79ff
	ld [wPanelDePonMenuItem], a
	ld a, [wc7ce]
	and a
	jr nz, .asm_c7a0d
	ld a, $02
	ld [wc7cb], a
.asm_c7a0d
	ret
; 0xc7a0e

SECTION "Bank 31@7a3a", ROMX[$7a3a], BANK[$31]

Func_c7a3a:
	xor a
	ld [wceb4], a
	ld a, [wceb1]
	and a
	jr z, .easy ; GAMELEVELOPT_EASY
	dec a
	jr z, .normal ; GAMELEVELOPT_NORMAL
	dec a
	jr z, .hard ; GAMELEVELOPT_HARD
	dec a
	jr z, .slow3 ; GAMELEVELOPT_SLOW3
	dec a
	jr z, .slow2 ; GAMELEVELOPT_SLOW2
	dec a
	jr z, .slow1 ; GAMELEVELOPT_SLOW1
.slow1
	ld a, GAMELEVEL_SLOW
	ld [wGameLevel], a
	ld a, $02
	ld [wceb4], a
	ret
.slow2
	ld a, GAMELEVEL_SLOW
	ld [wGameLevel], a
	ld a, $00
	ld [wceb4], a
	ret
.slow3
	ld a, GAMELEVEL_SLOW
	ld [wGameLevel], a
	ld a, $01
	ld [wceb4], a
	ret
.hard
	ld a, GAMELEVEL_HARD
	ld [wGameLevel], a
	ret
.normal
	ld a, GAMELEVEL_NORMAL
	ld [wGameLevel], a
	ret
.easy
	ld a, GAMELEVEL_EASY
	ld [wGameLevel], a
	ret

Func_c7a86:
	call Func_c7a3a
	ld a, GAMESTATE_1B
	ldh [hGameState], a
	xor a
	ldh [hVBlankTrampolinePtr + 1], a
	ret

Func_c7a91:
	ldh a, [hJoypadPressed]
	bit B_PAD_START, a
	call nz, Func_c7a86
	ret

GameState_PanelDePonMenu::
	call Func_c79a6
	call Func_c7711
	call Func_c7a91
	call UpdateRNG
	call DoFrame
	ret

Func_c7aa9:
	ld a, [wcf0b]
	ld de, v0Tiles2
	ld c, $00
	decompress PtrTable_c7ac8, $6
	ld a, [wcf0b]
	ld de, v0BGMap0
	ld c, $00
	decompress PtrTable_c7acb, $6
	ret

PtrTable_c7ac8:
	dwb $4000, $58
PtrTable_c7acb:
	dwb $42a8, $58
	dwb $41ac, $58
	dwb $431c, $58
	dwb $41ac, $58
	dwb $431c, $58
	dwb $41ac, $58
	dwb $431c, $58
	dwb $41ac, $58
	dwb $431c, $58
	dwb $41ac, $58
	dwb $431c, $58
; 0xc7aec
