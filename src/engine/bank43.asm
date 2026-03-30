Func_10c000::
	ld b, $00
	ld de, $0
	farcall Func_10c011 ; unnecessary farcall
	ld a, $01
	ld [wcf0b], a
	ret

Func_10c011:
	ldh a, [hWRAMBank]
	push af
	ld a, $02
	wramswitch

	push bc
	push de
	ld b, $00
	ld de, wcf0c
	ld a, $00
	fill_mem $b, $100
	ld b, $02
	ld de, $dd00
	ld a, $00
	fill_mem $40, $100
	pop de
	pop bc

	; d = 0?
	inc d
	dec d
	jr z, .asm_10c04f
	ld a, e
	ld [$dd1f], a
	ld a, d
	ld [$dd20], a
	ld a, b
	ld [$dd21], a
	ld a, $01
	ld [$dd10], a
.asm_10c04f
	ld a, LOW(.PtrTable)
	ld [$dd12], a
	ld a, HIGH(.PtrTable)
	ld [$dd13], a
	ld a, BANK(.PtrTable)
	ld [$dd14], a
	xor a
	call Func_3416
	ld a, e
	ld [$dd1c], a
	ld a, d
	ld [$dd1d], a
	ld a, [$dd14]
	ld [$dd1e], a
	ld a, $03
	ld [$dd19], a
	ld a, $01
	ld [$dd1b], a
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
	ld [$dd1c], a
	ld a, d
	ld [$dd1d], a
	ld a, [$dd14]
	ld [$dd1e], a
	call Func_10c1f0
	xor a
	ld [$dd33], a
	ld [$dd34], a
	ld [$dd35], a
	xor a
	ld [$dd32], a
	ret

Func_10c18d:
	and a
	jr z, .asm_10c1a2
	dec a
	jr z, .asm_10c19e
	dec a
	jr z, .asm_10c19a
	ld de, $ffff
	ret
.asm_10c19a
	ld de, $ff00
	ret
.asm_10c19e
	ld de, $00ff
	ret
.asm_10c1a2
	ld de, $0000
	ret

Func_10c1a6:
	ld a, [$dd1a]
	call Func_10c18d
	ld hl, wc300
REPT 16
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a
ENDR
	ret

Func_10c1f0:
	call Func_3438
	ld a, e
	ld [$dd3a], a
	ld a, d
	ld [$dd3b], a
	ld a, b
	ld [$dd3c], a

	call Func_3438
	ld a, e
	ld [$dd3d], a
	ld a, d
	ld [$dd3e], a
	ld a, b
	ld [$dd3f], a
	ret

Func_10c20f:
	ld a, $02
	ld [$dd10], a
	ld a, $00
	call Func_3416
	ld a, e
	ld [$dd1c], a
	ld a, d
	ld [$dd1d], a
	ld a, [$dd14]
	ld [$dd1e], a
	call Func_10c1a6
	ret

Func_10c22b:
	ldh a, [hWRAMBank]
	push af
	ld a, $02
	wramswitch
	ld a, [$dd10]
	and a
	jp z, .asm_10c24a
	dec a
	jp z, .asm_10c2a2
	dec a
	jp z, .asm_10c251
.asm_10c243
	pop af
	wramswitch
	scf
	ret

.asm_10c24a
	pop af
	wramswitch
	and a
	ret

.asm_10c251
	call Func_3438
	ld a, e
	ld [wcf0d], a
	ld a, d
	ld [wcf0e], a
	ld a, b
	ld [wcf0f], a
	inc c
	dec c
	jr z, .asm_10c26f
	call .Func_10c28d
	ld a, $01
	ld [wcf0c], a
	jp .asm_10c243
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
	jp .asm_10c243

.Func_10c28d:
	ld a, $01
	ld [$dd10], a
	call Func_10c169
	ret

.Func_10c296:
	ld hl, $dd22
	ld a, [hl]
	sub $01
	ld [hli], a
	ld a, [hl]
	sbc $00
	ld [hld], a
	ret

.asm_10c2a2
	ld hl, $dd22
	ld a, [hli]
	or [hl]
	jr z, .asm_10c2b2
