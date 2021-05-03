; update channel 1
Func_80000: ; 80000 (20:4000)
	ld a, [wChannel1Pointer + 1]
	and a
	ret z
	ld a, [wc61b]
	and a
	jr z, .asm_80014
	ld hl, wc60c
	cp [hl]
	jr nz, .asm_80014
	call Func_802de
.asm_80014
	ld hl, wc60c
	ld a, [hl]
	and a
	jr z, .asm_8001d
	dec [hl]
	ret

.asm_8001d
	ld hl, wChannel1Pointer
	ld a, [hli]
	ld b, [hl]
	ld c, a
.asm_80023
	call Func_1412 ; get next song byte
	ld a, e
	cp $d2
	jr nc, .asm_8003b
	cp $8a
	jr nc, Func_800a9
	cp $6d
	jp nc, Func_800c1
	and a
	jp nz, Func_800ef
	jp Func_800e7

.asm_8003b
	sub $d2
	add a
	ld l, a
	ld h, $00
	ld de, PointerTable_80273
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

Func_80049: ; 80049 (20:4049)
	ld de, $fff8
	jr Func_80099

Func_8004e: ; 8004e (20:404e)
	ld de, $fff9
	jr Func_80099

Func_80053: ; 80053 (20:4053)
	ld de, $fffa
	jr Func_80099

Func_80058: ; 80058 (20:4058)
	ld de, $fffb
	jr Func_80099

Func_8005d: ; 8005d (20:405d)
	ld de, $fffc
	jr Func_80099

Func_80062: ; 80062 (20:4062)
	ld de, $fffd
	jr Func_80099

Func_80067: ; 80067 (20:4067)
	ld de, $fffe
	jr Func_80099

Func_8006c: ; 8006c (20:406c)
	ld de, $ffff
	jr Func_80099

Func_80071: ; 80071 (20:4071)
	ld de, $1
	jr Func_80099

Func_80076: ; 80076 (20:4076)
	ld de, $2
	jr Func_80099

Func_8007b: ; 8007b (20:407b)
	ld de, $3
	jr Func_80099

Func_80080: ; 80080 (20:4080)
	ld de, $4
	jr Func_80099

Func_80085: ; 80085 (20:4085)
	ld de, $5
	jr Func_80099

Func_8008a: ; 8008a (20:408a)
	ld de, $6
	jr Func_80099

Func_8008f: ; 8008f (20:408f)
	ld de, $7
	jr Func_80099

Func_80094: ; 80094 (20:4094)
	ld de, $8
	jr Func_80099

Func_80099: ; 80099 (20:4099)
	ld hl, wc61c
	ld a, [hl]
	add e
	ld [hli], a
	ld a, [hl]
	adc d
	ld [hl], a
	ld hl, wc603
	set 6, [hl]
	jr Func_800da

Func_800a9: ; 800a9 (20:40a9)
	sub $8a
	ld hl, wc618
	add [hl]
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	ld a, l
	ld e, h
	ld hl, wc61c
	ld [hli], a
	ld [hl], e
	call Func_802cf
	jr Func_800da

Func_800c1: ; 800c1 (20:40c1)
	sub $6d
	ld l, a
	call Func_80379
	call Func_802de.asm_802f4
	jr Func_800da

Func_800cc: ; 800cc (20:40cc)
	ld a, [wc61b]
	and a
	jr nz, .asm_800d5
	call Func_802de
.asm_800d5
	jr Func_800da

Func_800d7: ; 800d7 (20:40d7)
	call Func_802cf
	; fallthrough
Func_800da: ; 800da (20:40da)
	ld a, [wc60b]
	ld [wc60c], a
	ld hl, wChannel1Pointer
	ld a, c
	ld [hli], a
	ld [hl], b
	ret

Func_800e7: ; 800e7 (20:40e7)
	xor a
	ld [wChannel1Pointer], a
	ld [wChannel1Pointer + 1], a
	ret

Func_800ef: ; 800ef (20:40ef)
	sub $01
	ld [wc60b], a
	jp Func_80000.asm_80023
; 0x800f7

Func_800f7: ; 800f7 (20:40f7)
	call Func_1412
	ld l, e
	call Func_803c2
	jp Func_80000.asm_80023
; 0x80101

Func_80101: ; 80101 (20:4101)
	xor a
	ld [wc61e + 1], a
	call Func_803bd
	jp Func_80000.asm_80023
; 0x8010b

Func_8010b: ; 8010b (20:410b)
	call Func_1412
	ld a, e
	ld [wc5fa], a
	ld [wc5fb], a
	jp Func_80000.asm_80023
; 0x80118

Func_80118: ; 80118 (20:4118)
	call Func_1412
	ld a, e
	ld [wc618], a
	jp Func_80000.asm_80023
; 0x80122

Func_80122: ; 80122 (20:4122)
	call Func_1412
	ld l, e
	call Func_8044e
	jp Func_80000.asm_80023
; 0x8012c

Func_8012c: ; 8012c (20:412c)
	xor a
	ld [wc624 + 1], a
	ld [wc629 + 1], a
	call Func_80449
	jp Func_80000.asm_80023
; 0x80139

Func_80139: ; 80139 (20:4139)
	call Func_1412
	ld a, e
	ld [wc5f6], a
	ld hl, wc5f1
	set 0, [hl]
	jp Func_80000.asm_80023
; 0x80148

Func_80148: ; 80148 (20:4148)
	ld a, [wc5f7]
	and $ee
	or $01
	ld [wc5f7], a
	ld hl, wc603
	set 5, [hl]
	jp Func_80000.asm_80023
; 0x8015a

Func_8015a: ; 8015a (20:415a)
	ld a, [wc5f7]
	and $ee
	or $10
	ld [wc5f7], a
	ld hl, wc603
	set 5, [hl]
	jp Func_80000.asm_80023
; 0x8016c

Func_8016c: ; 8016c (20:416c)
	ld a, [wc5f7]
	and $ee
	or $11
	ld [wc5f7], a
	ld hl, wc603
	set 5, [hl]
	jp Func_80000.asm_80023
; 0x8017e

Func_8017e: ; 8017e (20:417e)
	ld e, $00
	jr Func_8018a.asm_8018c

Func_80182: ; 80182 (20:4182)
	ld e, $40
	jr Func_8018a.asm_8018c

Func_80186: ; 80186 (20:4186)
	ld e, $80
	jr Func_8018a.asm_8018c

Func_8018a: ; 8018a (20:418a)
	ld e, $c0
.asm_8018c
	ld hl, wc605
	ld a, [hl]
	and $3f
	or e
	ld [hl], a
	ld hl, wc603
	set 1, [hl]
	jp Func_80000.asm_80023
; 0x8019c

Func_8019c: ; 8019c (20:419c)
	ld a, [wc662]
	bit 0, a
	jr nz, .asm_801ad
	call Func_1412
	ld a, e
	ld [wc600], a
	call Func_1462
.asm_801ad
	jp Func_80000.asm_80023
; 0x801b0

Func_801b0: ; 801b0 (20:41b0)
	call Func_1412
	ld a, e
	ld [wc619], a
	jp Func_80000.asm_80023
; 0x801ba

Func_801ba: ; 801ba (20:41ba)
	call Func_1412
	ld a, e
	ld [wc61a], a
	jp Func_80000.asm_80023
; 0x801c4

Func_801c4: ; 801c4 (20:41c4)
	call Func_1412
	ld a, e
	ld [wc61b], a
	jp Func_80000.asm_80023
; 0x801ce

Func_801ce: ; 801ce (20:41ce)
	call Func_1412
	ld a, e
	ld [wc606], a
	ld hl, wc603
	set 2, [hl]
	jp Func_80000.asm_80023
; 0x801dd

Func_801dd: ; 801dd (20:41dd)
	ld hl, wc60d
	jr Func_801ec.asm_801ef

Func_801e2: ; 801e2 (20:41e2)
	ld hl, wc60e
	jr Func_801ec.asm_801ef

Func_801e7: ; 801e7 (20:41e7)
	ld hl, wc60f
	jr Func_801ec.asm_801ef

Func_801ec: ; 801ec (20:41ec)
	ld hl, wc610
.asm_801ef
	call Func_1412
	ld a, e
	cp [hl]
	jr nz, .asm_801fe
	inc bc
	inc bc
	inc bc
	xor a
	ld [hl], a
	jp Func_80000.asm_80023
.asm_801fe
	inc [hl]
	jp Func_10c4
; 0x80202

Func_80202: ; 80202 (20:4202)
	ld de, wc617
	ld a, [de]
	cp $07
.asm_80208
	jr nc, .asm_80208
	ld l, a
	inc a
	inc a
	ld [de], a
	ld h, $00
	ld de, wc611
	add hl, de
	ld e, c
	ld d, b
	inc de
	inc de
	ld a, e
	ld [hli], a
	ld [hl], d
	jp Func_10c4
; 0x8021e

Func_8021e: ; 8021e (20:421e)
	ld de, wc617
	ld a, [de]
	dec a
	dec a
	cp $07
.asm_80226
	jr nc, .asm_80226
	ld [de], a
	ld l, a
	ld h, $00
	ld de, wc611
	add hl, de
	ld a, [hli]
	ld b, [hl]
	ld c, a
	jp Func_80000.asm_80023
; 0x80236

Func_80236: ; 80236 (20:4236)
	call Func_1412
	ld a, e
	dec a
	ld [wc60c], a
	ld [wc62b], a
	call Func_1412
	ld l, e
	ld h, $00
	bit 7, l
	jr z, .asm_8024c
	dec h
.asm_8024c
	add hl, hl
	add hl, hl
	add hl, hl
	ld a, l
	ld [wc62c + 1], a
	ld a, h
	ld [wc62c + 2], a
	call Func_1412
	ld a, e
	ld [wc62f], a
	call Func_1412
	ld a, e
	ld [wc62f + 1], a
	xor a
	ld [wc631], a
	ld [wc62c], a
	ld hl, wChannel1Pointer
	ld a, c
	ld [hli], a
	ld [hl], b
	ret
; 0x80273

; channel 1 commands
PointerTable_80273: ; 80273 (20:4273)
	dw Func_800cc ; $d2
	dw Func_800da ; $d3
	dw Func_800f7 ; $d4
	dw Func_80101 ; $d5
	dw Func_8010b ; $d6
	dw Func_80118 ; $d7
	dw Func_80122 ; $d8
	dw Func_8012c ; $d9
	dw Func_80139 ; $da
	dw Func_80148 ; $db
	dw Func_8015a ; $dc
	dw Func_8016c ; $dd
	dw Func_8017e ; $de
	dw Func_80182 ; $df
	dw Func_80186 ; $e0
	dw Func_8018a ; $e1
	dw Func_8019c ; $e2
	dw Func_801b0 ; $e3
	dw Func_801ba ; $e4
	dw Func_801c4 ; $e5
	dw Func_801ce ; $e6
	dw Func_10c4  ; $e7
	dw Func_801dd ; $e8
	dw Func_801e2 ; $e9
	dw Func_801e7 ; $ea
	dw Func_801ec ; $eb
	dw Func_80202 ; $ec
	dw Func_8021e ; $ed
	dw Func_80049 ; $ee
	dw Func_8004e ; $ef
	dw Func_80053 ; $f0
	dw Func_80058 ; $f1
	dw Func_8005d ; $f2
	dw Func_80062 ; $f3
	dw Func_80067 ; $f4
	dw Func_8006c ; $f5
	dw Func_80071 ; $f6
	dw Func_80076 ; $f7
	dw Func_8007b ; $f8
	dw Func_80080 ; $f9
	dw Func_80085 ; $fa
	dw Func_8008a ; $fb
	dw Func_8008f ; $fc
	dw Func_80094 ; $fd
	dw Func_800d7 ; $fe
	dw Func_80236 ; $ff

Func_802cf: ; 802cf (20:42cf)
	ld hl, wc603
	set 7, [hl]
	call Func_80374
	call Func_803ad
	call Func_80429
	ret
; 0x802de

Func_802de: ; 802de (20:42de)
	ld a, [wc629 + 1]
	and a
	jr z, .asm_802f4
	ld a, [wc602]
	bit 1, a
	jr z, .asm_802f4
	res 1, a
	ld [wc602], a
	call Func_80439
	ret
.asm_802f4
	call Func_80449
	call Func_803bd
	call Func_802fe
	ret
; 0x802fe

Func_802fe: ; 802fe (20:42fe)
	ld a, [wc602]
	bit 0, a
	ret nz
	ld a, $01
	ldh [rNR12], a
	ret
; 0x80309

Func_80309: ; 80309 (20:4309)
	call Func_80329
	ld hl, wc608
	set 7, [hl]
	ld hl, wc603
	ld a, [hl]
	or $1f
	ld [hl], a
	ld hl, wc602
	set 1, [hl]
	ret
; 0x8031e

Func_8031e: ; 8031e (20:431e)
	call Func_80329
	ld hl, wc603
	ld a, [hl]
	or $18
	ld [hl], a
	ret
; 0x80329

Func_80329: ; 80329 (20:4329)
	ld hl, wc61c
	ld a, [hli]
	ld e, a
	ld d, [hl]
	call Func_80342
	call Func_8183c
	call Func_8035b
	ld hl, wc608
	ld a, [hl]
	and $c0
	or d
	ld [hld], a
	ld [hl], e
	ret
; 0x80342

Func_80342: ; 80342 (20:4342)
	ld a, [wc61a]
	and a
	ret z
	ld l, a
	add a
	jr c, .asm_80353
	ld a, e
	add l
	ld e, a
	ld a, d
	adc $00
	ld d, a
	ret
.asm_80353
	ld a, e
	add l
	ld e, a
	ld a, d
	adc $ff
	ld d, a
	ret
; 0x8035b

Func_8035b: ; 8035b (20:435b)
	ld a, [wc619]
	and a
	ret z
	ld l, a
	add a
	jr c, .asm_8036c
	ld a, e
	add l
	ld e, a
	ld a, d
	adc $00
	ld d, a
	ret
.asm_8036c
	ld a, e
	add l
	ld e, a
	ld a, d
	adc $ff
	ld d, a
	ret
; 0x80374

Func_80374: ; 80374 (20:4374)
	xor a
	ld [wc6c2], a
	ret
; 0x80379

Func_80379: ; 80379 (20:4379)
	ld a, [wc602]
	bit 0, a
	ret nz
	ld h, $00
	add hl, hl
	ld de, PointerTable_81a31
	add hl, de
	call Func_1156
	ld a, $c3 ; jp
	ld [wc6c2], a
	ret
; 0x8038f

Func_8038f: ; 8038f (20:438f)
	ld a, [wc6c2]
	and a
	ret z
	ld a, [wc602]
	bit 0, a
	ret nz
	call Func_116f
	ld a, e
	or d
	jr z, .asm_803a8
	ld hl, wc6c3
	ld a, e
	ld [hli], a
	ld [hl], d
	ret
.asm_803a8
	xor a
	ld [wc6c2], a
	ret
; 0x803ad

Func_803ad: ; 803ad (20:43ad)
	ld hl, wc61e
	ld a, [hli]
	ld [wc620], a
	ld a, [hl]
	ld [wc620 + 1], a
	xor a
	ld [wc623], a
	ret
; 0x803bd

Func_803bd: ; 803bd (20:43bd)
	xor a
	ld [wc620 + 1], a
	ret
; 0x803c2

Func_803c2: ; 803c2 (20:43c2)
	ld h, $00
	add hl, hl
	ld de, PointerTable_83401
	add hl, de
	call Func_10dc
	ret
; 0x803cd

Func_803cd: ; 803cd (20:43cd)
	ld a, [wc620 + 1]
	and a
	ret z
	ld a, [wc623]
	and a
	jr z, .asm_803dd
	dec a
	ld [wc623], a
	ret
.asm_803dd
	ld hl, wc620
	ld a, [hli]
	ld b, [hl]
	ld c, a
.asm_803e3
	jp Func_10f5
; 0x803e6

Func_803e6: ; 803e6 (20:43e6)
	ld a, l
	inc bc
	cp $65
	jr nc, .asm_803ff
	cp $64
	jp z, Func_110a
	and a
	jr nz, .asm_803f9
	xor a
	ld a, [wc620 + 1]
	ret
.asm_803f9
	dec a
	ld [wc622], a
	jr Func_803cd.asm_803e3
.asm_803ff
	sub $85
	ld e, a
	ld hl, wc603
	set 6, [hl]
	ld hl, wc622
	ld a, [hli]
	ld [hld], a
	ld hl, wc620
	ld a, c
	ld [hli], a
	ld [hl], b
	ld hl, wc61c
	bit 7, e
	jr nz, .asm_80421
	ld a, [hl]
	add e
	ld [hli], a
	ld a, [hl]
	adc $00
	ld [hl], a
	ret
.asm_80421
	ld a, [hl]
	add e
	ld [hli], a
	ld a, [hl]
	adc $ff
	ld [hl], a
	ret
; 0x80429

Func_80429: ; 80429 (20:4429)
	ld hl, wc624
	ld a, [hli]
	ld [wc626], a
	ld a, [hl]
	ld [wc626 + 1], a
	xor a
	ld [wc628], a
	ret
; 0x80439

Func_80439: ; 80439 (20:4439)
	ld hl, wc629
	ld a, [hli]
	ld [wc626], a
	ld a, [hl]
	ld [wc626 + 1], a
	xor a
	ld [wc628], a
	ret
; 0x80449

Func_80449: ; 80449 (20:4449)
	xor a
	ld [wc626 + 1], a
	ret
; 0x8044e

Func_8044e: ; 8044e (20:444e)
	ld h, $00
	add hl, hl
	add hl, hl
	ld de, PointerTable_82230
	add hl, de
	call Func_1122
	ret
; 0x8045a

Func_8045a: ; 8045a (20:445a)
	ld a, [wc626 + 1]
	and a
	ret z
	ld a, [wc628]
	and a
	jr z, .asm_8046a
	dec a
	ld [wc628], a
	ret
.asm_8046a
	ld hl, wc626
	ld a, [hli]
	ld b, [hl]
	ld c, a
	call Func_1143
	ld a, e
	inc bc
	and a
	jr z, .asm_804b2
	ld [wc606], a
	ld hl, wc603
	ld e, a
	ld a, [hl]
	or $1f
	ld [hl], a
	ld a, e
	ld hl, wc608
	res 6, [hl]
	set 7, [hl]
.asm_8048b
	call Func_1143
	ld a, e
	inc bc
	bit 7, a
	jr z, .asm_804a7
	and $3f
	ld e, a
	ld a, [wc605]
	and $c0
	or e
	ld [wc605], a
	ld hl, wc608
	set 6, [hl]
	jr .asm_8048b
.asm_804a7
	dec a
	ld [wc628], a
	ld hl, wc626
	ld a, c
	ld [hli], a
	ld [hl], b
.asm_804b1
	ret
.asm_804b2
	xor a
	ld [wc626 + 1], a
	jr .asm_804b1
; 0x804b8

Func_804b8: ; 804b8 (20:44b8)
	ld a, [wc62b]
	and a
	ret z
	ld hl, wc603
	set 6, [hl]
	dec a
	ld [wc62b], a
	and a
	jr z, .asm_8050f
	ld hl, wc62f
	ld a, [hli]
	ld c, a
	ld b, [hl]
	bit 7, b
	jr nz, .asm_804f1
	ld hl, wc62c
	ld a, [hl]
	sub c
	ld [hli], a
	ld a, [hl]
	sbc b
	ld [hli], a
	ld a, [hl]
	sbc $00
	ld [hli], a
	ld de, wc631
	ld hl, wc61c
	ld a, [de]
	add c
	ld [de], a
	ld a, [hl]
	adc b
	ld [hli], a
	ld a, [hl]
	adc $00
	ld [hli], a
	ret
.asm_804f1
	ld hl, wc62c
	ld a, [hl]
	sub c
	ld [hli], a
	ld a, [hl]
	sbc b
	ld [hli], a
	ld a, [hl]
	sbc $ff
	ld [hli], a
	ld de, wc631
	ld hl, wc61c
	ld a, [de]
	add c
	ld [de], a
	ld a, [hl]
	adc b
	ld [hli], a
	ld a, [hl]
	adc $ff
	ld [hli], a
	ret
.asm_8050f
	ld hl, wc62c
	ld de, wc631
	ld a, [de]
	add [hl]
	ld [de], a
	inc hl
	ld de, wc61c
	ld a, [de]
	adc [hl]
	ld [de], a
	inc hl
	inc de
	ld a, [de]
	adc [hl]
	ld [de], a
	ret
; 0x80525

; update channel 2
Func_80525: ; 80525 (20:4525)
	ld a, [wChannel2Pointer + 1]
	and a
	ret z
	ld a, [wc64b]
	and a
	jr z, .asm_80539
	ld hl, wc63c
	cp [hl]
	jr nz, .asm_80539
	call Func_80803
.asm_80539
	ld hl, wc63c
	ld a, [hl]
	and a
	jr z, .asm_80542
	dec [hl]
	ret

.asm_80542
	ld hl, wChannel2Pointer
	ld a, [hli]
	ld b, [hl]
	ld c, a
.asm_80548
	call Func_1412 ; get next song byte
	ld a, e
	cp $d2
	jr nc, .asm_80560
	cp $8a
	jr nc, Func_805ce
	cp $6d
	jp nc, Func_805e6
	and a
	jp nz, Func_80614
	jp Func_8060c

.asm_80560
	sub $d2
	add a
	ld l, a
	ld h, $00
	ld de, PointerTable_80798
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

Func_8056e: ; 8056e (20:456e)
	ld de, $fff8
	jr Func_805be

Func_80573: ; 80573 (20:4573)
	ld de, $fff9
	jr Func_805be

Func_80578: ; 80578 (20:4578)
	ld de, $fffa
	jr Func_805be

Func_8057d: ; 8057d (20:457d)
	ld de, $fffb
	jr Func_805be

Func_80582: ; 80582 (20:4582)
	ld de, $fffc
	jr Func_805be

Func_80587: ; 80587 (20:4587)
	ld de, $fffd
	jr Func_805be

Func_8058c: ; 8058c (20:458c)
	ld de, $fffe
	jr Func_805be

Func_80591: ; 80591 (20:4591)
	ld de, $ffff
	jr Func_805be

Func_80596: ; 80596 (20:4596)
	ld de, $1
	jr Func_805be

Func_8059b: ; 8059b (20:459b)
	ld de, $2
	jr Func_805be

Func_805a0: ; 805a0 (20:45a0)
	ld de, $3
	jr Func_805be

Func_805a5: ; 805a5 (20:45a5)
	ld de, $4
	jr Func_805be

Func_805aa: ; 805aa (20:45aa)
	ld de, $5
	jr Func_805be

Func_805af: ; 805af (20:45af)
	ld de, $6
	jr Func_805be

Func_805b4: ; 805b4 (20:45b4)
	ld de, $7
	jr Func_805be

Func_805b9: ; 805b9 (20:45b9)
	ld de, $8
	jr Func_805be

Func_805be: ; 805be (20:45be)
	ld hl, wc64c
	ld a, [hl]
	add e
	ld [hli], a
	ld a, [hl]
	adc d
	ld [hl], a
	ld hl, wc633
	set 6, [hl]
	jr Func_805ff

Func_805ce: ; 805ce (20:45ce)
	sub $8a
	ld hl, wc648
	add [hl]
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	ld a, l
	ld e, h
	ld hl, wc64c
	ld [hli], a
	ld [hl], e
	call Func_807f4
	jr Func_805ff

Func_805e6: ; 805e6 (20:45e6)
	sub $6d
	ld l, a
	call Func_8089e
	call Func_80803.asm_80819
	jr Func_805ff

Func_805f1: ; 805f1 (20:45f1)
	ld a, [wc64b]
	and a
	jr nz, .asm_805fa
	call Func_80803
.asm_805fa
	jr Func_805ff

Func_805fc: ; 805fc (20:45fc)
	call Func_807f4
	; fallthrough
Func_805ff: ; 805ff (20:45ff)
	ld a, [wc63b]
	ld [wc63c], a
	ld hl, wChannel2Pointer
	ld a, c
	ld [hli], a
	ld [hl], b
	ret

Func_8060c: ; 8060c (20:460c)
	xor a
	ld [wChannel2Pointer], a
	ld [wChannel2Pointer + 1], a
	ret

Func_80614: ; 80614 (20:4614)
	sub $01
	ld [wc63b], a
	jp Func_80525.asm_80548
; 0x8061c

Func_8061c: ; 8061c (20:461c)
	call Func_1412
	ld l, e
	call Func_808e7
	jp Func_80525.asm_80548
; 0x80626

Func_80626: ; 80626 (20:4626)
	xor a
	ld [wc64e + 1], a
	call Func_808e2
	jp Func_80525.asm_80548
