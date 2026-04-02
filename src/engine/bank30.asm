SECTION "Bank 30@42c0", ROMX[$42c0], BANK[$30]

Func_c02c0::
	call Func_1426
	call Func_13eb

	ld e, LCDC_OFF
	farcall Func_c5e6d

	farcall Func_c5c31
	farcall Func_c5c44
	farcall Func_c6256
	farcall Func_c5c6e
	farcall Func_c5bea

	ld hl, wVBlankHandler
	ld [hl], $c3 ; jp
	inc hl
	ld [hl], LOW(Func_3298)
	inc hl
	ld [hl], HIGH(Func_3298)

	call ClearOAM

	ld e, LCDC_BG_ON | LCDC_OBJ_ON | LCDC_WIN_ON | LCDC_ON
	farcall Func_c5e6d

	ld a, GAMESTATE_1C
	ldh [hGameState], a
	ret

; input:
; - b = song ID
Func_c0307:
	ld a, [wc601]
	and a
	ld a, b
	call z, Func_13a1
	ret

Func_c0310:
	push hl
	push bc
	push de
	ld a, [wcea2]
	add a
	ld l, a
	ld h, $00
	ld bc, Data_c034d
	add hl, bc
	ld b, [hl]
	call Func_c0307
	pop de
	pop bc
	pop hl
	ret

Func_c0326:
	push hl
	push bc
	push de
	ld a, [wcea2]
	add a
	ld l, a
	ld h, $00
	ld bc, Data_c034d + $1
	add hl, bc
	ld b, [hl]
	call Func_c0307
	pop de
	pop bc
	pop hl
	ret

Func_c033c:
	push hl
	push bc
	push de
	ld a, e
	add a
	ld l, a
	ld h, $00
	add hl, bc
	ld b, [hl]
	call Func_c0307
	pop de
	pop bc
	pop hl
	ret

; these are supposed to be song IDs but they
; go way out of bounds of the actual song list,
; maybe scrapped Panel de Pon music?
Data_c034d:
	db MUSIC_PANEL_DE_PON2, MUSIC_PANEL_DE_PON3
	db $23, $24
	db $25, $26
	db $27, $28
	db $29, $2a
	db $2b, $2c
	db $2d, $2e
	db $2f, $30
	db $31, $32
	db $33, $34
	db $33, $34
	db $35, $36
	db $37, $38

Func_c0367::
	xor a
	ldh [rIF], a
	ld a, IE_VBLANK | IE_TIMER | IE_SERIAL
	ldh [hIE], a
	ldh [rIE], a

.asm_c0370
	ldh a, [hJoypadPressed]
	bit B_PAD_START, a
	jr z, .asm_c0387
	; pressed Start
	ldh a, [hffeb]
	and a
	jr nz, .asm_c0382
	ld a, $01
	ld [w1d867], a
	jr .asm_c0387
.asm_c0382
	ld a, $01
	ld [wcd72], a
.asm_c0387
	call Func_c1f13
	ld a, [w1d864]
	and a
	jr z, .asm_c039d
	farcall Func_c513d
	ld a, [wce9f]
	and a
	jr nz, .asm_c0370
	ret
.asm_c039d
	ld a, [w1d867]
	and a
	jr z, .asm_c03c4
	farcall Func_109c8
	ld a, [wcec4]
	cp $00
	jr z, .asm_c03c4
	cp $01
	jr z, .asm_c03bc
	cp $02
	jr z, .asm_c03bc
	cp $03
	jr z, .asm_c03c4
.asm_c03bc
	ld a, GAMESTATE_LOAD_PDP_MENU
	ldh [hGameState], a
	xor a
	ldh [hVBlankTrampolinePtr + 1], a
	ret
.asm_c03c4
	farcall Func_13873
	call Func_c1f1f
	call Func_c0407
	call Func_c27c1
	call Func_c2b07
	call Func_c2845
	call Func_c2875
	call Func_c050a
	call Func_c04e9
	call Func_c0fac
	call Func_c237f
	call Func_c22ec
	farcall Func_10f62
	call Func_c2bfa
	call Func_c3312
	call Func_c2b85
	call Func_39d
	call Func_c0403
	jp .asm_c0370

Func_c0403:
	call Func_3272
	ret

Func_c0407:
	ld a, [$d8b6]
	and a
	jr z, .asm_c0425
	ld a, [$d8b7]
	and a
	jr z, .asm_c0425
	ld a, [w1d86c]
	and a
	jr nz, .asm_c0425
	ld a, [$d8bd]
	and a
	jr nz, .asm_c0425
	ld a, $01
	ld [wced8], a
	ret
.asm_c0425
	xor a
	ld [wced8], a
	ret

Func_c042a:
	ld a, [$d89e]
	and a
	ret z
	ld a, [w1d864]
	and a
	ret nz
	ld a, [wGameMode]
	cp GAMEMODE_TIME_ZONE
	jr z, .asm_c049e
	cp GAMEMODE_UNK7
	jr z, .asm_c049e
	cp GAMEMODE_PUZZLE
	ret z
	cp GAMEMODE_CHALLENGE
	jp z, .asm_c04d7
.asm_c0447
	ld a, [$d87e]
	and a
	jr nz, .asm_c0452
	xor a
	ld [w1d865], a
	ret
.asm_c0452
	ld hl, $d8b8
	ld a, [hli]
	or [hl]
	ret nz
	ld a, [wced7]
	and a
	ret nz
	ld a, [wced8]
	and a
	ret z
	ldh a, [hJoypadDown]
	bit B_PAD_B, a
	jr nz, .asm_c0479
	ld a, [w1d85f]
	ld b, a
	ld a, [w1d865]
	cp b
	jr z, .asm_c0479
	jr nc, .asm_c0479
	inc a
	ld [w1d865], a
	ret
.asm_c0479
	ld a, $01
	ld [w1d864], a
	ld a, [wGameMode]
	cp GAMEMODE_CHALLENGE
	jr z, .asm_c0493
	cp GAMEMODE_UNK6
	jr z, .asm_c0493
	cp GAMEMODE_UNK7
	jr z, .asm_c0493
	ld a, $00
	ld [w1d866], a
	ret
.asm_c0493
	ld a, $02
	ld [w1d866], a
	ld a, $01
	ld [wcd6e], a
	ret
.asm_c049e
	ld a, [$d89a]
	and a
	jr nz, .asm_c04bc
	ld a, [$d89c]
	and a
	jr nz, .asm_c04bc
	ld a, [$d89b]
	cp $11
	jr nc, .asm_c04bc
	ld a, [wc7ce]
	and a
	jr nz, .asm_c04bc
	ld a, $20
	ld [wc7cb], a
.asm_c04bc
	ld hl, $d89a
	ld a, [hli]
	or [hl]
	inc hl
	or [hl]
	inc hl
	or [hl]
	jr nz, .asm_c0447
	ld a, $01
	ld [w1d864], a
	ld a, $04
	ld [w1d866], a
	ld a, $03
	ld [wcd70], a
	ret

.asm_c04d7
	ld a, [wcd46]
	and a
	jp nz, .asm_c0447
	ld a, $01
	ld [w1d864], a
	ld a, $01
	ld [w1d866], a
	ret

Func_c04e9:
	call Func_c042a
	call Func_c059e
	call Func_c06a7
	call Func_c0d31
	call Func_c0dcf
	call Func_c0961
	call Func_c0ab1
	ret

Func_c04ff:
	ld a, [$da4d]
	and a
	jr z, .asm_c0509
	dec a
	ld [$da4d], a
.asm_c0509
	ret

Func_c050a:
	ld hl, $d8bb
	ld a, [hld]
	or [hl]
	ld d, a
	dec hl
	ld a, [hld]
	or [hl]
	or d
	jr z, .asm_c0580
	ld a, [hli]
	ld [$d8ba], a
	ld a, [hld]
	ld [$d8bb], a
	ld a, [hli]
	or [hl]
	dec hl
	jr z, .asm_c0596
	ld b, $00
	ld a, [$d8b6]
	and a
	jr z, .asm_c0532
	ld a, [$d8b7]
	and a
	jr z, .asm_c0532
	inc b
.asm_c0532
	ld a, [hl]
	sub b
	ld [hli], a
	ld a, [hl]
	sbc $00
	ld [hld], a
	ld a, [hli]
	sub $58
	ld a, [hld]
	sbc $02
	jr nc, .asm_c0563
	ld a, [hli]
	sub $2c
	ld a, [hld]
	sbc $01
	jr nc, .asm_c055d
	ld a, [hli]
	sub $78
	ld a, [hld]
	sbc $00
	jr nc, .asm_c0557
	ld b, $09
	ld c, $05
	jr .asm_c0567
.asm_c0557
	ld b, $0d
	ld c, $07
	jr .asm_c0567
.asm_c055d
	ld b, $13
	ld c, $0a
	jr .asm_c0567
.asm_c0563
	ld b, $1d
	ld c, $0f
.asm_c0567
	ld a, [$d8bc]
	cp $00
	jr c, .asm_c0571
	cp b
	jr c, .asm_c0575
.asm_c0571
	ld a, $00
	jr .asm_c0576
.asm_c0575
	inc a
.asm_c0576
	ld [$d8bc], a
	and a
	jr z, .asm_c0592
	cp c
	jr z, .asm_c059a
	ret
.asm_c0580
	ld a, [wcefa]
	and a
	ret z
	dec a
	ld [wcefa], a
	and $1f
	jr z, .asm_c0596
	cp $10
	jr z, .asm_c0592
	ret
.asm_c0592
	call Func_c32d9
	ret
.asm_c0596
	call Func_c325c
	ret
.asm_c059a
	call Func_c328d
	ret

Func_c059e:
	ret

Func_c059f:
	ld a, [wGameMode]
	cp GAMEMODE_MARATHON
	jr z, .asm_c05af
	cp GAMEMODE_TIME_ZONE
	jr z, .asm_c05af
	cp GAMEMODE_UNK7
	jr z, .asm_c05af
	ret
.asm_c05af
	push hl
	push bc
	push de
	ld a, [$d8ac]
	dec a
	jr z, .asm_c05bd
	ld [$d8ac], a
	jr .asm_c05d6
.asm_c05bd
	ld a, [w1d8ab]
	cp $63
	jr z, .asm_c05ce
	jr c, .asm_c05ca
	ld a, $63
	jr .asm_c05cb
.asm_c05ca
	inc a
.asm_c05cb
	ld [w1d8ab], a
.asm_c05ce
	call Func_c05da
	ld a, $b4
	ld [wcefa], a
.asm_c05d6
	pop de
	pop bc
	pop hl
	ret

Func_c05da:
	ld a, [wcebc]
	and a
	jr nz, .asm_c05eb
	ld a, [w1d8ab]
	cp $33
	jr c, .asm_c05ee
	ld a, $32
	jr .asm_c05ee
.asm_c05eb
	ld a, [w1d8ab]
.asm_c05ee
	add a
	ld l, a
	ld h, $00
	ld de, $63a2
	add hl, de
	ld a, $03
	call GetFarByte
	ld [$d8af], a
	inc hl
	ld a, $03
	call GetFarByte
	ld [$d8b0], a
	ld a, [w1d8ab]
	add a
	ld l, a
	ld h, $00
	ld de, $646a
	add hl, de
	ld a, $03
	call GetFarByte
	ld [$d8ac], a
	ret
; 0xc061b

SECTION "Bank 30@461b", ROMX[$461b], BANK[$30]

Func_c061b:
	ld a, [wceba]
	and a
	jr nz, .asm_c0626
	ld a, [wced8]
	and a
	ret z
.asm_c0626
	ldh a, [hJoypadDown]
	bit B_PAD_B, a
	jr z, .asm_c0657
	ld a, [$d8b3]
	and a
	jr nz, .asm_c0657
	ld a, $01
	ld [$d8b3], a
	ld a, [$d8b4]
	and a
	jr nz, .asm_c0657
	push bc
	push de
	push hl
	ld de, $d885
	ld hl, $76d8
	ld bc, $d88c
	call Func_a4f
	pop hl
	pop de
	pop bc
	call Func_c31fe
	ld a, $01
	ld [$d8b4], a
.asm_c0657
	ld a, [$d8b3]
	and a
	jr z, .asm_c067d
	ld a, [wceba]
	and a
	jr z, .asm_c0672
	ld a, [$d8b7]
	and a
	ret z
	ld a, [w1d86c]
	and a
	ret nz
	ld a, [$d8bd]
	and a
	ret nz
.asm_c0672
	ld bc, $1000
	ld hl, $d8b1
	xor a
	ld [hli], a
	ld [hli], a
	jr .asm_c0688
.asm_c067d
	ld a, [wced8]
	and a
	ret z
	ld hl, $d8af
	ld a, [hli]
	ld b, [hl]
	ld c, a
.asm_c0688
	ld hl, $d8b1
	ld a, [hl]
	add c
	ld [hli], a
	ld a, [hl]
	adc b
	ld [hl], a
	swap a
	and $0f
	jr z, .asm_c06a6
.asm_c0697
	push af
	call Func_c06e7
	pop af
	dec a
	jr nz, .asm_c0697
	ld hl, $d8b2
	ld a, [hl]
	and $0f
	ld [hl], a
.asm_c06a6
	ret

Func_c06a7:
	ld a, [wced9]
	and a
	jr z, .asm_c06d3
	ld a, [wGameMode]
	cp GAMEMODE_PUZZLE
	jr z, .asm_c06d3
	ld a, [$d8b5]
	and a
	jr nz, .asm_c06d3
	ld hl, $d8b8
	ldh a, [hJoypadDown]
	bit B_PAD_B, a
	jr z, .asm_c06c6
	xor a
	ld [hli], a
	ld [hld], a
.asm_c06c6
	ld a, [hli]
	or [hl]
	jr nz, .asm_c06d3
	ld a, [$d87e]
	and a
	jr nz, .asm_c06d3
	call Func_c061b
.asm_c06d3
	ld a, [wced7]
	ld b, a
	ld a, [wced6]
	add b
	ldh [hSCY], a
	ld hl, $d8b5
	ld a, [hl]
	and a
	jr z, .asm_c06e6
	dec a
	ld [hl], a
.asm_c06e6
	ret

Func_c06e7:
	ld a, [wced6]
	inc a
	and $0f
	ld [wced6], a
	and a
	call z, Func_c06f5
	ret

Func_c06f5:
	call Func_c0949

	; overwrite all block rows with row right below it
	ld c, BOARD_HEIGHT
	ld hl, wBlocks + 6 * BLOCK_STRUCT_SIZE
	ld de, wBlocks
.loop_rows
	REPT BOARD_WIDTH
		REPT BLOCK_STRUCT_SIZE
			ld a, [hli]
			ld [de], a
			inc de
		ENDR
	ENDR
	dec c
	jr nz, .loop_rows

	ld a, [wCursorY]
	dec a
	cp BOARD_HEIGHT + 1
	jr nc, .asm_c077a
	ld [wCursorY], a
.asm_c077a
	call Func_c1b40
	call Func_c04ff
	call w1d856
	call Func_c3110
	xor a
	ld [$d8b3], a
	ld [$d8b4], a
	ld a, $04
	ld [$d8b5], a
	ret
; 0xc0793

SECTION "Bank 30@4942", ROMX[$4942], BANK[$30]

Func_c0942:
	call w1d856
	call Func_c3110
	ret

Func_c0949:
	ld hl, w1d268 + BLOCKSTRUCT_UNK1
	ld de, $5
	ld c, BOARD_WIDTH
	ld b, $01
.loop_blocks
	ld a, [hl]
	and a
	jr z, .asm_c095c
	sub $3a
	ld [hli], a
	ld a, b
	ld [hl], a
.asm_c095c
	add hl, de
	dec c
	jr nz, .loop_blocks
	ret

Func_c0961:
	ld a, [w1d864]
	and a
	ret nz

	; did player press A?
	ldh a, [hJoypadPressed]
	bit B_PAD_A, a
	ret z ; no A btn

	ld a, [wced5]
	and a
	ret nz

	ld a, [wCursorY]
	ld l, a
	add a
	add l
	add a ; *6
	ld l, a
	ld a, [wCursorX]
	add l
	ld l, a ; wCursorX + BOARD_WIDTH * wCursorY
	ld h, $00
	ld e, l
	ld d, h
	add hl, hl
	add hl, de
	add hl, hl ; *6
	ld de, wBlocks
	add hl, de
.asm_c0988
	; do we have blocks to move?
	ld b, [hl] ; BLOCKSTRUCT_UNK0
	ld de, BLOCK_STRUCT_SIZE
	add hl, de
	ld a, [hl] ; BLOCKSTRUCT_UNK0
	ld de, -BLOCK_STRUCT_SIZE
	add hl, de
	or b
	ret z ; no blocks

	; at least one of the cursored spaces has a block
	ld a, [hl] ; BLOCKSTRUCT_UNK0
	ld de, BLOCK_STRUCT_SIZE
	add hl, de
	cp $09
	ret z
	cp $0a
	ret z
	cp $0b
	jr c, .asm_c09a8
	cp $26
	jr nc, .asm_c09a8
	ret