.asm_10c2a9
	call .Func_10c296
	call .Func_10c400
	jp .asm_10c243

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

	ld [$dd31], a
	ld l, a
	ld a, [$dd18]
	ld h, a
	add hl, hl
	add hl, hl
	add hl, hl
	ld bc, $531e
	add hl, bc
	ld a, [hli]
	ld [$dd01], a
	ld a, [hli]
	ld [$dd03], a
	ld a, [hli]
	ld [$dd05], a
	ld a, [hli]
	ld [$dd07], a
	ld a, [hli]
	ld [$dd09], a
	ld a, [hli]
	ld [$dd0b], a
	ld a, [hli]
	ld [$dd0d], a
	ld a, [hli]
	ld [$dd0f], a
	xor a
	ld [$dd00], a
	ld [$dd02], a
	ld [$dd04], a
	ld [$dd06], a
	ld [$dd08], a
	ld [$dd0a], a
	ld [$dd0c], a
	ld [$dd0e], a
	ld a, [$dd34]
	cp $08
	jr c, .asm_10c377
	and $07
	ld [$dd34], a
	ld a, [$dd35]
	inc a
	ld [$dd35], a
	call Func_10c5c1
.asm_10c377
	ld a, [$dd34]
	ld b, a
	ld a, $08
	sub b
	call Func_10c655
	call Func_10ca9f
	ld a, [$dd31]
	ld l, a
	ld a, [$dd18]
	ld h, a
	ld bc, $501e
	add hl, bc
	ld a, [hl]
	ld hl, $dd34
	add [hl]
	ld [hl], a
	ld a, [$dd34]
	cp $09
	jr nc, .asm_10c3b6
	ld a, $01
	ld [wcf0c], a
	ld a, [$dd3a]
	ld [wcf0d], a
	ld a, [$dd3b]
	ld [wcf0e], a
	ld a, [$dd3c]
	ld [wcf0f], a
	jr .asm_10c3df
.asm_10c3b6
	ld a, $02
	ld [wcf0c], a
	ld a, [$dd3a]
	ld [wcf0d], a
	ld a, [$dd3b]
	ld [wcf0e], a
	ld a, [$dd3c]
	ld [wcf0f], a
	ld a, [$dd3d]
	ld [wcf10], a
	ld a, [$dd3e]
	ld [wcf11], a
	ld a, [$dd3f]
	ld [wcf12], a
.asm_10c3df
	ld a, [$dd16]
	and a
	jr z, .asm_10c3e8
	call Func_3597
.asm_10c3e8
	ld a, [$dd1b]
	ld [$dd22], a
	xor a
	ld [$dd23], a
	ld a, [$dd32]
	and a
	jr z, .asm_10c3fd
	ld a, $01
	ld [$dd22], a
.asm_10c3fd
	jp .asm_10c2a9

.Func_10c400:
	ldh a, [hJoypadPressed]
	and PAD_A
	ret z ; no A btn
	ld a, [$dd11]
	and $01
	ret z
	ld a, $01
	ld [$dd32], a
	ret

.asm_10c411
	xor a
	ld [$dd10], a
	jp .asm_10c24a

.asm_10c418
	jp .asm_10c24a

.asm_10c41b
	ld a, $00
	ld [$dd18], a
	jp .asm_10c2b2

.asm_10c423
	ld a, $01
	ld [$dd18], a
	jp .asm_10c2b2

.asm_10c42b
	ld a, $02
	ld [$dd18], a
	jp .asm_10c2b2

.asm_10c433
	xor a
	ld [$dd34], a
	ld a, [$dd33]
	inc a
	ld [$dd33], a
	call Func_3416
	ld a, e
	ld [$dd1c], a
	ld a, d
	ld [$dd1d], a
	call Func_10c1a6
	call Func_10c1f0
	jp .asm_10c2b2

.asm_10c452
	call Func_10c20f
	jp .asm_10c243

.asm_10c458
	call Func_33f5
	ld [$dd12], a
	call Func_33f5
	ld [$dd13], a
	call Func_33f5
	ld [$dd14], a
	xor a
	call Func_3416
	ld a, e
	ld [$dd1c], a
	ld a, d
	ld [$dd1d], a
	ld a, [$dd14]
	ld [$dd1e], a
	call Func_10c1f0
	jp .asm_10c2b2