; 0x80630

Func_80630: ; 80630 (20:4630)
	call Func_1412
	ld a, e
	ld [wc5fa], a
	ld [wc5fb], a
	jp Func_80525.asm_80548
; 0x8063d

Func_8063d: ; 8063d (20:463d)
	call Func_1412
	ld a, e
	ld [wc648], a
	jp Func_80525.asm_80548
; 0x80647

Func_80647: ; 80647 (20:4647)
	call Func_1412
	ld l, e
	call Func_80973
	jp Func_80525.asm_80548
; 0x80651

Func_80651: ; 80651 (20:4651)
	xor a
	ld [wc654 + 1], a
	ld [wc659 + 1], a
	call Func_8096e
	jp Func_80525.asm_80548
; 0x8065e

Func_8065e: ; 8065e (20:465e)
	call Func_1412
	ld a, e
	ld [wc5f6], a
	ld hl, wc5f1
	set 0, [hl]
	jp Func_80525.asm_80548
; 0x8066d

Func_8066d: ; 8066d (20:466d)
	ld a, [wc5f7]
	and $dd
	or $02
	ld [wc5f7], a
	ld hl, wc633
	set 5, [hl]
	jp Func_80525.asm_80548
; 0x8067f

Func_8067f: ; 8067f (20:467f)
	ld a, [wc5f7]
	and $dd
	or $20
	ld [wc5f7], a
	ld hl, wc633
	set 5, [hl]
	jp Func_80525.asm_80548
; 0x80691

Func_80691: ; 80691 (20:4691)
	ld a, [wc5f7]
	and $dd
	or $22
	ld [wc5f7], a
	ld hl, wc633
	set 5, [hl]
	jp Func_80525.asm_80548
; 0x806a3

Func_806a3: ; 806a3 (20:46a3)
	ld e, $00
	jr Func_806af.asm_806b1

Func_806a7: ; 806a7 (20:46a7)
	ld e, $40
	jr Func_806af.asm_806b1

Func_806ab: ; 806ab (20:46ab)
	ld e, $80
	jr Func_806af.asm_806b1

Func_806af: ; 806af (20:46af)
	ld e, $c0
.asm_806b1
	ld hl, wc635
	ld a, [hl]
	and $3f
	or e
	ld [hl], a
	ld hl, wc633
	set 1, [hl]
	jp Func_80525.asm_80548
; 0x806c1

Func_806c1: ; 806c1 (20:46c1)
	ld a, [wc662]
	bit 0, a
	jr nz, .asm_806d2
	call Func_1412
	ld a, e
	ld [wc600], a
	call Func_1462
.asm_806d2
	jp Func_80525.asm_80548
; 0x806d5

Func_806d5: ; 806d5 (20:46d5)
	call Func_1412
	ld a, e
	ld [wc649], a
	jp Func_80525.asm_80548
; 0x806df

Func_806df: ; 806df (20:46df)
	call Func_1412
	ld a, e
	ld [wc64a], a
	jp Func_80525.asm_80548
; 0x806e9

Func_806e9: ; 806e9 (20:46e9)
	call Func_1412
	ld a, e
	ld [wc64b], a
	jp Func_80525.asm_80548
; 0x806f3

Func_806f3: ; 806f3 (20:46f3)
	call Func_1412
	ld a, e
	ld [wc636], a
	ld hl, wc633
	set 2, [hl]
	jp Func_80525.asm_80548
; 0x80702

Func_80702: ; 80702 (20:4702)
	ld hl, wc63d
	jr Func_80711.asm_80714

Func_80707: ; 80707 (20:4707)
	ld hl, wc63e
	jr Func_80711.asm_80714

Func_8070c: ; 8070c (20:470c)
	ld hl, wc63f
	jr Func_80711.asm_80714

Func_80711: ; 80711 (20:4711)
	ld hl, wc640
.asm_80714
	call Func_1412
	ld a, e
	cp [hl]
	jr nz, .asm_80723
	inc bc
	inc bc
	inc bc
	xor a
	ld [hl], a
	jp Func_80525.asm_80548
.asm_80723
	inc [hl]
	jp Func_1183
; 0x80727

Func_80727: ; 80727 (20:4727)
	ld de, wc647
	ld a, [de]
	cp $07
.asm_8072d
	jr nc, .asm_8072d
	ld l, a
	inc a
	inc a
	ld [de], a
	ld h, $00
	ld de, wc641
	add hl, de
	ld e, c
	ld d, b
	inc de
	inc de
	ld a, e
	ld [hli], a
	ld [hl], d
	jp Func_1183
; 0x80743

Func_80743: ; 80743 (20:4743)
	ld de, wc647
	ld a, [de]
	dec a
	dec a
	cp $07
.asm_8074b
	jr nc, .asm_8074b
	ld [de], a
	ld l, a
	ld h, $00
	ld de, wc641
	add hl, de
	ld a, [hli]
	ld b, [hl]
	ld c, a
	jp Func_80525.asm_80548
; 0x8075b

Func_8075b: ; 8075b (20:475b)
	call Func_1412
	ld a, e
	dec a
	ld [wc63c], a
	ld [wc65b], a
	call Func_1412
	ld l, e
	ld h, $00
	bit 7, l
	jr z, .asm_80771
	dec h
.asm_80771
	add hl, hl
	add hl, hl
	add hl, hl
	ld a, l
	ld [wc65c + 1], a
	ld a, h
	ld [wc65c + 2], a
	call Func_1412
	ld a, e
	ld [wc65f], a
	call Func_1412
	ld a, e
	ld [wc65f + 1], a
	xor a
	ld [wc661], a
	ld [wc65c], a
	ld hl, wChannel2Pointer
	ld a, c
	ld [hli], a
	ld [hl], b
	ret
; 0x80798

; channel 2 commands
PointerTable_80798: ; 80798 (20:4798)
	dw Func_805f1 ; $d2
	dw Func_805ff ; $d3
	dw Func_8061c ; $d4
	dw Func_80626 ; $d5
	dw Func_80630 ; $d6
	dw Func_8063d ; $d7
	dw Func_80647 ; $d8
	dw Func_80651 ; $d9
	dw Func_8065e ; $da
	dw Func_8066d ; $db
	dw Func_8067f ; $dc
	dw Func_80691 ; $dd
	dw Func_806a3 ; $de
	dw Func_806a7 ; $df
	dw Func_806ab ; $e0
	dw Func_806af ; $e1
	dw Func_806c1 ; $e2
	dw Func_806d5 ; $e3
	dw Func_806df ; $e4
	dw Func_806e9 ; $e5
	dw Func_806f3 ; $e6
	dw Func_1183 ; $e7
	dw Func_80702 ; $e8
	dw Func_80707 ; $e9
	dw Func_8070c ; $ea
	dw Func_80711 ; $eb
	dw Func_80727 ; $ec
	dw Func_80743 ; $ed
	dw Func_8056e ; $ee
	dw Func_80573 ; $ef
	dw Func_80578 ; $f0
	dw Func_8057d ; $f1
	dw Func_80582 ; $f2
	dw Func_80587 ; $f3
	dw Func_8058c ; $f4
	dw Func_80591 ; $f5
	dw Func_80596 ; $f6
	dw Func_8059b ; $f7
	dw Func_805a0 ; $f8
	dw Func_805a5 ; $f9
	dw Func_805aa ; $fa
	dw Func_805af ; $fb
	dw Func_805b4 ; $fc
	dw Func_805b9 ; $fd
	dw Func_805fc ; $fe
	dw Func_8075b ; $ff

Func_807f4: ; 807f4 (20:47f4)
	ld hl, wc633
	set 7, [hl]
	call Func_80899
	call Func_808d2
	call Func_8094e
	ret
; 0x80803

Func_80803: ; 80803 (20:4803)
	ld a, [wc659 + 1]
	and a
	jr z, .asm_80819
	ld a, [wc632]
	bit 1, a
	jr z, .asm_80819
	res 1, a
	ld [wc632], a
	call Func_8095e
	ret
.asm_80819
	call Func_8096e
	call Func_808e2
	call Func_80823
	ret
; 0x80823

Func_80823: ; 80823 (20:4823)
	ld a, [wc632]
	bit 0, a
	ret nz
	ld a, $01
	ldh [rNR22], a
	ret
; 0x8082e

Func_8082e: ; 8082e (20:482e)
	call Func_8084e
	ld hl, wc638
	set 7, [hl]
	ld hl, wc633
	ld a, [hl]
	or $1e
	ld [hl], a
	ld hl, wc632
	set 1, [hl]
	ret
; 0x80843

Func_80843: ; 80843 (20:4843)
	call Func_8084e
	ld hl, wc633
	ld a, [hl]
	or $18
	ld [hl], a
	ret
; 0x8084e

Func_8084e: ; 8084e (20:484e)
	ld hl, wc64c
	ld a, [hli]
	ld e, a
	ld d, [hl]
	call Func_80867
	call Func_8183c
	call Func_80880
	ld hl, wc638
	ld a, [hl]
	and $c0
	or d
	ld [hld], a
	ld [hl], e
	ret
; 0x80867

Func_80867: ; 80867 (20:4867)
	ld a, [wc64a]
	and a
	ret z
	ld l, a
	add a
	jr c, .asm_80878
	ld a, e
	add l
	ld e, a
	ld a, d
	adc $00
	ld d, a
	ret
.asm_80878
	ld a, e
	add l
	ld e, a
	ld a, d
	adc $ff
	ld d, a
	ret
; 0x80880

Func_80880: ; 80880 (20:4880)
	ld a, [wc649]
	and a
	ret z
	ld l, a
	add a
	jr c, .asm_80891
	ld a, e
	add l
	ld e, a
	ld a, d
	adc $00
	ld d, a
	ret
.asm_80891
	ld a, e
	add l
	ld e, a
	ld a, d
	adc $ff
	ld d, a
	ret
; 0x80899

Func_80899: ; 80899 (20:4899)
	xor a
	ld [wc6c5], a
	ret
; 0x8089e

Func_8089e: ; 8089e (20:489e)
	ld a, [wc632]
	bit 0, a
	ret nz
	ld h, $00
	add hl, hl
	ld de, PointerTable_81a3f
	add hl, de
	call Func_1215
	ld a, $c3 ; jp
	ld [wc6c5], a
	ret
; 0x808b4

Func_808b4: ; 808b4 (20:48b4)
	ld a, [wc6c5]
	and a
	ret z
	ld a, [wc632]
	bit 0, a
	ret nz
	call Func_122e
	ld a, e
	or d
	jr z, .asm_808cd
	ld hl, wc6c6
	ld a, e
	ld [hli], a
	ld [hl], d
	ret
.asm_808cd
	xor a
	ld [wc6c5], a
	ret
; 0x808d2

Func_808d2: ; 808d2 (20:48d2)
	ld hl, wc64e
	ld a, [hli]
	ld [wc650], a
	ld a, [hl]
	ld [wc650 + 1], a
	xor a
	ld [wc653], a
	ret
; 0x808e2

Func_808e2: ; 808e2 (20:48e2)
	xor a
	ld [wc650 + 1], a
	ret
; 0x808e7

Func_808e7: ; 808e7 (20:48e7)
	ld h, $00
	add hl, hl
	ld de, PointerTable_83401
	add hl, de
	call Func_119b
	ret
; 0x808f2

Func_808f2: ; 808f2 (20:48f2)
	ld a, [wc650 + 1]
	and a
	ret z
	ld a, [wc653]
	and a
	jr z, .asm_80902
	dec a
	ld [wc653], a
	ret
.asm_80902
	ld hl, wc650
	ld a, [hli]
	ld b, [hl]
	ld c, a
.asm_80908
	jp Func_11b4
; 0x8090b

Func_8090b: ; 8090b (20:490b)
	ld a, l
	inc bc
	cp $65
	jr nc, .asm_80924
	cp $64
	jp z, Func_11c9
	and a
	jr nz, .asm_8091e
	xor a
	ld a, [wc650 + 1]
	ret
.asm_8091e
	dec a
	ld [wc652], a
	jr Func_808f2.asm_80908
.asm_80924
	sub $85
	ld e, a
	ld hl, wc633
	set 6, [hl]
	ld hl, wc652
	ld a, [hli]
	ld [hld], a
	ld hl, wc650
	ld a, c
	ld [hli], a
	ld [hl], b
	ld hl, wc64c
	bit 7, e
	jr nz, .asm_80946
	ld a, [hl]
	add e
	ld [hli], a
	ld a, [hl]
	adc $00
	ld [hl], a
	ret
.asm_80946
	ld a, [hl]
	add e
	ld [hli], a
	ld a, [hl]
	adc $ff
	ld [hl], a
	ret
; 0x8094e

Func_8094e: ; 8094e (20:494e)
	ld hl, wc654
	ld a, [hli]
	ld [wc656], a
	ld a, [hl]
	ld [wc656 + 1], a
	xor a
	ld [wc658], a
	ret
; 0x8095e

Func_8095e: ; 8095e (20:495e)
	ld hl, wc659
	ld a, [hli]
	ld [wc656], a
	ld a, [hl]
	ld [wc656 + 1], a
	xor a
	ld [wc658], a
	ret
; 0x8096e

Func_8096e: ; 8096e (20:496e)
	xor a
	ld [wc656 + 1], a
	ret
; 0x80973

Func_80973: ; 80973 (20:4973)
	ld h, $00
	add hl, hl
	add hl, hl
	ld de, PointerTable_82230
	add hl, de
	call Func_11e1
	ret
; 0x8097f

Func_8097f: ; 8097f (20:497f)
	ld a, [wc656 + 1]
	and a
	ret z
	ld a, [wc658]
	and a
	jr z, .asm_8098f
	dec a
	ld [wc658], a
	ret
.asm_8098f
	ld hl, wc656
	ld a, [hli]
	ld b, [hl]
	ld c, a
	call Func_1202
	ld a, e
	inc bc
	and a
	jr z, .asm_809d7
	ld [wc636], a
	ld hl, wc633
	ld e, a
	ld a, [hl]
	or $1f
	ld [hl], a
	ld a, e
	ld hl, wc638
	res 6, [hl]
	set 7, [hl]
.asm_809b0
	call Func_1202
	ld a, e
	inc bc
	bit 7, a
	jr z, .asm_809cc
	and $3f
	ld e, a
	ld a, [wc635]
	and $c0
	or e
	ld [wc635], a
	ld hl, wc638
	set 6, [hl]
	jr .asm_809b0
.asm_809cc
	dec a
	ld [wc658], a
	ld hl, wc656
	ld a, c
	ld [hli], a
	ld [hl], b
.asm_809d6
	ret
.asm_809d7
	xor a
	ld [wc656 + 1], a
	jr .asm_809d6
; 0x809dd

Func_809dd: ; 809dd (20:49dd)
	ld a, [wc65b]
	and a
	ret z
	ld hl, wc633
	set 6, [hl]
	dec a
	ld [wc65b], a
	and a
	jr z, .asm_80a34
	ld hl, wc65f
	ld a, [hli]
	ld c, a
	ld b, [hl]
	bit 7, b
	jr nz, .asm_80a16
	ld hl, wc65c
	ld a, [hl]
	sub c
	ld [hli], a
	ld a, [hl]
	sbc b
	ld [hli], a
	ld a, [hl]
	sbc $00
	ld [hli], a
	ld de, wc661
	ld hl, wc64c
	ld a, [de]
	add c
	ld [de], a
	ld a, [hl]
	adc b
	ld [hli], a
	ld a, [hl]
	adc $00
	ld [hli], a
	ret
.asm_80a16
	ld hl, wc65c
	ld a, [hl]
	sub c
	ld [hli], a
	ld a, [hl]
	sbc b
	ld [hli], a
	ld a, [hl]
	sbc $ff
	ld [hli], a
	ld de, wc661
	ld hl, wc64c
	ld a, [de]
	add c
	ld [de], a
	ld a, [hl]
	adc b
	ld [hli], a
	ld a, [hl]
	adc $ff
	ld [hli], a
	ret
.asm_80a34
	ld hl, wc65c
	ld de, wc661
	ld a, [de]
	add [hl]
	ld [de], a
	inc hl
	ld de, wc64c
	ld a, [de]
	adc [hl]
	ld [de], a
	inc hl
	inc de
	ld a, [de]
	adc [hl]
	ld [de], a
	ret
; 0x80a4a

; update channel 3
Func_80a4a: ; 80a4a (20:4a4a)
	ld a, [wChannel3Pointer + 1]
	and a
	ret z
	ld a, [wc67b]
	and a
	jr z, .asm_80a5e
	ld hl, wc66c
	cp [hl]
	jr nz, .asm_80a5e
	call Func_80d28
.asm_80a5e
	ld hl, wc66c
	ld a, [hl]
	and a
	jr z, .asm_80a67
	dec [hl]
	ret

.asm_80a67
	ld hl, wChannel3Pointer
	ld a, [hli]
	ld b, [hl]
	ld c, a
.asm_80a6d
	call Func_1412 ; get next song byte
	ld a, e
	cp $d2
	jr nc, .asm_80a85
	cp $8a
	jr nc, Func_80af3
	cp $6d
	jp nc, Func_80b0b
	and a
	jp nz, Func_80b39
	jp Func_80b31

.asm_80a85
	sub $d2
	add a
	ld l, a
	ld h, $00
	ld de, PointerTable_80cbd
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

Func_80a93: ; 80a93 (20:4a93)
	ld de, $fff8
	jr Func_80ae3

Func_80a98: ; 80a98 (20:4a98)
	ld de, $fff9
	jr Func_80ae3

Func_80a9d: ; 80a9d (20:4a9d)
	ld de, $fffa
	jr Func_80ae3

Func_80aa2: ; 80aa2 (20:4aa2)
	ld de, $fffb
	jr Func_80ae3

Func_80aa7: ; 80aa7 (20:4aa7)
	ld de, $fffc
	jr Func_80ae3

Func_80aac: ; 80aac (20:4aac)
	ld de, $fffd
	jr Func_80ae3

Func_80ab1: ; 80ab1 (20:4ab1)
	ld de, $fffe
	jr Func_80ae3

Func_80ab6: ; 80ab6 (20:4ab6)
	ld de, $ffff
	jr Func_80ae3

Func_80abb: ; 80abb (20:4abb)
	ld de, $1
	jr Func_80ae3

Func_80ac0: ; 80ac0 (20:4ac0)
	ld de, $2
	jr Func_80ae3

Func_80ac5: ; 80ac5 (20:4ac5)
	ld de, $3
	jr Func_80ae3

Func_80aca: ; 80aca (20:4aca)
	ld de, $4
	jr Func_80ae3

Func_80acf: ; 80acf (20:4acf)
	ld de, $5
	jr Func_80ae3

Func_80ad4: ; 80ad4 (20:4ad4)
	ld de, $6
	jr Func_80ae3

Func_80ad9: ; 80ad9 (20:4ad9)
	ld de, $7
	jr Func_80ae3

Func_80ade: ; 80ade (20:4ade)
	ld de, $8
	jr Func_80ae3

Func_80ae3: ; 80ae3 (20:4ae3)
	ld hl, wc67c
	ld a, [hl]
	add e
	ld [hli], a
	ld a, [hl]
	adc d
	ld [hl], a
	ld hl, wc663
	set 6, [hl]
	jr Func_80b24

Func_80af3: ; 80af3 (20:4af3)
	sub $8a
	ld hl, wc678
	add [hl]
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	ld a, l
	ld e, h
	ld hl, wc67c
	ld [hli], a
	ld [hl], e
	call Func_80d19
	jr Func_80b24

Func_80b0b: ; 80b0b (20:4b0b)
	sub $6d
	ld l, a
	call Func_80dc7
	call Func_80d28.asm_80d3e
	jr Func_80b24

Func_80b16: ; 80b16 (20:4b16)
	ld a, [wc67b]
	and a
	jr nz, .asm_80b1f
	call Func_80d28
.asm_80b1f
	jr Func_80b24

Func_80b21: ; 80b21 (20:4b21)
	call Func_80d19
	; fallthrough
Func_80b24: ; 80b24 (20:4b24)
	ld a, [wc66b]
	ld [wc66c], a
	ld hl, wChannel3Pointer
	ld a, c
	ld [hli], a
	ld [hl], b
	ret

Func_80b31: ; 80b31 (20:4b31)
	xor a
	ld [wChannel3Pointer], a
	ld [wChannel3Pointer + 1], a
	ret

Func_80b39: ; 80b39 (20:4b39)
	sub $01
	ld [wc66b], a
	jp Func_80a4a.asm_80a6d
; 0x80b41

Func_80b41: ; 80b41 (20:4b41)
	call Func_1412
	ld l, e
	call Func_80e10
	jp Func_80a4a.asm_80a6d
; 0x80b4b

Func_80b4b: ; 80b4b (20:4b4b)
	xor a
	ld [wc67e + 1], a
	call Func_80e0b
	jp Func_80a4a.asm_80a6d
; 0x80b55

Func_80b55: ; 80b55 (20:4b55)
	call Func_1412
	ld a, e
	ld [wc5fa], a
	ld [wc5fb], a
	jp Func_80a4a.asm_80a6d
; 0x80b62

Func_80b62: ; 80b62 (20:4b62)
	call Func_1412
	ld a, e
	ld [wc678], a
	jp Func_80a4a.asm_80a6d
; 0x80b6c

Func_80b6c: ; 80b6c (20:4b6c)
	call Func_1412
	ld l, e
	call Func_80e9c
	jp Func_80a4a.asm_80a6d
; 0x80b76

Func_80b76: ; 80b76 (20:4b76)
	xor a
	ld [wc684 + 1], a
	ld [wc689 + 1], a
	call Func_80e97
	jp Func_80a4a.asm_80a6d
; 0x80b83

Func_80b83: ; 80b83 (20:4b83)
	call Func_1412
	ld a, e
	ld [wc5f6], a
	ld hl, wc5f1
	set 0, [hl]
	jp Func_80a4a.asm_80a6d
; 0x80b92

Func_80b92: ; 80b92 (20:4b92)
	ld a, [wc5f7]
	and $bb
	or $04
	ld [wc5f7], a
	ld hl, wc663
	set 5, [hl]
	jp Func_80a4a.asm_80a6d
; 0x80ba4

Func_80ba4: ; 80ba4 (20:4ba4)
	ld a, [wc5f7]
	and $bb
	or $40
	ld [wc5f7], a
	ld hl, wc663
	set 5, [hl]
	jp Func_80a4a.asm_80a6d
; 0x80bb6

Func_80bb6: ; 80bb6 (20:4bb6)
	ld a, [wc5f7]
	and $bb
	or $44
	ld [wc5f7], a
	ld hl, wc663
	set 5, [hl]
	jp Func_80a4a.asm_80a6d
; 0x80bc8

Func_80bc8: ; 80bc8 (20:4bc8)
	ld e, $00
	jr Func_80bd4.asm_80bd6

Func_80bcc: ; 80bcc (20:4bcc)
	ld e, $40
	jr Func_80bd4.asm_80bd6

Func_80bd0: ; 80bd0 (20:4bd0)
	ld e, $80
	jr Func_80bd4.asm_80bd6

Func_80bd4: ; 80bd4 (20:4bd4)
	ld e, $c0
.asm_80bd6
	ld hl, wc665
	ld a, [hl]
	and $3f
	or e
	ld [hl], a
	ld hl, wc663
	set 1, [hl]
	jp Func_80a4a.asm_80a6d
; 0x80be6

Func_80be6: ; 80be6 (20:4be6)
	ld a, [wc662]
	bit 0, a
	jr nz, .asm_80bf7
	call Func_1412
	ld a, e
	ld [wc600], a
	call Func_1462
.asm_80bf7
	jp Func_80a4a.asm_80a6d
; 0x80bfa

Func_80bfa: ; 80bfa (20:4bfa)
	call Func_1412
	ld a, e
	ld [wc679], a
	jp Func_80a4a.asm_80a6d
; 0x80c04

Func_80c04: ; 80c04 (20:4c04)
	call Func_1412
	ld a, e
	ld [wc67a], a
	jp Func_80a4a.asm_80a6d
; 0x80c0e

Func_80c0e: ; 80c0e (20:4c0e)
	call Func_1412
	ld a, e
	ld [wc67b], a
	jp Func_80a4a.asm_80a6d
; 0x80c18

Func_80c18: ; 80c18 (20:4c18)
	call Func_1412
	ld a, e
	ld [wc666], a
	ld hl, wc663
	set 2, [hl]
	jp Func_80a4a.asm_80a6d
; 0x80c27

Func_80c27: ; 80c27 (20:4c27)
	ld hl, wc66d
	jr Func_80c36.asm_80c39

Func_80c2c: ; 80c2c (20:4c2c)
	ld hl, wc66e
	jr Func_80c36.asm_80c39