.asm_c09a8
	ld a, [hl] ; BLOCKSTRUCT_UNK0
	ld de, -(BLOCK_STRUCT_SIZE - BLOCKSTRUCT_UNK2)
	add hl, de
	cp $09
	ret z
	cp $0a
	ret z
	cp $0b
	jr c, .asm_c09bc
	cp $26
	jr nc, .asm_c09bc
	ret

.asm_c09bc
	ld a, [hl] ; BLOCKSTRUCT_UNK2
	ld de, BLOCK_STRUCT_SIZE
	add hl, de
	cp $00
	jr z, .asm_c09cb
	cp $01
	jr z, .asm_c09f1
	jr .asm_c09ff
.asm_c09cb
	; check block above
	ld de, -((BOARD_WIDTH + 1) * BLOCK_STRUCT_SIZE)
	add hl, de
	ld a, [hl] ; BLOCKSTRUCT_UNK2
	ld de, (BOARD_WIDTH + 1) * BLOCK_STRUCT_SIZE
	add hl, de
	cp $01
	jr nz, .asm_c09ff
	ld de, -((BOARD_WIDTH + 1) * BLOCK_STRUCT_SIZE + BLOCKSTRUCT_UNK2)
	add hl, de
	ld a, [hl] ; BLOCKSTRUCT_UNK0
	ld de, (BOARD_WIDTH + 1) * BLOCK_STRUCT_SIZE + BLOCKSTRUCT_UNK2
	add hl, de
	cp $09
	jr z, .asm_c09ff
	cp $0a
	jr z, .asm_c09ff
	cp $0b
	ret c
	cp $26
	ret nc
	jr .asm_c09ff

.asm_c09f1
	; check block below
	ld de, (BOARD_WIDTH - 1) * BLOCK_STRUCT_SIZE
	add hl, de
	ld a, [hl]
	ld de, -((BOARD_WIDTH - 1) * BLOCK_STRUCT_SIZE)
	add hl, de
	cp $00
	jr nz, .asm_c09ff
	ret

.asm_c09ff
	ld a, [hl] ; BLOCKSTRUCT_UNK2
	ld de, -BLOCK_STRUCT_SIZE
	add hl, de
	cp $00
	jr z, .asm_c0a0e
	cp $01
	jr z, .asm_c0a34
	jr .asm_c0a42
.asm_c0a0e
	; check block above
	ld de, -((BOARD_WIDTH - 1) * BLOCK_STRUCT_SIZE)
	add hl, de
	ld a, [hl] ; BLOCKSTRUCT_UNK2
	ld de, (BOARD_WIDTH - 1) * BLOCK_STRUCT_SIZE
	add hl, de
	cp $01
	jr nz, .asm_c0a42
	ld de, -((BOARD_WIDTH - 1) * BLOCK_STRUCT_SIZE + BLOCKSTRUCT_UNK2)
	add hl, de
	ld a, [hl] ; BLOCKSTRUCT_UNK0
	ld de, (BOARD_WIDTH - 1) * BLOCK_STRUCT_SIZE + BLOCKSTRUCT_UNK2
	add hl, de
	cp $09
	jr z, .asm_c0a42
	cp $0a
	jr z, .asm_c0a42
	cp $0b
	ret c
	cp $26
	ret nc
	jr .asm_c0a42
.asm_c0a34
	; check block below
	ld de, (BOARD_WIDTH + 1) * BLOCK_STRUCT_SIZE
	add hl, de
	ld a, [hl] ; BLOCKSTRUCT_UNK2
	ld de, -((BOARD_WIDTH + 1) * BLOCK_STRUCT_SIZE)
	add hl, de
	cp $00
	jr nz, .asm_c0a42
	ret
.asm_c0a42
	ld a, [hl] ; BLOCKSTRUCT_UNK2
	ld de, BLOCK_STRUCT_SIZE
	add hl, de
	cp $04
	ret z
	cp $05
	ret z
	cp $06
	ret z
	cp $08
	ret z
	ld a, [hl] ; BLOCKSTRUCT_UNK2
	ld de, -((BOARD_WIDTH + 1) * BLOCK_STRUCT_SIZE)
	add hl, de
	cp $04
	ret z
	cp $05
	ret z
	cp $06
	ret z
	cp $08
	ret z
	ld a, [hl] ; BLOCKSTRUCT_UNK2
	ld de, BLOCK_STRUCT_SIZE
	add hl, de
	cp $04
	ret z
	cp $05
	ret z
	ld a, [hl] ; BLOCKSTRUCT_UNK2
	ld de, (BOARD_WIDTH - 1) * BLOCK_STRUCT_SIZE - BLOCKSTRUCT_UNK2
	add hl, de
	cp $04
	ret z
	cp $05
	ret z

	ld a, [w1d86c]
	and a
	jr z, .asm_c0a8c
	push hl
	call Func_c0bfc
	xor a
	ld [w1d86c], a
	pop hl
	jp .asm_c0988
.asm_c0a8c
	ld a, $01
	ld [w1d86c], a
	ld a, [wCursorX]
	ld [w1d86d], a
	ld a, [wCursorY]
	ld [w1d86e], a
	ld a, l
	ld [w1d86f + 0], a
	ld a, h
	ld [w1d86f + 1], a
	ld a, [wc7ce]
	and a
	jr nz, .asm_c0ab0
	ld a, $c3
	ld [wc7cb], a
.asm_c0ab0
	ret

Func_c0ab1:
	ld a, [w1d86c]
	and a
	ret z
	dec a
	jp z, Func_c0aeb
	dec a
	jp z, Func_c0bd5
	xor a
	ld [w1d86c], a
	ret
; 0xc0ac3

SECTION "Bank 30@4aeb", ROMX[$4aeb], BANK[$30]

Func_c0aeb:
	ld hl, w1d86f
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ld l, c
	ld h, b
	ld l, [hl] ; BLOCKSTRUCT_UNK0
	ld h, $00
	add hl, hl
	add hl, hl ; *4
	ld de, $4000
	add hl, de
	ld a, [hli]
	ld [$d876], a
	ld a, [hli]
	ld [$d877], a
	ld a, [hli]
	ld [$d878], a
	ld a, [hli]
	ld [$d879], a

	ld l, c
	ld h, b
	ld de, BLOCK_STRUCT_SIZE
	add hl, de
	ld l, [hl] ; BLOCKSTRUCT_UNK0
	ld h, $00
	add hl, hl
	add hl, hl ; *4
	ld de, $4000
	add hl, de
	ld a, [hli]
	ld [$d87a], a
	ld a, [hli]
	ld [$d87b], a
	ld a, [hli]
	ld [$d87c], a
	ld a, [hli]
	ld [$d87d], a

	ld a, [w1d862 + 0]
	ld [w1d871 + 0], a
	ld a, [w1d862 + 1]
	ld [w1d871 + 1], a

	ld a, [w1d86d]
	add a
	add a
	add a
	add a ; *16
	add $08
	ld [$d873], a
	add $10
	ld [$d874], a
	ld a, [w1d86e]
	add a
	add a
	add a
	add a ; *16
	add $10
	ld [$d875], a

	; swap block data
	ld l, c
	ld h, b
	ld de, -BLOCK_STRUCT_SIZE
	ld bc, BLOCK_STRUCT_SIZE
	REPT BLOCK_STRUCT_SIZE - 1
		ld a, [hl]
		add hl, bc
		ld b, [hl]
		add hl, de
		ld [hl], b
		ld bc, BLOCK_STRUCT_SIZE
		add hl, bc
		ld [hli], a
		add hl, de
	ENDR
	ld a, [hl]
	add hl, bc
	ld b, [hl]
	add hl, de
	ld [hl], b
	ld bc, BLOCK_STRUCT_SIZE
	add hl, bc
	ld [hli], a

	ld de, $fff4
	add hl, de
	ld c, l
	ld b, h
	call .Func_c0bb6
	ld l, c
	ld h, b
	ld de, $6
	add hl, de
	call .Func_c0bb6
	ld hl, w1d86c
	inc [hl]
	jp Func_c0bd5

.Func_c0bb6:
	ld a, [hli]
	and a
	ret z
	xor a
	ld [hli], a
	inc hl
	inc hl
	ld a, [hl]
	and $87
	ld [hl], a
	ld de, $22
	add hl, de
	ld a, [hl]
	ld de, $ffdc
	add hl, de
	and a
	jr nz, .asm_c0bd1
	ld a, $04
	ld [hl], a
	ret
.asm_c0bd1
	ld a, $03
	ld [hl], a
	ret

Func_c0bd5:
	ld a, [w1d871 + 0]
	ld l, a
	ld a, [w1d871 + 1]
	ld h, a
	ld a, [hli]
	and a
	jr z, Func_c0bfc
	ld e, a
	ld a, l
	ld [w1d871 + 0], a
	ld a, h
	ld [w1d871 + 1], a
	ld a, [$d873]
	add e
	ld [$d873], a
	ld a, [$d874]
	sub e
	ld [$d874], a
	call Func_c0c88
	ret

Func_c0bfc:
	ld hl, w1d86c
	inc [hl]
	ld a, [w1d86f + 0]
	ld l, a
	ld a, [w1d86f + 1]
	ld h, a
	push hl
	call Func_c0c15
	pop hl
	ld de, $6
	add hl, de
	call Func_c0c15
	ret

Func_c0c15:
	inc hl
	inc hl
	ld a, [hld]
	dec hl
	cp $00
	jr z, .asm_c0c26
	cp $03
	jr z, .asm_c0c39
	cp $04
	jr z, .asm_c0c39
	ret
.asm_c0c26
	ld de, $ffdc
	add hl, de
	ld c, l
	ld b, h
	ld a, [w1d851]
	ld d, a
	ld e, $00
	farcall Func_12d91
	ret
.asm_c0c39
	ld a, [hli]
	cp $09
	ret z
	cp $0a
	ret z
	cp $0b
	jr c, .asm_c0c49
	cp $26
	jr nc, .asm_c0c49
	ret
.asm_c0c49
	ld [hl], a
	ld de, $25
	add hl, de
	ld a, [hl]
	ld de, $ffdc
	add hl, de
	cp $00
	jr z, .asm_c0c75
	cp $01
	jr z, .asm_c0c71
	cp $02
	jr z, .asm_c0c71
	cp $05
	jr z, .asm_c0c75
	cp $06
	jr z, .asm_c0c75
	cp $07
	jr z, .asm_c0c75
	cp $08
	jr z, .asm_c0c71
	debug_loop
.asm_c0c71
	ld a, $01
	ld [hl], a
	ret
.asm_c0c75
	ld a, $01
	ld [hld], a
	dec hl
	ld c, l
	ld b, h
	ld a, [w1d851]
	ld d, a
	ld e, $00
	farcall Func_12d91
	ret

Func_c0c88:
	ld a, [wced7]
	ld e, a
	ld a, [wced6]
	ld d, a
	xor a
	sub d
	sub e
	ld e, a
	ld a, [$d876]
	and a
	jp z, .asm_c0ce2
	ld a, [$d873]
	ld b, a
	ld a, [$d875]
	add e
	ld c, a
	ld d, $00
	; do we have space for 4 OAMs?
	ldh a, [hVirtualOAMSize]
	cp OAM_SIZE - 3 * OBJ_SIZE
	jr nc, .asm_c0ce2 ; no
	ld l, a
	ld h, HIGH(wVirtualOAM)
	ld a, c
	ld [hli], a ; y
	ld a, b
	ld [hli], a ; x
	ld a, [$d876]
	ld [hli], a ; tile index
	ld a, d
	ld [hli], a ; attribute

	ld a, c
	ld [hli], a ; y
	ld a, b
	add $08
	ld [hli], a ; x
	ld a, [$d877]
	ld [hli], a ; tile index
	ld a, d
	ld [hli], a ; attribute

	ld a, c
	add $08
	ld [hli], a ; y
	ld a, b
	ld [hli], a ; x
	ld a, [$d878]
	ld [hli], a ; tile index
	ld a, d
	ld [hli], a ; attribute

	ld a, c
	add $08
	ld [hli], a ; y
	ld a, b
	add $08
	ld [hli], a ; x
	ld a, [$d879]
	ld [hli], a ; tile index
	ld a, d
	ld [hli], a ; attribute

	ld a, l
	ldh [hVirtualOAMSize], a

.asm_c0ce2
	ld a, [$d87a]
	and a
	jp z, .done
	ld a, [$d874]
	ld b, a
	ld a, [$d875]
	add e
	ld c, a
	ld d, $00
	; do we have space for 4 OAMs?
	ldh a, [hVirtualOAMSize]
	cp OAM_SIZE - 3 * OBJ_SIZE
	jr nc, .done ; no
	ld l, a
	ld h, HIGH(wVirtualOAM)

	ld a, c
	ld [hli], a ; y
	ld a, b
	ld [hli], a ; x
	ld a, [$d87a]
	ld [hli], a ; tile index
	ld a, d
	ld [hli], a ; attribute

	ld a, c
	ld [hli], a ; y
	ld a, b
	add $08
	ld [hli], a ; x
	ld a, [$d87b]
	ld [hli], a ; tile index
	ld a, d
	ld [hli], a ; attribute

	ld a, c
	add $08
	ld [hli], a ; y
	ld a, b
	ld [hli], a ; x
	ld a, [$d87c]
	ld [hli], a ; tile index
	ld a, d
	ld [hli], a ; attribute

	ld a, c
	add $08
	ld [hli], a ; y
	ld a, b
	add $08
	ld [hli], a ; x
	ld a, [$d87d]
	ld [hli], a ; tile index
	ld a, d
	ld [hli], a ; attribute

	ld a, l
	ldh [hVirtualOAMSize], a
.done
	ret

Func_c0d31:
	ld a, [wced5]
	cp $02
	ret z
	ldh a, [hJoypadHeld]
	ld b, a
	bit B_PAD_UP, b
	jr z, .asm_c0d60
	ld c, $02
	ldh a, [hSCY]
	and a
	jr nz, .asm_c0d46
	dec c
.asm_c0d46
	ld a, [wCursorY]
	sub c
	cp BOARD_HEIGHT
	jr nc, .asm_c0d60
	ld a, [wCursorY]
	dec a
	ld [wCursorY], a
	ld a, [wc7ce]
	and a
	jr nz, .asm_c0d60
	ld a, $02
	ld [wc7cb], a
.asm_c0d60
	bit B_PAD_DOWN, b
	jr z, .asm_c0d7a
	ld a, [wCursorY]
	inc a
	cp BOARD_HEIGHT
	jr nc, .asm_c0d7a
	ld [wCursorY], a
	ld a, [wc7ce]
	and a
	jr nz, .asm_c0d7a
	ld a, $02
	ld [wc7cb], a
.asm_c0d7a
	bit B_PAD_LEFT, b
	jr z, .asm_c0d94
	ld a, [wCursorX]
	dec a
	cp BOARD_WIDTH - 1
	jr nc, .asm_c0d94
	ld [wCursorX], a
	ld a, [wc7ce]
	and a
	jr nz, .asm_c0d94
	ld a, $02
	ld [wc7cb], a
.asm_c0d94
	bit B_PAD_RIGHT, b
	jr z, .asm_c0dae
	ld a, [wCursorX]
	inc a
	cp BOARD_WIDTH - 1
	jr nc, .asm_c0dae
	ld [wCursorX], a
	ld a, [wc7ce]
	and a
	jr nz, .asm_c0dae
	ld a, $02
	ld [wc7cb], a
.asm_c0dae
	ld a, [wced6]
	and a
	jr nz, .asm_c0dc1
	ld a, [wCursorY]
	cp BOARD_HEIGHT
	jr c, .asm_c0dce
	xor a
	ld [wCursorY], a
	jr .asm_c0dce
.asm_c0dc1
	ld a, [wCursorY]
	dec a
	cp BOARD_HEIGHT - 1
	jr c, .asm_c0dce
	ld a, 1
	ld [wCursorY], a
.asm_c0dce
	ret

Func_c0dcf:
	ld a, [wced5]
	and a
	jr z, .asm_c0dde
	cp $02
	ret z
	ldh a, [hffb7]
	inc a
	and $02
	ret z
.asm_c0dde
	ld a, [wCursorX]
	add a
	add a
	add a
	add a ; *16
	ldh [hff8a], a
	ld a, [wced7]
	ld c, a
	ld a, [wced6]
	ld b, a
	ld a, [wCursorY]
	add a
	add a
	add a
	add a
	sub b
	sub c
	ldh [hff8b], a
	ldh a, [hffb7]
	and $10
	jp nz, Func_c0ebc
	ldh a, [hff8a]
	add $06
	ldh [hff8a], a
	ldh a, [hff8b]
	add $0e
	ldh [hff8b], a
	ldh a, [hVirtualOAMSize]
	cp OAM_SIZE
	jr z, .asm_c0e25
	ld l, a
	ld h, HIGH(wVirtualOAM)
	ldh a, [hff8b]
	ld [hli], a
	ldh a, [hff8a]
	ld [hli], a
	ld a, $00
	ld [hli], a
	ld a, $10
	ld [hli], a
	ld a, l
	ldh [hVirtualOAMSize], a
.asm_c0e25
	ldh a, [hff8a]
	add $0e
	ldh [hff8a], a
	ldh a, [hVirtualOAMSize]
	cp OAM_SIZE
	jr z, .asm_c0e43
	ld l, a
	ld h, HIGH(wVirtualOAM)
	ldh a, [hff8b]
	ld [hli], a
	ldh a, [hff8a]
	ld [hli], a
	ld a, $01
	ld [hli], a
	ld a, $10
	ld [hli], a
	ld a, l
	ldh [hVirtualOAMSize], a