.asm_10c482
	call Func_33f5
	ld [$dd19], a
	jp .asm_10c2b2

.asm_10c48b
	call Func_33f5
	ld [$dd1a], a
	call Func_10c1a6
	jp .asm_10c2b2

.asm_10c497
	call Func_33f5
	ld [$dd1b], a
	jp .asm_10c2b2

.asm_10c4a0
	call Func_33f5
	ld [$dd11], a
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
	ld [$dd1f], a
	ld a, d
	ld [$dd20], a
	ld a, b
	ld [$dd21], a
	ret

.asm_10c4cc
	ld a, [wcf0b]
	ld b, a
	add a
	add b
	ld b, a
	ld a, [$dd1f]
	add b
	ld [$dd1f], a
	ld a, [$dd20]
	adc $00
	ld [$dd20], a
	call .Func_10c4af
	jp .asm_10c2b2

.asm_10c4e8
	call Func_33f5
	ld [$dd24], a
	call Func_33f5
	ld [$dd25], a
	call Func_33f5
	ld [$dd26], a
	call Func_3549
	ld hl, $dd22
	ld a, [hli]
	or [hl]
	jp nz, .asm_10c2a9
	jp .asm_10c2b2

.asm_10c508
	call Func_33f5
	ld [$dd24], a
	call Func_33f5
	ld [$dd25], a
	call Func_33f5
	ld [$dd26], a
	call Func_3568
	jp nc, .asm_10c2b2
	ld a, [$dd1f]
	sub $04
	ld [$dd1f], a
	ld a, [$dd20]
	sbc $00
	ld [$dd20], a
	ld hl, $dd22
	ld a, [hli]
	or [hl]
	jp nz, .asm_10c2a9
	jp .asm_10c243

.asm_10c53b
	call Func_33f5
	ld [$dd15], a
	call Func_33f5
	ld [$dd16], a
	call Func_33f5
	ld [$dd17], a
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
	add hl, hl
	ld a, l
	ld [$dd22], a
	ld a, h
	ld [$dd23], a
	jp .asm_10c243

.asm_10c56b
	ld a, [$dd27]
	cp $09
	jr c, .asm_10c574
.asm_10c572
	jr .asm_10c572
.asm_10c574
	ld c, a
	inc a
	inc a
	inc a
	ld [$dd27], a
	ld hl, $dd28
	ld a, l
	add c
	ld l, a
	jr nc, .asm_10c584
	inc h
.asm_10c584
	ld a, [$dd1f]
	add $03
	ld [hli], a
	ld a, [$dd20]
	adc $00
	ld [hli], a
	ld a, [$dd21]
	ld [hli], a
	call .Func_10c4af
	jp .asm_10c2b2

.asm_10c59a
	ld a, [$dd27]
	and a
	jr nz, .asm_10c5a2
.asm_10c5a0
	jr .asm_10c5a0
.asm_10c5a2
	dec a
	dec a
	dec a
	ld [$dd27], a
	ld c, a
	ld hl, $dd28
	ld a, l
	add c
	ld l, a
	jr nc, .asm_10c5b2
	inc h
.asm_10c5b2
	ld a, [hli]
	ld [$dd1f], a
	ld a, [hli]
	ld [$dd20], a
	ld a, [hli]
	ld [$dd21], a
	jp .asm_10c2b2

Func_10c5c1:
	ld hl, wc300
	ld bc, $10
	ld de, -$10

REPT 16
	add hl, bc
	ld a, [hl]
	add hl, de
	ld [hli], a
ENDR

	ld a, [$dd1a]
	call Func_10c18d
	ld hl, wc310

REPT 8
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a
ENDR

	ld a, [$dd3d]
	ld [$dd3a], a
	ld a, [$dd3e]
	ld [$dd3b], a
	ld a, [$dd3f]
	ld [$dd3c], a
	call Func_3438
	ld a, e
	ld [$dd3d], a
	ld a, d
	ld [$dd3e], a
	ld a, b
	ld [$dd3f], a
	ret