Func_80c31: ; 80c31 (20:4c31)
	ld hl, wc66f
	jr Func_80c36.asm_80c39

Func_80c36: ; 80c36 (20:4c36)
	ld hl, wc670
.asm_80c39
	call Func_1412
	ld a, e
	cp [hl]
	jr nz, .asm_80c48
	inc bc
	inc bc
	inc bc
	xor a
	ld [hl], a
	jp Func_80a4a.asm_80a6d
.asm_80c48
	inc [hl]
	jp Func_1242
; 0x80c4c

Func_80c4c: ; 80c4c (20:4c4c)
	ld de, wc677
	ld a, [de]
	cp $07
.asm_80c52
	jr nc, .asm_80c52
	ld l, a
	inc a
	inc a
	ld [de], a
	ld h, $00
	ld de, wc671
	add hl, de
	ld e, c
	ld d, b
	inc de
	inc de
	ld a, e
	ld [hli], a
	ld [hl], d
	jp Func_1242
; 0x80c68

Func_80c68: ; 80c68 (20:4c68)
	ld de, wc677
	ld a, [de]
	dec a
	dec a
	cp $07
.asm_80c70
	jr nc, .asm_80c70
	ld [de], a
	ld l, a
	ld h, $00
	ld de, wc671
	add hl, de
	ld a, [hli]
	ld b, [hl]
	ld c, a
	jp Func_80a4a.asm_80a6d
; 0x80c80

Func_80c80: ; 80c80 (20:4c80)
	call Func_1412
	ld a, e
	dec a
	ld [wc66c], a
	ld [wc68b], a
	call Func_1412
	ld l, e
	ld h, $00
	bit 7, l
	jr z, .asm_80c96
	dec h
.asm_80c96
	add hl, hl
	add hl, hl
	add hl, hl
	ld a, l
	ld [wc68c + 1], a
	ld a, h
	ld [wc68c + 2], a
	call Func_1412
	ld a, e
	ld [wc68f], a
	call Func_1412
	ld a, e
	ld [wc68f + 1], a
	xor a
	ld [wc691], a
	ld [wc68c], a
	ld hl, wChannel3Pointer
	ld a, c
	ld [hli], a
	ld [hl], b
	ret
; 0x80cbd

; channel 3 commands
PointerTable_80cbd: ; 80cbd (20:4cbd)
	dw Func_80b16 ; $d2
	dw Func_80b24 ; $d3
	dw Func_80b41 ; $d4
	dw Func_80b4b ; $d5
	dw Func_80b55 ; $d6
	dw Func_80b62 ; $d7
	dw Func_80b6c ; $d8
	dw Func_80b76 ; $d9
	dw Func_80b83 ; $da
	dw Func_80b92 ; $db
	dw Func_80ba4 ; $dc
	dw Func_80bb6 ; $dd
	dw Func_80bc8 ; $de
	dw Func_80bcc ; $df
	dw Func_80bd0 ; $e0
	dw Func_80bd4 ; $e1
	dw Func_80be6 ; $e2
	dw Func_80bfa ; $e3
	dw Func_80c04 ; $e4
	dw Func_80c0e ; $e5
	dw Func_80c18 ; $e6
	dw Func_1242 ; $e7
	dw Func_80c27 ; $e8
	dw Func_80c2c ; $e9
	dw Func_80c31 ; $ea
	dw Func_80c36 ; $eb
	dw Func_80c4c ; $ec
	dw Func_80c68 ; $ed
	dw Func_80a93 ; $ee
	dw Func_80a98 ; $ef
	dw Func_80a9d ; $f0
	dw Func_80aa2 ; $f1
	dw Func_80aa7 ; $f2
	dw Func_80aac ; $f3
	dw Func_80ab1 ; $f4
	dw Func_80ab6 ; $f5
	dw Func_80abb ; $f6
	dw Func_80ac0 ; $f7
	dw Func_80ac5 ; $f8
	dw Func_80aca ; $f9
	dw Func_80acf ; $fa
	dw Func_80ad4 ; $fb
	dw Func_80ad9 ; $fc
	dw Func_80ade ; $fd
	dw Func_80b21 ; $fe
	dw Func_80c80 ; $ff

Func_80d19: ; 80d19 (20:4d19)
	ld hl, wc663
	set 7, [hl]
	call Func_80dc2
	call Func_80dfb
	call Func_80e77
	ret
; 0x80d28

Func_80d28: ; 80d28 (20:4d28)
	ld a, [wc689 + 1]
	and a
	jr z, .asm_80d3e
	ld a, [wc662]
	bit 1, a
	jr z, .asm_80d3e
	res 1, a
	ld [wc662], a
	call Func_80e87
	ret
.asm_80d3e
	call Func_80e97
	call Func_80e0b
	call Func_80d48
	ret
; 0x80d48

Func_80d48: ; 80d48 (20:4d48)
	ld a, [wc662]
	bit 0, a
	ret nz
	xor a
	ldh [rNR30], a
	ret
; 0x80d52

Func_80d52: ; 80d52 (20:4d52)
	call Func_80d77
	ld hl, wc668
	set 7, [hl]
	ld hl, wc664
	set 7, [hl]
	ld hl, wc663
	ld a, [hl]
	or $1f
	ld [hl], a
	ld hl, wc662
	set 1, [hl]
	ret
; 0x80d6c

Func_80d6c: ; 80d6c (20:4d6c)
	call Func_80d77
	ld hl, wc663
	ld a, [hl]
	or $18
	ld [hl], a
	ret
; 0x80d77

Func_80d77: ; 80d77 (20:4d77)
	ld hl, wc67c
	ld a, [hli]
	ld e, a
	ld d, [hl]
	call Func_80d90
	call Func_8183c
	call Func_80da9
	ld hl, wc668
	ld a, [hl]
	and $c0
	or d
	ld [hld], a
	ld [hl], e
	ret
; 0x80d90

Func_80d90: ; 80d90 (20:4d90)
	ld a, [wc67a]
	and a
	ret z
	ld l, a
	add a
	jr c, .asm_80da1
	ld a, e
	add l
	ld e, a
	ld a, d
	adc $00
	ld d, a
	ret
.asm_80da1
	ld a, e
	add l
	ld e, a
	ld a, d
	adc $ff
	ld d, a
	ret
; 0x80da9

Func_80da9: ; 80da9 (20:4da9)
	ld a, [wc679]
	and a
	ret z
	ld l, a
	add a
	jr c, .asm_80dba
	ld a, e
	add l
	ld e, a
	ld a, d
	adc $00
	ld d, a
	ret
.asm_80dba
	ld a, e
	add l
	ld e, a
	ld a, d
	adc $ff
	ld d, a
	ret
; 0x80dc2

Func_80dc2: ; 80dc2 (20:4dc2)
	xor a
	ld [wc6c8], a
	ret
; 0x80dc7

Func_80dc7: ; 80dc7 (20:4dc7)
	ld a, [wc662]
	bit 0, a
	ret nz
	ld h, $00
	add hl, hl
	ld de, PointerTable_81a3f
	add hl, de
	call Func_12d4
	ld a, $c3 ; jp
	ld [wc6c8], a
	ret
; 0x80ddd

Func_80ddd: ; 80ddd (20:4ddd)
	ld a, [wc6c8]
	and a
	ret z
	ld a, [wc662]
	bit 0, a
	ret nz
	call Func_12ed
	ld a, e
	or d
	jr z, .asm_80df6
	ld hl, wc6c9
	ld a, e
	ld [hli], a
	ld [hl], d
	ret
.asm_80df6
	xor a
	ld [wc6c8], a
	ret
; 0x80dfb

Func_80dfb: ; 80dfb (20:4dfb)
	ld hl, wc67e
	ld a, [hli]
	ld [wc680], a
	ld a, [hl]
	ld [wc680 + 1], a
	xor a
	ld [wc683], a
	ret
; 0x80e0b

Func_80e0b: ; 80e0b (20:4e0b)
	xor a
	ld [wc680 + 1], a
	ret
; 0x80e10

Func_80e10: ; 80e10 (20:4e10)
	ld h, $00
	add hl, hl
	ld de, PointerTable_83401
	add hl, de
	call Func_125a
	ret
; 0x80e1b

Func_80e1b: ; 80e1b (20:4e1b)
	ld a, [wc680 + 1]
	and a
	ret z
	ld a, [wc683]
	and a
	jr z, .asm_80e2b
	dec a
	ld [wc683], a
	ret
.asm_80e2b
	ld hl, wc680
	ld a, [hli]
	ld b, [hl]
	ld c, a
.asm_80e31
	jp Func_1273
; 0x80e34

Func_80e34: ; 80e34 (20:4e34)
	ld a, l
	inc bc
	cp $65
	jr nc, .asm_80e4d
	cp $64
	jp z, Func_1288
	and a
	jr nz, .asm_80e47
	xor a
	ld a, [wc680 + 1]
	ret
.asm_80e47
	dec a
	ld [wc682], a
	jr Func_80e1b.asm_80e31
.asm_80e4d
	sub $85
	ld e, a
	ld hl, wc663
	set 6, [hl]
	ld hl, wc682
	ld a, [hli]
	ld [hld], a
	ld hl, wc680
	ld a, c
	ld [hli], a
	ld [hl], b
	ld hl, wc67c
	bit 7, e
	jr nz, .asm_80e6f
	ld a, [hl]
	add e
	ld [hli], a
	ld a, [hl]
	adc $00
	ld [hl], a
	ret
.asm_80e6f
	ld a, [hl]
	add e
	ld [hli], a
	ld a, [hl]
	adc $ff
	ld [hl], a
	ret
; 0x80e77

Func_80e77: ; 80e77 (20:4e77)
	ld hl, wc684
	ld a, [hli]
	ld [wc686], a
	ld a, [hl]
	ld [wc686 + 1], a
	xor a
	ld [wc688], a
	ret
; 0x80e87

Func_80e87: ; 80e87 (20:4e87)
	ld hl, wc689
	ld a, [hli]
	ld [wc686], a
	ld a, [hl]
	ld [wc686 + 1], a
	xor a
	ld [wc688], a
	ret
; 0x80e97

Func_80e97: ; 80e97 (20:4e97)
	xor a
	ld [wc686 + 1], a
	ret
; 0x80e9c

Func_80e9c: ; 80e9c (20:4e9c)
	ld h, $00
	add hl, hl
	add hl, hl
	ld de, PointerTable_82230
	add hl, de
	call Func_12a0
	ret
; 0x80ea8

Func_80ea8: ; 80ea8 (20:4ea8)
	ld a, [wc686 + 1]
	and a
	ret z
	ld a, [wc688]
	and a
	jr z, .asm_80eb8
	dec a
	ld [wc688], a
	ret
.asm_80eb8
	ld hl, wc686
	ld a, [hli]
	ld b, [hl]
	ld c, a
	call Func_12c1
	ld a, e
	inc bc
	and a
	jr z, .asm_80f0d
	ld hl, wc663
	ld e, a
	ld a, [hl]
	or $14
	ld [hl], a
	ld a, e
	ld [wc666], a
	bit 7, a
	jr nz, .asm_80ef2
	ld hl, wc668
	res 6, [hl]
	set 7, [hl]
	ld hl, wc664
	set 7, [hl]
.asm_80ee2
	call Func_12c1
	ld a, e
	inc bc
	dec a
	ld [wc688], a
	ld hl, wc686
	ld a, c
	ld [hli], a
	ld [hl], b
.asm_80ef1
	ret
.asm_80ef2
	call Func_12c1
	ld a, e
	inc bc
	ld [wc665], a
	ld hl, wc663
	set 1, [hl]
	ld hl, wc668
	set 6, [hl]
	set 7, [hl]
	ld hl, wc664
	set 7, [hl]
	jr .asm_80ee2
.asm_80f0d
	xor a
	ld [wc686 + 1], a
	jr .asm_80ef1
; 0x80f13

Func_80f13: ; 80f13 (20:4f13)
	ld a, [wc68b]
	and a
	ret z
	ld hl, wc663
	set 6, [hl]
	dec a
	ld [wc68b], a
	and a
	jr z, .asm_80f6a
	ld hl, wc68f
	ld a, [hli]
	ld c, a
	ld b, [hl]
	bit 7, b
	jr nz, .asm_80f4c
	ld hl, wc68c
	ld a, [hl]
	sub c
	ld [hli], a
	ld a, [hl]
	sbc b
	ld [hli], a
	ld a, [hl]
	sbc $00
	ld [hli], a
	ld de, wc691
	ld hl, wc67c
	ld a, [de]
	add c
	ld [de], a
	ld a, [hl]
	adc b
	ld [hli], a
	ld a, [hl]
	adc $00
	ld [hli], a
	ret
.asm_80f4c
	ld hl, wc68c
	ld a, [hl]
	sub c
	ld [hli], a
	ld a, [hl]
	sbc b
	ld [hli], a
	ld a, [hl]
	sbc $ff
	ld [hli], a
	ld de, wc691
	ld hl, wc67c
	ld a, [de]
	add c
	ld [de], a
	ld a, [hl]
	adc b
	ld [hli], a
	ld a, [hl]
	adc $ff
	ld [hli], a
	ret
.asm_80f6a
	ld hl, wc68c
	ld de, wc691
	ld a, [de]
	add [hl]
	ld [de], a
	inc hl
	ld de, wc67c
	ld a, [de]
	adc [hl]
	ld [de], a
	inc hl
	inc de
	ld a, [de]
	adc [hl]
	ld [de], a
	ret
; 0x80f80

; update channel 4
Func_80f80: ; 80f80 (20:4f80)
	ld a, [wChannel4Pointer + 1]
	and a
	ret z
	ld a, [wc6ab]
	and a
	jr z, .asm_80f94
	ld hl, wc69c
	cp [hl]
	jr nz, .asm_80f94
	call Func_81246
.asm_80f94
	ld hl, wc69c
	ld a, [hl]
	and a
	jr z, .asm_80f9d
	dec [hl]
	ret

.asm_80f9d
	ld hl, wChannel4Pointer
	ld a, [hli]
	ld b, [hl]
	ld c, a
.asm_80fa3
	call Func_1412 ; get next song byte
	ld a, e
	cp $d2
	jr nc, .asm_80fbb
	cp $8a
	jr nc, Func_81029
	cp $6d
	jp nc, Func_81037
	and a
	jp nz, Func_81065
	jp Func_8105d

.asm_80fbb
	sub $d2
	add a
	ld l, a
	ld h, $00
	ld de, PointerTable_811de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

Func_80fc9: ; 80fc9 (20:4fc9)
	ld de, $fff8
	jr Func_81019

Func_80fce: ; 80fce (20:4fce)
	ld de, $fff9
	jr Func_81019

Func_80fd3: ; 80fd3 (20:4fd3)
	ld de, $fffa
	jr Func_81019

Func_80fd8: ; 80fd8 (20:4fd8)
	ld de, $fffb
	jr Func_81019

Func_80fdd: ; 80fdd (20:4fdd)
	ld de, $fffc
	jr Func_81019

Func_80fe2: ; 80fe2 (20:4fe2)
	ld de, $fffd
	jr Func_81019

Func_80fe7: ; 80fe7 (20:4fe7)
	ld de, $fffe
	jr Func_81019

Func_80fec: ; 80fec (20:4fec)
	ld de, $ffff
	jr Func_81019

Func_80ff1: ; 80ff1 (20:4ff1)
	ld de, $1
	jr Func_81019

Func_80ff6: ; 80ff6 (20:4ff6)
	ld de, $2
	jr Func_81019

Func_80ffb: ; 80ffb (20:4ffb)
	ld de, $3
	jr Func_81019

Func_81000: ; 81000 (20:5000)
	ld de, $4
	jr Func_81019

Func_81005: ; 81005 (20:5005)
	ld de, $5
	jr Func_81019

Func_8100a: ; 8100a (20:500a)
	ld de, $6
	jr Func_81019

Func_8100f: ; 8100f (20:500f)
	ld de, $7
	jr Func_81019

Func_81014: ; 81014 (20:5014)
	ld de, $8
	jr Func_81019

Func_81019: ; 81019 (20:5019)
	ld hl, wc6ac
	ld a, [hl]
	add e
	ld [hli], a
	ld a, [hl]
	adc d
	ld [hl], a
	ld hl, wc693
	set 6, [hl]
	jr Func_81050

Func_81029: ; 81029 (20:5029)
	sub $8a
	ld hl, wc6a8
	add [hl]
	ld [wc6ac], a
	call Func_8123a
	jr Func_81050

Func_81037: ; 81037 (20:5037)
	sub $6d
	ld l, a
	call Func_812c0
	call Func_81246.asm_8125c
	jr Func_81050

Func_81042: ; 81042 (20:5042)
	ld a, [wc6ab]
	and a
	jr nz, .asm_8104b
	call Func_81246
.asm_8104b
	jr Func_81050

Func_8104d: ; 8104d (20:504d)
	call Func_8123a
	; fallthrough
Func_81050: ; 81050 (20:5050)
	ld a, [wc69b]
	ld [wc69c], a
	ld hl, wChannel4Pointer
	ld a, c
	ld [hli], a
	ld [hl], b
	ret

Func_8105d: ; 8105d (20:505d)
	xor a
	ld [wChannel4Pointer], a
	ld [wChannel4Pointer + 1], a
	ret

Func_81065: ; 81065 (20:5065)
	sub $01
	ld [wc69b], a
	jp Func_80f80.asm_80fa3
; 0x8106d

Func_8106d: ; 8106d (20:506d)
	call Func_1412
	jp Func_80f80.asm_80fa3
; 0x81073

Func_81073: ; 81073 (20:5073)
	jp Func_80f80.asm_80fa3
; 0x81076

Func_81076: ; 81076 (20:5076)
	call Func_1412
	ld a, e
	ld [wc5fa], a
	ld [wc5fb], a
	jp Func_80f80.asm_80fa3
; 0x81083

Func_81083: ; 81083 (20:5083)
	call Func_1412
	ld a, e
	ld [wc6a8], a
	jp Func_80f80.asm_80fa3
; 0x8108d

Func_8108d: ; 8108d (20:508d)
	call Func_1412
	ld l, e
	call Func_81319
	jp Func_80f80.asm_80fa3
; 0x81097

Func_81097: ; 81097 (20:5097)
	xor a
	ld [wc6b4 + 1], a
	ld [wc6b9 + 1], a
	call Func_81314
	jp Func_80f80.asm_80fa3
; 0x810a4

Func_810a4: ; 810a4 (20:50a4)
	call Func_1412
	ld a, e
	ld [wc5f6], a
	ld hl, wc5f1
	set 0, [hl]
	jp Func_80f80.asm_80fa3
; 0x810b3

Func_810b3: ; 810b3 (20:50b3)
	ld a, [wc5f7]
	and $77
	or $08
	ld [wc5f7], a
	ld hl, wc693
	set 5, [hl]
	jp Func_80f80.asm_80fa3
; 0x810c5

Func_810c5: ; 810c5 (20:50c5)
	ld a, [wc5f7]
	and $77
	or $80
	ld [wc5f7], a
	ld hl, wc693
	set 5, [hl]
	jp Func_80f80.asm_80fa3
; 0x810d7

Func_810d7: ; 810d7 (20:50d7)
	ld a, [wc5f7]
	and $77
	or $88
	ld [wc5f7], a
	ld hl, wc693
	set 5, [hl]
	jp Func_80f80.asm_80fa3
; 0x810e9

Func_810e9: ; 810e9 (20:50e9)
	ld e, $00
	jr Func_810f5.asm_810f7

Func_810ed: ; 810ed (20:50ed)
	ld e, $40
	jr Func_810f5.asm_810f7

Func_810f1: ; 810f1 (20:50f1)
	ld e, $80
	jr Func_810f5.asm_810f7

Func_810f5: ; 810f5 (20:50f5)
	ld e, $c0
.asm_810f7
	ld hl, wc695
	ld a, [hl]
	and $3f
	or e
	ld [hl], a
	ld hl, wc693
	set 1, [hl]
	jp Func_80f80.asm_80fa3
; 0x81107

Func_81107: ; 81107 (20:5107)
	ld a, [wc662]
	bit 0, a
	jr nz, .asm_81118
	call Func_1412
	ld a, e
	ld [wc600], a
	call Func_1462
.asm_81118
	jp Func_80f80.asm_80fa3
; 0x8111b

Func_8111b: ; 8111b (20:511b)
	call Func_1412
	ld a, e
	ld [wc6a9], a
	jp Func_80f80.asm_80fa3
; 0x81125

Func_81125: ; 81125 (20:5125)
	call Func_1412
	ld a, e
	ld [wc6aa], a
	jp Func_80f80.asm_80fa3
; 0x8112f

Func_8112f: ; 8112f (20:512f)
	call Func_1412
	ld a, e
	ld [wc6ab], a
	jp Func_80f80.asm_80fa3
; 0x81139

Func_81139: ; 81139 (20:5139)
	call Func_1412
	ld a, e
	ld [wc696], a
	ld hl, wc693
	set 2, [hl]
	jp Func_80f80.asm_80fa3
; 0x81148

Func_81148: ; 81148 (20:5148)
	ld hl, wc69d
	jr Func_81157.asm_8115a

Func_8114d: ; 8114d (20:514d)
	ld hl, wc69e
	jr Func_81157.asm_8115a

Func_81152: ; 81152 (20:5152)
	ld hl, wc69f
	jr Func_81157.asm_8115a

Func_81157: ; 81157 (20:5157)
	ld hl, wc6a0
.asm_8115a
	call Func_1412
	ld a, e
	cp [hl]
	jr nz, .asm_81169
	inc bc
	inc bc
	inc bc
	xor a
	ld [hl], a
	jp Func_80f80.asm_80fa3
.asm_81169
	inc [hl]
	jp Func_1301
; 0x8116d

Func_8116d: ; 8116d (20:516d)
	ld de, wc6a7
	ld a, [de]
	cp $07
.asm_81173
	jr nc, .asm_81173
	ld l, a
	inc a
	inc a
	ld [de], a
	ld h, $00
	ld de, wc6a1
	add hl, de
	ld e, c
	ld d, b
	inc de
	inc de
	ld a, e
	ld [hli], a
	ld [hl], d
	jp Func_1301
; 0x81189

Func_81189: ; 81189 (20:5189)
	ld de, wc6a7
	ld a, [de]
	dec a
	dec a
	cp $07
.asm_81191
	jr nc, .asm_81191
	ld [de], a
	ld l, a
	ld h, $00
	ld de, wc6a1
	add hl, de
	ld a, [hli]
	ld b, [hl]
	ld c, a
	jp Func_80f80.asm_80fa3
; 0x811a1

Func_811a1: ; 811a1 (20:51a1)
	call Func_1412
	ld a, e
	dec a
	ld [wc69c], a
	ld [wc6bb], a
	call Func_1412
	ld l, e
	ld h, $00
	bit 7, l
	jr z, .asm_811b7
	dec h
.asm_811b7
	add hl, hl
	add hl, hl
	add hl, hl
	ld a, l
	ld [wc6bc + 1], a
	ld a, h
	ld [wc6bc + 2], a
	call Func_1412
	ld a, e
	ld [wc6bf], a
	call Func_1412
	ld a, e
	ld [wc6bf + 1], a
	xor a
	ld [wc6c1], a
	ld [wc6bc], a
	ld hl, wChannel4Pointer
	ld a, c
	ld [hli], a
	ld [hl], b
	ret
; 0x811de

; channel 4 commands
PointerTable_811de: ; 811de (20:51de)
	dw Func_81042 ; $d2
	dw Func_81050 ; $d3
	dw Func_8106d ; $d4
	dw Func_81073 ; $d5
	dw Func_81076 ; $d6
	dw Func_81083 ; $d7
	dw Func_8108d ; $d8
	dw Func_81097 ; $d9
	dw Func_810a4 ; $da
	dw Func_810b3 ; $db
	dw Func_810c5 ; $dc
	dw Func_810d7 ; $dd
	dw Func_810e9 ; $de
	dw Func_810ed ; $df
	dw Func_810f1 ; $e0
	dw Func_810f5 ; $e1
	dw Func_81107 ; $e2
	dw Func_8111b ; $e3
	dw Func_81125 ; $e4
	dw Func_8112f ; $e5
	dw Func_81139 ; $e6
	dw Func_1301 ; $e7
	dw Func_81148 ; $e8
	dw Func_8114d ; $e9
	dw Func_81152 ; $ea
	dw Func_81157 ; $eb
	dw Func_8116d ; $ec
	dw Func_81189 ; $ed
	dw Func_80fc9 ; $ee
	dw Func_80fce ; $ef
	dw Func_80fd3 ; $f0
	dw Func_80fd8 ; $f1
	dw Func_80fdd ; $f2
	dw Func_80fe2 ; $f3
	dw Func_80fe7 ; $f4
	dw Func_80fec ; $f5
	dw Func_80ff1 ; $f6
	dw Func_80ff6 ; $f7
	dw Func_80ffb ; $f8
	dw Func_81000 ; $f9
	dw Func_81005 ; $fa
	dw Func_8100a ; $fb
	dw Func_8100f ; $fc
	dw Func_81014 ; $fd
	dw Func_8104d ; $fe
	dw Func_811a1 ; $ff