.asm_c0e43
	ldh a, [hff8a]
	add $0e
	ldh [hff8a], a
	ldh a, [hVirtualOAMSize]
	cp OAM_SIZE
	jr z, .asm_c0e61
	ld l, a
	ld h, HIGH(wVirtualOAM)
	ldh a, [hff8b]
	ld [hli], a
	ldh a, [hff8a]
	ld [hli], a
	ld a, $00
	ld [hli], a
	ld a, $30
	ld [hli], a
	ld a, l
	ldh [hVirtualOAMSize], a
.asm_c0e61
	ldh a, [hff8b]
	add $0c
	ldh [hff8b], a
	ldh a, [hVirtualOAMSize]
	cp OAM_SIZE
	jr z, .asm_c0e7f
	ld l, a
	ld h, HIGH(wVirtualOAM)
	ldh a, [hff8b]
	ld [hli], a
	ldh a, [hff8a]
	ld [hli], a
	ld a, $00
	ld [hli], a
	ld a, $70
	ld [hli], a
	ld a, l
	ldh [hVirtualOAMSize], a
.asm_c0e7f
	ldh a, [hff8a]
	add $f2
	ldh [hff8a], a
	ldh a, [hVirtualOAMSize]
	cp OAM_SIZE
	jr z, .asm_c0e9d
	ld l, a
	ld h, HIGH(wVirtualOAM)
	ldh a, [hff8b]
	ld [hli], a
	ldh a, [hff8a]
	ld [hli], a
	ld a, $01
	ld [hli], a
	ld a, $50
	ld [hli], a
	ld a, l
	ldh [hVirtualOAMSize], a
.asm_c0e9d
	ldh a, [hff8a]
	add $f2
	ldh [hff8a], a
	ldh a, [hVirtualOAMSize]
	cp OAM_SIZE
	jr z, .asm_c0ebb
	ld l, a
	ld h, HIGH(wVirtualOAM)
	ldh a, [hff8b]
	ld [hli], a
	ldh a, [hff8a]
	ld [hli], a
	ld a, $00
	ld [hli], a
	ld a, $50
	ld [hli], a
	ld a, l
	ldh [hVirtualOAMSize], a
.asm_c0ebb
	ret

Func_c0ebc:
	ldh a, [hff8a]
	add $05
	ldh [hff8a], a
	ldh a, [hff8b]
	add $0d
	ldh [hff8b], a
	ldh a, [hVirtualOAMSize]
	cp OAM_SIZE
	jr z, .asm_c0ee0
	ld l, a
	ld h, HIGH(wVirtualOAM)
	ldh a, [hff8b]
	ld [hli], a
	ldh a, [hff8a]
	ld [hli], a
	ld a, $00
	ld [hli], a
	ld a, $10
	ld [hli], a
	ld a, l
	ldh [hVirtualOAMSize], a
.asm_c0ee0
	ldh a, [hff8a]
	add $0f
	ldh [hff8a], a
	ldh a, [hVirtualOAMSize]
	cp OAM_SIZE
	jr z, .asm_c0efe
	ld l, a
	ld h, HIGH(wVirtualOAM)
	ldh a, [hff8b]
	ld [hli], a
	ldh a, [hff8a]
	ld [hli], a
	ld a, $01
	ld [hli], a
	ld a, $10
	ld [hli], a
	ld a, l
	ldh [hVirtualOAMSize], a
.asm_c0efe
	ldh a, [hff8a]
	add $0f
	ldh [hff8a], a
	ldh a, [hVirtualOAMSize]
	cp OAM_SIZE
	jr z, .asm_c0f1c
	ld l, a
	ld h, HIGH(wVirtualOAM)
	ldh a, [hff8b]
	ld [hli], a
	ldh a, [hff8a]
	ld [hli], a
	ld a, $00
	ld [hli], a
	ld a, $30
	ld [hli], a
	ld a, l
	ldh [hVirtualOAMSize], a
.asm_c0f1c
	ldh a, [hff8b]
	add $0e
	ldh [hff8b], a
	ldh a, [hVirtualOAMSize]
	cp OAM_SIZE
	jr z, .asm_c0f3a
	ld l, a
	ld h, HIGH(wVirtualOAM)
	ldh a, [hff8b]
	ld [hli], a
	ldh a, [hff8a]
	ld [hli], a
	ld a, $00
	ld [hli], a
	ld a, $70
	ld [hli], a
	ld a, l
	ldh [hVirtualOAMSize], a
.asm_c0f3a
	ldh a, [hff8a]
	add $f1
	ldh [hff8a], a
	ldh a, [hVirtualOAMSize]
	cp OAM_SIZE
	jr z, .asm_c0f58
	ld l, a
	ld h, HIGH(wVirtualOAM)
	ldh a, [hff8b]
	ld [hli], a
	ldh a, [hff8a]
	ld [hli], a
	ld a, $01
	ld [hli], a
	ld a, $50
	ld [hli], a
	ld a, l
	ldh [hVirtualOAMSize], a
.asm_c0f58
	ldh a, [hff8a]
	add $f1
	ldh [hff8a], a
	ldh a, [hVirtualOAMSize]
	cp OAM_SIZE
	jr z, .asm_c0f76
	ld l, a
	ld h, HIGH(wVirtualOAM)
	ldh a, [hff8b]
	ld [hli], a
	ldh a, [hff8a]
	ld [hli], a
	ld a, $00
	ld [hli], a
	ld a, $50
	ld [hli], a
	ld a, l
	ldh [hVirtualOAMSize], a
.asm_c0f76
	ret

Func_c0f77:
	ld a, [w1d86c]
	and a
	ret nz
	ld a, [$da43]
	and a
	ret nz

	ld b, BOARD_AREA
	ld hl, wBlocks
	ld de, BLOCK_STRUCT_SIZE
	xor a
.loop_blocks
	cp [hl]
	jr nz, .non_empty
	add hl, de
	dec b
	jr nz, .loop_blocks
	ld a, $01
	ld [w1d864], a
	ld a, $04
	ld [w1d866], a
	ret

.non_empty
	ld a, [$da45]
	and a
	ret nz
	ld a, $01
	ld [w1d864], a
	ld a, $00
	ld [w1d866], a
	ret

Func_c0fac:
	ld a, [wGameMode]
	cp GAMEMODE_PUZZLE
	jr nz, .asm_c0fce
	ld a, [$d8b6]
	and a
	jr z, .asm_c0fce
	ld a, [$d8b7]
	and a
	jr z, .asm_c0fce
	ld a, [w1d86c]
	cp $03
	jr z, .asm_c0fce
	call Func_c0fe7
	call Func_c0f77
	jr .asm_c0fd1
.asm_c0fce
	call Func_c0ff6
.asm_c0fd1
	call Func_c1544
	call Func_c166f
	call Func_c178b
	call Func_c1b94
	call Func_c20d1
	farcall Func_11807
	ret

Func_c0fe7:
	ld b, BOARD_AREA
	ld hl, $d127
	ld de, $6
	xor a
.asm_c0ff0
	ld [hl], a
	add hl, de
	dec b
	jr nz, .asm_c0ff0
	ret

Func_c0ff6:
	ld hl, wBlocks
	ld c, $08
	ld d, $01
	ld a, [hli]
	and a
	jr z, .asm_c100e
	cp c
	jr nc, .asm_c100d
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c1012
	xor a
	jr .asm_c1013
.asm_c100d
	xor a
.asm_c100e
	inc hl
	inc hl
	jr .asm_c1013
.asm_c1012
	ld a, b
.asm_c1013
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c1027
	cp c
	jr nc, .asm_c1026
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c102b
	xor a
	jr .asm_c102c
.asm_c1026
	xor a
.asm_c1027
	inc hl
	inc hl
	jr .asm_c102c
.asm_c102b
	ld a, b
.asm_c102c
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c1040
	cp c
	jr nc, .asm_c103f
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c1044
	xor a
	jr .asm_c1045
.asm_c103f
	xor a
.asm_c1040
	inc hl
	inc hl
	jr .asm_c1045
.asm_c1044
	ld a, b
.asm_c1045
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c1059
	cp c
	jr nc, .asm_c1058
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c105d
	xor a
	jr .asm_c105e
.asm_c1058
	xor a
.asm_c1059
	inc hl
	inc hl
	jr .asm_c105e
.asm_c105d
	ld a, b
.asm_c105e
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c1072
	cp c
	jr nc, .asm_c1071
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c1076
	xor a
	jr .asm_c1077
.asm_c1071
	xor a
.asm_c1072
	inc hl
	inc hl
	jr .asm_c1077
.asm_c1076
	ld a, b
.asm_c1077
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c108b
	cp c
	jr nc, .asm_c108a
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c108f
	xor a
	jr .asm_c1090
.asm_c108a
	xor a
.asm_c108b
	inc hl
	inc hl
	jr .asm_c1090
.asm_c108f
	ld a, b
.asm_c1090
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c10a4
	cp c
	jr nc, .asm_c10a3
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c10a8
	xor a
	jr .asm_c10a9
.asm_c10a3
	xor a
.asm_c10a4
	inc hl
	inc hl
	jr .asm_c10a9
.asm_c10a8
	ld a, b
.asm_c10a9
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c10bd
	cp c
	jr nc, .asm_c10bc
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c10c1
	xor a
	jr .asm_c10c2
.asm_c10bc
	xor a
.asm_c10bd
	inc hl
	inc hl
	jr .asm_c10c2
.asm_c10c1
	ld a, b
.asm_c10c2
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c10d6
	cp c
	jr nc, .asm_c10d5
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c10da
	xor a
	jr .asm_c10db
.asm_c10d5
	xor a
.asm_c10d6
	inc hl
	inc hl
	jr .asm_c10db
.asm_c10da
	ld a, b
.asm_c10db
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c10ef
	cp c
	jr nc, .asm_c10ee
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c10f3
	xor a
	jr .asm_c10f4
.asm_c10ee
	xor a
.asm_c10ef
	inc hl
	inc hl
	jr .asm_c10f4
.asm_c10f3
	ld a, b
.asm_c10f4
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c1108
	cp c
	jr nc, .asm_c1107
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c110c
	xor a
	jr .asm_c110d
.asm_c1107
	xor a
.asm_c1108
	inc hl
	inc hl
	jr .asm_c110d
.asm_c110c
	ld a, b
.asm_c110d
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c1121
	cp c
	jr nc, .asm_c1120
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c1125
	xor a
	jr .asm_c1126
.asm_c1120
	xor a
.asm_c1121
	inc hl
	inc hl
	jr .asm_c1126
.asm_c1125
	ld a, b
.asm_c1126
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c113a
	cp c
	jr nc, .asm_c1139
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c113e
	xor a
	jr .asm_c113f
.asm_c1139
	xor a
.asm_c113a
	inc hl
	inc hl
	jr .asm_c113f
.asm_c113e
	ld a, b
.asm_c113f
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c1153
	cp c
	jr nc, .asm_c1152
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c1157
	xor a
	jr .asm_c1158
.asm_c1152
	xor a
.asm_c1153
	inc hl
	inc hl
	jr .asm_c1158
.asm_c1157
	ld a, b
.asm_c1158
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c116c
	cp c
	jr nc, .asm_c116b
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c1170
	xor a
	jr .asm_c1171
.asm_c116b
	xor a
.asm_c116c
	inc hl
	inc hl
	jr .asm_c1171
.asm_c1170
	ld a, b
.asm_c1171
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c1185
	cp c
	jr nc, .asm_c1184
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c1189
	xor a
	jr .asm_c118a
.asm_c1184
	xor a
.asm_c1185
	inc hl
	inc hl
	jr .asm_c118a
.asm_c1189
	ld a, b
.asm_c118a
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c119e
	cp c
	jr nc, .asm_c119d
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c11a2
	xor a
	jr .asm_c11a3
.asm_c119d
	xor a
.asm_c119e
	inc hl
	inc hl
	jr .asm_c11a3
.asm_c11a2
	ld a, b
.asm_c11a3
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c11b7
	cp c
	jr nc, .asm_c11b6
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c11bb
	xor a
	jr .asm_c11bc
.asm_c11b6
	xor a
.asm_c11b7
	inc hl
	inc hl
	jr .asm_c11bc
.asm_c11bb
	ld a, b
.asm_c11bc
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c11d0
	cp c
	jr nc, .asm_c11cf
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c11d4
	xor a
	jr .asm_c11d5
.asm_c11cf
	xor a
.asm_c11d0
	inc hl
	inc hl
	jr .asm_c11d5
.asm_c11d4
	ld a, b
.asm_c11d5
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c11e9
	cp c
	jr nc, .asm_c11e8
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c11ed
	xor a
	jr .asm_c11ee
.asm_c11e8
	xor a
.asm_c11e9
	inc hl
	inc hl
	jr .asm_c11ee
.asm_c11ed
	ld a, b
.asm_c11ee
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c1202
	cp c
	jr nc, .asm_c1201
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c1206
	xor a
	jr .asm_c1207
.asm_c1201
	xor a
.asm_c1202
	inc hl
	inc hl
	jr .asm_c1207
.asm_c1206
	ld a, b
.asm_c1207
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c121b
	cp c
	jr nc, .asm_c121a
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c121f
	xor a
	jr .asm_c1220
.asm_c121a
	xor a
.asm_c121b
	inc hl
	inc hl
	jr .asm_c1220
.asm_c121f
	ld a, b
.asm_c1220
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c1234
	cp c
	jr nc, .asm_c1233
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c1238
	xor a
	jr .asm_c1239
.asm_c1233
	xor a
.asm_c1234
	inc hl
	inc hl
	jr .asm_c1239
.asm_c1238
	ld a, b
.asm_c1239
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c124d
	cp c
	jr nc, .asm_c124c
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c1251
	xor a
	jr .asm_c1252
.asm_c124c
	xor a
.asm_c124d
	inc hl
	inc hl
	jr .asm_c1252
.asm_c1251
	ld a, b
.asm_c1252
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c1266
	cp c
	jr nc, .asm_c1265
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c126a
	xor a
	jr .asm_c126b
.asm_c1265
	xor a
.asm_c1266
	inc hl
	inc hl
	jr .asm_c126b
.asm_c126a
	ld a, b
.asm_c126b
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c127f
	cp c
	jr nc, .asm_c127e
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c1283
	xor a
	jr .asm_c1284
.asm_c127e
	xor a
.asm_c127f
	inc hl
	inc hl
	jr .asm_c1284
.asm_c1283
	ld a, b
.asm_c1284
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c1298
	cp c
	jr nc, .asm_c1297
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c129c
	xor a
	jr .asm_c129d
.asm_c1297
	xor a
.asm_c1298
	inc hl
	inc hl
	jr .asm_c129d
.asm_c129c
	ld a, b
.asm_c129d
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c12b1
	cp c
	jr nc, .asm_c12b0
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c12b5
	xor a
	jr .asm_c12b6
.asm_c12b0
	xor a
.asm_c12b1
	inc hl
	inc hl
	jr .asm_c12b6
.asm_c12b5
	ld a, b
.asm_c12b6
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c12ca
	cp c
	jr nc, .asm_c12c9
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c12ce
	xor a
	jr .asm_c12cf
.asm_c12c9
	xor a
.asm_c12ca
	inc hl
	inc hl
	jr .asm_c12cf
.asm_c12ce
	ld a, b
.asm_c12cf
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c12e3
	cp c
	jr nc, .asm_c12e2
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c12e7
	xor a
	jr .asm_c12e8
.asm_c12e2
	xor a
.asm_c12e3
	inc hl
	inc hl
	jr .asm_c12e8
.asm_c12e7
	ld a, b
.asm_c12e8
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c12fc
	cp c
	jr nc, .asm_c12fb
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c1300
	xor a
	jr .asm_c1301
.asm_c12fb
	xor a
.asm_c12fc
	inc hl
	inc hl
	jr .asm_c1301
.asm_c1300
	ld a, b
.asm_c1301
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c1315
	cp c
	jr nc, .asm_c1314
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c1319
	xor a
	jr .asm_c131a
.asm_c1314
	xor a
.asm_c1315
	inc hl
	inc hl
	jr .asm_c131a
.asm_c1319
	ld a, b
.asm_c131a
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c132e
	cp c
	jr nc, .asm_c132d
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c1332
	xor a
	jr .asm_c1333
.asm_c132d
	xor a
.asm_c132e
	inc hl
	inc hl
	jr .asm_c1333
.asm_c1332
	ld a, b
.asm_c1333
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c1347
	cp c
	jr nc, .asm_c1346
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c134b
	xor a
	jr .asm_c134c
.asm_c1346
	xor a
.asm_c1347
	inc hl
	inc hl
	jr .asm_c134c
.asm_c134b
	ld a, b
.asm_c134c
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c1360
	cp c
	jr nc, .asm_c135f
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c1364
	xor a
	jr .asm_c1365
.asm_c135f
	xor a
.asm_c1360
	inc hl
	inc hl
	jr .asm_c1365
.asm_c1364
	ld a, b