Func_10c655:
	and a
.asm_10c656
	jr z, .asm_10c656
	ld hl, $dd00
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
.asm_10c67b
	jr .asm_10c67b

.asm_10c67d
	inc hl
	ld a, [hld]
	ld b, [hl]
	add a
	rl b
	ld [hl], b
	inc hl
	ld [hli], a
	inc hl
	ld a, [hld]
	ld b, [hl]
	add a
	rl b
	ld [hl], b
	inc hl
	ld [hli], a
	inc hl
	ld a, [hld]
	ld b, [hl]
	add a
	rl b
	ld [hl], b
	inc hl
	ld [hli], a
	inc hl
	ld a, [hld]
	ld b, [hl]
	add a
	rl b
	ld [hl], b
	inc hl
	ld [hli], a
	inc hl
	ld a, [hld]
	ld b, [hl]
	add a
	rl b
	ld [hl], b
	inc hl
	ld [hli], a
	inc hl
	ld a, [hld]
	ld b, [hl]
	add a
	rl b
	ld [hl], b
	inc hl
	ld [hli], a
	inc hl
	ld a, [hld]
	ld b, [hl]
	add a
	rl b
	ld [hl], b
	inc hl
	ld [hli], a
	inc hl
	ld a, [hld]
	ld b, [hl]
	add a
	rl b
	ld [hl], b
	inc hl
	ld [hli], a
	ret

.asm_10c6c6
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
	ret

.asm_10c727
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
	ret

.asm_10c7a0
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
	ret

.asm_10c831
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
	ret

.asm_10c8da
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
	ret

.asm_10c99b
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
	ret

.asm_10ca74
	ld b, $00
	inc hl
	ld a, [hld]
	ld [hli], a
	ld a, b
	ld [hli], a
	inc hl
	ld a, [hld]
	ld [hli], a
	ld a, b
	ld [hli], a
	inc hl
	ld a, [hld]
	ld [hli], a
	ld a, b
	ld [hli], a
	inc hl
	ld a, [hld]
	ld [hli], a
	ld a, b
	ld [hli], a
	inc hl
	ld a, [hld]
	ld [hli], a
	ld a, b
	ld [hli], a
	inc hl
	ld a, [hld]
	ld [hli], a
	ld a, b
	ld [hli], a
	inc hl
	ld a, [hld]
	ld [hli], a
	ld a, b
	ld [hli], a
	inc hl
	ld a, [hld]
	ld [hli], a
	ld a, b
	ld [hli], a
	ret

Func_10ca9f:
	ld a, [$dd19]
	and a
	jp z, .asm_10cab4
	dec a
	jp z, .asm_10cbe5
	dec a
	jp z, .asm_10cd56
	dec a
	jp z, .asm_10cec7
.asm_10cab2
	jr .asm_10cab2