Func_8123a: ; 8123a (20:523a)
	ld hl, wc693
	set 7, [hl]
	call Func_812bb
	call Func_812f4
	ret
; 0x81246

Func_81246: ; 81246 (20:5246)
	ld a, [wc6b9 + 1]
	and a
	jr z, .asm_8125c
	ld a, [wc692]
	bit 1, a
	jr z, .asm_8125c
	res 1, a
	ld [wc692], a
	call Func_81304
	ret
.asm_8125c
	call Func_81314
	call Func_81263
	ret
; 0x81263

Func_81263: ; 81263 (20:5263)
	ld a, [wc692]
	bit 0, a
	ret nz
	ld a, $01
	ldh [rNR42], a
	ret
; 0x8126e

Func_8126e: ; 8126e (20:526e)
	call Func_8128e
	ld hl, wc698
	set 7, [hl]
	ld hl, wc693
	ld a, [hl]
	or $1e
	ld [hl], a
	ld hl, wc692
	set 1, [hl]
	ret
; 0x81283

Func_81283: ; 81283 (20:5283)
	call Func_8128e
	ld hl, wc693
	ld a, [hl]
	or $18
	ld [hl], a
	ret
; 0x8128e

Func_8128e: ; 8128e (20:528e)
	ld a, [wc6ac]
	ld l, a
	ld h, $00
	ld de, $17e4
	add hl, de
	ld e, [hl]
	ld hl, wc698
	ld a, [hl]
	and $c0
	ld [hld], a
	ld [hl], e
	ret
; 0x812a2

Func_812a2: ; 812a2 (20:52a2)
	ld a, [wc6aa]
	and a
	ret z
	ld l, a
	add a
	jr c, .asm_812b3
	ld a, e
	add l
	ld e, a
	ld a, d
	adc $00
	ld d, a
	ret
.asm_812b3
	ld a, e
	add l
	ld e, a
	ld a, d
	adc $ff
	ld d, a
	ret
; 0x812bb

Func_812bb: ; 812bb (20:52bb)
	xor a
	ld [wc6cb], a
	ret
; 0x812c0

Func_812c0: ; 812c0 (20:52c0)
	ld a, [wc692]
	bit 0, a
	ret nz
	ld h, $00
	add hl, hl
	ld de, PointerTable_81a3f
	add hl, de
	call Func_134d
	ld a, $c3 ; jp
	ld [wc6cb], a
	ret
; 0x812d6

Func_812d6: ; 812d6 (20:52d6)
	ld a, [wc6cb]
	and a
	ret z
	ld a, [wc692]
	bit 0, a
	ret nz
	call Func_1366
	ld a, e
	or d
	jr z, .asm_812ef
	ld hl, wc6cc
	ld a, e
	ld [hli], a
	ld [hl], d
	ret
.asm_812ef
	xor a
	ld [wc6cb], a
	ret
; 0x812f4

Func_812f4: ; 812f4 (20:52f4)
	ld hl, wc6b4
	ld a, [hli]
	ld [wc6b6], a
	ld a, [hl]
	ld [wc6b6 + 1], a
	xor a
	ld [wc6b8], a
	ret
; 0x81304

Func_81304: ; 81304 (20:5304)
	ld hl, wc6b9
	ld a, [hli]
	ld [wc6b6], a
	ld a, [hl]
	ld [wc6b6 + 1], a
	xor a
	ld [wc6b8], a
	ret
; 0x81314

Func_81314: ; 81314 (20:5314)
	xor a
	ld [wc6b6 + 1], a
	ret
; 0x81319

Func_81319: ; 81319 (20:5319)
	ld h, $00
	add hl, hl
	add hl, hl
	ld de, PointerTable_82230
	add hl, de
	call Func_1319
	ret
; 0x81325

Func_81325: ; 81325 (20:5325)
	ld a, [wc6b6 + 1]
	and a
	ret z
	ld a, [wc6b8]
	and a
	jr z, .asm_81335
	dec a
	ld [wc6b8], a
	ret
.asm_81335
	ld hl, wc6b6
	ld a, [hli]
	ld b, [hl]
	ld c, a
	call Func_133a
	ld a, e
	inc bc
	and a
	jr z, .asm_8137d
	ld [wc696], a
	ld hl, wc693
	ld e, a
	ld a, [hl]
	or $1f
	ld [hl], a
	ld a, e
	ld hl, wc698
	res 6, [hl]
	set 7, [hl]
.asm_81356
	call Func_133a
	ld a, e
	inc bc
	bit 7, a
	jr z, .asm_81372
	and $3f
	ld e, a
	ld a, [wc695]
	and $c0
	or e
	ld [wc695], a
	ld hl, wc698
	set 6, [hl]
	jr .asm_81356
.asm_81372
	dec a
	ld [wc6b8], a
	ld hl, wc6b6
	ld a, c
	ld [hli], a
	ld [hl], b
.asm_8137c
	ret
.asm_8137d
	xor a
	ld [wc6b6 + 1], a
	jr .asm_8137c
; 0x81383

Func_81383: ; 81383 (20:5383)
	push bc
	push hl
	ld hl, wAudioStart
	xor a
	ld bc, wAudioEnd - wAudioStart - 1
	inc b
	inc c
.asm_8138e
	ld [hli], a
	dec c
	jr nz, .asm_8138e
	dec b
	jr nz, .asm_8138e
	ld a, $00
	ldh [rNR52], a
	ld [wc5f8], a
	ld a, $80
	ldh [rNR52], a
	ld [wc5f8], a
	ld a, $77
	ldh [rNR50], a
	ld [wc5f6], a
	ld a, $ff
	ldh [rNR51], a
	ld [wc5f7], a
	ld [wc5f9], a
	call Func_817ed
	pop hl
	pop bc
	ret
; 0x813ba

; play song id in l
Func_813ba: ; 813ba (20:53ba)
	push bc
	push de
	ld a, [wc602]
	and $01
	push af
	ld a, [wc632]
	and $01
	push af
	ld a, [wc662]
	and $01
	push af
	ld a, [wc692]
	and $01
	push af
	call Func_81383
	pop af
	ld [wc692], a
	pop af
	ld [wc662], a
	pop af
	ld [wc632], a
	pop af
	ld [wc602], a
	ld e, l ; song id
	xor a
	ld h, a
	ld d, a
	add hl, hl
	add hl, de
	ld de, SongPointers + 2
	add hl, de
	call Func_13c0 ; get song header

; get channel pointers
	call Func_13d7
	ld a, e
	ld [wChannel1Pointer], a
	call Func_13d7
	ld a, e
	ld [wChannel1Pointer + 1], a
	call Func_13d7
	ld a, e
	ld [wChannel2Pointer], a
	call Func_13d7
	ld a, e
	ld [wChannel2Pointer + 1], a
	call Func_13d7
	ld a, e
	ld [wChannel3Pointer], a
	call Func_13d7
	ld a, e
	ld [wChannel3Pointer + 1], a
	call Func_13d7
	ld a, e
	ld [wChannel4Pointer], a
	call Func_13d7
	ld a, e
	ld [wChannel4Pointer + 1], a
	ld hl, wc5f0
	set 7, [hl]
	ld a, $06
	ld [wc5fa], a
	ld a, $1e
	ld [wc5fb], a
	pop de
	pop bc
	ret
; 0x8143e

Func_8143e: ; 8143e (20:543e)
	push hl
	ld hl, wc5f0
	res 7, [hl]
	ld a, $00
	ldh [rNR52], a
	ld [wc5f8], a
	ld a, $80
	ldh [rNR52], a
	ld [wc5f8], a
	call Func_817ed
	ld a, $77
	ldh [rNR50], a
	ld [wc5f6], a
	ld a, $ff
	ldh [rNR51], a
	ld [wc5f7], a
	ld [wc5f9], a
	pop hl
	ret
; 0x81468

Func_81468: ; 81468 (20:5468)
	ld hl, wc5f0
	res 7, [hl]
	ld a, $08
	ldh [rNR12], a
	ldh [rNR22], a
	ldh [rNR42], a
	ld a, $80
	ldh [rNR14], a
	ldh [rNR24], a
	ldh [rNR44], a
	ld a, $00
	ldh [rNR30], a
	ret
; 0x81482

Func_81482: ; 81482 (20:5482)
	call Func_1462
	ld a, [wc601]
	and a
	ret nz
	ld hl, wc5f0
	set 7, [hl]
	ret
; 0x81490

Func_81490: ; 81490 (20:5490)
	call Func_148d
	ld hl, wAudioStart
	ld de, wAudioEnd
	ld bc, wAudioEnd - wAudioStart
	dec bc
	inc b
	inc c
.asm_8149f
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .asm_8149f
	dec b
	jr nz, .asm_8149f
	ret
; 0x814a9

Func_814a9: ; 814a9 (20:54a9)
	call Func_148d
	ld de, wAudioStart
	ld hl, wAudioEnd
	ld bc, wAudioEnd - wAudioStart
	dec bc
	inc b
	inc c
.asm_814b8
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .asm_814b8
	dec b
	jr nz, .asm_814b8
	call Func_14a1
	ret
; 0x814c5

Func_814c5: ; 814c5 (20:54c5)
	ld hl, wc5f0
	bit 7, [hl]
	jp z, .asm_81520
	ld a, [wc5fa]
	ld b, a
	ld a, [wc5fb]
	sub b
	jr z, .asm_814d9
	jr nc, .asm_814ff
.asm_814d9
	add $1e
	ld [wc5fb], a
	call Func_80000
	call Func_80525
	call Func_80a4a
	call Func_80f80
	call Func_803cd
	call Func_808f2
	call Func_80e1b
	call Func_804b8
	call Func_809dd
	call Func_80f13
	jp .asm_81502
.asm_814ff
	ld [wc5fb], a
.asm_81502
	call Func_8045a
	call Func_8097f
	call Func_80ea8
	call Func_81325
	call Func_8038f
	call Func_808b4
	call Func_80ddd
	call Func_812d6
	call Func_81711
	call Func_81521
.asm_81520
	ret
; 0x81521

Func_81521: ; 81521 (20:5521)
	ld a, [$c7b4]
	and a
	jr nz, .asm_81549
	ld a, [$c7bd]
	and a
	jr nz, .asm_81549
	ld a, [$c7c6]
	and a
	jr nz, .asm_81549
	ld a, [wc5f1]
	ld b, a
	bit 0, b
	jr z, .asm_81540
	ld a, [wc5f6]
	ldh [rNR50], a
.asm_81540
	bit 1, b
	jr z, .asm_81549
	ld a, [wc5f8]
	ldh [rNR52], a
.asm_81549
	ld a, [wc603]
	ld b, a
	bit 7, b
	jr z, .asm_81556
	call Func_80309
	jr .asm_8155d
.asm_81556
	bit 6, b
	jr z, .asm_8155d
	call Func_8031e
.asm_8155d
	ld a, [wc602]
	ld b, a
	bit 0, b
	jr nz, .asm_815ab
	ld a, [wc603]
	ld b, a
	bit 5, b
	jr z, .asm_8157e
	ld a, [wc5f7]
	and $11
	ld c, a
	ld a, [wc5f9]
	and $ee
	or c
	ld [wc5f9], a
	ldh [rNR51], a
.asm_8157e
	bit 0, b
	jr z, .asm_81587
	ld a, [wc604]
	ldh [rNR10], a
.asm_81587
	bit 1, b
	jr z, .asm_81590
	ld a, [wc605]
	ldh [rNR11], a
.asm_81590
	bit 2, b
	jr z, .asm_81599
	ld a, [wc606]
	ldh [rNR12], a
.asm_81599
	bit 3, b
	jr z, .asm_815a2
	ld a, [wc607]
	ldh [rNR13], a
.asm_815a2
	bit 4, b
	jr z, .asm_815ab
	ld a, [wc608]
	ldh [rNR14], a
.asm_815ab
	ld hl, wc608
	res 7, [hl]
	ld a, [wc633]
	ld b, a
	bit 7, b
	jr z, .asm_815bd
	call Func_8082e
	jr .asm_815c4
.asm_815bd
	bit 6, b
	jr z, .asm_815c4
	call Func_80843
.asm_815c4
	ld a, [wc632]
	ld b, a
	bit 0, b
	jr nz, .asm_81609
	ld a, [wc633]
	ld b, a
	bit 5, b
	jr z, .asm_815e5
	ld a, [wc5f7]
	and $22
	ld c, a
	ld a, [wc5f9]
	and $dd
	or c
	ld [wc5f9], a
	ldh [rNR51], a
.asm_815e5
	bit 1, b
	jr z, .asm_815ee
	ld a, [wc635]
	ldh [rNR21], a
.asm_815ee
	bit 2, b
	jr z, .asm_815f7
	ld a, [wc636]
	ldh [rNR22], a
.asm_815f7
	bit 3, b
	jr z, .asm_81600
	ld a, [wc637]
	ldh [rNR23], a
.asm_81600
	bit 4, b
	jr z, .asm_81609
	ld a, [wc638]
	ldh [rNR24], a
.asm_81609
	ld hl, wc638
	res 7, [hl]
	ld a, [wc663]
	ld b, a
	bit 7, b
	jr z, .asm_8161b
	call Func_80d52
	jr .asm_81622
.asm_8161b
	bit 6, b
	jr z, .asm_81622
	call Func_80d6c
.asm_81622
	ld a, [wc662]
	ld b, a
	bit 0, b
	jr nz, .asm_81689
	ld a, [wc663]
	ld b, a
	bit 5, b
	jr z, .asm_81643
	ld a, [wc5f7]
	and $44
	ld c, a
	ld a, [wc5f9]
	and $bb
	or c
	ld [wc5f9], a
	ldh [rNR51], a
.asm_81643
	bit 4, b
	jr z, .asm_8165c
	ld a, [wc668]
	bit 7, a
	jr z, .asm_8165c
	ldh a, [rNR52]
	bit 2, a
	jr z, .asm_8165c
	xor a
	ldh [rNR30], a
	ld a, [wc664]
	ldh [rNR30], a
.asm_8165c
	bit 0, b
	jr z, .asm_81665
	ld a, [wc664]
	ldh [rNR30], a
.asm_81665
	bit 1, b
	jr z, .asm_8166e
	ld a, [wc665]
	ldh [rNR31], a
.asm_8166e
	bit 2, b
	jr z, .asm_81677
	ld a, [wc666]
	ldh [rNR32], a
.asm_81677
	bit 3, b
	jr z, .asm_81680
	ld a, [wc667]
	ldh [rNR33], a
.asm_81680
	bit 4, b
	jr z, .asm_81689
	ld a, [wc668]
	ldh [rNR34], a
.asm_81689
	ld hl, wc668
	res 7, [hl]
	ld a, [wc693]
	ld b, a
	bit 7, b
	jr z, .asm_8169b
	call Func_8126e
	jr .asm_816a2
.asm_8169b
	bit 6, b
	jr z, .asm_816a2
	call Func_81283
.asm_816a2
	ld a, [wc692]
	ld b, a
	bit 0, b
	jr nz, .asm_816e7
	ld a, [wc693]
	ld b, a
	bit 5, b
	jr z, .asm_816c3
	ld a, [wc5f7]
	and $88
	ld c, a
	ld a, [wc5f9]
	and $77
	or c
	ld [wc5f9], a
	ldh [rNR51], a
.asm_816c3
	bit 1, b
	jr z, .asm_816cc
	ld a, [wc695]
	ldh [rNR41], a
.asm_816cc
	bit 2, b
	jr z, .asm_816d5
	ld a, [wc696]
	ldh [rNR42], a
.asm_816d5
	bit 3, b
	jr z, .asm_816de
	ld a, [wc697]
	ldh [rNR43], a
.asm_816de
	bit 4, b
	jr z, .asm_816e7
	ld a, [wc698]
	ldh [rNR44], a
.asm_816e7
	ld hl, wc698
	res 7, [hl]
	xor a
	ld [wc5f1], a
	ld [wc603], a
	ld [wc633], a
	ld [wc663], a
	ld [wc693], a
	ret
; 0x816fd

Func_816fd: ; 816fd (20:56fd)
	ld a, [wc601]
	and a
	jr z, .asm_81705
	ld e, $00
.asm_81705
	ld a, e
	ld [wc5fd], a
	xor a
	ld [wc5fe], a
	ld [wc5ff], a
	ret
; 0x81711

Func_81711: ; 81711 (20:5711)
	ld a, [wc5fd]
	and a
	ret z
	ld hl, wc5fe
	ld a, [hl]
	and a
	jr z, .asm_8171f
	dec [hl]
	ret
.asm_8171f
	ld a, [wc5fd]
	dec a
	ld [wc5fe], a
	ld a, [wc5ff]
	add a
	ld l, a
	ld h, $00
	ld bc, PointerTable_81735
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl
; 0x81735

PointerTable_81735: ; 81735 (20:5735)
	dw Func_817c5
	dw Func_817c5
	dw Func_817c5
	dw Func_817c5
	dw Func_817c5
	dw Func_817c5
	dw Func_817c5
	dw Func_817b4
	dw Func_8175b
	dw Func_817c0
	dw Func_8174b

Func_8174b: ; 8174b (20:574b)
	xor a
	ld [wc5fd], a
	ld [wc5fe], a
	ld [wc5ff], a
	ld hl, wc5f0
	res 7, [hl]
	ret
; 0x8175b

Func_8175b: ; 8175b (20:575b)
	call Func_817ed
	xor a
	ld [wChannel1Pointer + 1], a
	ld [wChannel2Pointer + 1], a
	ld [wChannel3Pointer + 1], a
	ld [wChannel4Pointer + 1], a
	ld [wc61e + 1], a
	ld [wc64e + 1], a
	ld [wc67e + 1], a
	ld [wc6ae + 1], a
	ld [wc620 + 1], a
	ld [wc650 + 1], a
	ld [wc680 + 1], a
	ld [wc6b0 + 1], a
	ld [wc624 + 1], a
	ld [wc654 + 1], a
	ld [wc684 + 1], a
	ld [wc6b4 + 1], a
	ld [wc626 + 1], a
	ld [wc656 + 1], a
	ld [wc686 + 1], a
	ld [wc6b6 + 1], a
	ld [wc6c2], a
	ld [wc6c5], a
	ld [wc6c8], a
	ld [wc6cb], a
	xor a
	ld [wc5fe], a
	inc a
	ld [wc5fd], a
	ld hl, wc5ff
	inc [hl]
	ret
; 0x817b4

Func_817b4: ; 817b4 (20:57b4)
	ld hl, wc5f6
	ld a, [hl]
	and $88
	ld [hl], a
	ld hl, wc5f1
	set 0, [hl]
	; fallthrough
Func_817c0: ; 817c0 (20:57c0)
	ld hl, wc5ff
	inc [hl]
	ret
; 0x817c5

Func_817c5: ; 817c5 (20:57c5)
	ld hl, wc5f6
	ld b, [hl]
	ld a, b
	and $07
	jr z, .asm_817d5
	dec a
	ld c, a
	ld a, b
	and $f8
	or c
	ld b, a
.asm_817d5
	ld a, b
	and $70
	jr z, .asm_817e2
	sub $10
	ld c, a
	ld a, b
	and $8f
	or c
	ld b, a
.asm_817e2
	ld [hl], b
	ld hl, wc5f1
	set 0, [hl]
	ld hl, wc5ff
	inc [hl]
	ret
; 0x817ed

Func_817ed: ; 817ed (20:57ed)
	ld a, $08
	ldh [rNR12], a
	ldh [rNR22], a
	ldh [rNR42], a
	ld [wc606], a
	ld [wc636], a
	ld [wc696], a
	ld a, $80
	ldh [rNR14], a
	ldh [rNR24], a
	ldh [rNR44], a
	ld [wc608], a
	ld [wc638], a
	ld [wc698], a
	ld a, $00
	ldh [rNR30], a
	ld [wc664], a
	ret
; 0x81817

Func_81817: ; 81817 (20:5817)
	push bc
	push hl
	ld a, [wc600]
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	ld bc, DataTable_82f71
	add hl, bc
	xor a
	ldh [rNR30], a
	ldh [rNR31], a
	ldh [rNR32], a
	ldh [rNR33], a
	ldh [rNR34], a
	ld b, $10
	ld c, LOW(rWave)
	call Func_1476
	pop hl
	pop bc
	ret
; 0x8183c

Func_8183c: ; 8183c (20:583c)
	ld hl, $15a4
	add hl, de
	ld c, [hl]
	srl d
	rr e
	srl d
	rr e
	res 0, e
	ld hl, $1514
	add hl, de
	ld a, [hli]
	add c
	ld e, a
	ld d, [hl]
	jr nc, .asm_81856
	inc d
.asm_81856
	ret
; 0x81857

Func_81857: ; 81857 (20:5857)
	ldh a, [hffbe]
	bit 0, a
	jr z, .asm_81873
	ld a, [wc6ce]
	cp $60
	jr nz, .asm_81867
	xor a
	jr .asm_81868
.asm_81867
	inc a
.asm_81868
	push af
	call Func_13a1
	pop af
	ld [wc6ce], a
	jp .asm_8190d
.asm_81873
	ldh a, [hffbe]
	bit 1, a
	jr z, .asm_8188f
	ld a, [wc6ce]
	and a
	jr nz, .asm_81883
	ld a, $60
	jr .asm_81884
.asm_81883
	dec a
.asm_81884
	push af
	call Func_13a1
	pop af
	ld [wc6ce], a
	jp .asm_8190d
.asm_8188f
	ldh a, [hffbe]
	bit 6, a
	jr z, .asm_818a6
	ld hl, wc692
	bit 0, [hl]
	jr nz, .asm_818a1
	set 0, [hl]
	jp .asm_8190d
.asm_818a1
	res 0, [hl]
	jp .asm_8190d
.asm_818a6
	ldh a, [hffbe]
	bit 4, a
	jr z, .asm_818bd
	ld hl, wc602
	bit 0, [hl]
	jr nz, .asm_818b8
	set 0, [hl]
	jp .asm_8190d
.asm_818b8
	res 0, [hl]
	jp .asm_8190d
.asm_818bd
	ldh a, [hffbe]
	bit 7, a
	jr z, .asm_818d4
	ld hl, wc632
	bit 0, [hl]
	jr nz, .asm_818cf
	set 0, [hl]
	jp .asm_8190d
.asm_818cf
	res 0, [hl]
	jp .asm_8190d
.asm_818d4
	ldh a, [hffbe]
	bit 5, a
	jr z, .asm_818eb
	ld hl, wc662
	bit 0, [hl]
	jr nz, .asm_818e6
	set 0, [hl]
	jp .asm_8190d
.asm_818e6
	res 0, [hl]
	jp .asm_8190d
.asm_818eb
	ldh a, [hffbe]
	bit 2, a
	jr z, .asm_818f6
	ld a, $0a
	call Func_144d
.asm_818f6
	ldh a, [hffbe]
	bit 3, a
	jr z, .asm_8190d
	ld hl, wc5f0
	bit 7, [hl]
	jr z, .asm_81908
	call Func_148d
	jr .asm_8190d
.asm_81908
	call Func_14a1
	jr .asm_8190d
.asm_8190d
	ret
; 0x8190e

INCLUDE "audio/song_pointers.asm"

PointerTable_81a31: ; 81a31 (20:5a31)
	dw Func_81a6d
	dw Func_81aec
	dw Func_81b8b
	dw Func_81c0a
	dw Func_81e7b
	dw Func_81eca
	dw Func_81f19
PointerTable_81a3f: ; 81a3f (20:5a3f)
	dw Func_81b6b
	dw Func_81b7b
	dw Func_81c95
	dw Func_81d07
	dw Func_81d69
	dw Func_81db7
	dw Func_81df9
	dw Func_81e2f
	dw Func_81e59
	dw Func_81e2f
	dw Func_8205c
	dw Func_8207a
	dw Func_82098
	dw Func_820b6
	dw Func_820d4
	dw Func_82130
	dw Func_82102
	dw Func_821b8
	dw Func_821ee
	dw Func_82182
	dw Func_81fb6
	dw Func_81fe8
	dw Func_8201a