.asm_c1365
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c1379
	cp c
	jr nc, .asm_c1378
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c137d
	xor a
	jr .asm_c137e
.asm_c1378
	xor a
.asm_c1379
	inc hl
	inc hl
	jr .asm_c137e
.asm_c137d
	ld a, b
.asm_c137e
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c1392
	cp c
	jr nc, .asm_c1391
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c1396
	xor a
	jr .asm_c1397
.asm_c1391
	xor a
.asm_c1392
	inc hl
	inc hl
	jr .asm_c1397
.asm_c1396
	ld a, b
.asm_c1397
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c13ab
	cp c
	jr nc, .asm_c13aa
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c13af
	xor a
	jr .asm_c13b0
.asm_c13aa
	xor a
.asm_c13ab
	inc hl
	inc hl
	jr .asm_c13b0
.asm_c13af
	ld a, b
.asm_c13b0
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c13c4
	cp c
	jr nc, .asm_c13c3
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c13c8
	xor a
	jr .asm_c13c9
.asm_c13c3
	xor a
.asm_c13c4
	inc hl
	inc hl
	jr .asm_c13c9
.asm_c13c8
	ld a, b
.asm_c13c9
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c13dd
	cp c
	jr nc, .asm_c13dc
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c13e1
	xor a
	jr .asm_c13e2
.asm_c13dc
	xor a
.asm_c13dd
	inc hl
	inc hl
	jr .asm_c13e2
.asm_c13e1
	ld a, b
.asm_c13e2
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c13f6
	cp c
	jr nc, .asm_c13f5
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c13fa
	xor a
	jr .asm_c13fb
.asm_c13f5
	xor a
.asm_c13f6
	inc hl
	inc hl
	jr .asm_c13fb
.asm_c13fa
	ld a, b
.asm_c13fb
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c140f
	cp c
	jr nc, .asm_c140e
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c1413
	xor a
	jr .asm_c1414
.asm_c140e
	xor a
.asm_c140f
	inc hl
	inc hl
	jr .asm_c1414
.asm_c1413
	ld a, b
.asm_c1414
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c1428
	cp c
	jr nc, .asm_c1427
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c142c
	xor a
	jr .asm_c142d
.asm_c1427
	xor a
.asm_c1428
	inc hl
	inc hl
	jr .asm_c142d
.asm_c142c
	ld a, b
.asm_c142d
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c1441
	cp c
	jr nc, .asm_c1440
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c1445
	xor a
	jr .asm_c1446
.asm_c1440
	xor a
.asm_c1441
	inc hl
	inc hl
	jr .asm_c1446
.asm_c1445
	ld a, b
.asm_c1446
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c145a
	cp c
	jr nc, .asm_c1459
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c145e
	xor a
	jr .asm_c145f
.asm_c1459
	xor a
.asm_c145a
	inc hl
	inc hl
	jr .asm_c145f
.asm_c145e
	ld a, b
.asm_c145f
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c1473
	cp c
	jr nc, .asm_c1472
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c1477
	xor a
	jr .asm_c1478
.asm_c1472
	xor a
.asm_c1473
	inc hl
	inc hl
	jr .asm_c1478
.asm_c1477
	ld a, b
.asm_c1478
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c148c
	cp c
	jr nc, .asm_c148b
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c1490
	xor a
	jr .asm_c1491
.asm_c148b
	xor a
.asm_c148c
	inc hl
	inc hl
	jr .asm_c1491
.asm_c1490
	ld a, b
.asm_c1491
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c14a5
	cp c
	jr nc, .asm_c14a4
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c14a9
	xor a
	jr .asm_c14aa
.asm_c14a4
	xor a
.asm_c14a5
	inc hl
	inc hl
	jr .asm_c14aa
.asm_c14a9
	ld a, b
.asm_c14aa
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c14be
	cp c
	jr nc, .asm_c14bd
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c14c2
	xor a
	jr .asm_c14c3
.asm_c14bd
	xor a
.asm_c14be
	inc hl
	inc hl
	jr .asm_c14c3
.asm_c14c2
	ld a, b
.asm_c14c3
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c14d7
	cp c
	jr nc, .asm_c14d6
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c14db
	xor a
	jr .asm_c14dc
.asm_c14d6
	xor a
.asm_c14d7
	inc hl
	inc hl
	jr .asm_c14dc
.asm_c14db
	ld a, b
.asm_c14dc
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c14f0
	cp c
	jr nc, .asm_c14ef
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c14f4
	xor a
	jr .asm_c14f5
.asm_c14ef
	xor a
.asm_c14f0
	inc hl
	inc hl
	jr .asm_c14f5
.asm_c14f4
	ld a, b
.asm_c14f5
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c1509
	cp c
	jr nc, .asm_c1508
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c150d
	xor a
	jr .asm_c150e
.asm_c1508
	xor a
.asm_c1509
	inc hl
	inc hl
	jr .asm_c150e
.asm_c150d
	ld a, b
.asm_c150e
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c1522
	cp c
	jr nc, .asm_c1521
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c1526
	xor a
	jr .asm_c1527
.asm_c1521
	xor a
.asm_c1522
	inc hl
	inc hl
	jr .asm_c1527
.asm_c1526
	ld a, b
.asm_c1527
	ld [hli], a
	inc hl
	inc hl
	ld a, [hli]
	and a
	jr z, .asm_c153b
	cp c
	jr nc, .asm_c153a
	inc hl
	ld b, a
	ld a, [hli]
	cp d
	jr z, .asm_c153f
	xor a
	jr .asm_c1540
.asm_c153a
	xor a
.asm_c153b
	inc hl
	inc hl
	jr .asm_c1540
.asm_c153f
	ld a, b
.asm_c1540
	ld [hli], a
	inc hl
	inc hl
	ret

Func_c1544:
	ld bc, $6
	ld de, $fffa
	ld hl, $d127
	call Func_c1581
	ld hl, $d14b
	call Func_c1581
	ld hl, $d16f
	call Func_c1581
	ld hl, $d193
	call Func_c1581
	ld hl, $d1b7
	call Func_c1581
	ld hl, $d1db
	call Func_c1581
	ld hl, $d1ff
	call Func_c1581
	ld hl, $d223
	call Func_c1581
	ld hl, $d247
	call Func_c1581
	ret

Func_c1581:
	ld a, [hl]
	add hl, bc
	and a
	jr z, .asm_c159b
	cp [hl]
	jr nz, .asm_c159b
	add hl, bc
	cp [hl]
	jr nz, .asm_c15b3
	add hl, bc
	cp [hl]
	jr nz, .asm_c15d6
	add hl, bc
	cp [hl]
	jr nz, .asm_c1609
	add hl, bc
	cp [hl]
	jr nz, .asm_c15f8
	jr .asm_c15e5
.asm_c159b
	ld a, [hl]
	add hl, bc
	and a
	jr z, .asm_c15b3
	cp [hl]
	jr nz, .asm_c15b3
	add hl, bc
	cp [hl]
	jr nz, .asm_c15c7
	add hl, bc
	cp [hl]
	jp nz, Func_c1642
	add hl, bc
	cp [hl]
	jp nz, Func_c1634
	jr .asm_c1624
.asm_c15b3
	ld a, [hl]
	add hl, bc
	and a
	jr z, .asm_c15c7
	cp [hl]
	jr nz, .asm_c15c7
	add hl, bc
	cp [hl]
	jr nz, .asm_c15e4
	add hl, bc
	cp [hl]
	jp nz, Func_c165a
	jp Func_c164d
.asm_c15c7
	ld a, [hl]
	add hl, bc
	and a
	jr z, .asm_c15e4
	cp [hl]
	jr nz, .asm_c15e4
	add hl, bc
	cp [hl]
	jr nz, .asm_c15e4
	jp Func_c1665
.asm_c15d6
	ld a, [hl]
	and a
	jr z, .asm_c1619
	add hl, bc
	cp [hl]
	jr nz, .asm_c1618
	add hl, bc
	cp [hl]
	jr nz, .asm_c1617
	jr .asm_c15e5
.asm_c15e4
	ret
.asm_c15e5
	inc hl
	set 6, [hl]
	add hl, de
	set 6, [hl]
	add hl, de
	set 6, [hl]
	add hl, de
	set 6, [hl]
	add hl, de
	set 6, [hl]
	add hl, de
	set 6, [hl]
	ret
.asm_c15f8
	inc hl
	add hl, de
	set 6, [hl]
	add hl, de
	set 6, [hl]
	add hl, de
	set 6, [hl]
	add hl, de
	set 6, [hl]
	add hl, de
	set 6, [hl]
	ret
.asm_c1609
	inc hl
	add hl, de
	set 6, [hl]
	add hl, de
	set 6, [hl]
	add hl, de
	set 6, [hl]
	add hl, de
	set 6, [hl]
	ret
.asm_c1617
	add hl, de
.asm_c1618
	add hl, de
.asm_c1619
	add hl, de
	inc hl
	set 6, [hl]
	add hl, de
	set 6, [hl]
	add hl, de
	set 6, [hl]
	ret
.asm_c1624
	inc hl
	set 6, [hl]
	add hl, de
	set 6, [hl]
	add hl, de
	set 6, [hl]
	add hl, de
	set 6, [hl]
	add hl, de
	set 6, [hl]
	ret

Func_c1634:
	inc hl
	add hl, de
	set 6, [hl]
	add hl, de
	set 6, [hl]
	add hl, de
	set 6, [hl]
	add hl, de
	set 6, [hl]
	ret

Func_c1642:
	inc hl
	add hl, de
	set 6, [hl]
	add hl, de
	set 6, [hl]
	add hl, de
	set 6, [hl]
	ret

Func_c164d:
	inc hl
	set 6, [hl]
	add hl, de
	set 6, [hl]
	add hl, de
	set 6, [hl]
	add hl, de
	set 6, [hl]
	ret

Func_c165a:
	inc hl
	add hl, de
	set 6, [hl]
	add hl, de
	set 6, [hl]
	add hl, de
	set 6, [hl]
	ret

Func_c1665:
	inc hl
	set 6, [hl]
	add hl, de
	set 6, [hl]
	add hl, de
	set 6, [hl]
	ret

Func_c166f:
	ld hl, $d127
	call Func_c1694
	ld hl, $d12d
	call Func_c1694
	ld hl, $d133
	call Func_c1694
	ld hl, $d139
	call Func_c1694
	ld hl, $d13f
	call Func_c1694
	ld hl, $d145
	call Func_c1694
	ret

Func_c1694:
	ld de, $24
	ld c, $01
	ld b, c
	ld a, c
	ldh [hff8a], a
	ldh [hff8b], a
	ldh [hff8c], a
	ldh [hff8d], a
	ldh [hff8e], a
	ldh [hff8f], a
	ldh [hff90], a
	ldh [hff91], a
	ldh [hff92], a
	ld a, [hl]
	add hl, de
	cp [hl]
	jr nz, .asm_c16bb
	and a
	jr z, .asm_c16bb
	inc b
	ld a, b
	ldh [hff8b], a
	jr .asm_c16bc
.asm_c16bb
	ld b, c
.asm_c16bc
	ld a, [hl]
	add hl, de
	cp [hl]
	jr nz, .asm_c16ca
	and a
	jr z, .asm_c16ca
	inc b
	ld a, b
	ldh [hff8c], a
	jr .asm_c16cb
.asm_c16ca
	ld b, c
.asm_c16cb
	ld a, [hl]
	add hl, de
	cp [hl]
	jr nz, .asm_c16d9
	and a
	jr z, .asm_c16d9
	inc b
	ld a, b
	ldh [hff8d], a
	jr .asm_c16da
.asm_c16d9
	ld b, c
.asm_c16da
	ld a, [hl]
	add hl, de
	cp [hl]
	jr nz, .asm_c16e8
	and a
	jr z, .asm_c16e8
	inc b
	ld a, b
	ldh [hff8e], a
	jr .asm_c16e9
.asm_c16e8
	ld b, c
.asm_c16e9
	ld a, [hl]
	add hl, de
	cp [hl]
	jr nz, .asm_c16f7
	and a
	jr z, .asm_c16f7
	inc b
	ld a, b
	ldh [hff8f], a
	jr .asm_c16f8
.asm_c16f7
	ld b, c
.asm_c16f8
	ld a, [hl]
	add hl, de
	cp [hl]
	jr nz, .asm_c1706
	and a
	jr z, .asm_c1706
	inc b
	ld a, b
	ldh [hff90], a
	jr .asm_c1707
.asm_c1706
	ld b, c
.asm_c1707
	ld a, [hl]
	add hl, de
	cp [hl]
	jr nz, .asm_c1715
	and a
	jr z, .asm_c1715
	inc b
	ld a, b
	ldh [hff91], a
	jr .asm_c1716
.asm_c1715
	ld b, c
.asm_c1716
	ld a, [hl]
	add hl, de
	cp [hl]
	jr nz, .asm_c1724
	and a
	jr z, .asm_c1724
	inc b
	ld a, b
	ldh [hff92], a
	jr .asm_c1725
.asm_c1724
	ld b, c
.asm_c1725
	inc hl
	ld de, $ffdc
	ld c, $00
	ld b, $03
	ldh a, [hff92]
	cp b
	jr nc, .asm_c1758
.asm_c1732
	add hl, de
	ldh a, [hff91]
	cp b
	jr nc, .asm_c175e
.asm_c1738
	add hl, de
	ldh a, [hff90]
	cp b
	jr nc, .asm_c1764
.asm_c173e
	add hl, de
	ldh a, [hff8f]
	cp b
	jr nc, .asm_c176a
.asm_c1744
	add hl, de
	ldh a, [hff8e]
	cp b
	jr nc, .asm_c1770
.asm_c174a
	add hl, de
	ldh a, [hff8d]
	cp b
	jr nc, .asm_c1776
.asm_c1750
	add hl, de
	ldh a, [hff8c]
	cp b
	jr nc, .asm_c177c
.asm_c1756
	add hl, de
.asm_c1757
	ret
.asm_c1758
	set 6, [hl]
	dec a
	jr z, .asm_c1732
	add hl, de
.asm_c175e
	set 6, [hl]
	dec a
	jr z, .asm_c1738
	add hl, de
.asm_c1764
	set 6, [hl]
	dec a
	jr z, .asm_c173e
	add hl, de
.asm_c176a
	set 6, [hl]
	dec a
	jr z, .asm_c1744
	add hl, de
.asm_c1770
	set 6, [hl]
	dec a
	jr z, .asm_c174a
	add hl, de
.asm_c1776
	set 6, [hl]
	dec a
	jr z, .asm_c1750
	add hl, de
.asm_c177c
	set 6, [hl]
	dec a
	jr z, .asm_c1756
	add hl, de
	set 6, [hl]
	dec a
	jr z, .asm_c1757
	add hl, de
	set 6, [hl]
	ret
; 0xc178b

SECTION "Bank 30@578b", ROMX[$578b], BANK[$30]

Func_c178b:
	ld a, [$d5f6]
	and a
	jr nz, .asm_c179b
	ld a, $00
	ld [$d5f5], a
	ld a, $d0
	ld [$d5f6], a
.asm_c179b
	xor a
	ld [$d5f7], a
	ld a, [$d5f5]
	ld e, a
	ld a, [$d5f6]
	ld d, a
	inc e
	ld a, e
	ldh [hff8a], a
	ld a, d
	ldh [hff8b], a
	ld hl, $d128
	ld b, $00
	ld c, $00
	ld de, $6
	bit 6, [hl]
	jr z, .asm_c17c2
	ld de, NULL
	call Func_c1b08
.asm_c17c2
	add hl, de
	bit 6, [hl]
	jr z, .asm_c17cd
	ld de, $100
	call Func_c1b08
.asm_c17cd
	add hl, de
	bit 6, [hl]
	jr z, .asm_c17d8
	ld de, $200
	call Func_c1b08
.asm_c17d8
	add hl, de
	bit 6, [hl]
	jr z, .asm_c17e3
	ld de, $300
	call Func_c1b08
.asm_c17e3
	add hl, de
	bit 6, [hl]
	jr z, .asm_c17ee
	ld de, $400
	call Func_c1b08
.asm_c17ee
	add hl, de
	bit 6, [hl]
	jr z, .asm_c17f9
	ld de, $500
	call Func_c1b08
.asm_c17f9
	add hl, de
	bit 6, [hl]
	jr z, .asm_c1804
	ld de, $1
	call Func_c1b08
.asm_c1804
	add hl, de
	bit 6, [hl]
	jr z, .asm_c180f
	ld de, $101
	call Func_c1b08
.asm_c180f
	add hl, de
	bit 6, [hl]
	jr z, .asm_c181a
	ld de, $201
	call Func_c1b08
.asm_c181a
	add hl, de
	bit 6, [hl]
	jr z, .asm_c1825
	ld de, $301
	call Func_c1b08
.asm_c1825
	add hl, de
	bit 6, [hl]
	jr z, .asm_c1830
	ld de, $401
	call Func_c1b08
.asm_c1830
	add hl, de
	bit 6, [hl]
	jr z, .asm_c183b
	ld de, $501
	call Func_c1b08
.asm_c183b
	add hl, de
	bit 6, [hl]
	jr z, .asm_c1846
	ld de, $2
	call Func_c1b08