.asm_10cab4
	ld a, [$dd00]
	cpl
	ld b, a
	ld a, [wc300]
	and b
	ld [wc300], a
	ld a, [$c301]
	and b
	ld [$c301], a
	ld a, [$dd02]
	cpl
	ld b, a
	ld a, [$c302]
	and b
	ld [$c302], a
	ld a, [$c303]
	and b
	ld [$c303], a
	ld a, [$dd04]
	cpl
	ld b, a
	ld a, [$c304]
	and b
	ld [$c304], a
	ld a, [$c305]
	and b
	ld [$c305], a
	ld a, [$dd06]
	cpl
	ld b, a
	ld a, [$c306]
	and b
	ld [$c306], a
	ld a, [$c307]
	and b
	ld [$c307], a
	ld a, [$dd08]
	cpl
	ld b, a
	ld a, [$c308]
	and b
	ld [$c308], a
	ld a, [$c309]
	and b
	ld [$c309], a
	ld a, [$dd0a]
	cpl
	ld b, a
	ld a, [$c30a]
	and b
	ld [$c30a], a
	ld a, [$c30b]
	and b
	ld [$c30b], a
	ld a, [$dd0c]
	cpl
	ld b, a
	ld a, [$c30c]
	and b
	ld [$c30c], a
	ld a, [$c30d]
	and b
	ld [$c30d], a
	ld a, [$dd0e]
	cpl
	ld b, a
	ld a, [$c30e]
	and b
	ld [$c30e], a
	ld a, [$c30f]
	and b
	ld [$c30f], a
	ld a, [$dd01]
	cpl
	ld b, a
	ld a, [wc310]
	and b
	ld [wc310], a
	ld a, [$c311]
	and b
	ld [$c311], a
	ld a, [$dd03]
	cpl
	ld b, a
	ld a, [$c312]
	and b
	ld [$c312], a
	ld a, [$c313]
	and b
	ld [$c313], a
	ld a, [$dd05]
	cpl
	ld b, a
	ld a, [$c314]
	and b
	ld [$c314], a
	ld a, [$c315]
	and b
	ld [$c315], a
	ld a, [$dd07]
	cpl
	ld b, a
	ld a, [$c316]
	and b
	ld [$c316], a
	ld a, [$c317]
	and b
	ld [$c317], a
	ld a, [$dd09]
	cpl
	ld b, a
	ld a, [$c318]
	and b
	ld [$c318], a
	ld a, [$c319]
	and b
	ld [$c319], a
	ld a, [$dd0b]
	cpl
	ld b, a
	ld a, [$c31a]
	and b
	ld [$c31a], a
	ld a, [$c31b]
	and b
	ld [$c31b], a
	ld a, [$dd0d]
	cpl
	ld b, a
	ld a, [$c31c]
	and b
	ld [$c31c], a
	ld a, [$c31d]
	and b
	ld [$c31d], a
	ld a, [$dd0f]
	cpl
	ld b, a
	ld a, [$c31e]
	and b
	ld [$c31e], a
	ld a, [$c31f]
	and b
	ld [$c31f], a
	ret

.asm_10cbe5
	ld a, [$dd00]
	ld b, a
	ld a, [wc300]
	or b
	ld [wc300], a
	ld a, [$dd02]
	ld b, a
	ld a, [$c302]
	or b
	ld [$c302], a
	ld a, [$dd04]
	ld b, a
	ld a, [$c304]
	or b
	ld [$c304], a
	ld a, [$dd06]
	ld b, a
	ld a, [$c306]
	or b
	ld [$c306], a
	ld a, [$dd08]
	ld b, a
	ld a, [$c308]
	or b
	ld [$c308], a
	ld a, [$dd0a]
	ld b, a
	ld a, [$c30a]
	or b
	ld [$c30a], a
	ld a, [$dd0c]
	ld b, a
	ld a, [$c30c]
	or b
	ld [$c30c], a
	ld a, [$dd0e]
	ld b, a
	ld a, [$c30e]
	or b
	ld [$c30e], a
	ld a, [$dd00]
	cpl
	ld b, a
	ld a, [$c301]
	and b
	ld [$c301], a
	ld a, [$dd02]
	cpl
	ld b, a
	ld a, [$c303]
	and b
	ld [$c303], a
	ld a, [$dd04]
	cpl
	ld b, a
	ld a, [$c305]
	and b
	ld [$c305], a
	ld a, [$dd06]
	cpl
	ld b, a
	ld a, [$c307]
	and b
	ld [$c307], a
	ld a, [$dd08]
	cpl
	ld b, a
	ld a, [$c309]
	and b
	ld [$c309], a
	ld a, [$dd0a]
	cpl
	ld b, a
	ld a, [$c30b]
	and b
	ld [$c30b], a
	ld a, [$dd0c]
	cpl
	ld b, a
	ld a, [$c30d]
	and b
	ld [$c30d], a
	ld a, [$dd0e]
	cpl
	ld b, a
	ld a, [$c30f]
	and b
	ld [$c30f], a
	ld a, [$dd01]
	ld b, a
	ld a, [wc310]
	or b
	ld [wc310], a
	ld a, [$dd03]
	ld b, a
	ld a, [$c312]
	or b
	ld [$c312], a
	ld a, [$dd05]
	ld b, a
	ld a, [$c314]
	or b
	ld [$c314], a
	ld a, [$dd07]
	ld b, a
	ld a, [$c316]
	or b
	ld [$c316], a
	ld a, [$dd09]
	ld b, a
	ld a, [$c318]
	or b
	ld [$c318], a
	ld a, [$dd0b]
	ld b, a
	ld a, [$c31a]
	or b
	ld [$c31a], a
	ld a, [$dd0d]
	ld b, a
	ld a, [$c31c]
	or b
	ld [$c31c], a
	ld a, [$dd0f]
	ld b, a
	ld a, [$c31e]
	or b
	ld [$c31e], a
	ld a, [$dd01]
	cpl
	ld b, a
	ld a, [$c311]
	and b
	ld [$c311], a
	ld a, [$dd03]
	cpl
	ld b, a
	ld a, [$c313]
	and b
	ld [$c313], a
	ld a, [$dd05]
	cpl
	ld b, a
	ld a, [$c315]
	and b
	ld [$c315], a
	ld a, [$dd07]
	cpl
	ld b, a
	ld a, [$c317]
	and b
	ld [$c317], a
	ld a, [$dd09]
	cpl
	ld b, a
	ld a, [$c319]
	and b
	ld [$c319], a
	ld a, [$dd0b]
	cpl
	ld b, a
	ld a, [$c31b]
	and b
	ld [$c31b], a
	ld a, [$dd0d]
	cpl
	ld b, a
	ld a, [$c31d]
	and b
	ld [$c31d], a
	ld a, [$dd0f]
	cpl
	ld b, a
	ld a, [$c31f]
	and b
	ld [$c31f], a
	ret

