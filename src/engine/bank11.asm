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
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, [hli]
	ldh [hVBlankTrampolinePtr + 1], a
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
	dwb $4d10, $11 ; GAMEMODE_2P_VS
	dwb $5109, $11 ; GAMEMODE_2P_TIME_ZONE
	dwb $4d0d, $11 ; GAMEMODE_2P_LINE_CLEAR
	dab NULL ; GAMEMODE_UNK9
	dab NULL ; GAMEMODE_UNKA
	dab NULL ; GAMEMODE_UNKB
	dab NULL ; GAMEMODE_UNKC
	dwb $548c, $11 ; GAMEMODE_UNKD
	dwb $402d, $13 ; GAMEMODE_UNKE
	dwb $5819, $11 ; GAMEMODE_UNKF
	assert_table_length NUM_GAME_MODES

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

	ld hl, wGameClockMinutesTilemap
	ld a, [hli]
	ldcoord_a 2, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 2, 16, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 16, v0BGMap1

	ld hl, wGameClockSecondsTilemap
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
	ld hl, wBigScoreTilemap
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

	; print speed lvl at coordinate (1, 7)
	ld hl, wSpeedLevelTilemap
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
	ld hl, wPlayerMonTilemap
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
	ld a, BANK("VRAM1")
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

	call UpdateBackgroundPatternTile_SkipVRAMSwitch

	ld a, [wc877]
	and $01
	jp nz, .asm_4431b
	ld hl, wSpeedLevelAttrmap
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
	ld hl, wPlayerMonAttrmap
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

Func_45c09:
	ld a, [wc83b]
	and a
	jr nz, .asm_45c16
	ld hl, wc87c
	ld a, [hli]
	or [hl]
	jr nz, .asm_45c51
.asm_45c16
	ld hl, wca06
	ld de, $c9be
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
	ld hl, $ca0e
	ld de, $c9c6
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

.asm_45c51
	ld hl, wc9fe
	ld de, $c9be
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
	ld hl, wc9fe
	ld de, $c9c6
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
; 0x45c8c

SECTION "Bank 11@5cc4", ROMX[$5cc4], BANK[$11]

Func_45cc4:
	ld a, [wGameMode]
	add a ; *2
	ld c, a
	ld b, $00
	ld hl, .PtrTable
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.PtrTable:
	table_width 2
	dw Func_45cf3 ; GAMEMODE_MARATHON
	dw Func_45cf3 ; GAMEMODE_TIME_ZONE
	dw Func_45e20 ; GAMEMODE_LINE_CLEAR
	dw Func_45f35 ; GAMEMODE_PUZZLE
	dw Func_4600f ; GAMEMODE_GARBAGE
	dw Func_4613c ; GAMEMODE_CHALLENGE
	dw Func_46338 ; GAMEMODE_2P_VS
	dw Func_4657f ; GAMEMODE_2P_TIME_ZONE
	dw Func_46338 ; GAMEMODE_2P_LINE_CLEAR
	dw NULL ; GAMEMODE_UNK9
	dw NULL ; GAMEMODE_UNKA
	dw NULL ; GAMEMODE_UNKB
	dw NULL ; GAMEMODE_UNKC
	dw Func_46757 ; GAMEMODE_UNKD
	dw Func_468db ; GAMEMODE_UNKE
	dw Func_468dc ; GAMEMODE_UNKF
	assert_table_length NUM_GAME_MODES