.asm_c1846
	add hl, de
	bit 6, [hl]
	jr z, .asm_c1851
	ld de, $102
	call Func_c1b08
.asm_c1851
	add hl, de
	bit 6, [hl]
	jr z, .asm_c185c
	ld de, $202
	call Func_c1b08
.asm_c185c
	add hl, de
	bit 6, [hl]
	jr z, .asm_c1867
	ld de, $302
	call Func_c1b08
.asm_c1867
	add hl, de
	bit 6, [hl]
	jr z, .asm_c1872
	ld de, $402
	call Func_c1b08
.asm_c1872
	add hl, de
	bit 6, [hl]
	jr z, .asm_c187d
	ld de, $502
	call Func_c1b08
.asm_c187d
	add hl, de
	bit 6, [hl]
	jr z, .asm_c1888
	ld de, $3
	call Func_c1b08
.asm_c1888
	add hl, de
	bit 6, [hl]
	jr z, .asm_c1893
	ld de, $103
	call Func_c1b08
.asm_c1893
	add hl, de
	bit 6, [hl]
	jr z, .asm_c189e
	ld de, $203
	call Func_c1b08
.asm_c189e
	add hl, de
	bit 6, [hl]
	jr z, .asm_c18a9
	ld de, $303
	call Func_c1b08
.asm_c18a9
	add hl, de
	bit 6, [hl]
	jr z, .asm_c18b4
	ld de, $403
	call Func_c1b08
.asm_c18b4
	add hl, de
	bit 6, [hl]
	jr z, .asm_c18bf
	ld de, $503
	call Func_c1b08
.asm_c18bf
	add hl, de
	bit 6, [hl]
	jr z, .asm_c18ca
	ld de, $4
	call Func_c1b08
.asm_c18ca
	add hl, de
	bit 6, [hl]
	jr z, .asm_c18d5
	ld de, $104
	call Func_c1b08
.asm_c18d5
	add hl, de
	bit 6, [hl]
	jr z, .asm_c18e0
	ld de, $204
	call Func_c1b08
.asm_c18e0
	add hl, de
	bit 6, [hl]
	jr z, .asm_c18eb
	ld de, $304
	call Func_c1b08
.asm_c18eb
	add hl, de
	bit 6, [hl]
	jr z, .asm_c18f6
	ld de, $404
	call Func_c1b08
.asm_c18f6
	add hl, de
	bit 6, [hl]
	jr z, .asm_c1901
	ld de, Func_504
	call Func_c1b08
.asm_c1901
	add hl, de
	bit 6, [hl]
	jr z, .asm_c190c
	ld de, $5
	call Func_c1b08
.asm_c190c
	add hl, de
	bit 6, [hl]
	jr z, .asm_c1917
	ld de, $105
	call Func_c1b08
.asm_c1917
	add hl, de
	bit 6, [hl]
	jr z, .asm_c1922
	ld de, $205
	call Func_c1b08
.asm_c1922
	add hl, de
	bit 6, [hl]
	jr z, .asm_c192d
	ld de, $305
	call Func_c1b08
.asm_c192d
	add hl, de
	bit 6, [hl]
	jr z, .asm_c1938
	ld de, $405
	call Func_c1b08
.asm_c1938
	add hl, de
	bit 6, [hl]
	jr z, .asm_c1943
	ld de, $505
	call Func_c1b08
.asm_c1943
	add hl, de
	bit 6, [hl]
	jr z, .asm_c194e
	ld de, $6
	call Func_c1b08
.asm_c194e
	add hl, de
	bit 6, [hl]
	jr z, .asm_c1959
	ld de, $106
	call Func_c1b08
.asm_c1959
	add hl, de
	bit 6, [hl]
	jr z, .asm_c1964
	ld de, $206
	call Func_c1b08
.asm_c1964
	add hl, de
	bit 6, [hl]
	jr z, .asm_c196f
	ld de, $306
	call Func_c1b08
.asm_c196f
	add hl, de
	bit 6, [hl]
	jr z, .asm_c197a
	ld de, $406
	call Func_c1b08
.asm_c197a
	add hl, de
	bit 6, [hl]
	jr z, .asm_c1985
	ld de, $506
	call Func_c1b08
.asm_c1985
	add hl, de
	bit 6, [hl]
	jr z, .asm_c1990
	ld de, $7
	call Func_c1b08
.asm_c1990
	add hl, de
	bit 6, [hl]
	jr z, .asm_c199b
	ld de, $107
	call Func_c1b08
.asm_c199b
	add hl, de
	bit 6, [hl]
	jr z, .asm_c19a6
	ld de, $207
	call Func_c1b08
.asm_c19a6
	add hl, de
	bit 6, [hl]
	jr z, .asm_c19b1
	ld de, $307
	call Func_c1b08
.asm_c19b1
	add hl, de
	bit 6, [hl]
	jr z, .asm_c19bc
	ld de, $407
	call Func_c1b08
.asm_c19bc
	add hl, de
	bit 6, [hl]
	jr z, .asm_c19c7
	ld de, $507
	call Func_c1b08
.asm_c19c7
	add hl, de
	bit 6, [hl]
	jr z, .asm_c19d2
	ld de, $8
	call Func_c1b08
.asm_c19d2
	add hl, de
	bit 6, [hl]
	jr z, .asm_c19dd
	ld de, $108
	call Func_c1b08
.asm_c19dd
	add hl, de
	bit 6, [hl]
	jr z, .asm_c19e8
	ld de, $208
	call Func_c1b08
.asm_c19e8
	add hl, de
	bit 6, [hl]
	jr z, .asm_c19f3
	ld de, $308
	call Func_c1b08
.asm_c19f3
	add hl, de
	bit 6, [hl]
	jr z, .asm_c19fe
	ld de, $408
	call Func_c1b08
.asm_c19fe
	add hl, de
	bit 6, [hl]
	jr z, .asm_c1a09
	ld de, $508
	call Func_c1b08
.asm_c1a09
	add hl, de
	inc b
	dec b
	ret z
	ld hl, $d58e
	ld de, $d
	xor a
	cp [hl]
	jr z, .asm_c1a35
	add hl, de
	cp [hl]
	jr z, .asm_c1a35
	add hl, de
	cp [hl]
	jr z, .asm_c1a35
	add hl, de
	cp [hl]
	jr z, .asm_c1a35
	add hl, de
	cp [hl]
	jr z, .asm_c1a35
	add hl, de
	cp [hl]
	jr z, .asm_c1a35
	add hl, de
	cp [hl]
	jr z, .asm_c1a35
	add hl, de
	cp [hl]
	jr z, .asm_c1a35
	add hl, de
	ret
.asm_c1a35
	ld a, [$d5f7]
	and a
	jr z, .asm_c1a46
	ld a, [$d84c]
	cp $ff
	jr z, .asm_c1a46
	inc a
	ld [$d84c], a
.asm_c1a46
	ld a, [$d5f5]
	ld e, a
	ld a, [$d5f6]
	ld d, a
	ld a, b
	ld [de], a
	dec hl
	push hl
	ld a, e
	ld [hli], a
	ld a, d
	ld [hli], a
	xor a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld a, b
	ld [hli], a
	xor a
	ld [hl], a
	ldh a, [hff8a]
	ld [$d5f5], a
	ldh a, [hff8b]
	ld [$d5f6], a
	ld a, c
	ld [$da5c], a
	ld [$da5f], a
	cp $01
.asm_c1a74
	jr z, .asm_c1a74
	cp $02
.asm_c1a78
	jr z, .asm_c1a78
	ld a, b
	cp $04
	jr c, .asm_c1a8f
	cp $37
	jr c, .asm_c1a90
	ld a, $36
	ld [$da5a], a
	ld a, $37
	ld [$da5d], a
	jr .asm_c1a96
.asm_c1a8f
	xor a
.asm_c1a90
	ld [$da5a], a
	ld [$da5d], a
.asm_c1a96
	ld a, [$d84c]
	cp $02
	jr c, .asm_c1abb
	cp $15
	jr c, .asm_c1abc
	cp $1f
	jr c, .asm_c1ab1
	ld a, $14
	ld [$da5b], a
	ld a, $1e
	ld [$da5e], a
	jr .asm_c1ac2
.asm_c1ab1
	ld [$da5e], a
	ld a, $14
	ld [$da5b], a
	jr .asm_c1ac2
.asm_c1abb
	xor a
.asm_c1abc
	ld [$da5b], a
	ld [$da5e], a
.asm_c1ac2
	ld a, [$da5f]
	and a
	jr nz, .asm_c1ad4
	ld a, [$da5d]
	and a
	jr nz, .asm_c1ad4
	ld a, [$d5f7]
	and a
	jr z, .asm_c1aed
.asm_c1ad4
	push hl
	push bc
	push de
	xor a
	ld [$d7a1], a
	ldh a, [hff8c]
	ld b, a
	ldh a, [hff8d]
	ld c, a
	farcall Func_115dc
	call Func_c336a
	pop de
	pop bc
	pop hl
.asm_c1aed
	push hl
	push bc
	push de
	call Func_c244b
	call Func_c274f
	call Func_c2431
	pop de
	pop bc
	pop hl
	pop hl
	push hl
	ld c, l
	ld b, h
	farcall Func_12f49
	pop hl
	ret

Func_c1b08:
	inc b
	dec b
	jr nz, .asm_c1b12
	ld a, d
	ldh [hff8c], a
	ld a, e
	ldh [hff8d], a
.asm_c1b12
	inc b
	bit 7, [hl]
	jr z, .asm_c1b1c
	ld a, $01
	ld [$d5f7], a
.asm_c1b1c
	ld de, $fffc
	add hl, de
	ld a, [hl]
	cp $07
	jr nz, .asm_c1b26
	inc c
.asm_c1b26
	ldh a, [hff8a]
	ld e, a
	ldh a, [hff8b]
	ld d, a
	ld a, l
	ld [de], a
	inc e
	ld a, h
	ld [de], a
	inc e
	ld a, e
	ldh [hff8a], a
	ld a, d
	ldh [hff8b], a
	ld de, $4
	add hl, de
	ld de, $6
	ret

Func_c1b40:
	ld hl, $d58e
	ld de, $d
	xor a
	cp [hl]
	call nz, Func_c1b70
	add hl, de
	cp [hl]
	call nz, Func_c1b70
	add hl, de
	cp [hl]
	call nz, Func_c1b70
	add hl, de
	cp [hl]
	call nz, Func_c1b70
	add hl, de
	cp [hl]
	call nz, Func_c1b70
	add hl, de
	cp [hl]
	call nz, Func_c1b70
	add hl, de
	cp [hl]
	call nz, Func_c1b70
	add hl, de
	cp [hl]
	call nz, Func_c1b70
	add hl, de
	ret

Func_c1b70:
	push hl
	dec hl
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [de]
	ld c, a
	inc e
.asm_c1b79
	push de
	ld a, [de]
	ld l, a
	inc e
	ld a, [de]
	ld h, a
	inc e
	ld de, $ffdc
	add hl, de
	pop de
	ld a, l
	ld [de], a
	inc e
	ld a, h
	ld [de], a
	inc e
	dec c
	jr nz, .asm_c1b79
	pop hl
	ld de, $d
	xor a
	ret

Func_c1b94:
	ld a, $01
	ld [$d8b6], a
	ld hl, $d58e
	ld de, $d
	xor a
	cp [hl]
	call nz, Func_c1bc9
	add hl, de
	cp [hl]
	call nz, Func_c1bc9
	add hl, de
	cp [hl]
	call nz, Func_c1bc9
	add hl, de
	cp [hl]
	call nz, Func_c1bc9
	add hl, de
	cp [hl]
	call nz, Func_c1bc9
	add hl, de
	cp [hl]
	call nz, Func_c1bc9
	add hl, de
	cp [hl]
	call nz, Func_c1bc9
	add hl, de
	cp [hl]
	call nz, Func_c1bc9
	add hl, de
	ret

Func_c1bc9:
	xor a
	ld [$d8b6], a
	dec hl
	ld a, l
	ldh [hff8a], a
	ld a, h
	ldh [hff8b], a
	ld a, [hli]
	ld e, a
	ldh [hff8c], a
	ld a, [hli]
	ld d, a
	ldh [hff8d], a
	ld a, [hli]
	ldh [hff8e], a
	ld a, [hli]
	ldh [hff8f], a
	ld a, [hli]
	ldh [hff90], a
	ld a, [hli]
	ldh [hff91], a
	ld a, [hli]
	ldh [hff92], a
	ld a, [hli]
	ldh [hff93], a
	ld a, [hli]
	ldh [hff94], a
	ld a, [hli]
	ldh [hff95], a
	ld a, [hli]
	ldh [hff96], a
	ld a, [hli]
	ldh [hff97], a
	ld a, [hl]
	ldh [hff98], a
	push hl
	call Func_c1c28
	pop hl
	ldh a, [hff98]
	ld [hld], a
	ldh a, [hff97]
	ld [hld], a
	ldh a, [hff96]
	ld [hld], a
	ldh a, [hff95]
	ld [hld], a
	ldh a, [hff94]
	ld [hld], a
	ldh a, [hff93]
	ld [hld], a
	ldh a, [hff92]
	ld [hld], a
	ldh a, [hff91]
	ld [hld], a
	ldh a, [hff90]
	ld [hld], a
	ldh a, [hff8f]
	ld [hld], a
	ldh a, [hff8e]
	ld [hld], a
	ld de, $d
	xor a
	ret

Func_c1c28:
	ldh a, [hff8e]
	and a
	jp z, Func_c1c39
	dec a
	jp z, Func_c1c64
	dec a
	jp z, Func_c1ca4
	jp Func_c1d82

Func_c1c39:
	ld a, [de]
	ld c, a
	inc e
	ld a, e
	ldh [hff92], a
	ld a, d
	ldh [hff93], a
.asm_c1c42
	ld a, [de]
	ld l, a
	inc e
	ld a, [de]
	ld h, a
	inc e
	inc hl
	inc hl
	ld a, $08
	ld [hli], a
	inc hl
	ld a, [hl]
	and $8f
	ld [hl], a
	dec c
	jr nz, .asm_c1c42
	ld a, [w1d84e]
	ldh [hff8f], a
	ldh a, [hff94]
	ldh [hff91], a
	ldh a, [hff8e]
	inc a
	ldh [hff8e], a
	ret

Func_c1c64:
	ldh a, [hff8f]
	and a
	jr z, .asm_c1c88
	ld b, $00
	ldh a, [hff8f]
	and $02
	jr nz, .asm_c1c73
	ld b, $42
.asm_c1c73
	ld a, [de]
	ld c, a
	inc e
.asm_c1c76
	ld a, [de]
	ld l, a
	inc e
	ld a, [de]
	ld h, a
	inc e
	ld a, [hli]
	add b
	ld [hl], a
	dec c
	jr nz, .asm_c1c76
	ldh a, [hff8f]
	dec a
	ldh [hff8f], a
	ret
.asm_c1c88
	ld b, $67
	ld a, [de]
	ld c, a
	inc e
.asm_c1c8d
	ld a, [de]
	ld l, a
	inc e
	ld a, [de]
	ld h, a
	inc e
	ld a, [hli]
	add b
	ld [hl], a
	dec c
	jr nz, .asm_c1c8d
	ld a, [w1d84f]
	ldh [hff8f], a
	ldh a, [hff8e]
	inc a
	ldh [hff8e], a
	ret

Func_c1ca4:
	ldh a, [hff8f]
	and a
	jr z, .asm_c1cad
	dec a
	ldh [hff8f], a
	ret
.asm_c1cad
	ldh a, [hff90]
	call Func_c1eb1
	ldh a, [hff90]
	cp $07
	jr z, .asm_c1cc1
	jr c, .asm_c1cbe
	ld a, $07
	jr .asm_c1cbf
.asm_c1cbe
	inc a
.asm_c1cbf
	ldh [hff90], a
.asm_c1cc1
	push hl
	push bc
	push de
	push hl
	ld de, $d885
	ld hl, $76df
	ld bc, $d88c
	call Func_a4f
	pop hl
	pop de
	pop bc
	call Func_c31fe
	pop hl
	call Func_c059f
	ldh a, [hff91]
	dec a
	ldh [hff91], a
	jr z, .asm_c1d00
	ldh a, [hff92]
	ld e, a
	ldh a, [hff93]
	ld d, a
	ld a, [de]
	ld l, a
	inc e
	ld a, [de]
	ld h, a
	inc e
	ld bc, $1
	add hl, bc
	xor a
	ld [hl], a
	ld a, e
	ldh [hff92], a
	ld a, d
	ldh [hff93], a
	ld a, [w1d850]
	ldh [hff8f], a
	ret
.asm_c1d00
	push hl
	inc e
	ldh a, [hff94]
	ld c, a
.asm_c1d05
	ld a, [de]
	ld l, a
	inc e
	ld a, [de]
	ld h, a
	inc e
	push hl
	xor a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	pop hl
	push hl
	push bc
	push de
	ld bc, $ffdc
	add hl, bc
	push hl
	ld c, l
	ld b, h
	farcall Func_12efc
	pop hl
	ld a, [hli]
	inc hl
	and a
	jr z, .asm_c1d3e
	ld a, [hld]
	dec hl
	cp $01
	jr nz, .asm_c1d3e
	ld c, l
	ld b, h
	ld a, [w1d851]
	ld d, a
	ld e, $01
	farcall Func_12d91
