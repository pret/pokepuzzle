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

	ld hl, wc919
	ld a, [hli]
	ldcoord_a 2, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 2, 16, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 16, v0BGMap1
	ld hl, wc91d
	ld a, [hli]
	ldcoord_a 5, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 16, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 16, v0BGMap1
	ld a, [wc877]
	and $01
	jp nz, .asm_441bb
	ld hl, wc907
	ld a, [hli]
	ldcoord_a 1, 4, v0BGMap1
	ld a, [hli]
	ldcoord_a 2, 4, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 4, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 4, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 4, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 4, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 5, v0BGMap1
	ld a, [hli]
	ldcoord_a 2, 5, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 5, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 5, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 5, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 5, v0BGMap1
	ld hl, wc921
	ld a, [hli]
	ldcoord_a 1, 7, v0BGMap1
	ld a, [hli]
	ldcoord_a 2, 7, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 7, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 7, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 7, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 7, v0BGMap1
	jp .asm_441fe

.asm_441bb
	ld hl, wc92d
	ld a, [hli]
	ldcoord_a 2, 10, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 10, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 10, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 10, v0BGMap1
	ld a, [hli]
	ldcoord_a 2, 11, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 11, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 11, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 11, v0BGMap1
	ld a, [hli]
	ldcoord_a 2, 12, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 12, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 12, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 12, v0BGMap1
	ld a, [hli]
	ldcoord_a 2, 13, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 13, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 13, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 13, v0BGMap1
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
	ld a, [wc877]
	and $01
	jp nz, .asm_4431b
	ld hl, wc927
	ld a, [hli]
	ldcoord_a 1, 7, v0BGMap1
	ld a, [hli]
	ldcoord_a 2, 7, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 7, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 7, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 7, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 7, v0BGMap1
	jp .asm_4435e

.asm_4431b
	ld hl, wc93d
	ld a, [hli]
	ldcoord_a 2, 10, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 10, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 10, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 10, v0BGMap1
	ld a, [hli]
	ldcoord_a 2, 11, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 11, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 11, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 11, v0BGMap1
	ld a, [hli]
	ldcoord_a 2, 12, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 12, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 12, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 12, v0BGMap1
	ld a, [hli]
	ldcoord_a 2, 13, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 13, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 13, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 13, v0BGMap1
.asm_4435e
	jp Func_45bc0
; 0x44361

SECTION "Bank 11@5bc0", ROMX[$5bc0], BANK[$11]

Func_45bc0:
	ld a, [wc83b]
	and a
	jr nz, .asm_45bcd
	ld hl, wc87c
	ld a, [hli]
	or [hl]
	jr nz, .asm_45beb
.asm_45bcd
	ld hl, wca06
	ld de, wc9e6
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
	ld hl, wc9fe
	ld de, wc9e6
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
	copy_data wcef8, $00, $ab51, $01, $1 ; cef8, ab51
	copy_data wcea0, $00, $ab54, $01, $24 ; cea0, ab54
	copy_data wc833, $00, $ab78, $01, $590 ; c833, ab78
	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	call Func_1d3c
	ret
; 0x46e1f