; draws HUD elements:
; - game clock;
; - score (big digits);
; - speed level;
; - player's Pokémon portrait;
Func_45cf3:
	call Func_1c92

	ld hl, wca06
	ld de, wc9e6
	call Func_46aa6

	xor a
	vramswitch

	; print game clock (MM:SS) at coordinate (2, 15)
	ld hl, wGameClockMinutesTilemap
	ld a, [hli]
	ldcoord_a 2, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 2, 16, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 16, v0BGMap1
	ld hl, wGameClockSecondsTilemap
	ld a, [hli]
	ldcoord_a 5, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 16, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 16, v0BGMap1

	; print 6-digit score at coordinate (1, 4)
	ld hl, wBigScoreTilemap
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

	; print speed lvl at coordinate (1, 7)
	ld hl, wSpeedLevelTilemap
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

	; draw player's Pokémon portrait at coordinate (2, 10)
	ld hl, wPlayerMonTilemap
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

	ld a, BANK("VRAM1")
	vramswitch

	; color in speed lvl at coordinate (1, 7)
	ld hl, wSpeedLevelAttrmap
	ld a, [hli]
	ldcoord_a 1, 7, v1BGMap1
	ld a, [hli]
	ldcoord_a 2, 7, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 7, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 7, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 7, v1BGMap1
	ld a, [hli]
	ldcoord_a 6, 7, v1BGMap1

	; color in player's Pokémon portrait at coordinate (2, 10)
	ld hl, wPlayerMonAttrmap
	ld a, [hli]
	ldcoord_a 2, 10, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 10, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 10, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 10, v1BGMap1
	ld a, [hli]
	ldcoord_a 2, 11, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 11, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 11, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 11, v1BGMap1
	ld a, [hli]
	ldcoord_a 2, 12, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 12, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 12, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 12, v1BGMap1
	ld a, [hli]
	ldcoord_a 2, 13, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 13, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 13, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 13, v1BGMap1
	ret

; draws HUD elements:
; - game clock;
; - score (small digits);
; - speed level;
; - player's Pokémon portrait;
Func_45e20:
	call Func_1c92

	ld hl, wca06
	ld de, wc9e6
	call Func_46aa6

	xor a
	vramswitch

	; print game clock (MM:SS) at coordinate (2, 15)
	ld hl, wGameClockMinutesTilemap
	ld a, [hli]
	ldcoord_a 2, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 2, 16, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 16, v0BGMap1
	ld hl, wGameClockSecondsTilemap
	ld a, [hli]
	ldcoord_a 5, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 16, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 16, v0BGMap1

	; print 6-digit score at coordinate (1, 4)
	ld hl, wSmallScoreTilemap
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

	; print speed lvl at coordinate (1, 7)
	ld hl, wSpeedLevelTilemap
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

	; draw player's Pokémon portrait at coordinate (2, 10)
	ld hl, wPlayerMonTilemap
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

	ld a, BANK("VRAM1")
	vramswitch

	; color in speed lvl at coordinate (1, 7)
	ld hl, wSpeedLevelAttrmap
	ld a, [hli]
	ldcoord_a 1, 7, v1BGMap1
	ld a, [hli]
	ldcoord_a 2, 7, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 7, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 7, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 7, v1BGMap1
	ld a, [hli]
	ldcoord_a 6, 7, v1BGMap1

	; color in player's Pokémon portrait at coordinate (2, 10)
	ld hl, wPlayerMonAttrmap
	ld a, [hli]
	ldcoord_a 2, 10, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 10, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 10, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 10, v1BGMap1
	ld a, [hli]
	ldcoord_a 2, 11, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 11, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 11, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 11, v1BGMap1
	ld a, [hli]
	ldcoord_a 2, 12, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 12, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 12, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 12, v1BGMap1
	ld a, [hli]
	ldcoord_a 2, 13, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 13, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 13, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 13, v1BGMap1
	ret