.asm_10cd56
	ld a, [$dd00]
	cpl
	ld b, a
	ld a, [wc300]
	and b
	ld [wc300], a
	ld a, [$dd02]
	cpl
	ld b, a
	ld a, [$c302]
	and b
	ld [$c302], a
	ld a, [$dd04]
	cpl
	ld b, a
	ld a, [$c304]
	and b
	ld [$c304], a
	ld a, [$dd06]
	cpl
	ld b, a
	ld a, [$c306]
	and b
	ld [$c306], a
	ld a, [$dd08]
	cpl
	ld b, a
	ld a, [$c308]
	and b
	ld [$c308], a
	ld a, [$dd0a]
	cpl
	ld b, a
	ld a, [$c30a]
	and b
	ld [$c30a], a
	ld a, [$dd0c]
	cpl
	ld b, a
	ld a, [$c30c]
	and b
	ld [$c30c], a
	ld a, [$dd0e]
	cpl
	ld b, a
	ld a, [$c30e]
	and b
	ld [$c30e], a
	ld a, [$dd00]
	ld b, a
	ld a, [$c301]
	or b
	ld [$c301], a
	ld a, [$dd02]
	ld b, a
	ld a, [$c303]
	or b
	ld [$c303], a
	ld a, [$dd04]
	ld b, a
	ld a, [$c305]
	or b
	ld [$c305], a
	ld a, [$dd06]
	ld b, a
	ld a, [$c307]
	or b
	ld [$c307], a
	ld a, [$dd08]
	ld b, a
	ld a, [$c309]
	or b
	ld [$c309], a
	ld a, [$dd0a]
	ld b, a
	ld a, [$c30b]
	or b
	ld [$c30b], a
	ld a, [$dd0c]
	ld b, a
	ld a, [$c30d]
	or b
	ld [$c30d], a
	ld a, [$dd0e]
	ld b, a
	ld a, [$c30f]
	or b
	ld [$c30f], a
	ld a, [$dd01]
	cpl
	ld b, a
	ld a, [wc310]
	and b
	ld [wc310], a
	ld a, [$dd03]
	cpl
	ld b, a
	ld a, [$c312]
	and b
	ld [$c312], a
	ld a, [$dd05]
	cpl
	ld b, a
	ld a, [$c314]
	and b
	ld [$c314], a
	ld a, [$dd07]
	cpl
	ld b, a
	ld a, [$c316]
	and b
	ld [$c316], a
	ld a, [$dd09]
	cpl
	ld b, a
	ld a, [$c318]
	and b
	ld [$c318], a
	ld a, [$dd0b]
	cpl
	ld b, a
	ld a, [$c31a]
	and b
	ld [$c31a], a
	ld a, [$dd0d]
	cpl
	ld b, a
	ld a, [$c31c]
	and b
	ld [$c31c], a
	ld a, [$dd0f]
	cpl
	ld b, a
	ld a, [$c31e]
	and b
	ld [$c31e], a
	ld a, [$dd01]
	ld b, a
	ld a, [$c311]
	or b
	ld [$c311], a
	ld a, [$dd03]
	ld b, a
	ld a, [$c313]
	or b
	ld [$c313], a
	ld a, [$dd05]
	ld b, a
	ld a, [$c315]
	or b
	ld [$c315], a
	ld a, [$dd07]
	ld b, a
	ld a, [$c317]
	or b
	ld [$c317], a
	ld a, [$dd09]
	ld b, a
	ld a, [$c319]
	or b
	ld [$c319], a
	ld a, [$dd0b]
	ld b, a
	ld a, [$c31b]
	or b
	ld [$c31b], a
	ld a, [$dd0d]
	ld b, a
	ld a, [$c31d]
	or b
	ld [$c31d], a
	ld a, [$dd0f]
	ld b, a
	ld a, [$c31f]
	or b
	ld [$c31f], a
	ret