Func_81a6d: ; 81a6d (20:5a6d)
	ld hl, rNR10
	xor a
	ld [hli], a
	ld a, $80
	ld [hli], a
	ld a, $f8
	ld [hli], a
	ld hl, rNR13
	ld a, $e4
	ld [hli], a
	ld a, $84
	ld [hl], a
	ld de, Func_81a85
	ret
; 0x81a85

Func_81a85: ; 81a85 (20:5a85)
	ld hl, rNR13
	ld a, $83
	ld [hli], a
	ld a, $04
	ld [hl], a
	ld de, Func_81a92
	ret
; 0x81a92

Func_81a92: ; 81a92 (20:5a92)
	ld hl, rNR13
	ld a, $16
	ld [hli], a
	ld a, $04
	ld [hl], a
	ld de, Func_81a9f
	ret
; 0x81a9f

Func_81a9f: ; 81a9f (20:5a9f)
	ld hl, rNR13
	ld a, $9b
	ld [hli], a
	ld a, $03
	ld [hl], a
	ld de, Func_81aac
	ret
; 0x81aac

Func_81aac: ; 81aac (20:5aac)
	ld hl, rNR13
	ld a, $11
	ld [hli], a
	ld a, $03
	ld [hl], a
	ld de, Func_81ab9
	ret
; 0x81ab9

Func_81ab9: ; 81ab9 (20:5ab9)
	ld hl, rNR13
	ld a, $76
	ld [hli], a
	ld a, $02
	ld [hl], a
	ld de, Func_81ac6
	ret
; 0x81ac6

Func_81ac6: ; 81ac6 (20:5ac6)
	ld hl, rNR13
	ld a, $c9
	ld [hli], a
	ld a, $01
	ld [hl], a
	ld de, Func_81ad3
	ret
; 0x81ad3

Func_81ad3: ; 81ad3 (20:5ad3)
	ld hl, rNR13
	ld a, $06
	ld [hli], a
	ld a, $01
	ld [hl], a
	ld de, Func_81ae0
	ret
; 0x81ae0

Func_81ae0: ; 81ae0 (20:5ae0)
	ld a, $08
	ldh [rNR12], a
	ld a, $80
	ldh [rNR14], a
	ld de, $0
	ret
; 0x81aec

Func_81aec: ; 81aec (20:5aec)
	ld hl, rNR10
	xor a
	ld [hli], a
	ld a, $80
	ld [hli], a
	ld a, $f8
	ld [hli], a
	ld hl, rNR13
	ld a, $83
	ld [hli], a
	ld a, $84
	ld [hl], a
	ld de, Func_81b04
	ret
; 0x81b04

Func_81b04: ; 81b04 (20:5b04)
	ld hl, rNR13
	ld a, $16
	ld [hli], a
	ld a, $04
	ld [hl], a
	ld de, Func_81b11
	ret
; 0x81b11

Func_81b11: ; 81b11 (20:5b11)
	ld hl, rNR13
	ld a, $9b
	ld [hli], a
	ld a, $03
	ld [hl], a
	ld de, Func_81b1e
	ret
; 0x81b1e

Func_81b1e: ; 81b1e (20:5b1e)
	ld hl, rNR13
	ld a, $11
	ld [hli], a
	ld a, $03
	ld [hl], a
	ld de, Func_81b2b
	ret
; 0x81b2b

Func_81b2b: ; 81b2b (20:5b2b)
	ld hl, rNR13
	ld a, $76
	ld [hli], a
	ld a, $02
	ld [hl], a
	ld de, Func_81b38
	ret
; 0x81b38

Func_81b38: ; 81b38 (20:5b38)
	ld hl, rNR13
	ld a, $c9
	ld [hli], a
	ld a, $01
	ld [hl], a
	ld de, Func_81b45
	ret
; 0x81b45

Func_81b45: ; 81b45 (20:5b45)
	ld hl, rNR13
	ld a, $06
	ld [hli], a
	ld a, $01
	ld [hl], a
	ld de, Func_81b52
	ret
; 0x81b52

Func_81b52: ; 81b52 (20:5b52)
	ld hl, rNR13
	ld a, $2c
	ld [hli], a
	ld a, $00
	ld [hl], a
	ld de, Func_81b5f
	ret
; 0x81b5f

Func_81b5f: ; 81b5f (20:5b5f)
	ld a, $08
	ldh [rNR12], a
	ld a, $80
	ldh [rNR14], a
	ld de, $0
	ret
; 0x81b6b

Func_81b6b: ; 81b6b (20:5b6b)
	ld hl, rNR42
	ld a, $f1
	ld [hli], a
	ld a, $a8
	ld [hli], a
	ld a, $80
	ld [hli], a
	ld de, $0
	ret
; 0x81b7b

Func_81b7b: ; 81b7b (20:5b7b)
	ld hl, rNR42
	ld a, $b1
	ld [hli], a
	ld a, $5d
	ld [hli], a
	ld a, $80
	ld [hli], a
	ld de, $0
	ret
; 0x81b8b

Func_81b8b: ; 81b8b (20:5b8b)
	ld hl, rNR10
	xor a
	ld [hli], a
	ld a, $80
	ld [hli], a
	ld a, $f8
	ld [hli], a
	ld hl, rNR13
	ld a, $e4
	ld [hli], a
	ld a, $84
	ld [hl], a
	ld de, Func_81ba3
	ret
; 0x81ba3

Func_81ba3: ; 81ba3 (20:5ba3)
	ld hl, rNR13
	ld a, $83
	ld [hli], a
	ld a, $04
	ld [hl], a
	ld de, Func_81bb0
	ret
; 0x81bb0

Func_81bb0: ; 81bb0 (20:5bb0)
	ld hl, rNR13
	ld a, $16
	ld [hli], a
	ld a, $04
	ld [hl], a
	ld de, Func_81bbd
	ret
; 0x81bbd

Func_81bbd: ; 81bbd (20:5bbd)
	ld hl, rNR13
	ld a, $9b
	ld [hli], a
	ld a, $03
	ld [hl], a
	ld de, Func_81bca
	ret
; 0x81bca

Func_81bca: ; 81bca (20:5bca)
	ld hl, rNR13
	ld a, $11
	ld [hli], a
	ld a, $03
	ld [hl], a
	ld de, Func_81bd7
	ret
; 0x81bd7

Func_81bd7: ; 81bd7 (20:5bd7)
	ld hl, rNR13
	ld a, $76
	ld [hli], a
	ld a, $02
	ld [hl], a
	ld de, Func_81be4
	ret
; 0x81be4

Func_81be4: ; 81be4 (20:5be4)
	ld hl, rNR13
	ld a, $c9
	ld [hli], a
	ld a, $01
	ld [hl], a
	ld de, Func_81bf1
	ret
; 0x81bf1

Func_81bf1: ; 81bf1 (20:5bf1)
	ld hl, rNR13
	ld a, $06
	ld [hli], a
	ld a, $01
	ld [hl], a
	ld de, Func_81bfe
	ret
; 0x81bfe

Func_81bfe: ; 81bfe (20:5bfe)
	ld a, $08
	ldh [rNR12], a
	ld a, $80
	ldh [rNR14], a
	ld de, $0
	ret
; 0x81c0a

Func_81c0a: ; 81c0a (20:5c0a)
	ld hl, rNR10
	xor a
	ld [hli], a
	ld a, $80
	ld [hli], a
	ld a, $f8
	ld [hli], a
	ld hl, rNR13
	ld a, $83
	ld [hli], a
	ld a, $84
	ld [hl], a
	ld de, Func_81c22
	ret
; 0x81c22

Func_81c22: ; 81c22 (20:5c22)
	ld hl, rNR13
	ld a, $16
	ld [hli], a
	ld a, $04
	ld [hl], a
	ld de, Func_81c2f
	ret
; 0x81c2f

Func_81c2f: ; 81c2f (20:5c2f)
	ld hl, rNR13
	ld a, $9b
	ld [hli], a
	ld a, $03
	ld [hl], a
	ld de, Func_81c3c
	ret
; 0x81c3c

Func_81c3c: ; 81c3c (20:5c3c)
	ld hl, rNR13
	ld a, $11
	ld [hli], a
	ld a, $03
	ld [hl], a
	ld de, Func_81c49
	ret
; 0x81c49

Func_81c49: ; 81c49 (20:5c49)
	ld hl, rNR13
	ld a, $76
	ld [hli], a
	ld a, $02
	ld [hl], a
	ld de, Func_81c56
	ret
; 0x81c56

Func_81c56: ; 81c56 (20:5c56)
	ld hl, rNR13
	ld a, $c9
	ld [hli], a
	ld a, $01
	ld [hl], a
	ld de, Func_81c63
	ret
; 0x81c63

Func_81c63: ; 81c63 (20:5c63)
	ld hl, rNR13
	ld a, $06
	ld [hli], a
	ld a, $01
	ld [hl], a
	ld de, Func_81c70
	ret
; 0x81c70

Func_81c70: ; 81c70 (20:5c70)
	ld hl, rNR13
	ld a, $2c
	ld [hli], a
	ld a, $00
	ld [hl], a
	ld de, Func_81c7d
	ret
; 0x81c7d

Func_81c7d: ; 81c7d (20:5c7d)
	ld a, $08
	ldh [rNR12], a
	ld a, $80
	ldh [rNR14], a
	ld de, $0
	ret
; 0x81c89

Func_81c89: ; 81c89 (20:5c89)
	ld a, $08
	ldh [rNR42], a
	ld a, $80
	ldh [rNR44], a
	ld de, $0
	ret
; 0x81c95

Func_81c95: ; 81c95 (20:5c95)
	ld hl, rNR41
	xor a
	ld [hli], a
	ld a, $f8
	ld [hli], a
	ld a, $4f
	ld [hli], a
	ld a, $80
	ld [hl], a
	ld de, Func_81ca7
	ret
; 0x81ca7

Func_81ca7: ; 81ca7 (20:5ca7)
	ld a, $e8
	ldh [rNR42], a
	ld a, $5d
	ldh [rNR43], a
	ld a, $80
	ldh [rNR44], a
	ld de, Func_81cb7
	ret
; 0x81cb7

Func_81cb7: ; 81cb7 (20:5cb7)
	ld a, $c8
	ldh [rNR42], a
	ld a, $5f
	ldh [rNR43], a
	ld a, $80
	ldh [rNR44], a
	ld de, Func_81cc7
	ret
; 0x81cc7

Func_81cc7: ; 81cc7 (20:5cc7)
	ld a, $88
	ldh [rNR42], a
	ld a, $6d
	ldh [rNR43], a
	ld a, $80
	ldh [rNR44], a
	ld de, Func_81cd7
	ret
; 0x81cd7

Func_81cd7: ; 81cd7 (20:5cd7)
	ld a, $48
	ldh [rNR42], a
	ld a, $6f
	ldh [rNR43], a
	ld a, $80
	ldh [rNR44], a
	ld de, Func_81ce7
	ret
; 0x81ce7

Func_81ce7: ; 81ce7 (20:5ce7)
	ld a, $28
	ldh [rNR42], a
	ld a, $7d
	ldh [rNR43], a
	ld a, $80
	ldh [rNR44], a
	ld de, Func_81cf7
	ret
; 0x81cf7

Func_81cf7: ; 81cf7 (20:5cf7)
	ld a, $18
	ldh [rNR42], a
	ld a, $7f
	ldh [rNR43], a
	ld a, $80
	ldh [rNR44], a
	ld de, Func_81c89
	ret
; 0x81d07

Func_81d07: ; 81d07 (20:5d07)
	ld hl, rNR41
	xor a
	ld [hli], a
	ld a, $a8
	ld [hli], a
	ld a, $4f
	ld [hli], a
	ld a, $80
	ld [hl], a
	ld de, Func_81d19
	ret
; 0x81d19

Func_81d19: ; 81d19 (20:5d19)
	ld a, $98
	ldh [rNR42], a
	ld a, $5d
	ldh [rNR43], a
	ld a, $80
	ldh [rNR44], a
	ld de, Func_81d29
	ret
; 0x81d29

Func_81d29: ; 81d29 (20:5d29)
	ld a, $88
	ldh [rNR42], a
	ld a, $5f
	ldh [rNR43], a
	ld a, $80
	ldh [rNR44], a
	ld de, Func_81d39
	ret
; 0x81d39

Func_81d39: ; 81d39 (20:5d39)
	ld a, $48
	ldh [rNR42], a
	ld a, $6f
	ldh [rNR43], a
	ld a, $80
	ldh [rNR44], a
	ld de, Func_81d49
	ret
; 0x81d49

Func_81d49: ; 81d49 (20:5d49)
	ld a, $28
	ldh [rNR42], a
	ld a, $7d
	ldh [rNR43], a
	ld a, $80
	ldh [rNR44], a
	ld de, Func_81d59
	ret
; 0x81d59

Func_81d59: ; 81d59 (20:5d59)
	ld a, $18
	ldh [rNR42], a
	ld a, $7f
	ldh [rNR43], a
	ld a, $80
	ldh [rNR44], a
	ld de, Func_81c89
	ret
; 0x81d69

Func_81d69: ; 81d69 (20:5d69)
	ld hl, rNR41
	xor a
	ld [hli], a
	ld a, $f8
	ld [hli], a
	ld a, $2f
	ld [hli], a
	ld a, $80
	ld [hl], a
	ld de, Func_81d7b
	ret
; 0x81d7b

Func_81d7b: ; 81d7b (20:5d7b)
	ld a, $b8
	ldh [rNR42], a
	ld a, $80
	ldh [rNR44], a
	ld de, Func_81d87
	ret
; 0x81d87

Func_81d87: ; 81d87 (20:5d87)
	ld a, $78
	ldh [rNR42], a
	ld a, $80
	ldh [rNR44], a
	ld de, Func_81d93
	ret
; 0x81d93

Func_81d93: ; 81d93 (20:5d93)
	ld a, $38
	ldh [rNR42], a
	ld a, $80
	ldh [rNR44], a
	ld de, Func_81d9f
	ret
; 0x81d9f

Func_81d9f: ; 81d9f (20:5d9f)
	ld a, $28
	ldh [rNR42], a
	ld a, $80
	ldh [rNR44], a
	ld de, Func_81dab
	ret
; 0x81dab

Func_81dab: ; 81dab (20:5dab)
	ld a, $18
	ldh [rNR42], a
	ld a, $80
	ldh [rNR44], a
	ld de, Func_81c89
	ret
; 0x81db7

Func_81db7: ; 81db7 (20:5db7)
	ld hl, rNR41
	xor a
	ld [hli], a
	ld a, $a8
	ld [hli], a
	ld a, $2f
	ld [hli], a
	ld a, $80
	ld [hl], a
	ld de, Func_81dc9
	ret
; 0x81dc9

Func_81dc9: ; 81dc9 (20:5dc9)
	ld a, $68
	ldh [rNR42], a
	ld a, $80
	ldh [rNR44], a
	ld de, Func_81dd5
	ret
; 0x81dd5

Func_81dd5: ; 81dd5 (20:5dd5)
	ld a, $38
	ldh [rNR42], a
	ld a, $80
	ldh [rNR44], a
	ld de, Func_81de1
	ret
; 0x81de1

Func_81de1: ; 81de1 (20:5de1)
	ld a, $28
	ldh [rNR42], a
	ld a, $80
	ldh [rNR44], a
	ld de, Func_81ded
	ret
; 0x81ded

Func_81ded: ; 81ded (20:5ded)
	ld a, $18
	ldh [rNR42], a
	ld a, $80
	ldh [rNR44], a
	ld de, Func_81c89
	ret
; 0x81df9

Func_81df9: ; 81df9 (20:5df9)
	ld hl, rNR41
	xor a
	ld [hli], a
	ld a, $78
	ld [hli], a
	ld a, $2f
	ld [hli], a
	ld a, $80
	ld [hl], a
	ld de, Func_81e0b
	ret
; 0x81e0b

Func_81e0b: ; 81e0b (20:5e0b)
	ld a, $38
	ldh [rNR42], a
	ld a, $80
	ldh [rNR44], a
	ld de, Func_81e17
	ret
; 0x81e17

Func_81e17: ; 81e17 (20:5e17)
	ld a, $28
	ldh [rNR42], a
	ld a, $80
	ldh [rNR44], a
	ld de, Func_81e23
	ret
; 0x81e23

Func_81e23: ; 81e23 (20:5e23)
	ld a, $18
	ldh [rNR42], a
	ld a, $80
	ldh [rNR44], a
	ld de, Func_81c89
	ret
; 0x81e2f

Func_81e2f: ; 81e2f (20:5e2f)
	ld hl, rNR41
	xor a
	ld [hli], a
	ld a, $f8
	ld [hli], a
	ld a, $2f
	ld [hli], a
	ld a, $80
	ld [hl], a
	ld de, Func_81e41
	ret
; 0x81e41

Func_81e41: ; 81e41 (20:5e41)
	ld a, $48
	ldh [rNR42], a
	ld de, Func_81e49
	ret
; 0x81e49

Func_81e49: ; 81e49 (20:5e49)
	ld a, $28
	ldh [rNR42], a
	ld de, Func_81e51
	ret
; 0x81e51

Func_81e51: ; 81e51 (20:5e51)
	ld a, $18
	ldh [rNR42], a
	ld de, Func_81c89
	ret
; 0x81e59

Func_81e59: ; 81e59 (20:5e59)
	ld hl, rNR41
	xor a
	ld [hli], a
	ld a, $b8
	ld [hli], a
	ld a, $2f
	ld [hli], a
	ld a, $80
	ld [hl], a
	ld de, Func_81e6b
	ret
; 0x81e6b

Func_81e6b: ; 81e6b (20:5e6b)
	ld a, $28
	ldh [rNR42], a
	ld de, Func_81e73
	ret
; 0x81e73

Func_81e73: ; 81e73 (20:5e73)
	ld a, $18
	ldh [rNR42], a
	ld de, Func_81c89
	ret
; 0x81e7b

Func_81e7b: ; 81e7b (20:5e7b)
	ld hl, rNR10
	xor a
	ld [hli], a
	ld a, $80
	ld [hli], a
	ld a, $a1
	ld [hli], a
	ld a, $1c
	ldh [rNR10], a
	ld hl, rNR13
	ld a, $08
	ld [hli], a
	ld a, $87
	ld [hl], a
	ld de, Func_81e97
	ret
; 0x81e97

Func_81e97: ; 81e97 (20:5e97)
	ld hl, rNR13
	ld a, $8e
	ld [hli], a
	ld a, $05
	ld [hl], a
	ld de, Func_81ea4
	ret
; 0x81ea4

Func_81ea4: ; 81ea4 (20:5ea4)
	ld hl, rNR13
	ld a, $14
	ld [hli], a
	ld a, $05
	ld [hl], a
	ld de, Func_81eb1
	ret
; 0x81eb1

Func_81eb1: ; 81eb1 (20:5eb1)
	ld hl, rNR13
	ld a, $46
	ld [hli], a
	ld a, $05
	ld [hl], a
	ld de, Func_81ebe
	ret
; 0x81ebe

Func_81ebe: ; 81ebe (20:5ebe)
	ld a, $08
	ldh [rNR12], a
	ld a, $80
	ldh [rNR14], a
	ld de, $0
	ret
; 0x81eca

Func_81eca: ; 81eca (20:5eca)
	ld hl, rNR10
	xor a
	ld [hli], a
	ld a, $80
	ld [hli], a
	ld a, $c1
	ld [hli], a
	ld a, $1c
	ldh [rNR10], a
	ld hl, rNR13
	ld a, $08
	ld [hli], a
	ld a, $87
	ld [hl], a
	ld de, Func_81ee6
	ret
; 0x81ee6

Func_81ee6: ; 81ee6 (20:5ee6)
	ld hl, rNR13
	ld a, $8e
	ld [hli], a
	ld a, $05
	ld [hl], a
	ld de, Func_81ef3
	ret
; 0x81ef3

Func_81ef3: ; 81ef3 (20:5ef3)
	ld hl, rNR13
	ld a, $14
	ld [hli], a
	ld a, $05
	ld [hl], a
	ld de, Func_81f00
	ret
; 0x81f00

Func_81f00: ; 81f00 (20:5f00)
	ld hl, rNR13
	ld a, $e2
	ld [hli], a
	ld a, $04
	ld [hl], a
	ld de, Func_81f0d
	ret
; 0x81f0d

Func_81f0d: ; 81f0d (20:5f0d)
	ld a, $08
	ldh [rNR12], a
	ld a, $80
	ldh [rNR14], a
	ld de, $0
	ret
; 0x81f19

Func_81f19: ; 81f19 (20:5f19)
	ld hl, rNR10
	xor a
	ld [hli], a
	ld a, $80
	ld [hli], a
	ld a, $f2
	ld [hli], a
	ld a, $1c
	ldh [rNR10], a
	ld hl, rNR13
	ld a, $40
	ld [hli], a
	ld a, $86
	ld [hl], a
	ld de, Func_81f35
	ret
; 0x81f35

Func_81f35: ; 81f35 (20:5f35)
	ld hl, rNR13
	ld a, $8e
	ld [hli], a
	ld a, $05
	ld [hl], a
	ld de, Func_81f42
	ret
; 0x81f42

Func_81f42: ; 81f42 (20:5f42)
	ld hl, rNR13
	ld a, $14
	ld [hli], a
	ld a, $05
	ld [hl], a
	ld de, Func_81f4f
	ret
; 0x81f4f

Func_81f4f: ; 81f4f (20:5f4f)
	ld hl, rNR13
	ld a, $e2
	ld [hli], a
	ld a, $04
	ld [hl], a
	ld de, Func_81f5c
	ret
; 0x81f5c

Func_81f5c: ; 81f5c (20:5f5c)
	ld hl, rNR13
	ld a, $7e
	ld [hli], a
	ld a, $04
	ld [hl], a
	ld de, Func_81f69
	ret
; 0x81f69

Func_81f69: ; 81f69 (20:5f69)
	ld hl, rNR13
	ld a, $1a
	ld [hli], a
	ld a, $04
	ld [hl], a
	ld de, Func_81f76
	ret
; 0x81f76

Func_81f76: ; 81f76 (20:5f76)
	ld hl, rNR13
	ld a, $b6
	ld [hli], a
	ld a, $03
	ld [hl], a
	ld de, Func_81f83
	ret
; 0x81f83

Func_81f83: ; 81f83 (20:5f83)
	ld hl, rNR13
	ld a, $52
	ld [hli], a
	ld a, $03
	ld [hl], a
	ld de, Func_81f90
	ret
; 0x81f90

Func_81f90: ; 81f90 (20:5f90)
	ld hl, rNR13
	ld a, $ee
	ld [hli], a
	ld a, $02
	ld [hl], a
	ld de, Func_81f9d
	ret
; 0x81f9d

Func_81f9d: ; 81f9d (20:5f9d)
	ld hl, rNR13
	ld a, $8a
	ld [hli], a
	ld a, $02
	ld [hl], a
	ld de, Func_81faa
	ret
; 0x81faa

Func_81faa: ; 81faa (20:5faa)
	ld a, $08
	ldh [rNR12], a
	ld a, $80
	ldh [rNR14], a
	ld de, $0
	ret
; 0x81fb6

Func_81fb6: ; 81fb6 (20:5fb6)
	ld hl, rNR41
	xor a
	ld [hli], a
	ld a, $68
	ld [hli], a
	ld a, $3c
	ld [hli], a
	ld a, $80
	ld [hl], a
	ld de, Func_81fc8
	ret
; 0x81fc8

Func_81fc8: ; 81fc8 (20:5fc8)
	ld a, $b8
	ldh [rNR42], a
	ld a, $0d
	ldh [rNR43], a
	ld a, $80
	ldh [rNR44], a
	ld de, Func_81fd8
	ret
; 0x81fd8

Func_81fd8: ; 81fd8 (20:5fd8)
	ld a, $b8
	ldh [rNR42], a
	ld a, $0f
	ldh [rNR43], a
	ld a, $80
	ldh [rNR44], a
	ld de, Func_81c89
	ret
; 0x81fe8

Func_81fe8: ; 81fe8 (20:5fe8)
	ld hl, rNR41
	xor a
	ld [hli], a
	ld a, $98
	ld [hli], a
	ld a, $2e
	ld [hli], a
	ld a, $80
	ld [hl], a
	ld de, Func_81ffa
	ret
; 0x81ffa

Func_81ffa: ; 81ffa (20:5ffa)
	ld a, $b8
	ldh [rNR42], a
	ld a, $0c
	ldh [rNR43], a
	ld a, $80
	ldh [rNR44], a
	ld de, Func_8200a
	ret
; 0x8200a

Func_8200a: ; 8200a (20:600a)
	ld a, $b8
	ldh [rNR42], a
	ld a, $0c
	ldh [rNR43], a
	ld a, $80
	ldh [rNR44], a
	ld de, Func_81c89
	ret