; draws HUD elements:
; - game clock;
; - number of hints left / hint star;
; - player's Pokémon portrait;
Func_45f35:
	call Func_1cd6
	call Func_1c92

	xor a
	vramswitch

	; print game clock (MM:SS) at coordinate (2, 15)
	ld hl, wGameClockMinutesTilemap
	ld a, [hli]
	ldcoord_a 2, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 2, 16, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 16, v0BGMap1
	ld hl, wGameClockSecondsTilemap
	ld a, [hli]
	ldcoord_a 5, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 16, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 16, v0BGMap1

	; print num hints left at coordinate (3, 7)
	ld hl, wRemainingHintsTile
	ld a, [hli]
	ldcoord_a 3, 7, v0BGMap1
	; print hint star at coordinate (3, 7)
	ld hl, wHintStarTile
	ld a, [hli]
	ldcoord_a 6, 7, v0BGMap1

	; draw player's Pokémon portrait at coordinate (2, 10)
	ld hl, wPlayerMonTilemap
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

	ld a, BANK("VRAM1")
	vramswitch

	; color in num hints left at coordinate (3, 7)
	ld hl, wRemainingHintsAttributes
	ld a, [hli]
	ldcoord_a 3, 7, v0BGMap1
	; color in hint star at coordinate (3, 7)
	ld hl, wHintStarAttributes
	ld a, [hli]
	ldcoord_a 6, 7, v0BGMap1

	; color in player's Pokémon portrait at coordinate (2, 10)
	ld hl, wPlayerMonAttrmap
	ld a, [hli]
	ldcoord_a 2, 10, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 10, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 10, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 10, v1BGMap1
	ld a, [hli]
	ldcoord_a 2, 11, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 11, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 11, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 11, v1BGMap1
	ld a, [hli]
	ldcoord_a 2, 12, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 12, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 12, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 12, v1BGMap1
	ld a, [hli]
	ldcoord_a 2, 13, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 13, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 13, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 13, v1BGMap1
	ret

; draws HUD elements:
; - game clock;
; - score (small digits);
; - garbage level;
; - player's Pokémon portrait;
Func_4600f:
	call Func_1c92

	ld hl, wca06
	ld de, wc9e6
	call Func_46aa6

	xor a
	vramswitch

	; print game clock (MM:SS) at coordinate (2, 15)
	ld hl, wGameClockMinutesTilemap
	ld a, [hli]
	ldcoord_a 2, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 2, 16, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 16, v0BGMap1
	ld hl, wGameClockSecondsTilemap
	ld a, [hli]
	ldcoord_a 5, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 16, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 16, v0BGMap1

	; print 6-digit score at coordinate (1, 4)
	ld hl, wBigScoreTilemap
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

	; print garbage lvl at coordinate (1, 7)
	ld hl, wSpeedLevelTilemap
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

	; draw player's Pokémon portrait at coordinate (2, 10)
	ld hl, wPlayerMonTilemap
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

	ld a, BANK("VRAM1")
	vramswitch

	; color in garbage lvl at coordinate (1, 7)
	ld hl, wSpeedLevelAttrmap
	ld a, [hli]
	ldcoord_a 1, 7, v1BGMap1
	ld a, [hli]
	ldcoord_a 2, 7, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 7, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 7, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 7, v1BGMap1
	ld a, [hli]
	ldcoord_a 6, 7, v1BGMap1

	; color in player's Pokémon portrait at coordinate (2, 10)
	ld hl, wPlayerMonAttrmap
	ld a, [hli]
	ldcoord_a 2, 10, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 10, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 10, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 10, v1BGMap1
	ld a, [hli]
	ldcoord_a 2, 11, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 11, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 11, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 11, v1BGMap1
	ld a, [hli]
	ldcoord_a 2, 12, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 12, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 12, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 12, v1BGMap1
	ld a, [hli]
	ldcoord_a 2, 13, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 13, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 13, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 13, v1BGMap1
	ret