.asm_c1d3e
	pop de
	pop bc
	pop hl
	dec c
	jr nz, .asm_c1d05
	pop hl
	ldh a, [hff95]
	and a
	jr nz, .asm_c1d62
	ldh a, [hff8a]
	ld l, a
	ldh a, [hff8b]
	ld h, a
	xor a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	xor a
	ldh [hff8e], a
	ret
.asm_c1d62
	ldh a, [hff8e]
	inc a
	ldh [hff8e], a
	ld a, e
	ldh [hff92], a
	ld a, d
	ldh [hff93], a
	ld a, [w1d850]
	ldh [hff8f], a
	dec e
	ldh a, [hff95]
	ldh [hff91], a
	ld [de], a
	push bc
	ld bc, $fff4
	add hl, bc
	pop bc
	ld a, e
	ld [hli], a
	ld a, d
	ld [hld], a

Func_c1d82:
	ldh a, [hff8f]
	and a
	jr z, .asm_c1d8b
	dec a
	ldh [hff8f], a
	ret
.asm_c1d8b
	ldh a, [hff90]
	call Func_c1eb1
	ldh a, [hff90]
	cp $07
	jr z, .asm_c1d9f
	jr c, .asm_c1d9c
	ld a, $07
	jr .asm_c1d9d
.asm_c1d9c
	inc a
.asm_c1d9d
	ldh [hff90], a
.asm_c1d9f
	ldh a, [hff92]
	ld e, a
	ldh a, [hff93]
	ld d, a
	ld a, [de]
	ld l, a
	inc e
	ld a, [de]
	ld h, a
	inc e
	ld a, [hl]
	cp $0b
	jr c, .asm_c1dc8
	cp $26
	jr nc, .asm_c1dc8
	push hl
	ld l, a
	ld h, $00
	ld bc, $6c00
	add hl, bc
	ld a, $04
	call GetFarByte
	ldh [hff97], a
	pop hl
	ld a, $00
	ldh [hff96], a
.asm_c1dc8
	ldh a, [hff96]
	cp $06
	jr z, .asm_c1de2
	jr nc, .asm_c1e08
	push hl
	call w1d85a
	add $01
	ld [hli], a
	ld [hli], a
	ld a, $08
	ld [hli], a
	xor a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	pop hl
	jr .asm_c1e20
.asm_c1de2
	push hl
	ldh a, [hff97]
	and a
.asm_c1de6
	jr z, .asm_c1de6
	ld [hl], a
	sub $0b
	add a
	ld l, a
	ld h, $00
	ld bc, $66d8
	add hl, bc
	ld a, $04
	call GetFarByte
	ld c, a
	inc hl
	ld a, $04
	call GetFarByte
	ld b, a
	inc bc
	ld a, c
	ldh [hff97], a
	ld a, b
	ldh [hff98], a
	pop hl
.asm_c1e08
	push hl
	ldh a, [hff97]
	ld l, a
	ldh a, [hff98]
	ld h, a
	ld a, $04
	call GetFarByte
	ld b, a
	inc hl
	ld a, l
	ldh [hff97], a
	ld a, h
	ldh [hff98], a
	pop hl
	inc hl
	ld a, b
	ld [hld], a
.asm_c1e20
	ldh a, [hff91]
	dec a
	ldh [hff91], a
	jp z, Func_c1e39
	ldh a, [hff96]
	inc a
	ldh [hff96], a
	ld a, e
	ldh [hff92], a
	ld a, d
	ldh [hff93], a
	ld a, [w1d850]
	ldh [hff8f], a
	ret

Func_c1e39:
	push hl
	ldh a, [hff8c]
	ld e, a
	ldh a, [hff8d]
	ld d, a
	inc e
	ldh a, [hff95]
	ld c, a
.asm_c1e44
	ld a, [de]
	ld l, a
	inc e
	ld a, [de]
	ld h, a
	inc e
	push hl
	ld a, [hli]
	inc hl
	ld b, a
	ld a, $06
	ld [hli], a
	xor a
	ld [hli], a
	ld a, b
	cp $09
	jr z, .asm_c1e60
	cp $0a
	jr z, .asm_c1e60
	ld a, $90
	jr .asm_c1e62
.asm_c1e60
	ld a, $80
.asm_c1e62
	ld [hli], a
	ld a, [w1d852]
	ld [hl], a
	pop hl
	push hl
	push bc
	push de
	ld bc, $ffdc
	add hl, bc
	push hl
	ld c, l
	ld b, h
	farcall Func_12efc
	pop hl
	ld a, [hli]
	inc hl
	and a
	jr z, .asm_c1e92
	ld a, [hld]
	dec hl
	cp $01
	jr nz, .asm_c1e92
	ld c, l
	ld b, h
	ld a, [w1d851]
	ld d, a
	ld e, $01
	farcall Func_12d91
.asm_c1e92
	pop de
	pop bc
	pop hl
	dec c
	jr nz, .asm_c1e44
	pop hl
	ldh a, [hff8a]
	ld l, a
	ldh a, [hff8b]
	ld h, a
	xor a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	xor a
	ldh [hff8e], a
	ret

Func_c1eb1:
	push hl
	push bc
	ld l, a
	ld h, $00
	ld a, [$d84c]
	and a
	jr z, .asm_c1ebd
	dec a
.asm_c1ebd
	and a
	jr z, .asm_c1ee1
	dec a
	jr z, .asm_c1ed8
	dec a
	jr z, .asm_c1ecf
	ld bc, $5f0b
	add hl, bc
	ld bc, wc7cd
	jr .asm_c1ee8
.asm_c1ecf
	ld bc, $5f03
	add hl, bc
	ld bc, wc7cd
	jr .asm_c1ee8
.asm_c1ed8
	ld bc, $5efb
	add hl, bc
	ld bc, wc7cb
	jr .asm_c1ee8
.asm_c1ee1
	ld bc, $5ef3
	add hl, bc
	ld bc, wc7cb
.asm_c1ee8
	ld a, [wc7ce]
	and a
	jr nz, .asm_c1ef0
	ld a, [hl]
	ld [bc], a
.asm_c1ef0
	pop bc
	pop hl
	ret
; 0xc1ef3

SECTION "Bank 30@5f13", ROMX[$5f13], BANK[$30]

Func_c1f13:
	ld a, [wceda]
	and a
	ret z
	farcall Func_c69b4
	ret

Func_c1f1f:
	ld a, [$d8bd]
	and a
	ret z
	dec a
	ld [$d8bd], a
	ld l, a
	ld h, $00
	ld a, [$d8be]
	ld c, a
	ld a, [$d8bf]
	ld b, a
	add hl, bc
	ld a, [hl]
	ld [wced7], a
	ret

Func_c1f39:
	ld a, [$d8bd]
	cp e
	ret nc
	ld a, e
	ld [$d8bd], a
	ld a, c
	ld [$d8be], a
	ld a, b
	ld [$d8bf], a
	ret

Func_c1f4b:
	ld a, e
	cp $0d
	jr z, .asm_c1f6e
	cp $0e
	jr z, .asm_c1f78
	cp $0f
	jr z, .asm_c1f82
	cp $10
	jr z, .asm_c1f8c
	cp $11
	jr z, .asm_c1f96
	cp $12
	jr c, .asm_c1f68
	cp $20
	jr c, .asm_c1fa0
.asm_c1f68
	cp $25
	jr z, .asm_c1f8c
	debug_loop
.asm_c1f6e
	ld bc, $5fdd
	ld e, $12
	call Func_c1f39
	jr .asm_c1faa
.asm_c1f78
	ld bc, $5fef
	ld e, $12
	call Func_c1f39
	jr .asm_c1faa
.asm_c1f82
	ld bc, $6001
	ld e, $18
	call Func_c1f39
	jr .asm_c1faa
.asm_c1f8c
	ld bc, $6019
	ld e, $2a
	call Func_c1f39
	jr .asm_c1fbf
.asm_c1f96
	ld bc, $6043
	ld e, $42
	call Func_c1f39
	jr .asm_c1fd1
.asm_c1fa0
	ld bc, $6085
	ld e, $4c
	call Func_c1f39
	jr .asm_c1fd1
.asm_c1faa
	ld a, [wc7cd]
	cp $02
	ret z
	cp $03
	ret z
	ld a, [wc7ce]
	and a
	jr nz, .asm_c1fbe
	ld a, $01
	ld [wc7cd], a
.asm_c1fbe
	ret
.asm_c1fbf
	ld a, [wc7cd]
	cp $03
	ret z
	ld a, [wc7ce]
	and a
	jr nz, .asm_c1fd0
	ld a, $02
	ld [wc7cd], a
.asm_c1fd0
	ret
.asm_c1fd1
	ld a, [wc7ce]
	and a
	jr nz, .asm_c1fdc
	ld a, $03
	ld [wc7cd], a
.asm_c1fdc
	ret
; 0xc1fdd

SECTION "Bank 30@60d1", ROMX[$60d1], BANK[$30]

Func_c20d1:
	ld hl, $d128
	ld de, $6
	ld b, $00
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	bit 7, [hl]
	call nz, Func_c22aa
	add hl, de
	push bc
	inc b
	dec b
	jp nz, .asm_c22a3
	ld a, [$d84d]
	and a
	jr z, .asm_c229c
	call Func_c2410
	ld a, [$d84c]
	and a
	jr z, .asm_c2266
	dec a
	jr z, .asm_c2266
	dec a
	jr z, .asm_c2266
	dec a
	jr z, .asm_c2266
	dec a
	jr z, .asm_c225b
	dec a
	jr z, .asm_c224e
	ld a, [wc7ce]
	and a
	jr nz, .asm_c224c
	ld a, $0c
	ld [wc7cd], a
.asm_c224c
	jr .asm_c2266
.asm_c224e
	ld a, [wc7ce]
	and a
	jr nz, .asm_c2259
	ld a, $0b
	ld [wc7cd], a
.asm_c2259
	jr .asm_c2266
.asm_c225b
	ld a, [wc7ce]
	and a
	jr nz, .asm_c2266
	ld a, $0a
	ld [wc7cd], a
.asm_c2266
	ld a, [wGameMode]
	cp GAMEMODE_CHALLENGE
	jr nz, .asm_c2282
	ld a, [$d84c]
	and a
	jr z, .asm_c2274
	dec a
.asm_c2274
	and a
	jr z, .asm_c2282
	or $80
	ld b, a
	push hl
	farcall Func_9e52
	pop hl
.asm_c2282
	ld a, [wGameMode]
	cp GAMEMODE_UNK6
	jr nz, .asm_c229c
	ld a, [$d84c]
	cp $02
	jr c, .asm_c229c
	ld h, $08
	ld a, $ff
	ldh [hff8a], a
	ld a, h
	ldh [hff8b], a
	call Func_1f12
.asm_c229c
	ld a, $01
	ld [$d84c], a
	jr .asm_c22a4
.asm_c22a3
	nop
.asm_c22a4
	pop bc
	ld a, b
	ld [$d84d], a
	ret

Func_c22aa:
	dec hl
	dec hl
	ld a, [hli]
	inc hl
	cp $01
	jr z, .asm_c22b4
	inc b
	ret
.asm_c22b4
	dec hl
	dec hl
	dec hl
	dec hl
	ld a, [hli]
	inc hl
	inc hl
	inc hl
	cp $09
	jr z, .asm_c22cc
	cp $0a
	jr z, .asm_c22cc
	cp $0b
	jr c, .asm_c22cf
	cp $26
	jr nc, .asm_c22cf
.asm_c22cc
	res 7, [hl]
	ret
.asm_c22cf
	ld de, $22
	add hl, de
	ld a, [hl]
	ld de, $ffde
	add hl, de
	ld de, $6
	cp $00
	jr z, .asm_c22ea
	cp $03
	jr z, .asm_c22ea
	cp $04
	jr z, .asm_c22ea
	res 7, [hl]
	ret
.asm_c22ea
	inc b
	ret

Func_c22ec:
	ld a, [wGameMode]
	cp GAMEMODE_PUZZLE
	ret z
	ld a, [$d882]
	and a
	ret z
	ld a, [$d8b7]
	and a
	ret z
	ld hl, $d126
	ld de, $6
	ld b, $07
	ld a, [hl]
	and a
	jr z, .asm_c230b
	cp b
	jr nz, .asm_c2371
.asm_c230b
	add hl, de
	ld a, [hl]
	and a
	jr z, .asm_c2313
	cp b
	jr nz, .asm_c2371
.asm_c2313
	add hl, de
	ld a, [hl]
	and a
	jr z, .asm_c231b
	cp b
	jr nz, .asm_c2371
.asm_c231b
	add hl, de
	ld a, [hl]
	and a
	jr z, .asm_c2323
	cp b
	jr nz, .asm_c2371
.asm_c2323
	add hl, de
	ld a, [hl]
	and a
	jr z, .asm_c232b
	cp b
	jr nz, .asm_c2371
.asm_c232b
	add hl, de
	ld a, [hl]
	and a
	jr z, .asm_c2333
	cp b
	jr nz, .asm_c2371
.asm_c2333
	xor a
	add hl, de
	cp [hl]
	jr nz, .asm_c2371
	add hl, de
	cp [hl]
	jr nz, .asm_c2371
	add hl, de
	cp [hl]
	jr nz, .asm_c2371
	add hl, de
	cp [hl]
	jr nz, .asm_c2371
	add hl, de
	cp [hl]
	jr nz, .asm_c2371
	add hl, de
	cp [hl]
	jr nz, .asm_c2371
	add hl, de
	cp [hl]
	jr nz, .asm_c2371
	add hl, de
	cp [hl]
	jr nz, .asm_c2371
	add hl, de
	cp [hl]
	jr nz, .asm_c2371
	add hl, de
	cp [hl]
	jr nz, .asm_c2371
	add hl, de
	cp [hl]
	jr nz, .asm_c2371
	add hl, de
	cp [hl]
	jr nz, .asm_c2371
	ld a, [$d881]
	and a
	ret z
	xor a
	ld [$d881], a
	call Func_c0310
	ret

.asm_c2371
	ld a, [$d881]
	and a
	ret nz
	ld a, $01
	ld [$d881], a
	call Func_c0326
	ret

Func_c237f:
	ld a, [wGameMode]
	cp GAMEMODE_PUZZLE
	ret z
	call Func_c238f
	call Func_c23ba
	call Func_c23e5
	ret

Func_c238f:
	ld hl, $d126
	ld de, $6
	ld a, $00
	cp [hl]
	jr nz, .asm_c23b4
	add hl, de
	cp [hl]
	jr nz, .asm_c23b4
	add hl, de
	cp [hl]
	jr nz, .asm_c23b4
	add hl, de
	cp [hl]
	jr nz, .asm_c23b4
	add hl, de
	cp [hl]
	jr nz, .asm_c23b4
	add hl, de
	cp [hl]
	jr nz, .asm_c23b4
	add hl, de
	xor a
	ld [$d87e], a
	ret
.asm_c23b4
	ld a, $01
	ld [$d87e], a
	ret

Func_c23ba:
	ld hl, $d14a
	ld de, $6
	ld a, $00
	cp [hl]
	jr nz, .asm_c23df
	add hl, de
	cp [hl]
	jr nz, .asm_c23df
	add hl, de
	cp [hl]
	jr nz, .asm_c23df
	add hl, de
	cp [hl]
	jr nz, .asm_c23df
	add hl, de
	cp [hl]
	jr nz, .asm_c23df
	add hl, de
	cp [hl]
	jr nz, .asm_c23df
	add hl, de
	xor a
	ld [$d87f], a
	ret
.asm_c23df
	ld a, $01
	ld [$d87f], a
	ret

Func_c23e5:
	ld hl, $d16e
	ld de, $6
	ld a, $00
	cp [hl]
	jr nz, .asm_c240a
	add hl, de
	cp [hl]
	jr nz, .asm_c240a
	add hl, de
	cp [hl]
	jr nz, .asm_c240a
	add hl, de
	cp [hl]
	jr nz, .asm_c240a
	add hl, de
	cp [hl]
	jr nz, .asm_c240a
	add hl, de
	cp [hl]
	jr nz, .asm_c240a
	add hl, de
	xor a
	ld [$d880], a
	ret
.asm_c240a
	ld a, $01
	ld [$d880], a
	ret

Func_c2410:
	ld a, [$d84c]
	cp $02
	ret c
	cp $1f
	jr c, .asm_c241c
	ld a, $1e
.asm_c241c
	add a
	ld l, a
	ld h, $00
	ld bc, $d810
	add hl, bc
	ld a, [hli]
	ld b, [hl]
	ld c, a
	inc bc
	ld a, b
	or c
	jr nz, .asm_c242d
	dec bc
.asm_c242d
	ld a, b
	ld [hld], a
	ld [hl], c
	ret

Func_c2431:
	ld a, [$da5d]
	and a
	ret z
	add a
	ld l, a
	ld h, $00
	ld bc, $d7a2
	add hl, bc
	ld a, [hli]
	ld b, [hl]
	ld c, a
	inc bc
	ld a, b
	or c
	jr nz, .asm_c2447
	dec bc
.asm_c2447
	ld a, b
	ld [hld], a
	ld [hl], c
	ret