.asm_10cec7
	ld a, [$dd00]
	ld b, a
	ld a, [wc300]
	or b
	ld [wc300], a
	ld a, [$c301]
	or b
	ld [$c301], a
	ld a, [$dd02]
	ld b, a
	ld a, [$c302]
	or b
	ld [$c302], a
	ld a, [$c303]
	or b
	ld [$c303], a
	ld a, [$dd04]
	ld b, a
	ld a, [$c304]
	or b
	ld [$c304], a
	ld a, [$c305]
	or b
	ld [$c305], a
	ld a, [$dd06]
	ld b, a
	ld a, [$c306]
	or b
	ld [$c306], a
	ld a, [$c307]
	or b
	ld [$c307], a
	ld a, [$dd08]
	ld b, a
	ld a, [$c308]
	or b
	ld [$c308], a
	ld a, [$c309]
	or b
	ld [$c309], a
	ld a, [$dd0a]
	ld b, a
	ld a, [$c30a]
	or b
	ld [$c30a], a
	ld a, [$c30b]
	or b
	ld [$c30b], a
	ld a, [$dd0c]
	ld b, a
	ld a, [$c30c]
	or b
	ld [$c30c], a
	ld a, [$c30d]
	or b
	ld [$c30d], a
	ld a, [$dd0e]
	ld b, a
	ld a, [$c30e]
	or b
	ld [$c30e], a
	ld a, [$c30f]
	or b
	ld [$c30f], a
	ld a, [$dd01]
	ld b, a
	ld a, [wc310]
	or b
	ld [wc310], a
	ld a, [$c311]
	or b
	ld [$c311], a
	ld a, [$dd03]
	ld b, a
	ld a, [$c312]
	or b
	ld [$c312], a
	ld a, [$c313]
	or b
	ld [$c313], a
	ld a, [$dd05]
	ld b, a
	ld a, [$c314]
	or b
	ld [$c314], a
	ld a, [$c315]
	or b
	ld [$c315], a
	ld a, [$dd07]
	ld b, a
	ld a, [$c316]
	or b
	ld [$c316], a
	ld a, [$c317]
	or b
	ld [$c317], a
	ld a, [$dd09]
	ld b, a
	ld a, [$c318]
	or b
	ld [$c318], a
	ld a, [$c319]
	or b
	ld [$c319], a
	ld a, [$dd0b]
	ld b, a
	ld a, [$c31a]
	or b
	ld [$c31a], a
	ld a, [$c31b]
	or b
	ld [$c31b], a
	ld a, [$dd0d]
	ld b, a
	ld a, [$c31c]
	or b
	ld [$c31c], a
	ld a, [$c31d]
	or b
	ld [$c31d], a
	ld a, [$dd0f]
	ld b, a
	ld a, [$c31e]
	or b
	ld [$c31e], a
	ld a, [$c31f]
	or b
	ld [$c31f], a
	ret
; 0x10cfe8