; draws HUD elements:
; - game clock;
; - opponent's attack meter;
; - opponent's life gauge;
; - player's Pokémon portrait;
; - opponent's Pokémon portrait;
Func_4613c:
	xor a
	vramswitch

	; print game clock (M:SS) at coordinate (3, 15)
	ld hl, wGameClockMinutesTilemap
	inc hl
	ld a, [hli]
	ldcoord_a 3, 15, v0BGMap1
	inc hl
	ld a, [hli]
	ldcoord_a 3, 16, v0BGMap1
	ld hl, wGameClockSecondsTilemap
	ld a, [hli]
	ldcoord_a 5, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 16, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 16, v0BGMap1

	; draw opponent's attack meter at coordinate (0, 0)
	ld hl, wOpponentAttackMeterTilemap
	ld a, [hli]
	ldcoord_a 0, 0, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 0, v0BGMap1
	ld a, [hli]
	ldcoord_a 0, 1, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 1, v0BGMap1
	ld a, [hli]
	ldcoord_a 0, 2, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 2, v0BGMap1
	ld a, [hli]
	ldcoord_a 0, 3, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 3, v0BGMap1
	ld a, [hli]
	ldcoord_a 0, 4, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 4, v0BGMap1
	ld a, [hli]
	ldcoord_a 0, 5, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 5, v0BGMap1
	ld a, [hli]
	ldcoord_a 0, 6, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 6, v0BGMap1

	; draw opponent's life gauge at coordinate (1, 8)
	ld hl, wOpponentLifeGaugeTilemap
	ld a, [hli]
	ldcoord_a 1, 8, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 9, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 10, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 11, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 12, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 13, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 14, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 16, v0BGMap1

	; draw player's Pokémon portrait at coordinate (3, 4)
	ld hl, wPlayerMonTilemap
	ld a, [hli]
	ldcoord_a 3, 4, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 4, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 4, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 4, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 5, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 5, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 5, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 5, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 6, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 6, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 6, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 6, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 7, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 7, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 7, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 7, v0BGMap1

	; draw opponent's Pokémon portrait at coordinate (2, 10)
	ld hl, wOpponentMonTilemap
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

	ld a, BANK("VRAM1")
	vramswitch

	; color in opponent's attack meter at coordinate (0, 0)
	ld hl, wOpponentAttackMeterAttrmap
	ld a, [hli]
	ldcoord_a 0, 0, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 0, v1BGMap1
	ld a, [hli]
	ldcoord_a 0, 1, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 1, v1BGMap1
	ld a, [hli]
	ldcoord_a 0, 2, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 2, v1BGMap1
	ld a, [hli]
	ldcoord_a 0, 3, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 3, v1BGMap1
	ld a, [hli]
	ldcoord_a 0, 4, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 4, v1BGMap1
	ld a, [hli]
	ldcoord_a 0, 5, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 5, v1BGMap1
	ld a, [hli]
	ldcoord_a 0, 6, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 6, v1BGMap1

	; color in opponent's life gauge at coordinate (1, 8)
	ld hl, wOpponentLifeGaugeAttrmap
	ld a, [hli]
	ldcoord_a 1, 8, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 9, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 10, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 11, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 12, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 13, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 14, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 15, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 16, v1BGMap1

	; color in player's Pokémon portrait at coordinate (3, 4)
	ld hl, wPlayerMonAttrmap
	ld a, [hli]
	ldcoord_a 3, 4, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 4, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 4, v1BGMap1
	ld a, [hli]
	ldcoord_a 6, 4, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 5, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 5, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 5, v1BGMap1
	ld a, [hli]
	ldcoord_a 6, 5, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 6, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 6, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 6, v1BGMap1
	ld a, [hli]
	ldcoord_a 6, 6, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 7, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 7, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 7, v1BGMap1
	ld a, [hli]
	ldcoord_a 6, 7, v1BGMap1

	; color in opponent's Pokémon portrait at coordinate (2, 10)
	ld hl, wOpponentMonAttrmap
	ld a, [hli]
	ldcoord_a 2, 10, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 10, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 10, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 10, v1BGMap1
	ld a, [hli]
	ldcoord_a 2, 11, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 11, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 11, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 11, v1BGMap1
	ld a, [hli]
	ldcoord_a 2, 12, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 12, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 12, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 12, v1BGMap1
	ld a, [hli]
	ldcoord_a 2, 13, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 13, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 13, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 13, v1BGMap1
	ret