Func_c244b:
	ld a, [wcebd]
	and a
	ret nz
	ld a, [wGameMode]
	and a
	jp z, .asm_c2504 ; GAMEMODE_MARATHON
	dec a
	jp z, .asm_c2504 ; GAMEMODE_TIME_ZONE
	dec a
	jp z, .asm_c2473 ; GAMEMODE_LINE_CLEAR
	dec a
	jp z, .asm_c2472 ; GAMEMODE_PUZZLE
	dec a
	jp z, .asm_c24ae ; GAMEMODE_GARBAGE
	dec a
	jp z, .asm_c24ae ; GAMEMODE_CHALLENGE
	dec a
	jp z, .asm_c24d3 ; GAMEMODE_UNK6
	jp .asm_c24d3 ; GAMEMODE_UNK7

.asm_c2472
	ret

.asm_c2473
	ld a, [wceac]
	and a
	jr z, .asm_c247d
	ld a, $06
	jr .asm_c2484
.asm_c247d
	ld a, [wceaa]
	and a
	jr z, .asm_c2484
	dec a
.asm_c2484
	add a
	ldh [hff8a], a
	inc a
	ldh [hff8b], a
	ld a, [$d87f]
	and a
	jr nz, .asm_c249f
	ld a, [$da5a]
	and a
	call nz, Func_c25f3
	ld a, [$da5b]
	and a
	call nz, Func_c261d
	ret
.asm_c249f
	ld a, [$da5a]
	and a
	call nz, Func_c2647
	ld a, [$da5b]
	and a
	call nz, Func_c2671
	ret

.asm_c24ae
	ld a, [wGameLevel]
	and a
	jr z, .asm_c24c2 ; GAMELEVEL_EASY
	dec a
	jr z, .asm_c24c6 ; GAMELEVEL_NORMAL
	dec a
	jr z, .asm_c24ca ; GAMELEVEL_HARD
	dec a
	jr z, .asm_c24ca ; GAMELEVEL_S_HARD
	dec a
	jr z, .asm_c24ca ; GAMELEVEL_V_HARD
	jr .asm_c24c2 ; GAMELEVEL_SLOW
.asm_c24c2
	ld a, $02
	jr .asm_c24cc
.asm_c24c6
	ld a, $06
	jr .asm_c24cc
.asm_c24ca
	ld a, $0a
.asm_c24cc
	ldh [hff8a], a
	inc a
	ldh [hff8b], a
	jr .asm_c24e0

.asm_c24d3
	ld a, [wcea7]
	and a
	jr z, .asm_c24da
	dec a
.asm_c24da
	add a
	ldh [hff8a], a
	inc a
	ldh [hff8b], a
.asm_c24e0
	ld a, [$d87f]
	and a
	jr nz, .asm_c24f5
	ld a, [$da5a]
	and a
	call nz, Func_c269b
	ld a, [$da5b]
	and a
	call nz, Func_c26c5
	ret
.asm_c24f5
	ld a, [$da5a]
	and a
	call nz, Func_c26ef
	ld a, [$da5b]
	and a
	call nz, Func_c2719
	ret

.asm_c2504
	ld a, [wGameLevel]
	and a
	jr z, .asm_c2518 ; GAMELEVEL_EASY
	dec a
	jr z, .asm_c251c ; GAMELEVEL_NORMAL
	dec a
	jr z, .asm_c2520 ; GAMELEVEL_HARD
	dec a
	jr z, .asm_c2520 ; GAMELEVEL_S_HARD
	dec a
	jr z, .asm_c2520 ; GAMELEVEL_V_HARD
	jr .asm_c2518 ; GAMELEVEL_SLOW
.asm_c2518
	ld a, $00
	jr .asm_c2522
.asm_c251c
	ld a, $02
	jr .asm_c2522
.asm_c2520
	ld a, $04
.asm_c2522
	ldh [hff8a], a
	inc a
	ldh [hff8b], a
	ld a, [$d87f]
	and a
	jr nz, .asm_c253c
	ld a, [$da5a]
	and a
	call nz, Func_c254b
	ld a, [$da5b]
	and a
	call nz, Func_c2575
	ret
.asm_c253c
	ld a, [$da5a]
	and a
	call nz, Func_c259f
	ld a, [$da5b]
	and a
	call nz, Func_c25c9
	ret

Func_c254b:
	push bc
	push de
	ld bc, $6532
	ld d, $03
	ldh a, [hff8a]
	ld e, a
	ld a, [$da5a]
	call Func_8bc
	pop de
	pop bc
	ld c, a
	push bc
	push de
	ld bc, $6532
	ld d, $03
	ldh a, [hff8b]
	ld e, a
	ld a, [$da5a]
	call Func_8bc
	pop de
	pop bc
	ld b, a
	call Func_c2743
	ret

Func_c2575:
	push bc
	push de
	ld bc, $6646
	ld d, $03
	ldh a, [hff8a]
	ld e, a
	ld a, [$da5b]
	call Func_8bc
	pop de
	pop bc
	ld c, a
	push bc
	push de
	ld bc, $6646
	ld d, $03
	ldh a, [hff8b]
	ld e, a
	ld a, [$da5b]
	call Func_8bc
	pop de
	pop bc
	ld b, a
	call Func_c2743
	ret

Func_c259f:
	push bc
	push de
	ld bc, $66b8
	ld d, $03
	ldh a, [hff8a]
	ld e, a
	ld a, [$da5a]
	call Func_8bc
	pop de
	pop bc
	ld c, a
	push bc
	push de
	ld bc, $66b8
	ld d, $03
	ldh a, [hff8b]
	ld e, a
	ld a, [$da5a]
	call Func_8bc
	pop de
	pop bc
	ld b, a
	call Func_c2743
	ret

Func_c25c9:
	push bc
	push de
	ld bc, $6742
	ld d, $03
	ldh a, [hff8a]
	ld e, a
	ld a, [$da5b]
	call Func_8bc
	pop de
	pop bc
	ld c, a
	push bc
	push de
	ld bc, $6742
	ld d, $03
	ldh a, [hff8b]
	ld e, a
	ld a, [$da5b]
	call Func_8bc
	pop de
	pop bc
	ld b, a
	call Func_c2743
	ret

Func_c25f3:
	push bc
	push de
	ld bc, $6efb
	ld d, $03
	ldh a, [hff8a]
	ld e, a
	ld a, [$da5a]
	call Func_8bc
	pop de
	pop bc
	ld c, a
	push bc
	push de
	ld bc, $6efb
	ld d, $03
	ldh a, [hff8b]
	ld e, a
	ld a, [$da5a]
	call Func_8bc
	pop de
	pop bc
	ld b, a
	call Func_c2743
	ret

Func_c261d:
	push bc
	push de
	ld bc, $70ef
	ld d, $03
	ldh a, [hff8a]
	ld e, a
	ld a, [$da5b]
	call Func_8bc
	pop de
	pop bc
	ld c, a
	push bc
	push de
	ld bc, $70ef
	ld d, $03
	ldh a, [hff8b]
	ld e, a
	ld a, [$da5b]
	call Func_8bc
	pop de
	pop bc
	ld b, a
	call Func_c2743
	ret

Func_c2647:
	push bc
	push de
	ld bc, $71c1
	ld d, $03
	ldh a, [hff8a]
	ld e, a
	ld a, [$da5a]
	call Func_8bc
	pop de
	pop bc
	ld c, a
	push bc
	push de
	ld bc, $71c1
	ld d, $03
	ldh a, [hff8b]
	ld e, a
	ld a, [$da5a]
	call Func_8bc
	pop de
	pop bc
	ld b, a
	call Func_c2743
	ret

Func_c2671:
	push bc
	push de
	ld bc, $7273
	ld d, $03
	ldh a, [hff8a]
	ld e, a
	ld a, [$da5b]
	call Func_8bc
	pop de
	pop bc
	ld c, a
	push bc
	push de
	ld bc, $7273
	ld d, $03
	ldh a, [hff8b]
	ld e, a
	ld a, [$da5b]
	call Func_8bc
	pop de
	pop bc
	ld b, a
	call Func_c2743
	ret

Func_c269b:
	push bc
	push de
	ld bc, $6888
	ld d, $03
	ldh a, [hff8a]
	ld e, a
	ld a, [$da5a]
	call Func_8bc
	pop de
	pop bc
	ld c, a
	push bc
	push de
	ld bc, $6888
	ld d, $03
	ldh a, [hff8b]
	ld e, a
	ld a, [$da5a]
	call Func_8bc
	pop de
	pop bc
	ld b, a
	call Func_c2743
	ret

Func_c26c5:
	push bc
	push de
	ld bc, $6b24
	ld d, $03
	ldh a, [hff8a]
	ld e, a
	ld a, [$da5b]
	call Func_8bc
	pop de
	pop bc
	ld c, a
	push bc
	push de
	ld bc, $6b24
	ld d, $03
	ldh a, [hff8b]
	ld e, a
	ld a, [$da5b]
	call Func_8bc
	pop de
	pop bc
	ld b, a
	call Func_c2743
	ret

Func_c26ef:
	push bc
	push de
	ld bc, $6c3e
	ld d, $03
	ldh a, [hff8a]
	ld e, a
	ld a, [$da5a]
	call Func_8bc
	pop de
	pop bc
	ld c, a
	push bc
	push de
	ld bc, $6c3e
	ld d, $03
	ldh a, [hff8b]
	ld e, a
	ld a, [$da5a]
	call Func_8bc
	pop de
	pop bc
	ld b, a
	call Func_c2743
	ret

Func_c2719:
	push bc
	push de
	ld bc, $6d0e
	ld d, $03
	ldh a, [hff8a]
	ld e, a
	ld a, [$da5b]
	call Func_8bc
	pop de
	pop bc
	ld c, a
	push bc
	push de
	ld bc, $6d0e
	ld d, $03
	ldh a, [hff8b]
	ld e, a
	ld a, [$da5b]
	call Func_8bc
	pop de
	pop bc
	ld b, a
	call Func_c2743
	ret

Func_c2743:
	ld hl, $d8b8
	ld a, [hli]
	sub c
	ld a, [hld]
	sbc b
	ret nc
	ld a, c
	ld [hli], a
	ld [hl], b
	ret

Func_c274f:
	ld a, [$da5d]
	and a
	jr z, .asm_c2786
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	ld bc, $7508
	add hl, bc
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
	ld a, [hli]
	ldh [hff8f], a
	ld a, [hli]
	ldh [hff90], a
	push bc
	push de
	push hl
	ld de, $d885
	ld hl, hff8a
	ld bc, $d88c
	call Func_a4f
	pop hl
	pop de
	pop bc
.asm_c2786
	ld a, [$da5e]
	and a
	jr z, .asm_c27bd
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	ld bc, $7410
	add hl, bc
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
	ld a, [hli]
	ldh [hff8f], a
	ld a, [hli]
	ldh [hff90], a
	push bc
	push de
	push hl
	ld de, $d885
	ld hl, hff8a
	ld bc, $d88c
	call Func_a4f
	pop hl
	pop de
	pop bc
.asm_c27bd
	call Func_c31fe
	ret

Func_c27c1:
	ret

Func_c27c2:
	push bc
	push de
	push hl
	ld a, [$d904]
	inc a
	and $3f
	ld c, a
	ld a, [$d903]
	cp c
	jr z, .asm_c27e1
	ld a, [$d904]
	ld e, a
	ld d, $00
	ld hl, $d8c3
	add hl, de
	ld [hl], b
	ld a, c
	ld [$d904], a
.asm_c27e1
	pop hl
	pop de
	pop bc
	ret

Func_c27e5:
	ld a, [$d904]
	ld e, a
	ld a, [$d903]
	cp e
	jr z, .asm_c27f1
	and a
	ret
.asm_c27f1
	scf
	ret

Func_c27f3:
	ld a, [$d903]
	ld c, a
	ld b, $00
	ld hl, $d8c3
	add hl, bc
	ld b, [hl]
	ret

Func_c27ff:
	push de
	push hl
	ld a, [$d904]
	ld e, a
	ld a, [$d903]
	cp e
	jr z, .asm_c281d
	ld e, a
	inc a
	and $3f
	ld [$d903], a
	ld d, $00
	ld hl, $d8c3
	add hl, de
	ld b, [hl]
	pop hl
	pop de
	and a
	ret
.asm_c281d
	pop hl
	pop de
	scf
	ret
; 0xc2821

SECTION "Bank 30@6845", ROMX[$6845], BANK[$30]

Func_c2845:
	ld a, [wGameMode]
	cp GAMEMODE_GARBAGE
	ret nz
	ld a, [$d89e]
	and a
	ret z
	farcall Func_13671
	ld a, e
	and a
	ret z
	ld d, $00
	ld hl, $6864
	add hl, de
	ld b, [hl]
	call Func_c27c2
	ret
; 0xc2864

SECTION "Bank 30@6875", ROMX[$6875], BANK[$30]

Func_c2875:
	call Func_c27e5
	ret c
	ld hl, wBlocks
	ld de, BLOCK_STRUCT_SIZE
	ld a, [hl]
	add hl, de
	or [hl]
	add hl, de
	or [hl]
	add hl, de
	or [hl]
	add hl, de
	or [hl]
	add hl, de
	or [hl]
	add hl, de
	and a
	ret nz
	call Func_c27f3
	bit 7, b
	jr nz, .asm_c28a2
	ld a, b
	cp $11
	jr c, .asm_c289d
	cp $20
	jr c, .asm_c28a2
.asm_c289d
	ld a, [wced8]
	and a
	ret z
.asm_c28a2
	call Func_c27ff
	jr nc, .asm_c28a9
	debug_loop
.asm_c28a9
	ld d, $00
	ld a, b
	and $7f
	ld e, a
	cp $0d
	jr z, .asm_c28c0
	cp $0e
	jr z, .asm_c28db
	cp $0f
	jr z, .asm_c28f0
	ld bc, $d142
	jr .asm_c2913
.asm_c28c0
	ld a, [$d8c0]
	cp $01
	jr c, .asm_c28cb
	cp $02
	jr c, .asm_c28cf
.asm_c28cb
	ld a, $01
	jr .asm_c28d0
.asm_c28cf
	inc a
.asm_c28d0
	ld [$d8c0], a
	push bc
	ld b, a
	add a
	add b
	pop bc
	dec a
	jr .asm_c2903
.asm_c28db
	ld a, [$d8c1]
	cp $03
	jr c, .asm_c28e6
	cp $05
	jr c, .asm_c28ea
.asm_c28e6
	ld a, $03
	jr .asm_c28eb
.asm_c28ea
	inc a
.asm_c28eb
	ld [$d8c1], a
	jr .asm_c2903
.asm_c28f0
	ld a, [$d8c2]
	cp $04
	jr c, .asm_c28fb
	cp $05
	jr c, .asm_c28ff
.asm_c28fb
	ld a, $04
	jr .asm_c2900
.asm_c28ff
	inc a
.asm_c2900
	ld [$d8c2], a
.asm_c2903
	ld l, a
	ld h, $00
	push bc
	ld c, l
	ld b, h
	add hl, hl
	add hl, bc
	add hl, hl ; *6
	pop bc
	ld bc, wBlocks
	add hl, bc
	ld c, l
	ld b, h
.asm_c2913
	farcall Func_12186
	ret
; 0xc291a

SECTION "Bank 30@6925", ROMX[$6925], BANK[$30]

Func_c2925:
	ld a, b
	and a
	call nz, Func_c2935
	ld a, c
	and a
	call nz, Func_c2a19
	ld a, d
	and a
	call nz, Func_c29d5
	ret

Func_c2935:
	push bc
	push de
	ld l, a
	cp $01
.asm_c293a
	jr z, .asm_c293a
	cp $12
	jr c, .asm_c2942
	ld l, $11
.asm_c2942
	ld a, l
	add $c3
	ld l, a
	ld a, $69
	adc $00
	ld h, a
	ld a, [hl]
	and a
	jr z, .asm_c29c0
	ld b, a
	ld a, [wceb7]
	and a
	jr nz, .asm_c295a
	ld c, $18
	jr .asm_c295c
.asm_c295a
	ld c, $1f
.asm_c295c
	ld a, b
	cp c
	jr c, .asm_c2961
	ld b, c
.asm_c2961
	ld a, [$d987]
	bit 7, a
	jr nz, .asm_c29a3
	ld a, [$d985]
	add $04
	and $7f
	ld c, a
	ld a, [$d986]
	cp c
	jr z, .asm_c29c0
	ld a, [$d985]
	or $80
	ld [$d987], a
	ld a, [$d985]
	add $04
	and $7f
	ld [$d985], a
	ld a, [$d987]
	and $7f
	ld l, a
	ld h, $00
	ld de, w1d905
	add hl, de
	ld a, $3c
	ld [hli], a
	ld a, b
	ld [hli], a
	ld a, [$d988]
	ld [hli], a
	ld a, [$d989]
	ld [hl], a
	jr .asm_c29c0
.asm_c29a3
	ld a, [$d987]
	and $7f
	ld l, a
	ld h, $00
	ld de, w1d905
	add hl, de
	ld a, $3c
	ld [hli], a
	ld a, b
	cp [hl]
	jr c, .asm_c29b7
	ld [hl], a
