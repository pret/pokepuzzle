Func_44000:
	ld a, [wGameMode]
	ld c, a
	add a
	add c
	ld c, a
	ld b, $00
	ld hl, .VBlankTrampolines
	add hl, bc
	ld a, [hli]
	ldh [hVBlankTrampolinePtr], a
	ld a, [hli]
	ldh [$ffbb], a
	ld a, [hl]
	ldh [hVBlankTrampolineBank], a
	ret

.VBlankTrampolines:
	table_width 3
	dab Func_44047 ; GAMEMODE_MARATHON
	dab Func_44047 ; GAMEMODE_TIME_ZONE
	dwb $4361, $11 ; GAMEMODE_LINE_CLEAR
	dwb $4666, $11 ; GAMEMODE_PUZZLE
	dab Func_44047 ; GAMEMODE_GARBAGE
	dwb $491f, $11 ; GAMEMODE_CHALLENGE
	dwb $4d10, $11 ; GAMEMODE_UNK6
	dwb $5109, $11 ; GAMEMODE_UNK7
	assert_table_length NUM_GAME_MODES
	dwb $4d0d, $11
	dab NULL
	dab NULL
	dab NULL
	dab NULL
	dwb $548c, $11
	dwb $402d, $13
	dwb $5819, $11

Func_44047:
	call Func_1c92
	ret nc
	xor a
	vramswitch
	ld hl, rVDMA_SRC_HIGH
	ld a, $dd
	ld [hli], a ; rVDMA_SRC_HIGH
	ld a, $80
	ld [hli], a ; rVDMA_SRC_LOW
	ld a, HIGH(v0BGMap0)
	ld [hli], a ; rVDMA_DEST_HIGH
	ld a, LOW(v0BGMap0)
	ld [hli], a ; rVDMA_DEST_LOW
	xor a
	ld [hl], a ; rVDMA_LEN
	ld a, $90
	ldh [rVDMA_SRC_LOW], a
	ld a, $20
	ldh [rVDMA_DEST_LOW], a
	xor a
	ldh [rVDMA_LEN], a
	ld a, $a0
	ldh [rVDMA_SRC_LOW], a
	ld a, $40
	ldh [rVDMA_DEST_LOW], a
	xor a
	ldh [rVDMA_LEN], a
	ld a, $b0
	ldh [rVDMA_SRC_LOW], a
	ld a, $60
	ldh [rVDMA_DEST_LOW], a
	xor a
	ldh [rVDMA_LEN], a
	ld a, $c0
	ldh [rVDMA_SRC_LOW], a
	ld a, $80
	ldh [rVDMA_DEST_LOW], a
	xor a
	ldh [rVDMA_LEN], a
	ld a, $d0
	ldh [rVDMA_SRC_LOW], a
	ld a, $a0
	ldh [rVDMA_DEST_LOW], a
	xor a
	ldh [rVDMA_LEN], a
	ld a, $e0
	ldh [rVDMA_SRC_LOW], a
	ld a, $c0
	ldh [rVDMA_DEST_LOW], a
	xor a
	ldh [rVDMA_LEN], a
	ld a, $f0
	ldh [rVDMA_SRC_LOW], a
	ld a, $e0
	ldh [rVDMA_DEST_LOW], a
	xor a
	ldh [rVDMA_LEN], a

	ld hl, rVDMA_SRC_HIGH
	ld a, $de
	ld [hli], a ; rVDMA_SRC_HIGH
	ld a, $00
	ld [hli], a ; rVDMA_SRC_LOW
	ld a, $99
	ld [hli], a ; rVDMA_DEST_HIGH
	ld a, $00
	ld [hli], a ; rVDMA_DEST_LOW
	xor a
	ld [hl], a ; rVDMA_LEN
	ld a, $10
	ldh [rVDMA_SRC_LOW], a
	ld a, $20
	ldh [rVDMA_DEST_LOW], a
	xor a
	ldh [rVDMA_LEN], a
	ld a, $20
	ldh [rVDMA_SRC_LOW], a
	ld a, $40
	ldh [rVDMA_DEST_LOW], a
	xor a
	ldh [rVDMA_LEN], a
	ld a, $30
	ldh [rVDMA_SRC_LOW], a
	ld a, $60
	ldh [rVDMA_DEST_LOW], a
	xor a
	ldh [rVDMA_LEN], a
	ld a, $40
	ldh [rVDMA_SRC_LOW], a
	ld a, $80
	ldh [rVDMA_DEST_LOW], a
	xor a
	ldh [rVDMA_LEN], a
	ld a, $50
	ldh [rVDMA_SRC_LOW], a
	ld a, $a0
	ldh [rVDMA_DEST_LOW], a
	xor a
	ldh [rVDMA_LEN], a
	ld a, $60
	ldh [rVDMA_SRC_LOW], a
	ld a, $c0
	ldh [rVDMA_DEST_LOW], a
	xor a
	ldh [rVDMA_LEN], a
	ld a, $70
	ldh [rVDMA_SRC_LOW], a
	ld a, $e0
	ldh [rVDMA_DEST_LOW], a
	xor a
	ldh [rVDMA_LEN], a
	ld a, $80
	ldh [rVDMA_SRC_LOW], a
	ld a, $9a
	ldh [rHDMA3], a
	ld a, $00
	ldh [rVDMA_DEST_LOW], a
	xor a
	ldh [rVDMA_LEN], a
	ld a, $90
	ldh [rVDMA_SRC_LOW], a
	ld a, $20
	ldh [rVDMA_DEST_LOW], a
	xor a
	ldh [rVDMA_LEN], a
	ld a, $a0
	ldh [rVDMA_SRC_LOW], a
	ld a, $40
	ldh [rVDMA_DEST_LOW], a
	xor a
	ldh [rVDMA_LEN], a
	ld a, $b0
	ldh [rVDMA_SRC_LOW], a
	ld a, $60
	ldh [rVDMA_DEST_LOW], a
	xor a
	ldh [rVDMA_LEN], a

	ld hl, $c919
	ld a, [hli]
	ld [$9de2], a
	ld a, [hli]
	ld [$9de3], a
	ld a, [hli]
	ld [$9e02], a
	ld a, [hli]
	ld [$9e03], a
	ld hl, $c91d
	ld a, [hli]
	ld [$9de5], a
	ld a, [hli]
	ld [$9de6], a
	ld a, [hli]
	ld [$9e05], a
	ld a, [hli]
	ld [$9e06], a
	ld a, [$c877]
	and $01
	jp nz, .asm_441bb
	ld hl, $c907
	ld a, [hli]
	ld [$9c81], a
	ld a, [hli]
	ld [$9c82], a
	ld a, [hli]
	ld [$9c83], a
	ld a, [hli]
	ld [$9c84], a
	ld a, [hli]
	ld [$9c85], a
	ld a, [hli]
	ld [$9c86], a
	ld a, [hli]
	ld [$9ca1], a
	ld a, [hli]
	ld [$9ca2], a
	ld a, [hli]
	ld [$9ca3], a
	ld a, [hli]
	ld [$9ca4], a
	ld a, [hli]
	ld [$9ca5], a
	ld a, [hli]
	ld [$9ca6], a
	ld hl, $c921
	ld a, [hli]
	ld [$9ce1], a
	ld a, [hli]
	ld [$9ce2], a
	ld a, [hli]
	ld [$9ce3], a
	ld a, [hli]
	ld [$9ce4], a
	ld a, [hli]
	ld [$9ce5], a
	ld a, [hli]
	ld [$9ce6], a
	jp .asm_441fe