; draws HUD elements:
; - game clock;
; - opponent's attack meter;
; - opponent's life gauge;
; - player's Pokémon portrait;
; - player's won matches;
; - opponent's Pokémon portrait;
; - opponent's won matches;
Func_46338:
	xor a
	vramswitch

	; print game clock (M:SS) at coordinate (3, 15)
	ld a, [wGameClockMinutesTilemap + $1]
	ldcoord_a 3, 15, v0BGMap1
	ld a, [wGameClockMinutesTilemap + $3]
	ldcoord_a 3, 16, v0BGMap1
	ld hl, wGameClockSecondsTilemap
	ld a, [hli]
	ldcoord_a 5, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 16, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 16, v0BGMap1

	; draw opponent's attack meter at coordinate (0, 0)
	ld hl, wOpponentAttackMeterTilemap
	ld a, [hli]
	ldcoord_a 0, 0, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 0, v0BGMap1
	ld a, [hli]
	ldcoord_a 0, 1, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 1, v0BGMap1
	ld a, [hli]
	ldcoord_a 0, 2, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 2, v0BGMap1
	ld a, [hli]
	ldcoord_a 0, 3, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 3, v0BGMap1
	ld a, [hli]
	ldcoord_a 0, 4, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 4, v0BGMap1
	ld a, [hli]
	ldcoord_a 0, 5, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 5, v0BGMap1
	ld a, [hli]
	ldcoord_a 0, 6, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 6, v0BGMap1

	; draw opponent's life gauge at coordinate (1, 8)
	ld hl, wOpponentLifeGaugeTilemap
	ld a, [hli]
	ldcoord_a 1, 8, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 9, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 10, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 11, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 12, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 13, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 14, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 16, v0BGMap1

	; draw player's Pokémon portrait at coordinate (3, 2)
	ld hl, wPlayerMonTilemap
	ld a, [hli]
	ldcoord_a 3, 2, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 2, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 2, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 2, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 3, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 3, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 3, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 3, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 4, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 4, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 4, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 4, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 5, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 5, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 5, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 5, v0BGMap1

	; draw opponent's Pokémon portrait at coordinate (3, 9)
	ld hl, wOpponentMonTilemap
	ld a, [hli]
	ldcoord_a 3, 9, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 9, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 9, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 9, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 10, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 10, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 10, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 10, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 11, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 11, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 11, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 11, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 12, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 12, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 12, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 12, v0BGMap1

	; prints player's won matches at coordinate (3, 6)
	ld hl, wc99b
	ld a, [hli]
	ldcoord_a 3, 6, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 6, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 6, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 6, v0BGMap1

	; prints opponent's won matches at coordinate (3, 13)
	ld hl, wc9a3
	ld a, [hli]
	ldcoord_a 3, 13, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 13, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 13, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 13, v0BGMap1

	ld a, BANK("VRAM1")
	vramswitch

	; color in opponent's attack meter at coordinate (0, 0)
	ld hl, wOpponentAttackMeterAttrmap
	ld a, [hli]
	ldcoord_a 0, 0, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 0, v1BGMap1
	ld a, [hli]
	ldcoord_a 0, 1, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 1, v1BGMap1
	ld a, [hli]
	ldcoord_a 0, 2, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 2, v1BGMap1
	ld a, [hli]
	ldcoord_a 0, 3, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 3, v1BGMap1
	ld a, [hli]
	ldcoord_a 0, 4, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 4, v1BGMap1
	ld a, [hli]
	ldcoord_a 0, 5, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 5, v1BGMap1
	ld a, [hli]
	ldcoord_a 0, 6, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 6, v1BGMap1

	; color in opponent's life gauge at coordinate (1, 8)
	ld hl, wOpponentLifeGaugeAttrmap
	ld a, [hli]
	ldcoord_a 1, 8, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 9, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 10, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 11, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 12, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 13, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 14, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 15, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 16, v1BGMap1

	; color in player's Pokémon portrait at coordinate (3, 2)
	ld hl, wPlayerMonAttrmap
	ld a, [hli]
	ldcoord_a 3, 2, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 2, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 2, v1BGMap1
	ld a, [hli]
	ldcoord_a 6, 2, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 3, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 3, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 3, v1BGMap1
	ld a, [hli]
	ldcoord_a 6, 3, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 4, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 4, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 4, v1BGMap1
	ld a, [hli]
	ldcoord_a 6, 4, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 5, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 5, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 5, v1BGMap1
	ld a, [hli]
	ldcoord_a 6, 5, v1BGMap1

	; color in opponent's Pokémon portrait at coordinate (3, 9)
	ld hl, wOpponentMonAttrmap
	ld a, [hli]
	ldcoord_a 3, 9, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 9, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 9, v1BGMap1
	ld a, [hli]
	ldcoord_a 6, 9, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 10, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 10, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 10, v1BGMap1
	ld a, [hli]
	ldcoord_a 6, 10, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 11, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 11, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 11, v1BGMap1
	ld a, [hli]
	ldcoord_a 6, 11, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 12, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 12, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 12, v1BGMap1
	ld a, [hli]
	ldcoord_a 6, 12, v1BGMap1

	; color in player's won matches at coordinate (3, 6)
	ld hl, wc99f
	ld a, [hli]
	ldcoord_a 3, 6, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 6, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 6, v1BGMap1
	ld a, [hli]
	ldcoord_a 6, 6, v1BGMap1

	; color in opponent's won matches at coordinate (3, 13)
	ld hl, wc9a7
	ld a, [hli]
	ldcoord_a 3, 13, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 13, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 13, v1BGMap1
	ld a, [hli]
	ldcoord_a 6, 13, v1BGMap1
	ret