; 0x8201a

Func_8201a: ; 8201a (20:601a)
	ld hl, rNR41
	xor a
	ld [hli], a
	ld a, $48
	ld [hli], a
	ld a, $3f
	ld [hli], a
	ld a, $80
	ld [hl], a
	ld de, Func_8202c
	ret
; 0x8202c

Func_8202c: ; 8202c (20:602c)
	ld a, $c8
	ldh [rNR42], a
	ld a, $2e
	ldh [rNR43], a
	ld a, $80
	ldh [rNR44], a
	ld de, Func_8203c
	ret
; 0x8203c

Func_8203c: ; 8203c (20:603c)
	ld a, $c8
	ldh [rNR42], a
	ld a, $3f
	ldh [rNR43], a
	ld a, $80
	ldh [rNR44], a
	ld de, Func_8204c
	ret
; 0x8204c

Func_8204c: ; 8204c (20:604c)
	ld a, $c8
	ldh [rNR42], a
	ld a, $5c
	ldh [rNR43], a
	ld a, $80
	ldh [rNR44], a
	ld de, Func_81c89
	ret
; 0x8205c

Func_8205c: ; 8205c (20:605c)
	ld hl, rNR41
	xor a
	ld [hli], a
	ld a, $51
	ld [hli], a
	ld a, $03
	ld [hli], a
	ld a, $80
	ld [hl], a
	ld de, Func_8206e
	ret
; 0x8206e

Func_8206e: ; 8206e (20:606e)
	ld de, Func_82072
	ret
; 0x82072

Func_82072: ; 82072 (20:6072)
	ld de, Func_82076
	ret
; 0x82076

Func_82076: ; 82076 (20:6076)
	ld de, Func_81c89
	ret
; 0x8207a

Func_8207a: ; 8207a (20:607a)
	ld hl, rNR41
	xor a
	ld [hli], a
	ld a, $41
	ld [hli], a
	ld a, $03
	ld [hli], a
	ld a, $80
	ld [hl], a
	ld de, Func_8208c
	ret
; 0x8208c

Func_8208c: ; 8208c (20:608c)
	ld de, Func_82090
	ret
; 0x82090

Func_82090: ; 82090 (20:6090)
	ld de, Func_82094
	ret
; 0x82094

Func_82094: ; 82094 (20:6094)
	ld de, Func_81c89
	ret
; 0x82098

Func_82098: ; 82098 (20:6098)
	ld hl, rNR41
	xor a
	ld [hli], a
	ld a, $71
	ld [hli], a
	ld a, $03
	ld [hli], a
	ld a, $80
	ld [hl], a
	ld de, Func_820aa
	ret
; 0x820aa

Func_820aa: ; 820aa (20:60aa)
	ld de, Func_820ae
	ret
; 0x820ae

Func_820ae: ; 820ae (20:60ae)
	ld de, Func_820b2
	ret
; 0x820b2

Func_820b2: ; 820b2 (20:60b2)
	ld de, Func_81c89
	ret
; 0x820b6

Func_820b6: ; 820b6 (20:60b6)
	ld hl, rNR41
	xor a
	ld [hli], a
	ld a, $61
	ld [hli], a
	ld a, $03
	ld [hli], a
	ld a, $80
	ld [hl], a
	ld de, Func_820c8
	ret
; 0x820c8

Func_820c8: ; 820c8 (20:60c8)
	ld de, Func_820cc
	ret
; 0x820cc

Func_820cc: ; 820cc (20:60cc)
	ld de, Func_820d0
	ret
; 0x820d0

Func_820d0: ; 820d0 (20:60d0)
	ld de, Func_81c89
	ret
; 0x820d4

Func_820d4: ; 820d4 (20:60d4)
	ld hl, rNR41
	xor a
	ld [hli], a
	ld a, $33
	ld [hli], a
	ld a, $02
	ld [hli], a
	ld a, $80
	ld [hl], a
	ld de, Func_820e6
	ret
; 0x820e6

Func_820e6: ; 820e6 (20:60e6)
	ld de, Func_820ea
	ret
; 0x820ea

Func_820ea: ; 820ea (20:60ea)
	ld de, Func_820ee
	ret
; 0x820ee

Func_820ee: ; 820ee (20:60ee)
	ld de, Func_820f2
	ret
; 0x820f2

Func_820f2: ; 820f2 (20:60f2)
	ld de, Func_820f6
	ret
; 0x820f6

Func_820f6: ; 820f6 (20:60f6)
	ld de, Func_820fa
	ret
; 0x820fa

Func_820fa: ; 820fa (20:60fa)
	ld de, Func_820fe
	ret
; 0x820fe

Func_820fe: ; 820fe (20:60fe)
	ld de, Func_81c89
	ret
; 0x82102

Func_82102: ; 82102 (20:6102)
	ld hl, rNR41
	xor a
	ld [hli], a
	ld a, $82
	ld [hli], a
	ld a, $03
	ld [hli], a
	ld a, $80
	ld [hl], a
	ld de, Func_82114
	ret
; 0x82114

Func_82114: ; 82114 (20:6114)
	ld de, Func_82118
	ret
; 0x82118

Func_82118: ; 82118 (20:6118)
	ld de, Func_8211c
	ret
; 0x8211c

Func_8211c: ; 8211c (20:611c)
	ld de, Func_82120
	ret
; 0x82120

Func_82120: ; 82120 (20:6120)
	ld de, Func_82124
	ret
; 0x82124

Func_82124: ; 82124 (20:6124)
	ld de, Func_82128
	ret
; 0x82128

Func_82128: ; 82128 (20:6128)
	ld de, Func_8212c
	ret
; 0x8212c

Func_8212c: ; 8212c (20:612c)
	ld de, Func_81c89
	ret
; 0x82130

Func_82130: ; 82130 (20:6130)
	ld hl, rNR41
	xor a
	ld [hli], a
	ld a, $d2
	ld [hli], a
	ld a, $02
	ld [hli], a
	ld a, $80
	ld [hl], a
	ld de, Func_82142
	ret
; 0x82142

Func_82142: ; 82142 (20:6142)
	ld de, Func_82146
	ret
; 0x82146

Func_82146: ; 82146 (20:6146)
	ld de, Func_8214a
	ret
; 0x8214a

Func_8214a: ; 8214a (20:614a)
	ld de, Func_8214e
	ret
; 0x8214e

Func_8214e: ; 8214e (20:614e)
	ld de, Func_82152
	ret
; 0x82152

Func_82152: ; 82152 (20:6152)
	ld de, Func_82156
	ret
; 0x82156

Func_82156: ; 82156 (20:6156)
	ld de, Func_8215a
	ret
; 0x8215a

Func_8215a: ; 8215a (20:615a)
	ld de, Func_8215e
	ret
; 0x8215e

Func_8215e: ; 8215e (20:615e)
	ld de, Func_82162
	ret
; 0x82162

Func_82162: ; 82162 (20:6162)
	ld de, Func_82166
	ret
; 0x82166

Func_82166: ; 82166 (20:6166)
	ld de, Func_8216a
	ret
; 0x8216a

Func_8216a: ; 8216a (20:616a)
	ld de, Func_8216e
	ret
; 0x8216e

Func_8216e: ; 8216e (20:616e)
	ld de, Func_82172
	ret
; 0x82172

Func_82172: ; 82172 (20:6172)
	ld de, Func_82176
	ret
; 0x82176

Func_82176: ; 82176 (20:6176)
	ld de, Func_8217a
	ret
; 0x8217a

Func_8217a: ; 8217a (20:617a)
	ld de, Func_8217e
	ret
; 0x8217e

Func_8217e: ; 8217e (20:617e)
	ld de, Func_81c89
	ret
; 0x82182

Func_82182: ; 82182 (20:6182)
	ld hl, rNR41
	xor a
	ld [hli], a
	ld a, $68
	ld [hli], a
	ld a, $3d
	ld [hli], a
	ld a, $80
	ld [hl], a
	ld de, Func_82194
	ret
; 0x82194

Func_82194: ; 82194 (20:6194)
	ld a, $28
	ldh [rNR42], a
	ld a, $80
	ldh [rNR44], a
	ld de, Func_821a0
	ret
; 0x821a0

Func_821a0: ; 821a0 (20:61a0)
	ld a, $52
	ld hl, rNR42
	ld [hli], a
	ld a, $03
	ld [hli], a
	ld a, $80
	ld [hl], a
	ld de, Func_821b0
	ret
; 0x821b0

Func_821b0: ; 821b0 (20:61b0)
	ld de, Func_821b4
	ret
; 0x821b4

Func_821b4: ; 821b4 (20:61b4)
	ld de, Func_81c89
	ret
; 0x821b8

Func_821b8: ; 821b8 (20:61b8)
	ld hl, rNR41
	xor a
	ld [hli], a
	ld a, $88
	ld [hli], a
	ld a, $3d
	ld [hli], a
	ld a, $80
	ld [hl], a
	ld de, Func_821ca
	ret
; 0x821ca

Func_821ca: ; 821ca (20:61ca)
	ld a, $38
	ldh [rNR42], a
	ld a, $80
	ldh [rNR44], a
	ld de, Func_821d6
	ret
; 0x821d6

Func_821d6: ; 821d6 (20:61d6)
	ld a, $62
	ld hl, rNR42
	ld [hli], a
	ld a, $03
	ld [hli], a
	ld a, $80
	ld [hl], a
	ld de, Func_821e6
	ret
; 0x821e6

Func_821e6: ; 821e6 (20:61e6)
	ld de, Func_821ea
	ret
; 0x821ea

Func_821ea: ; 821ea (20:61ea)
	ld de, Func_81c89
	ret
; 0x821ee

Func_821ee: ; 821ee (20:61ee)
	ld hl, rNR41
	xor a
	ld [hli], a
	ld a, $a8
	ld [hli], a
	ld a, $2f
	ld [hli], a
	ld a, $80
	ld [hl], a
	ld de, Func_82200
	ret
; 0x82200

Func_82200: ; 82200 (20:6200)
	ld a, $68
	ldh [rNR42], a
	ld a, $80
	ldh [rNR44], a
	ld de, Func_8220c
	ret
; 0x8220c

Func_8220c: ; 8220c (20:620c)
	ld a, $38
	ldh [rNR42], a
	ld a, $80
	ldh [rNR44], a
	ld de, Func_82218
	ret
; 0x82218

Func_82218: ; 82218 (20:6218)
	ld a, $28
	ldh [rNR42], a
	ld a, $80
	ldh [rNR44], a
	ld de, Func_82224
	ret
; 0x82224

Func_82224: ; 82224 (20:6224)
	ld a, $18
	ldh [rNR42], a
	ld a, $80
	ldh [rNR44], a
	ld de, Func_81c89
	ret
; 0x82230

PointerTable_82230: ; 82230 (20:6230)
	dw Data_82700, $0000
	dw Data_8270d, $0000
	dw Data_8270d, Data_82712
	dw Data_82717, $0000
	dw Data_82726, $0000
	dw Data_82731, Data_82700
	dw Data_82736, $0000
	dw Data_82736, Data_8273b
	dw Data_8273e, Data_82743
	dw Data_82746, $0000
	dw Data_82750, $0000
	dw Data_827c8, $0000
	dw Data_827d5, $0000
	dw Data_8274b, $0000
	dw Data_82753, $0000
	dw Data_827c3, $0000
	dw Data_827dd, $0000
	dw Data_827e2, $0000
	dw Data_827d8, $0000
	dw Data_827e7, $0000
	dw Data_82808, $0000
	dw Data_82810, $0000
	dw Data_82815, $0000
	dw Data_8281a, $0000
	dw Data_82822, $0000
	dw Data_82827, $0000
	dw Data_8282c, $0000
	dw Data_8280d, $0000
	dw Data_82849, $0000
	dw Data_82850, $0000
	dw Data_82831, $0000
	dw Data_82857, $0000
	dw Data_82864, $0000
	dw Data_8287d, $0000
	dw Data_82897, Data_82c75
	dw Data_8288a, $0000
	dw Data_828b0, Data_82c75
	dw Data_828fb, $0000
	dw Data_828c9, Data_82c75
	dw Data_828e2, Data_82c75
	dw Data_82904, $0000
	dw Data_8290d, $0000
	dw Data_829c6, Data_82c75
	dw Data_829d3, $0000
	dw Data_829e0, Data_82c75
	dw Data_829ed, Data_82c75
	dw Data_829fa, Data_82c75
	dw Data_82a24, Data_82c75
	dw Data_82a33, Data_82c75
	dw Data_82a12, $0000
	dw Data_82a09, $0000
	dw Data_82a1b, $0000
	dw Data_82a3c, Data_82c75
	dw Data_82a49, Data_82c75
	dw Data_82a56, Data_82c75
	dw Data_82a63, Data_82c75
	dw Data_82a70, Data_82c75
	dw Data_82a7d, Data_82c75
	dw Data_82a8a, Data_82c75
	dw Data_82a97, Data_82c75
	dw Data_82836, $0000
	dw Data_82e9d, Data_82c75
	dw Data_82ea3, Data_82c75
	dw Data_82ea9, Data_82c75
	dw Data_82eaf, Data_82c75
	dw Data_82eb5, Data_82c75
	dw Data_82ebb, Data_82c75
	dw Data_82ec1, Data_82c75
	dw Data_82ec7, Data_82c75
	dw Data_82ecd, Data_82c75
	dw Data_82ed3, Data_82c75
	dw Data_82919, $0000
	dw Data_8291d, $0000
	dw Data_82927, $0000
	dw Data_82931, $0000
	dw Data_82abd, $0000
	dw Data_82ac0, $0000
	dw Data_82ac3, $0000
	dw Data_82ac6, $0000
	dw Data_82acb, $0000
	dw Data_82ad0, $0000
	dw Data_82935, $0000
	dw Data_82940, $0000
	dw Data_8294b, $0000
	dw Data_8283b, $0000
	dw Data_8283e, $0000
	dw Data_82952, $0000
	dw Data_82959, $0000
	dw Data_82960, $0000
	dw Data_82967, $0000
	dw Data_8296e, $0000
	dw Data_82975, $0000
	dw Data_8297c, $0000
	dw Data_82aa4, $0000
	dw Data_82843, $0000
	dw Data_82846, $0000
	dw Data_82916, $0000
	dw Data_82983, $0000
	dw Data_82aae, Data_82743
	dw Data_82ab3, Data_82743
	dw Data_82ab8, Data_82743
	dw Data_82989, $0000
	dw Data_8299b, $0000
	dw Data_82992, $0000
	dw Data_82992, Data_829a4
	dw Data_829a9, $0000
	dw Data_829b0, $0000
	dw Data_829bf, $0000
	dw Data_82aa9, $0000
	dw Data_829b9, $0000
	dw Data_829bc, $0000
	dw Data_82921, $0000
	dw Data_8292b, $0000
	dw Data_82ad5, $0000
	dw Data_82aea, $0000
	dw Data_82aff, $0000
	dw Data_82b14, $0000
	dw Data_82bd1, $0000
	dw Data_82bf0, $0000
	dw Data_82c0f, $0000
	dw Data_82c2e, $0000
	dw Data_82c4d, $0000
	dw Data_82b29, $0000
	dw Data_82b2e, $0000
	dw Data_82d53, $0000
	dw Data_82d58, $0000
	dw Data_82d5d, $0000
	dw Data_82d62, $0000
	dw Data_82d6f, Data_82c7b
	dw Data_82d8a, Data_82c7b
	dw Data_82da5, Data_82c7b
	dw Data_82dc0, Data_82c7b
	dw Data_82ddb, Data_82c7b
	dw Data_82df6, Data_82c7b
	dw Data_82e17, Data_82c78
	dw Data_82e37, Data_82c75
	dw Data_82e57, Data_82c72
	dw Data_82e78, $0000
	dw Data_82e8f, Data_82c7e
	dw Data_82e98, Data_82c7b
	dw Data_82ed9, Data_82c78
	dw Data_82f0d, $0000
	dw Data_82f10, $0000
	dw Data_82f13, $0000
	dw Data_82f16, $0000
	dw Data_82f19, $0000
	dw Data_82f1c, $0000
	dw Data_82f1f, $0000
	dw Data_82f22, $0000
	dw Data_82f25, $0000
	dw Data_82f28, $0000
	dw Data_82f2b, $0000
	dw Data_82f2e, $0000
	dw Data_82f31, $0000
	dw Data_82f34, $0000
	dw Data_82f37, $0000
	dw Data_82f0d, Data_82c9c
	dw Data_82f10, Data_82c99
	dw Data_82f13, Data_82c96
	dw Data_82f16, Data_82c93
	dw Data_82f19, Data_82c90
	dw Data_82f1c, Data_82c8d
	dw Data_82f1f, Data_82c8a
	dw Data_82f22, Data_82c87
	dw Data_82f25, Data_82c84
	dw Data_82f28, Data_82c81
	dw Data_82f2b, Data_82c7e
	dw Data_82f2e, Data_82c7b
	dw Data_82f31, Data_82c78
	dw Data_82f34, Data_82c75
	dw Data_82f37, Data_82c72
	dw Data_82f0d, Data_82f0a
	dw Data_82f10, Data_82f07
	dw Data_82f13, Data_82f04
	dw Data_82f16, Data_82f01
	dw Data_82f19, Data_82efe
	dw Data_82f1c, Data_82efb
	dw Data_82f1f, Data_82ef8
	dw Data_82f22, Data_82ef5
	dw Data_82f25, Data_82ef2
	dw Data_82f28, Data_82eef
	dw Data_82f2b, Data_82eec
	dw Data_82f2e, Data_82ee9
	dw Data_82f31, Data_82ee6
	dw Data_82f34, Data_82ee3
	dw Data_82f37, Data_82ee0
	dw Data_82f0d, Data_82f64
	dw Data_82f10, Data_82f61
	dw Data_82f13, Data_82f5e
	dw Data_82f16, Data_82f5b
	dw Data_82f19, Data_82f58
	dw Data_82f1c, Data_82f55
	dw Data_82f1f, Data_82f52
	dw Data_82f22, Data_82f4f
	dw Data_82f25, Data_82f4c
	dw Data_82f28, Data_82f49
	dw Data_82f2b, Data_82f46
	dw Data_82f2e, Data_82f43
	dw Data_82f31, Data_82f40
	dw Data_82f34, Data_82f3d
	dw Data_82f37, Data_82f3a
	dw Data_82c72, $0000
	dw Data_82c75, $0000
	dw Data_82c78, $0000
	dw Data_82c7b, $0000
	dw Data_82c7e, $0000
	dw Data_82c81, $0000
	dw Data_82c84, $0000
	dw Data_82c87, $0000
	dw Data_82c8a, $0000
	dw Data_82c8d, $0000
	dw Data_82c90, $0000
	dw Data_82c93, $0000
	dw Data_82c96, $0000
	dw Data_82c99, $0000
	dw Data_82c9c, $0000
	dw Data_82ee0, Data_82c75
	dw Data_82ee3, Data_82c75
	dw Data_82ee6, Data_82c75
	dw Data_82ee9, Data_82c75
	dw Data_82eec, Data_82c75
	dw Data_82eef, Data_82c75
	dw Data_82ef2, Data_82c75
	dw Data_82ef5, Data_82c75
	dw Data_82ef8, Data_82c75
	dw Data_82efb, Data_82c75
	dw Data_82efe, Data_82c75
	dw Data_82f01, Data_82c75
	dw Data_82f04, Data_82c75
	dw Data_82f07, Data_82c75
	dw Data_82f0a, Data_82c75
	dw Data_82f3a, Data_82c75
	dw Data_82f3d, Data_82c75
	dw Data_82f40, Data_82c75
	dw Data_82f43, Data_82c75
	dw Data_82f46, Data_82c75
	dw Data_82f49, Data_82c75
	dw Data_82f4c, Data_82c75
	dw Data_82f4f, Data_82c75
	dw Data_82f52, Data_82c75
	dw Data_82f55, Data_82c75
	dw Data_82f58, Data_82c75
	dw Data_82f5b, Data_82c75
	dw Data_82f5e, Data_82c75
	dw Data_82f61, Data_82c75
	dw Data_82f64, Data_82c75
	dw Data_82c9f, Data_82c75
	dw Data_82ca2, Data_82c75
	dw Data_82ca5, Data_82c75
	dw Data_82ca8, Data_82c75
	dw Data_82cab, Data_82c75
	dw Data_82cae, Data_82c75
	dw Data_82cb1, Data_82c75
	dw Data_82cb4, Data_82c75
	dw Data_82cb7, Data_82c75
	dw Data_82cba, Data_82c75
	dw Data_82cbd, Data_82c75
	dw Data_82cc0, Data_82c75
	dw Data_82cc3, Data_82c75
	dw Data_82cc6, Data_82c75
	dw Data_82cc9, Data_82c75
	dw Data_82ccc, Data_82c75
	dw Data_82ccf, Data_82c75
	dw Data_82cd2, Data_82c75
	dw Data_82cd5, Data_82c75
	dw Data_82cd8, Data_82c75
	dw Data_82cdb, Data_82c75
	dw Data_82cde, Data_82c75
	dw Data_82ce1, Data_82c75
	dw Data_82ce4, Data_82c75
	dw Data_82ce7, Data_82c75
	dw Data_82cea, Data_82c75
	dw Data_82ced, Data_82c75
	dw Data_82cf0, Data_82c75
	dw Data_82cf3, Data_82c75
	dw Data_82cf6, Data_82c75
	dw Data_82cf9, Data_82c75
	dw Data_82cfc, Data_82c75
	dw Data_82cff, Data_82c75
	dw Data_82d02, Data_82c75
	dw Data_82d05, Data_82c75
	dw Data_82d08, Data_82c75
	dw Data_82d0b, Data_82c75
	dw Data_82d0e, Data_82c75
	dw Data_82d11, Data_82c75
	dw Data_82d14, Data_82c75
	dw Data_82d17, Data_82c75
	dw Data_82d1a, Data_82c75
	dw Data_82d1d, Data_82c75
	dw Data_82d20, Data_82c75
	dw Data_82d23, Data_82c75
	dw Data_82d26, Data_82c75
	dw Data_82d29, Data_82c75
	dw Data_82d2c, Data_82c75
	dw Data_82d2f, Data_82c75
	dw Data_82d32, Data_82c75
	dw Data_82d35, Data_82c75
	dw Data_82d38, Data_82c75
	dw Data_82d3b, Data_82c75
	dw Data_82d3e, Data_82c75
	dw Data_82d41, Data_82c75
	dw Data_82d44, Data_82c75
	dw Data_82d47, Data_82c75
	dw Data_82d4a, Data_82c75
	dw Data_82d4d, Data_82c75
	dw Data_82d50, Data_82c75
	dw Data_82f67, $0000
	dw Data_82f6c, $0000
; 0x82700

Data_82700: ; 82700 (20:6700)
	db $d1, $0b, $92, $0b, $63, $0b, $44, $0b, $35, $0b, $27, $0b, $00

Data_8270d: ; 8270d (20:670d)
	db $20, $03, $40, $78, $00

Data_82712: ; 82712 (20:6712)
	db $60, $01, $01, $01, $00

Data_82717: ; 82717 (20:6717)
	db $98, $04, $78, $78, $68, $78, $58, $78, $48, $78, $38, $78, $28, $01, $00

Data_82726: ; 82726 (20:6726)
	db $68, $04, $48, $78, $38, $78, $38, $28, $28, $01, $00

Data_82731: ; 82731 (20:6731)
	db $f1, $08, $2d, $78, $00

Data_82736: ; 82736 (20:6736)
	db $49, $06, $a8, $01, $00

Data_8273b: ; 8273b (20:673b)
	db $a4, $1e, $00

Data_8273e: ; 8273e (20:673e)
	db $49, $07, $88, $01, $00

Data_82743: ; 82743 (20:6743)
	db $81, $1e, $00

Data_82746: ; 82746 (20:6746)
	db $f9, $78, $f1, $0f, $00

Data_8274b: ; 8274b (20:674b)
	db $3a, $78, $f1, $0f, $00

Data_82750: ; 82750 (20:6750)
	db $f1, $0f, $00

Data_82753: ; 82753 (20:6753)
	db $f1, $bc, $02, $f1, $bc, $02, $f1, $bc, $02, $f1, $bc, $02, $f1, $bc, $02, $f1, $bc, $02, $f1, $bc, $02, $f1, $bc, $02, $f1, $bc, $02, $f1, $bc, $02, $f1, $bc, $02, $f1, $bc, $02, $f1, $bc, $02, $f1, $bc, $02, $f1, $bc, $02, $f1, $bc, $02, $f1, $bc, $02, $f1, $bc, $02, $f1, $bc, $02, $f1, $bc, $02, $f1, $bc, $02, $f1, $bc, $02, $f1, $bc, $02, $f1, $bc, $02, $f1, $bc, $02, $f1, $bc, $02, $f1, $bc, $02, $f1, $bc, $02, $f1, $bc, $02, $f1, $bc, $02, $d1, $bc, $02, $b1, $bc, $02, $91, $bc, $02, $71, $bc, $02, $51, $bc, $02, $31, $bc, $02, $11, $bc, $02, $00