.asm_441bb
	ld hl, $c92d
	ld a, [hli]
	ld [$9d42], a
	ld a, [hli]
	ld [$9d43], a
	ld a, [hli]
	ld [$9d44], a
	ld a, [hli]
	ld [$9d45], a
	ld a, [hli]
	ld [$9d62], a
	ld a, [hli]
	ld [$9d63], a
	ld a, [hli]
	ld [$9d64], a
	ld a, [hli]
	ld [$9d65], a
	ld a, [hli]
	ld [$9d82], a
	ld a, [hli]
	ld [$9d83], a
	ld a, [hli]
	ld [$9d84], a
	ld a, [hli]
	ld [$9d85], a
	ld a, [hli]
	ld [$9da2], a
	ld a, [hli]
	ld [$9da3], a
	ld a, [hli]
	ld [$9da4], a
	ld a, [hli]
	ld [$9da5], a
.asm_441fe:
	ld a, $01
	vramswitch
	ld hl, rVDMA_SRC_HIGH
	ld a, $de
	ld [hli], a ; rVDMA_SRC_HIGH
	ld a, $c0
	ld [hli], a ; rVDMA_SRC_LOW
	ld a, $98
	ld [hli], a ; rVDMA_DEST_HIGH
	ld a, $00
	ld [hli], a ; rVDMA_DEST_LOW
	xor a
	ld [hl], a ; rVDMA_LEN
	ld a, $d0
	ldh [rVDMA_SRC_LOW], a
	ld a, $20
	ldh [rVDMA_DEST_LOW], a
	xor a
	ldh [rVDMA_LEN], a
	ld a, $e0
	ldh [rVDMA_SRC_LOW], a
	ld a, $40
	ldh [rVDMA_DEST_LOW], a
	xor a
	ldh [rVDMA_LEN], a
	ld a, $f0
	ldh [rVDMA_SRC_LOW], a
	ld a, $60
	ldh [rVDMA_DEST_LOW], a
	xor a
	ldh [rVDMA_LEN], a
	ld a, $df
	ldh [rVDMA_SRC_HIGH], a
	ld a, $00
	ldh [rVDMA_SRC_LOW], a
	ld a, $80
	ldh [rVDMA_DEST_LOW], a
	xor a
	ldh [rVDMA_LEN], a
	ld a, $10
	ldh [rVDMA_SRC_LOW], a
	ld a, $a0
	ldh [rVDMA_DEST_LOW], a
	xor a
	ldh [rVDMA_LEN], a
	ld a, $20
	ldh [rVDMA_SRC_LOW], a
	ld a, $c0
	ldh [rVDMA_DEST_LOW], a
	xor a
	ldh [rVDMA_LEN], a
	ld a, $30
	ldh [rVDMA_SRC_LOW], a
	ld a, $e0
	ldh [rVDMA_DEST_LOW], a
	xor a
	ldh [rVDMA_LEN], a
	ld a, $40
	ldh [rVDMA_SRC_LOW], a
	ld a, $99
	ldh [rHDMA3], a
	ld a, $00
	ldh [rVDMA_DEST_LOW], a
	xor a
	ldh [rVDMA_LEN], a
	ld a, $50
	ldh [rVDMA_SRC_LOW], a
	ld a, $20
	ldh [rVDMA_DEST_LOW], a
	xor a
	ldh [rVDMA_LEN], a
	ld a, $60
	ldh [rVDMA_SRC_LOW], a
	ld a, $40
	ldh [rVDMA_DEST_LOW], a
	xor a
	ldh [rVDMA_LEN], a
	ld a, $70
	ldh [rVDMA_SRC_LOW], a
	ld a, $60
	ldh [rVDMA_DEST_LOW], a
	xor a
	ldh [rVDMA_LEN], a
	ld a, $80
	ldh [rVDMA_SRC_LOW], a
	ld a, $80
	ldh [rVDMA_DEST_LOW], a
	xor a
	ldh [rVDMA_LEN], a
	ld a, $90
	ldh [rVDMA_SRC_LOW], a
	ld a, $a0
	ldh [rVDMA_DEST_LOW], a
	xor a
	ldh [rVDMA_LEN], a
	ld a, $a0
	ldh [rVDMA_SRC_LOW], a
	ld a, $c0
	ldh [rVDMA_DEST_LOW], a
	xor a
	ldh [rVDMA_LEN], a
	ld a, $b0
	ldh [rVDMA_SRC_LOW], a
	ld a, $e0
	ldh [rVDMA_DEST_LOW], a
	xor a
	ldh [rVDMA_LEN], a
	ld a, $c0
	ldh [rVDMA_SRC_LOW], a
	ld a, $9a
	ldh [rHDMA3], a
	ld a, $00
	ldh [rVDMA_DEST_LOW], a
	xor a
	ldh [rVDMA_LEN], a
	ld a, $d0
	ldh [rVDMA_SRC_LOW], a
	ld a, $20
	ldh [rVDMA_DEST_LOW], a
	xor a
	ldh [rVDMA_LEN], a
	ld a, $e0
	ldh [rVDMA_SRC_LOW], a
	ld a, $40
	ldh [rVDMA_DEST_LOW], a
	xor a
	ldh [rVDMA_LEN], a
	ld a, $f0
	ldh [rVDMA_SRC_LOW], a
	ld a, $60
	ldh [rVDMA_DEST_LOW], a
	xor a
	ldh [rVDMA_LEN], a

	call Func_1c6e
	ld a, [$c877]
	and $01
	jp nz, .asm_4431b
	ld hl, $c927
	ld a, [hli]
	ld [$9ce1], a
	ld a, [hli]
	ld [$9ce2], a
	ld a, [hli]
	ld [$9ce3], a
	ld a, [hli]
	ld [$9ce4], a
	ld a, [hli]
	ld [$9ce5], a
	ld a, [hli]
	ld [$9ce6], a
	jp .asm_4435e