; draws HUD elements:
; - game clock;
; - player's Pokémon portrait;
; - player's score;
; - player's won matches;
; - opponent's Pokémon portrait;
; - opponent's score;
; - opponent's won matches;
Func_4657f:
	xor a
	vramswitch

	; print game clock (MM:SS) at coordinate (2, 15)
	ld hl, wGameClockMinutesTilemap
	ld a, [hli]
	ldcoord_a 2, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 2, 16, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 16, v0BGMap1
	ld hl, wGameClockSecondsTilemap
	ld a, [hli]
	ldcoord_a 5, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 16, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 16, v0BGMap1

	; print player's score at coordinate (1, 6)
	ld hl, wBigScoreTilemap
	ld a, [hli]
	ldcoord_a 1, 6, v0BGMap1
	ld a, [hli]
	ldcoord_a 2, 6, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 6, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 6, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 6, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 6, v0BGMap1
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

	; print opponent's score at coordinate (1, 9)
	ld hl, wSmallScoreTilemap
	ld a, [hli]
	ldcoord_a 1, 9, v0BGMap1
	ld a, [hli]
	ldcoord_a 2, 9, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 9, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 9, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 9, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 9, v0BGMap1

	; draw player's Pokémon portrait at coordinate (3, 2)
	ld hl, wPlayerMonTilemap
	ld a, [hli]
	ldcoord_a 3, 2, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 2, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 2, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 2, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 3, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 3, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 3, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 3, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 4, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 4, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 4, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 4, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 5, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 5, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 5, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 5, v0BGMap1

	; draw opponent's Pokémon portrait at coordinate (3, 10)
	ld hl, wOpponentMonTilemap
	ld a, [hli]
	ldcoord_a 3, 10, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 10, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 10, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 10, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 11, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 11, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 11, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 11, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 12, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 12, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 12, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 12, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 13, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 13, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 13, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 13, v0BGMap1

	; prints player's won matches at coordinate (3, 1)
	ld hl, wc99b
	ld a, [hli]
	ldcoord_a 3, 1, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 1, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 1, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 1, v0BGMap1

	; prints oppponent's won matches at coordinate (3, 14)
	ld hl, wc9a3
	ld a, [hli]
	ldcoord_a 3, 14, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 14, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 14, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 14, v0BGMap1

	ld a, BANK("VRAM1")
	vramswitch

	; color in player's Pokémon portrait at coordinate (3, 2)
	ld hl, wPlayerMonAttrmap
	ld a, [hli]
	ldcoord_a 3, 2, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 2, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 2, v1BGMap1
	ld a, [hli]
	ldcoord_a 6, 2, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 3, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 3, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 3, v1BGMap1
	ld a, [hli]
	ldcoord_a 6, 3, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 4, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 4, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 4, v1BGMap1
	ld a, [hli]
	ldcoord_a 6, 4, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 5, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 5, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 5, v1BGMap1
	ld a, [hli]
	ldcoord_a 6, 5, v1BGMap1

	; color in opponent's Pokémon portrait at coordinate (3, 10)
	ld hl, wOpponentMonAttrmap
	ld a, [hli]
	ldcoord_a 3, 10, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 10, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 10, v1BGMap1
	ld a, [hli]
	ldcoord_a 6, 10, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 11, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 11, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 11, v1BGMap1
	ld a, [hli]
	ldcoord_a 6, 11, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 12, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 12, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 12, v1BGMap1
	ld a, [hli]
	ldcoord_a 6, 12, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 13, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 13, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 13, v1BGMap1
	ld a, [hli]
	ldcoord_a 6, 13, v1BGMap1

	; color in player's won matches at coordinate (3, 1)
	ld hl, wc99f
	ld a, [hli]
	ldcoord_a 3, 1, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 1, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 1, v1BGMap1
	ld a, [hli]
	ldcoord_a 6, 1, v1BGMap1

	; color in oppponent's won matches at coordinate (3, 14)
	ld hl, wc9a7
	ld a, [hli]
	ldcoord_a 3, 14, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 14, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 14, v1BGMap1
	ld a, [hli]
	ldcoord_a 6, 14, v1BGMap1
	ret