Data_827c3: ; 827c3 (20:67c3)
	db $a9, $03, $2d, $01, $00

Data_827c8: ; 827c8 (20:67c8)
	db $d1, $0b, $92, $0b, $63, $0b, $44, $0b, $35, $0b, $27, $0b, $00

Data_827d5: ; 827d5 (20:67d5)
	db $c1, $0a, $00

Data_827d8: ; 827d8 (20:67d8)
	db $3d, $78, $f1, $0f, $00

Data_827dd: ; 827dd (20:67dd)
	db $f1, $08, $2d, $78, $00

Data_827e2: ; 827e2 (20:67e2)
	db $f1, $08, $2d, $78, $00

Data_827e7: ; 827e7 (20:67e7)
	db $e8, $1e, $e8, $1e, $e8, $1e, $e8, $1e, $e8, $1e, $e8, $1e, $e8, $1e, $e8, $1e, $e8, $1e, $e8, $1e, $e8, $1e, $e8, $1e, $e8, $1e, $e8, $1e, $e8, $1e, $e8, $1e, $00

Data_82808: ; 82808 (20:6808)
	db $20, $05, $40, $78, $00

Data_8280d: ; 8280d (20:680d)
	db $20, $78, $00

Data_82810: ; 82810 (20:6810)
	db $f9, $78, $f7, $69, $00

Data_82815: ; 82815 (20:6815)
	db $39, $0f, $f7, $69, $00

Data_8281a: ; 8281a (20:681a)
	db $79, $be, $01, $19, $78, $f7, $69, $00

Data_82822: ; 82822 (20:6822)
	db $f2, $01, $71, $0b, $00

Data_82827: ; 82827 (20:6827)
	db $b2, $01, $51, $0b, $00

Data_8282c: ; 8282c (20:682c)
	db $72, $01, $31, $0b, $00

Data_82831: ; 82831 (20:6831)
	db $d0, $01, $51, $0b, $00

Data_82836: ; 82836 (20:6836)
	db $37, $78, $57, $64, $00

Data_8283b: ; 8283b (20:683b)
	db $2f, $78, $00

Data_8283e: ; 8283e (20:683e)
	db $39, $32, $55, $64, $00

Data_82843: ; 82843 (20:6843)
	db $f7, $78, $00

Data_82846: ; 82846 (20:6846)
	db $f3, $32, $00

Data_82849: ; 82849 (20:6849)
	db $87, $14, $47, $14, $27, $14, $00

Data_82850: ; 82850 (20:6850)
	db $67, $14, $37, $14, $27, $14, $00

Data_82857: ; 82857 (20:6857)
	db $92, $05, $72, $05, $62, $05, $42, $05, $22, $05, $12, $05, $00

Data_82864: ; 82864 (20:6864)
	db $92, $05, $11, $01, $62, $05, $11, $01, $52, $05, $11, $01, $42, $05, $11, $01, $22, $05, $11, $01, $12, $05, $11, $01, $00

Data_8287d: ; 8287d (20:687d)
	db $82, $05, $62, $05, $52, $05, $32, $05, $22, $05, $12, $05, $00

Data_8288a: ; 8288a (20:688a)
	db $72, $05, $52, $05, $42, $05, $31, $05, $21, $05, $11, $05, $00

Data_82897: ; 82897 (20:6897)
	db $62, $06, $11, $02, $42, $06, $11, $02, $32, $06, $11, $02, $22, $06, $11, $02, $12, $06, $11, $02, $12, $06, $11, $02, $00

Data_828b0: ; 828b0 (20:68b0)
	db $72, $06, $11, $02, $52, $06, $11, $02, $32, $06, $11, $02, $22, $06, $11, $02, $12, $06, $11, $02, $12, $06, $11, $02, $00

Data_828c9: ; 828c9 (20:68c9)
	db $82, $06, $11, $02, $62, $06, $11, $02, $42, $06, $11, $02, $32, $06, $11, $02, $22, $06, $11, $02, $12, $06, $11, $02, $00

Data_828e2: ; 828e2 (20:68e2)
	db $92, $06, $11, $02, $72, $06, $11, $02, $52, $06, $11, $02, $42, $06, $11, $02, $32, $06, $11, $02, $22, $06, $11, $02, $00

Data_828fb: ; 828fb (20:68fb)
	db $53, $08, $33, $03, $43, $08, $24, $1e, $00

Data_82904: ; 82904 (20:6904)
	db $43, $08, $23, $03, $33, $08, $14, $1e, $00

Data_8290d: ; 8290d (20:690d)
	db $33, $08, $23, $03, $33, $08, $14, $1e, $00

Data_82916: ; 82916 (20:6916)
	db $ef, $0a, $00

Data_82919: ; 82919 (20:6919)
	db $92, $0c, $86, $00

Data_8291d: ; 8291d (20:691d)
	db $82, $0c, $76, $00

Data_82921: ; 82921 (20:6921)
	db $39, $02, $64, $0c, $58, $00

Data_82927: ; 82927 (20:6927)
	db $72, $0c, $66, $00

Data_8292b: ; 8292b (20:692b)
	db $39, $02, $54, $0c, $48, $00

Data_82931: ; 82931 (20:6931)
	db $a2, $0c, $86, $00

Data_82935: ; 82935 (20:6935)
	db $7e, $05, $5f, $05, $40, $05, $20, $05, $10, $05, $00

Data_82940: ; 82940 (20:6940)
	db $6e, $05, $4f, $05, $3f, $05, $20, $05, $10, $05, $00

Data_8294b: ; 8294b (20:694b)
	db $7f, $03, $5f, $1e, $66, $32, $00

Data_82952: ; 82952 (20:6952)
	db $1c, $19, $80, $50, $86, $64, $00

Data_82959: ; 82959 (20:6959)
	db $1c, $19, $80, $dc, $86, $64, $00

Data_82960: ; 82960 (20:6960)
	db $1c, $19, $70, $50, $77, $64, $00

Data_82967: ; 82967 (20:6967)
	db $1c, $19, $60, $50, $67, $64, $00

Data_8296e: ; 8296e (20:696e)
	db $1b, $14, $30, $50, $36, $64, $00

Data_82975: ; 82975 (20:6975)
	db $1c, $14, $40, $46, $46, $64, $00

Data_8297c: ; 8297c (20:697c)
	db $1c, $14, $50, $46, $56, $64, $00

Data_82983: ; 82983 (20:6983)
	db $1d, $78, $00

; unreferenced ?
	db $20, $64, $00

Data_82989: ; 82989 (20:6989)
	db $20, $05, $60, $02, $40, $05, $60, $05, $00

Data_82992: ; 82992 (20:6992)
	db $20, $03, $60, $01, $40, $03, $60, $03, $00

Data_8299b: ; 8299b (20:699b)
	db $40, $05, $60, $02, $40, $05, $60, $05, $00

Data_829a4: ; 829a4 (20:69a4)
	db $40, $02, $60, $02, $00

Data_829a9: ; 829a9 (20:69a9)
	db $20, $0a, $40, $0a, $60, $0a, $00

Data_829b0: ; 829b0 (20:69b0)
	db $20, $05, $60, $02, $40, $02, $20, $c8, $00

Data_829b9: ; 829b9 (20:69b9)
	db $20, $c8, $00

Data_829bc: ; 829bc (20:69bc)
	db $40, $c8, $00

Data_829bf: ; 829bf (20:69bf)
	db $20, $04, $60, $01, $40, $c8, $00

Data_829c6: ; 829c6 (20:69c6)
	db $62, $08, $31, $08, $41, $08, $1d, $14, $60, $28, $67, $28, $00

Data_829d3: ; 829d3 (20:69d3)
	db $62, $08, $31, $08, $41, $08, $1f, $14, $40, $1e, $47, $28, $00

Data_829e0: ; 829e0 (20:69e0)
	db $72, $08, $41, $08, $51, $08, $1d, $14, $70, $3c, $77, $28, $00

Data_829ed: ; 829ed (20:69ed)
	db $92, $08, $51, $08, $61, $08, $1d, $14, $80, $28, $87, $28, $00

Data_829fa: ; 829fa (20:69fa)
	db $79, $01, $82, $08, $61, $08, $41, $0a, $2d, $14, $80, $32, $87, $28, $00

Data_82a09: ; 82a09 (20:6a09)
	db $62, $10, $1e, $14, $50, $28, $57, $28, $00

Data_82a12: ; 82a12 (20:6a12)
	db $82, $10, $1c, $14, $70, $50, $77, $28, $00

Data_82a1b: ; 82a1b (20:6a1b)
	db $d4, $14, $1c, $19, $80, $50, $87, $28, $00

Data_82a24: ; 82a24 (20:6a24)
	db $79, $01, $82, $08, $61, $08, $41, $0a, $2d, $14, $80, $78, $87, $28, $00

Data_82a33: ; 82a33 (20:6a33)
	db $93, $14, $2d, $14, $80, $50, $85, $28, $00

Data_82a3c: ; 82a3c (20:6a3c)
	db $a2, $08, $71, $06, $41, $06, $3d, $19, $90, $28, $97, $28, $00

Data_82a49: ; 82a49 (20:6a49)
	db $a3, $08, $a3, $08, $83, $08, $1c, $14, $80, $28, $87, $28, $00

Data_82a56: ; 82a56 (20:6a56)
	db $a1, $08, $81, $08, $61, $08, $1c, $14, $80, $28, $87, $28, $00

Data_82a63: ; 82a63 (20:6a63)
	db $a1, $08, $81, $08, $61, $08, $1f, $50, $60, $1e, $67, $28, $00

Data_82a70: ; 82a70 (20:6a70)
	db $c1, $08, $71, $08, $61, $08, $1f, $3c, $60, $28, $67, $28, $00

Data_82a7d: ; 82a7d (20:6a7d)
	db $91, $08, $61, $08, $41, $08, $1f, $28, $50, $28, $57, $3c, $00

Data_82a8a: ; 82a8a (20:6a8a)
	db $cf, $08, $80, $06, $60, $06, $3d, $1e, $7e, $28, $85, $32, $00

Data_82a97: ; 82a97 (20:6a97)
	db $ef, $08, $a0, $06, $80, $06, $5d, $1e, $ae, $32, $95, $32, $00

Data_82aa4: ; 82aa4 (20:6aa4)
	db $be, $64, $be, $0f, $00

Data_82aa9: ; 82aa9 (20:6aa9)
	db $20, $05, $40, $78, $00

Data_82aae: ; 82aae (20:6aae)
	db $e1, $03, $c5, $14, $00

Data_82ab3: ; 82ab3 (20:6ab3)
	db $d1, $03, $b5, $14, $00

Data_82ab8: ; 82ab8 (20:6ab8)
	db $c1, $03, $a5, $14, $00

Data_82abd: ; 82abd (20:6abd)
	db $70, $64, $00

Data_82ac0: ; 82ac0 (20:6ac0)
	db $60, $64, $00

Data_82ac3: ; 82ac3 (20:6ac3)
	db $50, $64, $00

Data_82ac6: ; 82ac6 (20:6ac6)
	db $40, $14, $47, $64, $00

Data_82acb: ; 82acb (20:6acb)
	db $30, $14, $37, $64, $00

Data_82ad0: ; 82ad0 (20:6ad0)
	db $20, $14, $27, $64, $00

Data_82ad5: ; 82ad5 (20:6ad5)
	db $40, $01, $40, $01, $40, $01, $40, $01, $40, $01, $40, $02, $40, $02, $30, $02, $20, $02, $10, $02, $00

Data_82aea: ; 82aea (20:6aea)
	db $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $02, $40, $02, $30, $02, $20, $02, $10, $02, $00

Data_82aff: ; 82aff (20:6aff)
	db $60, $01, $60, $01, $60, $01, $60, $01, $60, $01, $50, $01, $40, $02, $30, $02, $20, $02, $10, $02, $00

Data_82b14: ; 82b14 (20:6b14)
	db $70, $01, $70, $01, $70, $01, $70, $01, $60, $01, $50, $01, $40, $02, $30, $02, $20, $02, $10, $02, $00

Data_82b29: ; 82b29 (20:6b29)
	db $1c, $14, $50, $64, $00

Data_82b2e: ; 82b2e (20:6b2e)
	db $18, $01, $18, $01, $18, $01, $18, $01, $18, $01, $18, $01, $28, $01, $28, $01, $28, $01, $28, $01, $28, $01, $38, $01, $38, $01, $38, $01, $38, $01, $48, $01, $48, $01, $48, $01, $48, $01, $48, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $56, $64, $00

Data_82bd1: ; 82bd1 (20:6bd1)
	db $40, $01, $40, $01, $40, $01, $40, $01, $40, $01, $40, $02, $30, $02, $30, $02, $30, $02, $20, $02, $20, $02, $10, $02, $2f, $1e, $50, $50, $56, $64, $00

Data_82bf0: ; 82bf0 (20:6bf0)
	db $50, $01, $50, $01, $50, $01, $50, $01, $50, $01, $50, $02, $40, $02, $40, $02, $40, $02, $30, $02, $30, $02, $20, $02, $2f, $1e, $50, $50, $56, $64, $00

Data_82c0f: ; 82c0f (20:6c0f)
	db $60, $01, $60, $01, $60, $01, $60, $01, $60, $01, $50, $02, $40, $02, $40, $02, $40, $02, $30, $02, $30, $02, $20, $02, $2e, $1e, $60, $50, $66, $64, $00

Data_82c2e: ; 82c2e (20:6c2e)
	db $70, $01, $70, $01, $70, $01, $70, $01, $60, $01, $50, $02, $40, $02, $40, $02, $40, $02, $30, $02, $30, $02, $20, $02, $2d, $1e, $70, $50, $76, $64, $00

Data_82c4d: ; 82c4d (20:6c4d)
	db $51, $01, $00

; unreferenced ?
	db $01, $51, $01, $51, $01, $51, $01, $41, $01, $30, $01, $00
	db $01, $31, $01, $00
	db $01, $21, $01, $00
	db $01, $11, $01, $00
	db $02, $11, $01, $2e, $1e, $60, $50, $66, $64, $00

Data_82c72: ; 82c72 (20:6c72)
	db $11, $01, $00

Data_82c75: ; 82c75 (20:6c75)
	db $21, $01, $00

Data_82c78: ; 82c78 (20:6c78)
	db $31, $01, $00

Data_82c7b: ; 82c7b (20:6c7b)
	db $41, $01, $00

Data_82c7e: ; 82c7e (20:6c7e)
	db $51, $01, $00

Data_82c81: ; 82c81 (20:6c81)
	db $61, $01, $00

Data_82c84: ; 82c84 (20:6c84)
	db $71, $01, $00

Data_82c87: ; 82c87 (20:6c87)
	db $81, $01, $00

Data_82c8a: ; 82c8a (20:6c8a)
	db $91, $01, $00

Data_82c8d: ; 82c8d (20:6c8d)
	db $a1, $01, $00

Data_82c90: ; 82c90 (20:6c90)
	db $b1, $01, $00

Data_82c93: ; 82c93 (20:6c93)
	db $c1, $01, $00

Data_82c96: ; 82c96 (20:6c96)
	db $d1, $01, $00

Data_82c99: ; 82c99 (20:6c99)
	db $e1, $01, $00

Data_82c9c: ; 82c9c (20:6c9c)
	db $f1, $01, $00

Data_82c9f: ; 82c9f (20:6c9f)
	db $19, $01, $00

Data_82ca2: ; 82ca2 (20:6ca2)
	db $29, $01, $00

Data_82ca5: ; 82ca5 (20:6ca5)
	db $39, $01, $00

Data_82ca8: ; 82ca8 (20:6ca8)
	db $49, $01, $00

Data_82cab: ; 82cab (20:6cab)
	db $59, $01, $00

Data_82cae: ; 82cae (20:6cae)
	db $69, $01, $00

Data_82cb1: ; 82cb1 (20:6cb1)
	db $79, $01, $00

Data_82cb4: ; 82cb4 (20:6cb4)
	db $89, $01, $00

Data_82cb7: ; 82cb7 (20:6cb7)
	db $99, $01, $00

Data_82cba: ; 82cba (20:6cba)
	db $a9, $01, $00

Data_82cbd: ; 82cbd (20:6cbd)
	db $b9, $01, $00

Data_82cc0: ; 82cc0 (20:6cc0)
	db $c9, $01, $00

Data_82cc3: ; 82cc3 (20:6cc3)
	db $d9, $01, $00

Data_82cc6: ; 82cc6 (20:6cc6)
	db $e9, $01, $00

Data_82cc9: ; 82cc9 (20:6cc9)
	db $f9, $01, $00

Data_82ccc: ; 82ccc (20:6ccc)
	db $1a, $01, $00

Data_82ccf: ; 82ccf (20:6ccf)
	db $2a, $01, $00

Data_82cd2: ; 82cd2 (20:6cd2)
	db $3a, $01, $00

Data_82cd5: ; 82cd5 (20:6cd5)
	db $4a, $01, $00

Data_82cd8: ; 82cd8 (20:6cd8)
	db $5a, $01, $00

Data_82cdb: ; 82cdb (20:6cdb)
	db $6a, $01, $00

Data_82cde: ; 82cde (20:6cde)
	db $7a, $01, $00

Data_82ce1: ; 82ce1 (20:6ce1)
	db $8a, $01, $00

Data_82ce4: ; 82ce4 (20:6ce4)
	db $9a, $01, $00

Data_82ce7: ; 82ce7 (20:6ce7)
	db $aa, $01, $00

Data_82cea: ; 82cea (20:6cea)
	db $ba, $01, $00

Data_82ced: ; 82ced (20:6ced)
	db $ca, $01, $00

Data_82cf0: ; 82cf0 (20:6cf0)
	db $da, $01, $00

Data_82cf3: ; 82cf3 (20:6cf3)
	db $ea, $01, $00

Data_82cf6: ; 82cf6 (20:6cf6)
	db $fa, $01, $00

Data_82cf9: ; 82cf9 (20:6cf9)
	db $1b, $01, $00

Data_82cfc: ; 82cfc (20:6cfc)
	db $2b, $01, $00

Data_82cff: ; 82cff (20:6cff)
	db $3b, $01, $00

Data_82d02: ; 82d02 (20:6d02)
	db $4b, $01, $00

Data_82d05: ; 82d05 (20:6d05)
	db $5b, $01, $00

Data_82d08: ; 82d08 (20:6d08)
	db $6b, $01, $00

Data_82d0b: ; 82d0b (20:6d0b)
	db $7b, $01, $00

Data_82d0e: ; 82d0e (20:6d0e)
	db $8b, $01, $00

Data_82d11: ; 82d11 (20:6d11)
	db $9b, $01, $00

Data_82d14: ; 82d14 (20:6d14)
	db $ab, $01, $00

Data_82d17: ; 82d17 (20:6d17)
	db $bb, $01, $00

Data_82d1a: ; 82d1a (20:6d1a)
	db $cb, $01, $00

Data_82d1d: ; 82d1d (20:6d1d)
	db $db, $01, $00

Data_82d20: ; 82d20 (20:6d20)
	db $eb, $01, $00

Data_82d23: ; 82d23 (20:6d23)
	db $fb, $01, $00

Data_82d26: ; 82d26 (20:6d26)
	db $1c, $01, $00

Data_82d29: ; 82d29 (20:6d29)
	db $2c, $01, $00

Data_82d2c: ; 82d2c (20:6d2c)
	db $3c, $01, $00

Data_82d2f: ; 82d2f (20:6d2f)
	db $4c, $01, $00

Data_82d32: ; 82d32 (20:6d32)
	db $5c, $01, $00

Data_82d35: ; 82d35 (20:6d35)
	db $6c, $01, $00

Data_82d38: ; 82d38 (20:6d38)
	db $7c, $01, $00

Data_82d3b: ; 82d3b (20:6d3b)
	db $8c, $01, $00

Data_82d3e: ; 82d3e (20:6d3e)
	db $9c, $01, $00

Data_82d41: ; 82d41 (20:6d41)
	db $ac, $01, $00

Data_82d44: ; 82d44 (20:6d44)
	db $bc, $01, $00

Data_82d47: ; 82d47 (20:6d47)
	db $cc, $01, $00

Data_82d4a: ; 82d4a (20:6d4a)
	db $dc, $01, $00

Data_82d4d: ; 82d4d (20:6d4d)
	db $ec, $01, $00

Data_82d50: ; 82d50 (20:6d50)
	db $fc, $01, $00

Data_82d53: ; 82d53 (20:6d53)
	db $c1, $03, $b5, $14, $00

Data_82d58: ; 82d58 (20:6d58)
	db $d1, $03, $b5, $14, $00

Data_82d5d: ; 82d5d (20:6d5d)
	db $e1, $03, $b5, $14, $00

Data_82d62: ; 82d62 (20:6d62)
	db $f1, $03, $c5, $14, $ad, $0a, $f3, $0a, $ad, $0a, $f3, $0a, $00

Data_82d6f: ; 82d6f (20:6d6f)
	db $d1, $0a, $2f, $08, $38, $05, $37, $0c, $2f, $08, $38, $05, $37, $0c, $1f, $08, $28, $05, $27, $0c, $1f, $08, $28, $05, $27, $0c, $00

Data_82d8a: ; 82d8a (20:6d8a)
	db $c1, $0a, $2f, $08, $38, $05, $37, $0c, $2f, $08, $38, $05, $37, $0c, $1f, $08, $28, $05, $27, $0c, $1f, $08, $28, $05, $27, $0c, $00

Data_82da5: ; 82da5 (20:6da5)
	db $b1, $0a, $2f, $08, $38, $05, $37, $0c, $2f, $08, $38, $05, $37, $0c, $1f, $08, $28, $05, $27, $0c, $1f, $08, $28, $05, $27, $0c, $00

Data_82dc0: ; 82dc0 (20:6dc0)
	db $a1, $0a, $2f, $08, $38, $05, $37, $0c, $2f, $08, $38, $05, $37, $0c, $1f, $08, $28, $05, $27, $0c, $1f, $08, $28, $05, $27, $0c, $00

Data_82ddb: ; 82ddb (20:6ddb)
	db $91, $0a, $2f, $08, $38, $05, $37, $0c, $2f, $08, $38, $05, $37, $0c, $1f, $08, $28, $05, $27, $0c, $1f, $08, $28, $05, $27, $0c, $00

Data_82df6: ; 82df6 (20:6df6)
	db $81, $0a, $2f, $06, $48, $03, $47, $09, $2f, $08, $38, $05, $37, $0c, $2f, $08, $38, $05, $37, $0c, $1f, $08, $28, $05, $27, $0c, $1f, $08, $28, $05, $27, $0c, $00

Data_82e17: ; 82e17 (20:6e17)
	db $71, $0a, $2f, $06, $38, $03, $47, $09, $2f, $08, $38, $05, $37, $0c, $2f, $08, $38, $05, $37, $0c, $1f, $08, $28, $05, $27, $0c, $1f, $08, $28, $05, $27, $0c

Data_82e37: ; 82e37 (20:6e37)
	db $61, $0a, $2f, $06, $38, $03, $47, $09, $2f, $08, $38, $05, $37, $0c, $1f, $08, $28, $05, $27, $0c, $1f, $08, $28, $05, $27, $0c, $1f, $08, $28, $05, $27, $0c

Data_82e57: ; 82e57 (20:6e57)
	db $51, $0a, $1f, $06, $38, $03, $37, $09, $1f, $08, $38, $05, $37, $0c, $1f, $08, $28, $05, $27, $0c, $1f, $08, $28, $05, $27, $0c, $1f, $08, $18, $05, $27, $0c, $00

Data_82e78: ; 82e78 (20:6e78)
	db $0f, $3c, $58, $3c, $57, $64, $0e, $0a, $36, $0a, $0e, $0a, $36, $0a, $0e, $0a, $36, $0a, $0e, $0a, $37, $32, $00

Data_82e8f: ; 82e8f (20:6e8f)
	db $69, $03, $81, $03, $90, $0a, $95, $64, $00

Data_82e98: ; 82e98 (20:6e98)
	db $c4, $06, $88, $06, $00

Data_82e9d: ; 82e9d (20:6e9d)
	db $b9, $01, $c2, $06, $a8, $00

Data_82ea3: ; 82ea3 (20:6ea3)
	db $a9, $01, $b2, $06, $98, $00