.asm_c29b7
	inc hl
	ld a, [$d988]
	ld [hli], a
	ld a, [$d989]
	ld [hl], a
.asm_c29c0
	pop de
	pop bc
	ret
; 0xc29c3

SECTION "Bank 30@69d5", ROMX[$69d5], BANK[$30]

Func_c29d5:
	dec a
.asm_c29d6
	jr z, .asm_c29d6
	dec a
.asm_c29d9
	jr z, .asm_c29d9
	dec a
	jr z, .asm_c2a13
	dec a
	jr z, .asm_c2a0e
	dec a
	jr z, .asm_c2a09
	dec a
	jr z, .asm_c2a04
	dec a
	jr z, .asm_c29ff
	dec a
	jr z, .asm_c29fa
	dec a
	jr z, .asm_c29f5
	ld a, $25
	call Func_c2ad8
.asm_c29f5
	ld a, $25
	call Func_c2ad8
.asm_c29fa
	ld a, $25
	call Func_c2ad8
.asm_c29ff
	ld a, $25
	call Func_c2ad8
.asm_c2a04
	ld a, $25
	call Func_c2ad8
.asm_c2a09
	ld a, $25
	call Func_c2ad8
.asm_c2a0e
	ld a, $25
	call Func_c2ad8
.asm_c2a13
	ld a, $25
	call Func_c2ad8
	ret

Func_c2a19:
	dec a
.asm_c2a1a
	jr z, .asm_c2a1a
	dec a
.asm_c2a1d
	jr z, .asm_c2a1d
	dec a
	ret z
	dec a
	jp z, Func_c2ad2
	dec a
	jp z, Func_c2acc
	dec a
	jp z, Func_c2ac6
	dec a
	jp z, Func_c2ac0
	dec a
	jp z, Func_c2ab5
	dec a
	jp z, Func_c2aaa
	dec a
	jp z, Func_c2a9f
	dec a
	jp z, Func_c2a94
	dec a
	jp z, Func_c2a89
	dec a
	jp z, Func_c2a84
	dec a
	jp z, Func_c2a7f
	dec a
	jp z, Func_c2a7a
	dec a
	jp z, Func_c2a75
	dec a
	jp z, Func_c2a70
	dec a
	jp z, Func_c2a6b
	dec a
	jp z, Func_c2a66
	ld a, $10
	call Func_c2ad8
Func_c2a66:
	ld a, $10
	call Func_c2ad8
Func_c2a6b:
	ld a, $10
	call Func_c2ad8
Func_c2a70:
	ld a, $10
	call Func_c2ad8
Func_c2a75:
	ld a, $10
	call Func_c2ad8
Func_c2a7a:
	ld a, $10
	call Func_c2ad8
Func_c2a7f:
	ld a, $10
	call Func_c2ad8
Func_c2a84:
	ld a, $10
	call Func_c2ad8
Func_c2a89:
	ld a, $10
	call Func_c2ad8
	ld a, $10
	call Func_c2ad8
	ret

Func_c2a94:
	ld a, $10
	call Func_c2ad8
	ld a, $0f
	call Func_c2ad8
	ret

Func_c2a9f:
	ld a, $0f
	call Func_c2ad8
	ld a, $0f
	call Func_c2ad8
	ret

Func_c2aaa:
	ld a, $0e
	call Func_c2ad8
	ld a, $0e
	call Func_c2ad8
	ret

Func_c2ab5:
	ld a, $0e
	call Func_c2ad8
	ld a, $0d
	call Func_c2ad8
	ret

Func_c2ac0:
	ld a, $10
	call Func_c2ad8
	ret

Func_c2ac6:
	ld a, $0f
	call Func_c2ad8
	ret

Func_c2acc:
	ld a, $0e
	call Func_c2ad8
	ret

Func_c2ad2:
	ld a, $0d
	call Func_c2ad8
	ret
; 0xc2ad8

SECTION "Bank 30@6ad8", ROMX[$6ad8], BANK[$30]

Func_c2ad8:
	push bc
	push de
	ld b, a
	ld a, [$d985]
	add $04
	and $7f
	ld c, a
	ld a, [$d986]
	cp c
	jr z, .asm_c2b04
	ld a, [$d985]
	ld l, a
	ld h, $00
	ld de, w1d905
	add hl, de
	ld a, $3c
	ld [hli], a
	ld a, b
	ld [hli], a
	ld a, [$d988]
	ld [hli], a
	ld a, [$d989]
	ld [hl], a
	ld a, c
	ld [$d985], a
.asm_c2b04
	pop de
	pop bc
	ret

Func_c2b07:
	ld a, [$d986]
	ld b, a
	ld a, [$d985]
	cp b
	ret z
	ld a, [$d987]
	bit 7, a
	jr z, .asm_c2b23
	and $7f
	ld l, a
	ld h, $00
	ld de, w1d905
	add hl, de
	ld a, $3c
	ld [hl], a
.asm_c2b23
	ld a, [$d986]
	ld b, a
	ld a, [$d985]
	add $80
	sub b
	and $7f
	srl a
	srl a
	ld b, a
	ld a, [$d986]
	ld l, a
	ld h, $00
	ld de, $d908
	add hl, de
	ld de, $4
.asm_c2b41
	ld a, [hld]
	dec hl
	dec hl
	and a
	jr z, .asm_c2b5b
	ld d, a
	inc hl
	inc hl
	ld a, [hld]
	dec hl
	ld e, a
	ld a, [de]
	ld de, $4
	and a
	jr z, .asm_c2b5b
	ld a, $3c
	ld [hli], a
	inc hl
	inc hl
	jr .asm_c2b64
.asm_c2b5b
	ld a, [hl]
	and a
	jr z, .asm_c2b61
	dec a
	ld [hl], a
.asm_c2b61
	inc hl
	inc hl
	inc hl
.asm_c2b64
	add hl, de
	dec b
	jr nz, .asm_c2b41
	ld a, [$d986]
	ld l, a
	ld h, $00
	ld de, w1d905
	add hl, de
	ld a, [hli]
	and a
	ret nz
	ld a, [$d986]
	add $04
	and $7f
	ld [$d986], a
	ld a, [hl]
	ld b, a
	call Func_c27c2
	ret

Func_c2b85:
	ld a, [w1d58c]
	and a
	jr nz, .asm_c2b93
	xor a
	ld hl, $d28e
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ret
.asm_c2b93
	bit 0, a
	jr nz, .asm_c2bb5
	bit 1, a
	jr nz, .asm_c2bbc
	bit 2, a
	jr nz, .asm_c2bc3
	bit 3, a
	jr nz, .asm_c2bca
	bit 4, a
	jr nz, .asm_c2bd1
	bit 5, a
	jr nz, .asm_c2bd8
	bit 6, a
	jr nz, .asm_c2bdf
	bit 7, a
	jr nz, .asm_c2be6
	debug_loop
.asm_c2bb5
	res 0, a
	ld de, w1d479
	jr .asm_c2bed
.asm_c2bbc
	res 1, a
	ld de, w1d4b2
	jr .asm_c2bed
.asm_c2bc3
	res 2, a
	ld de, w1d4e5
	jr .asm_c2bed
.asm_c2bca
	res 3, a
	ld de, w1d55a
	jr .asm_c2bed
.asm_c2bd1
	res 4, a
	ld de, w1d506
	jr .asm_c2bed
.asm_c2bd8
	res 5, a
	ld de, w1d518
	jr .asm_c2bed
.asm_c2bdf
	res 6, a
	ld de, w1d52a
	jr .asm_c2bed
.asm_c2be6
	res 7, a
	ld de, w1d56c
	jr .asm_c2bed
.asm_c2bed
	ld [w1d58c], a
	ld hl, w1d28c + $2
	ld a, $c3 ; jp
	ld [hli], a
	ld a, e
	ld [hli], a
	ld [hl], d
	ret

Func_c2bfa:
	ld de, $4000
	ld c, $00

	; overwrites w1d291 with the correct block tiles to push to the screen

	FOR n, 0, BOARD_AREA
		DEF _block_x = n % BOARD_WIDTH
		DEF _block_y = n / BOARD_WIDTH

		ld a, [wBlocks{02x:n} + BLOCKSTRUCT_UNK1]
		ld l, a
		ld h, c ; $00
		add hl, hl
		add hl, hl ; *4
		add hl, de
		ld a, [hli] ; top-left tile
		ld [w1d291 + ((BOARD_WIDTH - 1) - _block_x) * $4 + _block_y * $36 + $4 + $0], a
		ld a, [hli] ; top-right tile
		ld [w1d291 + ((BOARD_WIDTH - 1) - _block_x) * $4 + _block_y * $36 + $4 + $1], a
		ld a, [hli] ; bottom-left tile
		ld [w1d291 + ((BOARD_WIDTH - 1) - _block_x) * $4 + _block_y * $36 + $1f + $0], a
		ld a, [hli] ; bottom-right tile
		ld [w1d291 + ((BOARD_WIDTH - 1) - _block_x) * $4 + _block_y * $36 + $1f + $1], a
	ENDR

	ret

Func_c3110:
	ld hl, w1d58c
	set 0, [hl]
	ld a, [wGameMode]
	cp GAMEMODE_PUZZLE
	jp z, .asm_c31b3
	ld de, $4000
	ld c, $00
	ld a, [$d269]
	ld l, a
	ld h, c ; $00
	add hl, hl
	add hl, hl ; *4
	add hl, de
	ld a, [hli]
	ld [$d491], a
	ld a, [hli]
	ld [$d492], a
	ld a, [hli]
	ld [$d4ac], a
	ld a, [hli]
	ld [$d4ad], a
	ld a, [$d26f]
	ld l, a
	ld h, c ; $00
	add hl, hl
	add hl, hl ; *4
	add hl, de
	ld a, [hli]
	ld [$d48d], a
	ld a, [hli]
	ld [$d48e], a
	ld a, [hli]
	ld [$d4a8], a
	ld a, [hli]
	ld [$d4a9], a
	ld a, [$d275]
	ld l, a
	ld h, c ; $00
	add hl, hl
	add hl, hl ; *4
	add hl, de
	ld a, [hli]
	ld [$d489], a
	ld a, [hli]
	ld [$d48a], a
	ld a, [hli]
	ld [$d4a4], a
	ld a, [hli]
	ld [$d4a5], a
	ld a, [$d27b]
	ld l, a
	ld h, c ; $00
	add hl, hl
	add hl, hl ; *4
	add hl, de
	ld a, [hli]
	ld [$d485], a
	ld a, [hli]
	ld [$d486], a
	ld a, [hli]
	ld [$d4a0], a
	ld a, [hli]
	ld [$d4a1], a
	ld a, [$d281]
	ld l, a
	ld h, c ; $00
	add hl, hl
	add hl, hl ; *4
	add hl, de
	ld a, [hli]
	ld [$d481], a
	ld a, [hli]
	ld [$d482], a
	ld a, [hli]
	ld [$d49c], a
	ld a, [hli]
	ld [$d49d], a
	ld a, [$d287]
	ld l, a
	ld h, c ; $00
	add hl, hl
	add hl, hl ; *4
	add hl, de
	ld a, [hli]
	ld [$d47d], a
	ld a, [hli]
	ld [$d47e], a
	ld a, [hli]
	ld [$d498], a
	ld a, [hli]
	ld [$d499], a
	ret

.asm_c31b3
	ld a, $03
	ld [$d491], a
	ld [$d492], a
	ld [$d4ac], a
	ld [$d4ad], a
	ld [$d48d], a
	ld [$d48e], a
	ld [$d4a8], a
	ld [$d4a9], a
	ld [$d489], a
	ld [$d48a], a
	ld [$d4a4], a
	ld [$d4a5], a
	ld [$d485], a
	ld [$d486], a
	ld [$d4a0], a
	ld [$d4a1], a
	ld [$d481], a
	ld [$d482], a
	ld [$d49c], a
	ld [$d49d], a
	ld [$d47d], a
	ld [$d47e], a
	ld [$d498], a
	ld [$d499], a
	ret

Func_c31fe:
	ld a, [wGameMode]
	cp GAMEMODE_PUZZLE
	ret z
	cp GAMEMODE_CHALLENGE
	ret z
	cp GAMEMODE_UNK6
	ret z
	ld hl, w1d58c
	set 4, [hl]
	ld b, $10
	ld a, [$d88a]
	and a
	jr nz, .asm_c3231
	ld a, [$d889]
	and a
	jr nz, .asm_c3238
	ld a, [$d888]
	and a
	jr nz, .asm_c323f
	ld a, [$d887]
	and a
	jr nz, .asm_c3246
	ld a, [$d886]
	and a
	jr nz, .asm_c324d
	jr .asm_c3254
.asm_c3231
	ld a, [$d88a]
	add b
	ld [$d512], a
.asm_c3238
	ld a, [$d889]
	add b
	ld [$d513], a
.asm_c323f
	ld a, [$d888]
	add b
	ld [$d50e], a
.asm_c3246
	ld a, [$d887]
	add b
	ld [$d50f], a
.asm_c324d
	ld a, [$d886]
	add b
	ld [$d50a], a
.asm_c3254
	ld a, [$d885]
	add b
	ld [$d50b], a
	ret

Func_c325c:
	ld a, [wGameMode]
	cp GAMEMODE_PUZZLE
	ret z
	cp GAMEMODE_CHALLENGE
	ret z
	cp GAMEMODE_UNK6
	ret z
	cp GAMEMODE_UNK7
	ret z
	call Func_c32d9
	ld a, [wGameMode]
	cp GAMEMODE_GARBAGE
	jr nz, .asm_c327a
	ld a, [wcef8]
	jr .asm_c327d
.asm_c327a
	ld a, [w1d8ab]
.asm_c327d
	call ConvertToDigits
	ld a, d
	cp $10
	jr z, .asm_c3288
	ld [$d55e], a
.asm_c3288
	ld a, e
	ld [$d55f], a
	ret

Func_c328d:
	ld a, [wGameMode]
	cp GAMEMODE_PUZZLE
	ret z
	cp GAMEMODE_CHALLENGE
	ret z
	cp GAMEMODE_UNK6
	ret z
	cp GAMEMODE_UNK7
	ret z
	call Func_c32d9
	ld a, [$d8b8]
	ld e, a
	ld a, [$d8b9]
	ld d, a
	call Func_bed
	ld a, d
	add $10
	ld [$d55e], a
	ld a, e
	add $10
	ld [$d55f], a
	ld a, [wGameMode]
	cp GAMEMODE_GARBAGE
	jr z, .asm_c32cb
	ld a, $2d
	ld [$d567], a
	inc a
	ld [$d562], a
	inc a
	ld [$d563], a
	ret
.asm_c32cb
	ld a, $30
	ld [$d567], a
	inc a
	ld [$d562], a
	inc a
	ld [$d563], a
	ret

Func_c32d9:
	ld a, [wGameMode]
	cp GAMEMODE_PUZZLE
	ret z
	cp GAMEMODE_CHALLENGE
	ret z
	cp GAMEMODE_UNK6
	ret z
	cp GAMEMODE_UNK7
	ret z
	ld hl, w1d58c
	set 3, [hl]
	ld a, [$d89f]
	ld [$d55f], a
	ld a, [$d8a0]
	ld [$d55e], a
	ld a, [$d8a1]
	ld [$d563], a
	ld a, [$d8a2]
	ld [$d562], a
	ld a, [$d8a3]
	ld [$d567], a
	ld a, [$d8a4]
	ld [$d566], a
	ret

Func_c3312:
	ld a, [$d89b]
	call ConvertToDigits
	ld a, [$d89e]
	and a
	jr z, .asm_c3323
	ld a, [$d571]
	cp e
	ret z
.asm_c3323
	ld a, e
	ld [$d571], a
	ld a, d
	ld [$d570], a
	ld a, [$d89c]
	call ConvertToDigits
	ld a, e
	ld [$d578], a
	ld a, d
	ld [$d577], a
	ld a, [$d89d]
	call ConvertToDigits
	ld a, d
	cp $10
	jr z, .asm_c334e
	ld a, e
	ld [$d582], a
	ld a, d
	ld [$d581], a
	jr .asm_c3364
.asm_c334e
	ld a, [$d8a5]
	ld [$d582], a
	ld a, e
	cp $10
	jr z, .asm_c335e
	ld [$d581], a
	jr .asm_c3364
.asm_c335e
	ld a, [$d8a6]
	ld [$d581], a
.asm_c3364
	ld hl, w1d58c
	set 7, [hl]
	ret

Func_c336a:
	ld a, [wc7ce]
	and a
	ret nz
	ld a, [$d87f]
	and a
	jr z, .asm_c3387
	ld a, [wceb8]
	and a
	jr nz, .asm_c3381
	ld a, $26
	ld [wc7cd], a
	ret
.asm_c3381
	ld a, $3d
	ld [wc7cb], a
	ret
.asm_c3387
	ld a, [wceb8]
	and a
	jr nz, .asm_c3392
	ld bc, $73a8
	jr .asm_c3397
.asm_c3392
	ld bc, $73ac
	jr .asm_c3397
.asm_c3397
	ld a, [wcea3]
	add a
	add a
	add a
	ld l, a
	ld h, $00
	add hl, bc
	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a
	ld a, [hli]
	ld [bc], a
	ret
; 0xc33a8