; draws HUD elements:
; - game clock;
; - opponent's attack meter;
; - opponent's life gauge;
; - (optionally) player's Pokémon portrait;
Func_46757:
	xor a
	vramswitch

	; print game clock (M:SS) at coordinate (3, 15)
	ld hl, wGameClockMinutesTilemap
	inc hl
	ld a, [hli]
	ldcoord_a 3, 15, v0BGMap1
	inc hl
	ld a, [hli]
	ldcoord_a 3, 16, v0BGMap1
	ld hl, wGameClockSecondsTilemap
	ld a, [hli]
	ldcoord_a 5, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 16, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 16, v0BGMap1

	; draw opponent's attack meter at coordinate (0, 0)
	ld hl, wOpponentAttackMeterTilemap
	ld a, [hli]
	ldcoord_a 0, 0, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 0, v0BGMap1
	ld a, [hli]
	ldcoord_a 0, 1, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 1, v0BGMap1
	ld a, [hli]
	ldcoord_a 0, 2, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 2, v0BGMap1
	ld a, [hli]
	ldcoord_a 0, 3, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 3, v0BGMap1
	ld a, [hli]
	ldcoord_a 0, 4, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 4, v0BGMap1
	ld a, [hli]
	ldcoord_a 0, 5, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 5, v0BGMap1
	ld a, [hli]
	ldcoord_a 0, 6, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 6, v0BGMap1

	; draw opponent's life gauge at coordinate (1, 8)
	ld hl, wOpponentLifeGaugeTilemap
	ld a, [hli]
	ldcoord_a 1, 8, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 9, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 10, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 11, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 12, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 13, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 14, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 1, 16, v0BGMap1

	ld a, [wceac]
	cp $02
	jr z, .skip_playermon_portrait_1
	; draw player's Pokémon portrait at coordinate (3, 2)
	ld hl, wPlayerMonTilemap
	ld a, [hli]
	ldcoord_a 3, 2, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 2, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 2, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 2, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 3, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 3, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 3, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 3, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 4, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 4, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 4, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 4, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 5, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 5, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 5, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 5, v0BGMap1

.skip_playermon_portrait_1
	ld a, BANK("VRAM1")
	vramswitch

	; color in opponent's attack meter at coordinate (0, 0)
	ld hl, wOpponentAttackMeterAttrmap
	ld a, [hli]
	ldcoord_a 0, 0, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 0, v1BGMap1
	ld a, [hli]
	ldcoord_a 0, 1, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 1, v1BGMap1
	ld a, [hli]
	ldcoord_a 0, 2, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 2, v1BGMap1
	ld a, [hli]
	ldcoord_a 0, 3, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 3, v1BGMap1
	ld a, [hli]
	ldcoord_a 0, 4, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 4, v1BGMap1
	ld a, [hli]
	ldcoord_a 0, 5, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 5, v1BGMap1
	ld a, [hli]
	ldcoord_a 0, 6, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 6, v1BGMap1

	; color in opponent's life gauge at coordinate (1, 8)
	ld hl, wOpponentLifeGaugeAttrmap
	ld a, [hli]
	ldcoord_a 1, 8, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 9, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 10, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 11, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 12, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 13, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 14, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 15, v1BGMap1
	ld a, [hli]
	ldcoord_a 1, 16, v1BGMap1

	ld a, [wceac]
	cp $02
	jr z, .skip_playermon_portrait_2
	; color in player's Pokémon portrait at coordinate (3, 2)
	ld hl, wPlayerMonAttrmap
	ld a, [hli]
	ldcoord_a 3, 2, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 2, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 2, v1BGMap1
	ld a, [hli]
	ldcoord_a 6, 2, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 3, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 3, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 3, v1BGMap1
	ld a, [hli]
	ldcoord_a 6, 3, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 4, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 4, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 4, v1BGMap1
	ld a, [hli]
	ldcoord_a 6, 4, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 5, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 5, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 5, v1BGMap1
	ld a, [hli]
	ldcoord_a 6, 5, v1BGMap1