Data_82ea9: ; 82ea9 (20:6ea9)
	db $99, $01, $a2, $06, $88, $00

Data_82eaf: ; 82eaf (20:6eaf)
	db $89, $01, $92, $06, $78, $00

Data_82eb5: ; 82eb5 (20:6eb5)
	db $79, $01, $82, $06, $68, $00

Data_82ebb: ; 82ebb (20:6ebb)
	db $69, $01, $72, $06, $58, $00

Data_82ec1: ; 82ec1 (20:6ec1)
	db $59, $01, $62, $06, $48, $00

Data_82ec7: ; 82ec7 (20:6ec7)
	db $49, $01, $52, $06, $38, $00

Data_82ecd: ; 82ecd (20:6ecd)
	db $39, $01, $42, $06, $28, $00

Data_82ed3: ; 82ed3 (20:6ed3)
	db $29, $01, $32, $06, $18, $00

Data_82ed9: ; 82ed9 (20:6ed9)
	db $59, $08, $70, $1e, $66, $0a, $00

Data_82ee0: ; 82ee0 (20:6ee0)
	db $12, $64, $00

Data_82ee3: ; 82ee3 (20:6ee3)
	db $22, $64, $00

Data_82ee6: ; 82ee6 (20:6ee6)
	db $32, $64, $00

Data_82ee9: ; 82ee9 (20:6ee9)
	db $42, $64, $00

Data_82eec: ; 82eec (20:6eec)
	db $52, $64, $00

Data_82eef: ; 82eef (20:6eef)
	db $62, $64, $00

Data_82ef2: ; 82ef2 (20:6ef2)
	db $72, $64, $00

Data_82ef5: ; 82ef5 (20:6ef5)
	db $82, $64, $00

Data_82ef8: ; 82ef8 (20:6ef8)
	db $92, $64, $00

Data_82efb: ; 82efb (20:6efb)
	db $a2, $64, $00

Data_82efe: ; 82efe (20:6efe)
	db $b2, $64, $00

Data_82f01: ; 82f01 (20:6f01)
	db $c2, $64, $00

Data_82f04: ; 82f04 (20:6f04)
	db $d2, $64, $00

Data_82f07: ; 82f07 (20:6f07)
	db $e2, $64, $00

Data_82f0a: ; 82f0a (20:6f0a)
	db $f2, $64, $00

Data_82f0d: ; 82f0d (20:6f0d)
	db $f0, $01, $00

Data_82f10: ; 82f10 (20:6f10)
	db $e0, $01, $00

Data_82f13: ; 82f13 (20:6f13)
	db $d0, $01, $00

Data_82f16: ; 82f16 (20:6f16)
	db $c0, $01, $00

Data_82f19: ; 82f19 (20:6f19)
	db $b0, $01, $00

Data_82f1c: ; 82f1c (20:6f1c)
	db $a0, $01, $00

Data_82f1f: ; 82f1f (20:6f1f)
	db $90, $01, $00

Data_82f22: ; 82f22 (20:6f22)
	db $80, $01, $00

Data_82f25: ; 82f25 (20:6f25)
	db $70, $01, $00

Data_82f28: ; 82f28 (20:6f28)
	db $60, $01, $00

Data_82f2b: ; 82f2b (20:6f2b)
	db $50, $01, $00

Data_82f2e: ; 82f2e (20:6f2e)
	db $40, $01, $00

Data_82f31: ; 82f31 (20:6f31)
	db $30, $01, $00

Data_82f34: ; 82f34 (20:6f34)
	db $20, $01, $00

Data_82f37: ; 82f37 (20:6f37)
	db $10, $01, $00

Data_82f3a: ; 82f3a (20:6f3a)
	db $14, $01, $00

Data_82f3d: ; 82f3d (20:6f3d)
	db $24, $01, $00

Data_82f40: ; 82f40 (20:6f40)
	db $34, $01, $00

Data_82f43: ; 82f43 (20:6f43)
	db $44, $01, $00

Data_82f46: ; 82f46 (20:6f46)
	db $54, $01, $00

Data_82f49: ; 82f49 (20:6f49)
	db $64, $01, $00

Data_82f4c: ; 82f4c (20:6f4c)
	db $74, $01, $00

Data_82f4f: ; 82f4f (20:6f4f)
	db $84, $01, $00

Data_82f52: ; 82f52 (20:6f52)
	db $94, $01, $00

Data_82f55: ; 82f55 (20:6f55)
	db $a4, $01, $00

Data_82f58: ; 82f58 (20:6f58)
	db $b4, $01, $00

Data_82f5b: ; 82f5b (20:6f5b)
	db $c4, $01, $00

Data_82f5e: ; 82f5e (20:6f5e)
	db $d4, $01, $00

Data_82f61: ; 82f61 (20:6f61)
	db $e4, $01, $00

Data_82f64: ; 82f64 (20:6f64)
	db $f4, $01, $00

Data_82f67: ; 82f67 (20:6f67)
	db $b1, $01, $01, $0a, $00

Data_82f6c: ; 82f6c (20:6f6c)
	db $19, $19, $84, $01, $00

DataTable_82f71: ; 82f71 (20:6f71)
	db $79, $AB, $CD, $DF, $EE, $DD, $CB, $A9, $7F, $43, $21, $10, $00, $11, $23, $45
	db $FF, $EE, $D0, $CC, $BB, $AA, $9F, $88, $77, $66, $5F, $44, $3F, $22, $11, $00
	db $FF, $EE, $D0, $CC, $BB, $AA, $9F, $88, $77, $66, $5F, $44, $3F, $2F, $11, $00
	db $FF, $EE, $D0, $CC, $BB, $AA, $9F, $88, $77, $66, $5F, $44, $3F, $2F, $11, $F0
	db $79, $AB, $CD, $DE, $EE, $DD, $CB, $A9, $75, $43, $21, $10, $00, $11, $23, $45
	db $79, $AB, $CD, $DF, $EE, $DD, $CB, $A9, $75, $43, $21, $10, $00, $11, $23, $45
	db $79, $AB, $CD, $DF, $EE, $DD, $CB, $A9, $7F, $43, $21, $10, $00, $11, $23, $45
	db $01, $23, $45, $67, $89, $AB, $CD, $EF, $FE, $DC, $BA, $98, $76, $54, $32, $10
	db $01, $24, $68, $AC, $EC, $A8, $64, $21, $01, $24, $68, $AC, $EC, $A8, $64, $21
	db $04, $8C, $FC, $84, $04, $8C, $FC, $84, $04, $8C, $FC, $84, $04, $8C, $FC, $84
	db $01, $23, $45, $67, $89, $AB, $CD, $EF, $01, $23, $45, $67, $89, $AB, $CD, $EF
	db $FE, $DC, $BA, $98, $76, $54, $32, $10, $FE, $DC, $BA, $98, $76, $54, $32, $10
	db $FF, $EE, $DD, $CC, $BB, $AA, $99, $88, $77, $66, $55, $44, $33, $22, $11, $00
	db $FE, $FE, $DC, $DC, $BA, $BA, $98, $98, $76, $76, $54, $54, $32, $32, $10, $10
	db $FF, $EE, $DD, $CC, $BB, $AA, $99, $88, $7F, $66, $55, $44, $33, $22, $11, $00
	db $FF, $EE, $DD, $CC, $BB, $AA, $99, $88, $77, $6F, $55, $44, $33, $22, $11, $00
	db $FF, $EE, $DD, $CC, $BB, $AA, $99, $88, $77, $66, $5F, $44, $33, $22, $11, $00
	db $FF, $EE, $DD, $CC, $BB, $AA, $99, $88, $77, $66, $55, $4F, $33, $22, $11, $00
	db $FF, $EE, $DD, $CC, $BB, $AA, $99, $88, $77, $66, $55, $44, $3F, $22, $11, $00
	db $FF, $EE, $DD, $CC, $BB, $AA, $99, $88, $77, $66, $55, $44, $33, $2F, $11, $00
	db $FF, $EE, $DD, $CC, $BB, $AA, $99, $88, $77, $66, $55, $44, $33, $22, $1F, $00
	db $FF, $EE, $DD, $CC, $BB, $AA, $9F, $88, $77, $66, $5F, $44, $3F, $22, $11, $00
	db $FF, $EE, $D0, $CC, $BB, $AA, $9F, $88, $77, $66, $5F, $44, $3F, $22, $11, $00
	db $FF, $EE, $D0, $CC, $BB, $AA, $9F, $88, $77, $66, $5F, $44, $3F, $2F, $11, $00
	db $79, $AB, $CD, $EE, $FF, $EE, $CB, $A9, $75, $43, $21, $00, $22, $33, $55, $66
	db $79, $BC, $CD, $EE, $FF, $EE, $CC, $A9, $86, $65, $31, $00, $32, $42, $53, $66
	db $11, $33, $65, $89, $BD, $CE, $EF, $FF, $EF, $CE, $BD, $89, $65, $33, $11, $00
	db $22, $33, $65, $89, $BD, $CE, $EF, $FF, $EF, $CE, $BD, $89, $65, $33, $22, $11
	db $F9, $AB, $CD, $EE, $EF, $FF, $39, $A9, $75, $53, $21, $66, $12, $43, $56, $67
	db $01, $23, $45, $67, $89, $AB, $CD, $EF, $FE, $DC, $BA, $98, $76, $54, $32, $10
	db $01, $24, $68, $AC, $EC, $A8, $64, $21, $01, $24, $68, $AC, $EC, $A8, $64, $21
	db $04, $8C, $FC, $84, $04, $8C, $FC, $84, $04, $8C, $FC, $84, $04, $8C, $FC, $84
	db $01, $24, $68, $AC, $EC, $A8, $64, $21, $01, $24, $68, $AC, $EC, $A8, $64, $21
	db $FF, $EE, $DD, $CC, $BB, $AA, $99, $88, $77, $66, $55, $44, $33, $22, $11, $00
	db $CC, $BB, $AA, $99, $88, $77, $66, $55, $44, $33, $22, $11, $00, $11, $00, $11
	db $DC, $DC, $BA, $BA, $98, $98, $76, $76, $54, $54, $32, $32, $10, $10, $00, $00
	db $FF, $EE, $DD, $CC, $BB, $AA, $99, $88, $7F, $66, $55, $44, $33, $22, $11, $00
	db $FF, $EE, $DD, $CC, $BB, $AA, $99, $88, $77, $6F, $55, $44, $33, $22, $11, $00
	db $FF, $EE, $DD, $CC, $BB, $AA, $99, $88, $77, $66, $5F, $44, $33, $22, $11, $00
	db $FF, $EE, $DD, $CC, $BB, $AA, $99, $88, $77, $66, $55, $4F, $33, $22, $11, $00
	db $FF, $EE, $DD, $CC, $BB, $AA, $99, $88, $77, $66, $55, $44, $3F, $22, $11, $00
	db $FF, $EE, $DD, $CC, $BB, $AA, $99, $88, $77, $66, $55, $44, $33, $2F, $11, $00
	db $FF, $EE, $DD, $CC, $BB, $AA, $99, $88, $77, $66, $55, $44, $33, $22, $1F, $00
	db $FF, $EE, $DD, $CC, $BB, $AA, $9F, $88, $77, $66, $5F, $44, $3F, $22, $11, $00
	db $FF, $EE, $D0, $CC, $BB, $AA, $9F, $88, $77, $66, $5F, $44, $3F, $22, $11, $00
	db $FF, $EE, $D0, $CC, $BB, $AA, $9F, $88, $77, $66, $5F, $44, $3F, $2F, $11, $00
	db $FF, $EE, $D0, $CC, $BB, $AA, $9F, $88, $77, $66, $5F, $44, $3F, $2F, $11, $F0
	db $01, $23, $45, $67, $89, $AB, $CD, $EF, $01, $23, $45, $67, $89, $AB, $CD, $EF
	db $FE, $DC, $BA, $98, $76, $54, $32, $10, $FE, $DC, $BA, $98, $76, $54, $32, $10
	db $FF, $EE, $DD, $EE, $BB, $AA, $FF, $88, $77, $6F, $FF, $44, $33, $22, $11, $00
	db $FF, $EE, $DD, $CC, $BB, $AA, $99, $88, $77, $6F, $55, $44, $35, $22, $11, $00
	db $0F, $34, $56, $8F, $AB, $CD, $EF, $FF, $FF, $FE, $DC, $BF, $97, $65, $43, $2F
	db $FF, $FF, $FF, $FF, $33, $33, $33, $33, $FF, $FF, $FF, $FF, $33, $33, $33, $33
	db $DD, $DD, $DD, $DD, $00, $00, $00, $00, $DD, $DD, $DD, $DD, $00, $00, $00, $00
	db $CC, $CC, $00, $00, $CC, $CC, $00, $00, $CC, $CC, $00, $00, $CC, $CC, $00, $00
	db $88, $88, $00, $00, $88, $88, $00, $00, $88, $88, $00, $00, $88, $88, $00, $00
	db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $00, $00, $00, $00, $00, $00, $00, $00
	db $BB, $BB, $BB, $BB, $BB, $BB, $BB, $BB, $00, $00, $00, $00, $00, $00, $00, $00
	db $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $00, $00, $00, $00, $00, $00, $00, $00
	db $EE, $EE, $EE, $EE, $EE, $EE, $EE, $EE, $00, $00, $00, $00, $00, $00, $00, $00
	db $DD, $DD, $DD, $DD, $DD, $DD, $DD, $DD, $00, $00, $00, $00, $00, $00, $00, $00
	db $CC, $CC, $CC, $CC, $CC, $CC, $CC, $CC, $00, $00, $00, $00, $00, $00, $00, $00
	db $BB, $BB, $BB, $BB, $BB, $BB, $BB, $BB, $00, $00, $00, $00, $00, $00, $00, $00
	db $AA, $AA, $AA, $AA, $AA, $AA, $AA, $AA, $00, $00, $00, $00, $00, $00, $00, $00
	db $99, $99, $99, $99, $99, $99, $99, $99, $00, $00, $00, $00, $00, $00, $00, $00
	db $88, $88, $88, $88, $88, $88, $88, $88, $00, $00, $00, $00, $00, $00, $00, $00
	db $77, $77, $77, $77, $77, $77, $77, $77, $00, $00, $00, $00, $00, $00, $00, $00
	db $66, $66, $66, $66, $66, $66, $66, $66, $00, $00, $00, $00, $00, $00, $00, $00
	db $55, $55, $55, $55, $55, $55, $55, $55, $00, $00, $00, $00, $00, $00, $00, $00
	db $44, $44, $44, $44, $44, $44, $44, $44, $00, $00, $00, $00, $00, $00, $00, $00
	db $33, $33, $33, $33, $33, $33, $33, $33, $00, $00, $00, $00, $00, $00, $00, $00
	db $22, $22, $22, $22, $22, $22, $22, $22, $00, $00, $00, $00, $00, $00, $00, $00
	db $11, $11, $11, $11, $11, $11, $11, $11, $00, $00, $00, $00, $00, $00, $00, $00

PointerTable_83401: ; 83401 (20:7401)
	dw Data_83498
	dw Data_8349c
	dw Data_834a0
	dw Data_834a4
	dw Data_834b1
	dw Data_834b5
	dw Data_834b9
	dw Data_834bd
	dw Data_834cc
	dw Data_834d0
	dw Data_834d4
	dw Data_834d8
	dw Data_834e9
	dw Data_8348a
	dw Data_8348e
	dw Data_8347d
	dw Data_83511
	dw Data_83515
	dw Data_83519
	dw Data_8351d
	dw Data_8352a
	dw Data_8352e
	dw Data_83532
	dw Data_83536
	dw Data_83545
	dw Data_83549
	dw Data_8354d
	dw Data_83551
	dw Data_83503
	dw Data_83507
	dw Data_834f6
	dw Data_83562
	dw Data_83569
	dw Data_8362b
	dw Data_83636
	dw Data_83609
	dw Data_8360d
	dw Data_835f1
	dw Data_8364b
	dw Data_8364f
	dw Data_83562
	dw Data_83562
	dw Data_83591
	dw Data_83595
	dw Data_8359b
	dw Data_835a5
	dw Data_835af
	dw Data_835bd
	dw Data_835cd
	dw Data_835e3
	dw Data_83570
	dw Data_83576
	dw Data_8357c
	dw Data_83660
	dw Data_83665
	dw Data_836e0
	dw Data_836f3
	dw Data_836a7
	dw Data_836ba
	dw Data_836cd
	dw Data_83704
	dw Data_83715
; 0x8347d

Data_8347d: ; 8347d (20:747d)
	db $01, $75, $89, $89, $89, $89, $27, $85, $01, $81, $64, $86, $74

Data_8348a: ; 8348a (20:748a)
	db $0c, $64, $92, $74

Data_8348e: ; 8348e (20:748e)
	db $12, $64, $92, $74, $85, $01, $84, $64, $94, $74

Data_83498: ; 83498 (20:7498)
	db $01, $64, $a8, $74

Data_8349c: ; 8349c (20:749c)
	db $03, $64, $a8, $74

Data_834a0: ; 834a0 (20:74a0)
	db $06, $64, $a8, $74

Data_834a4: ; 834a4 (20:74a4)
	db $0c, $64, $a8, $74, $85, $01, $89, $89, $81, $81, $64, $aa, $74

Data_834b1: ; 834b1 (20:74b1)
	db $01, $64, $c1, $74

Data_834b5: ; 834b5 (20:74b5)
	db $03, $64, $c1, $74

Data_834b9: ; 834b9 (20:74b9)
	db $06, $64, $c1, $74

Data_834bd: ; 834bd (20:74bd)
	db $0c, $64, $c1, $74, $85, $01, $88, $88, $88, $82, $82, $82, $64, $c3, $74

Data_834cc: ; 834cc (20:74cc)
	db $01, $64, $dc, $74

Data_834d0: ; 834d0 (20:74d0)
	db $03, $64, $dc, $74

Data_834d4: ; 834d4 (20:74d4)
	db $06, $64, $dc, $74

Data_834d8: ; 834d8 (20:74d8)
	db $0c, $64, $dc, $74, $85, $01, $87, $87, $87, $87, $83, $83, $83, $83, $64, $de, $74

Data_834e9: ; 834e9 (20:74e9)
	db $01, $64, $ed, $74, $85, $01, $87, $87, $83, $83, $64, $ef, $74

Data_834f6: ; 834f6 (20:74f6)
	db $01, $75, $89, $89, $89, $89, $27, $85, $01, $81, $64, $ff, $74

Data_83503: ; 83503 (20:7503)
	db $0c, $64, $0b, $75

Data_83507: ; 83507 (20:7507)
	db $12, $64, $0b, $75, $85, $01, $84, $64, $0d, $75

Data_83511: ; 83511 (20:7511)
	db $01, $64, $21, $75

Data_83515: ; 83515 (20:7515)
	db $03, $64, $21, $75

Data_83519: ; 83519 (20:7519)
	db $06, $64, $21, $75

Data_8351d: ; 8351d (20:751d)
	db $0c, $64, $21, $75, $85, $01, $89, $89, $81, $81, $64, $23, $75

Data_8352a: ; 8352a (20:752a)
	db $01, $64, $3a, $75

Data_8352e: ; 8352e (20:752e)
	db $03, $64, $3a, $75

Data_83532: ; 83532 (20:7532)
	db $06, $64, $3a, $75

Data_83536: ; 83536 (20:7536)
	db $0c, $64, $3a, $75, $85, $01, $88, $88, $88, $82, $82, $82, $64, $3c, $75

Data_83545: ; 83545 (20:7545)
	db $01, $64, $55, $75

Data_83549: ; 83549 (20:7549)
	db $03, $64, $55, $75

Data_8354d: ; 8354d (20:754d)
	db $06, $64, $55, $75

Data_83551: ; 83551 (20:7551)
	db $0c, $64, $55, $75, $85, $01, $87, $87, $87, $87, $83, $83, $83, $83, $64, $57, $75

Data_83562: ; 83562 (20:7562)
	db $85, $01, $88, $82, $64, $64, $75

Data_83569: ; 83569 (20:7569)
	db $85, $01, $84, $86, $64, $6b, $75

Data_83570: ; 83570 (20:7570)
	db $85, $01, $65, $64, $72, $75

Data_83576: ; 83576 (20:7576)
	db $85, $01, $73, $64, $78, $75

Data_8357c: ; 8357c (20:757c)
	db $85, $01, $7c, $7c, $64, $7f, $75, $85, $01, $87, $83, $64, $85, $75, $85, $01, $87, $83, $64, $8c, $75

Data_83591: ; 83591 (20:7591)
	db $85, $01, $83, $87

Data_83595: ; 83595 (20:7595)
	db $85, $01, $82, $83, $84, $86

Data_8359b: ; 8359b (20:759b)
	db $85, $01, $84, $85, $02, $88, $82, $64, $9e, $75

Data_835a5: ; 835a5 (20:75a5)
	db $85, $01, $84, $85, $02, $86, $84, $64, $a8, $75

Data_835af: ; 835af (20:75af)
	db $85, $01, $84, $85, $02, $87, $83, $85, $01, $86, $84, $64, $b2, $75

Data_835bd: ; 835bd (20:75bd)
	db $85, $01, $83, $84, $88, $85, $01, $86, $86, $86, $84, $84, $84, $64, $c2, $75

Data_835cd: ; 835cd (20:75cd)
	db $85, $01, $7d, $85, $01, $86, $86, $86, $86, $87, $87, $85, $01, $86, $86, $86, $84, $84, $84, $64, $d8, $75

Data_835e3: ; 835e3 (20:75e3)
	db $85, $01, $84, $84, $87, $85, $02, $86, $86, $84, $84, $64, $e8, $75

Data_835f1: ; 835f1 (20:75f1)
	db $0a, $64, $f5, $75, $85, $01, $84, $86, $64, $f7, $75, $85, $01, $84, $86, $83, $87, $82, $88, $83, $87, $64, $fe, $75

Data_83609: ; 83609 (20:7609)
	db $0c, $64, $f5, $75

Data_8360d: ; 8360d (20:760d)
	db $0c, $85, $01, $85, $02, $86, $84, $85, $03, $86, $84, $85, $02, $86, $84, $85, $03, $86, $84, $85, $02, $86, $84, $85, $03, $86, $84, $64, $10, $76

Data_8362b: ; 8362b (20:762b)
	db $85, $01, $83, $87, $82, $88, $81, $89, $64, $2d, $76

Data_83636: ; 83636 (20:7636)
	db $85, $05, $84, $84, $83, $84, $83, $84, $84, $83, $82, $82, $81, $81, $81, $80, $80, $80, $64, $38, $76

Data_8364b: ; 8364b (20:764b)
	db $06, $64, $fc, $75

Data_8364f: ; 8364f (20:764f)
	db $85, $12, $83, $84, $83, $84, $82, $82, $81, $82, $82, $81, $82, $82, $80, $80, $80

Data_83660: ; 83660 (20:7660)
	db $85, $01, $87, $83, $00

Data_83665: ; 83665 (20:7665)
	db $85, $02, $86, $86, $86, $86, $86, $86, $86, $86, $85, $01, $83, $87, $87, $83, $83, $87, $87, $83, $83, $87, $87, $83, $83, $87, $87, $83, $83, $87, $87, $83, $83, $87, $87, $83, $87, $87, $83, $83, $87, $87, $83, $83, $87, $87, $83, $83, $87, $87, $83, $83, $87, $87, $83, $83, $87, $87, $84, $84, $84, $84, $84, $84, $84, $00

Data_836a7: ; 836a7 (20:76a7)
	db $65, $01, $95, $01, $95, $01, $85, $02, $86, $02, $86, $02, $84, $02, $84, $02, $64, $af, $76

Data_836ba: ; 836ba (20:76ba)
	db $75, $01, $8d, $01, $8d, $01, $85, $02, $86, $02, $86, $02, $84, $02, $84, $02, $64, $c2, $76

Data_836cd: ; 836cd (20:76cd)
	db $7d, $01, $89, $01, $89, $01, $85, $02, $86, $02, $86, $02, $84, $02, $84, $02, $64, $d5, $76

Data_836e0: ; 836e0 (20:76e0)
	db $85, $01, $85, $01, $85, $01, $85, $01, $85, $01, $85, $86, $86, $84, $84, $85, $64, $ea, $76

Data_836f3: ; 836f3 (20:76f3)
	db $85, $01, $85, $01, $85, $01, $85, $86, $86, $86, $84, $84, $84, $85, $64, $f9, $76

Data_83704: ; 83704 (20:7704)
	db $83, $01, $83, $01, $83, $01, $83, $01, $83, $01, $83, $01, $83, $01, $83, $01, $00

Data_83715: ; 83715 (20:7715)
	db $81, $01, $81, $01, $81, $01, $81, $01, $00