.asm_4431b
	ld hl, $c93d
	ld a, [hli]
	ld [$9d42], a
	ld a, [hli]
	ld [$9d43], a
	ld a, [hli]
	ld [$9d44], a
	ld a, [hli]
	ld [$9d45], a
	ld a, [hli]
	ld [$9d62], a
	ld a, [hli]
	ld [$9d63], a
	ld a, [hli]
	ld [$9d64], a
	ld a, [hli]
	ld [$9d65], a
	ld a, [hli]
	ld [$9d82], a
	ld a, [hli]
	ld [$9d83], a
	ld a, [hli]
	ld [$9d84], a
	ld a, [hli]
	ld [$9d85], a
	ld a, [hli]
	ld [$9da2], a
	ld a, [hli]
	ld [$9da3], a
	ld a, [hli]
	ld [$9da4], a
	ld a, [hli]
	ld [$9da5], a
.asm_4435e
	jp Func_45bc0
; 0x44361

SECTION "Bank 11@5bc0", ROMX[$5bc0], BANK[$11]

Func_45bc0:
	ld a, [$c83b]
	and a
	jr nz, .asm_45bcd
	ld hl, $c87c
	ld a, [hli]
	or [hl]
	jr nz, .asm_45beb
.asm_45bcd
	ld hl, $ca06
	ld de, $c9e6
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	ret
.asm_45beb
	ld hl, $c9fe
	ld de, $c9e6
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	ret
; 0x45c09

SECTION "Bank 11@6dda", ROMX[$6dda], BANK[$11]

Func_46dda:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $01
	sramswitch
	copy_data $cef8, $00, $ab51, $01, $1 ; cef8, ab51
	copy_data $cea0, $00, $ab54, $01, $24 ; cea0, ab54
	copy_data $c833, $00, $ab78, $01, $590 ; c833, ab78
	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	call Func_1d3c
	ret
; 0x46e1f