.skip_playermon_portrait_2
	ret

Func_468db:
	ret

Func_468dc:
	call Func_1c92

	xor a
	vramswitch

	; print game clock (MM:SS) at coordinate (2, 15)
	ld hl, wGameClockMinutesTilemap
	ld a, [hli]
	ldcoord_a 2, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 2, 16, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 16, v0BGMap1
	ld hl, wGameClockSecondsTilemap
	ld a, [hli]
	ldcoord_a 5, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 16, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 16, v0BGMap1

	ld hl, $d701
	ld a, [hli]
	ldcoord_a 1, 0, v0BGMap1
	ld a, [hli]
	ldcoord_a 2, 0, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 0, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 0, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 0, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 0, v0BGMap1

	ld hl, $d709
	ld a, [hli]
	ldcoord_a 1, 1, v0BGMap1
	ld a, [hli]
	ldcoord_a 2, 1, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 1, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 1, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 1, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 1, v0BGMap1

	ld hl, $d711
	ld a, [hli]
	ldcoord_a 1, 2, v0BGMap1
	ld a, [hli]
	ldcoord_a 2, 2, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 2, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 2, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 2, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 2, v0BGMap1

	ld hl, $d719
	ld a, [hli]
	ldcoord_a 1, 3, v0BGMap1
	ld a, [hli]
	ldcoord_a 2, 3, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 3, v0BGMap1
	ld a, [hli]
	ldcoord_a 4, 3, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 3, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 3, v0BGMap1

	ld hl, $d72a
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

	ld a, BANK("VRAM1")
	vramswitch

	ld hl, $d791
	ld a, [hli]
	ldcoord_a 1, 0, v1BGMap1
	ld a, [hli]
	ldcoord_a 2, 0, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 0, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 0, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 0, v1BGMap1
	ld a, [hli]
	ldcoord_a 6, 0, v1BGMap1

	ld hl, $d799
	ld a, [hli]
	ldcoord_a 1, 1, v1BGMap1
	ld a, [hli]
	ldcoord_a 2, 1, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 1, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 1, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 1, v1BGMap1
	ld a, [hli]
	ldcoord_a 6, 1, v1BGMap1

	ld hl, $d7a1
	ld a, [hli]
	ldcoord_a 1, 2, v1BGMap1
	ld a, [hli]
	ldcoord_a 2, 2, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 2, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 2, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 2, v1BGMap1
	ld a, [hli]
	ldcoord_a 6, 2, v1BGMap1

	ld hl, $d7a9
	ld a, [hli]
	ldcoord_a 1, 3, v1BGMap1
	ld a, [hli]
	ldcoord_a 2, 3, v1BGMap1
	ld a, [hli]
	ldcoord_a 3, 3, v1BGMap1
	ld a, [hli]
	ldcoord_a 4, 3, v1BGMap1
	ld a, [hli]
	ldcoord_a 5, 3, v1BGMap1
	ld a, [hli]
	ldcoord_a 6, 3, v1BGMap1
	jp Func_45c09
; 0x46a02

SECTION "Bank 11@6aa6", ROMX[$6aa6], BANK[$11]

; copies 8 bytes from hl to de
Func_46aa6:
	REPT 7
		ld a, [hli]
		ld [de], a
		inc de
	ENDR
	ld a, [hl]
	ld [de], a
	ret
; 0x46abe

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
