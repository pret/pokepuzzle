MACRO? board_game_mode
	dwb \1, \2
	dwb \3, \4
	dwb \5, \6
	dwb \7, \8
ENDM

Boards:
	table_width BOARD_STRUCT_SIZE + 12

	; BOARD_NORMAL
	dab Pals_11bc37 ; palettes
	dwb $4000, $4e ; background pattern gfx
	dwb $796d, $46 ; opponent atk meter tilemap (challenge mode)
	dwb $797b, $46 ; opponent atk meter attrmap (challenge mode)
	dwb $7a63, $46 ; opponent atk meter tilemap (2P mode)
	dwb $7a71, $46 ; opponent atk meter attrmap (2P mode)

	board_game_mode $703a, $46, NULL,  $00, $76c9, $46, $7746, $46 ; GAMEMODE_MARATHON
	board_game_mode $703a, $46, NULL,  $00, $76c9, $46, $7746, $46 ; GAMEMODE_TIME_ZONE
	board_game_mode $703a, $46, NULL,  $00, $77a9, $46, $7828, $46 ; GAMEMODE_LINE_CLEAR
	board_game_mode $703a, $46, NULL,  $00, $7b4f, $46, $7bd0, $46 ; GAMEMODE_PUZZLE
	board_game_mode $703a, $46, NULL,  $00, $76c9, $46, $7746, $46 ; GAMEMODE_GARBAGE
	board_game_mode $71e4, $46, $760f, $46, $788c, $46, $790b, $46 ; GAMEMODE_CHALLENGE
	board_game_mode $734c, $46, $760f, $46, $7989, $46, $7a04, $46 ; GAMEMODE_2P_VS
	board_game_mode $7494, $46, NULL,  $00, $7a7f, $46, $7afb, $46 ; GAMEMODE_2P_TIME_ZONE
	board_game_mode $734c, $46, $760f, $46, $7989, $46, $7a04, $46 ; GAMEMODE_2P_LINE_CLEAR

	ds 12, $00 ; padding

	; BOARD_FIRE
	dab Pals_11a3e9 ; palettes
	dwb $415e, $4e ; background pattern gfx
	dwb $6113, $46 ; opponent atk meter tilemap (challenge mode)
	dwb $6121, $46 ; opponent atk meter attrmap (challenge mode)
	dwb $621c, $46 ; opponent atk meter tilemap (2P mode)
	dwb $622a, $46 ; opponent atk meter attrmap (2P mode)

	board_game_mode $57f6, $46, NULL,  $00, $5e7d, $46, $5f04, $46 ; GAMEMODE_MARATHON
	board_game_mode $57f6, $46, NULL,  $00, $5e7d, $46, $5f04, $46 ; GAMEMODE_TIME_ZONE
	board_game_mode $57f6, $46, NULL,  $00, $5f48, $46, $5fcf, $46 ; GAMEMODE_LINE_CLEAR
	board_game_mode $57f6, $46, NULL,  $00, $6317, $46, $63a1, $46 ; GAMEMODE_PUZZLE
	board_game_mode $57f6, $46, NULL,  $00, $5e7d, $46, $5f04, $46 ; GAMEMODE_GARBAGE
	board_game_mode $59a4, $46, $5e69, $46, $6018, $46, $60ab, $46 ; GAMEMODE_CHALLENGE
	board_game_mode $5b2f, $46, $5e69, $46, $612f, $46, $61bb, $46 ; GAMEMODE_2P_VS
	board_game_mode $5cc5, $46, NULL,  $00, $6238, $46, $62bf, $46 ; GAMEMODE_2P_TIME_ZONE
	board_game_mode $5b2f, $46, $5e69, $46, $612f, $46, $61bb, $46 ; GAMEMODE_2P_LINE_CLEAR

	ds 12, $00 ; padding

	; BOARD_WATER
	dab Pals_e738b ; palettes
	dwb $42c3, $4e ; background pattern gfx
	dwb $6bf1, $37 ; opponent atk meter tilemap (challenge mode)
	dwb $6c0d, $37 ; opponent atk meter attrmap (challenge mode)
	dwb $6bff, $37 ; opponent atk meter tilemap (2P mode)
	dwb $6c1b, $37 ; opponent atk meter attrmap (2P mode)

	board_game_mode $5f72, $48, NULL,  $00, $544c, $3a, $54d6, $3a ; GAMEMODE_MARATHON
	board_game_mode $5f72, $48, NULL,  $00, $544c, $3a, $54d6, $3a ; GAMEMODE_TIME_ZONE
	board_game_mode $5f72, $48, NULL,  $00, $5538, $3a, $55c4, $3a ; GAMEMODE_LINE_CLEAR
	board_game_mode $5f72, $48, NULL,  $00, $58df, $3a, $596d, $3a ; GAMEMODE_PUZZLE
	board_game_mode $5f72, $48, NULL,  $00, $544c, $3a, $54d6, $3a ; GAMEMODE_GARBAGE
	board_game_mode $60f2, $48, $65ac, $48, $562a, $3a, $56be, $3a ; GAMEMODE_CHALLENGE
	board_game_mode $62a0, $48, $65ac, $48, $5723, $3a, $57b4, $3a ; GAMEMODE_2P_VS
	board_game_mode $6434, $48, NULL,  $00, $5807, $3a, $5890, $3a ; GAMEMODE_2P_TIME_ZONE
	board_game_mode $62a0, $48, $65ac, $48, $5723, $3a, $57b4, $3a ; GAMEMODE_2P_LINE_CLEAR

	ds 12, $00 ; padding

	; BOARD_ELECTRIC
	dab Pals_118b56 ; palettes
	dwb $43ca, $4e ; background pattern gfx
	dwb $4871, $46 ; opponent atk meter tilemap (challenge mode)
	dwb $487f, $46 ; opponent atk meter attrmap (challenge mode)
	dwb $4983, $46 ; opponent atk meter tilemap (2P mode)
	dwb $4991, $46 ; opponent atk meter attrmap (2P mode)

	board_game_mode $4000, $46, NULL,  $00, $45cc, $46, $4654, $46 ; GAMEMODE_MARATHON
	board_game_mode $4000, $46, NULL,  $00, $45cc, $46, $4654, $46 ; GAMEMODE_TIME_ZONE
	board_game_mode $4000, $46, NULL,  $00, $46a4, $46, $472f, $46 ; GAMEMODE_LINE_CLEAR
	board_game_mode $4000, $46, NULL,  $00, $4a78, $46, $4b05, $46 ; GAMEMODE_PUZZLE
	board_game_mode $4000, $46, NULL,  $00, $45cc, $46, $4654, $46 ; GAMEMODE_GARBAGE
	board_game_mode $4180, $46, $45b8, $46, $4781, $46, $4813, $46 ; GAMEMODE_CHALLENGE
	board_game_mode $430e, $46, $45b8, $46, $488d, $46, $491d, $46 ; GAMEMODE_2P_VS
	board_game_mode $449c, $46, NULL,  $00, $499f, $46, $4a27, $46 ; GAMEMODE_2P_TIME_ZONE
	board_game_mode $430e, $46, $45b8, $46, $488d, $46, $491d, $46 ; GAMEMODE_2P_LINE_CLEAR

	ds 12, $00 ; padding

	; BOARD_GRASS
	dab Pals_e735b ; palettes
	dwb $44ed, $4e ; background pattern gfx
	dwb $6b81, $37 ; opponent atk meter tilemap (challenge mode)
	dwb $6b9d, $37 ; opponent atk meter attrmap (challenge mode)
	dwb $6b8f, $37 ; opponent atk meter tilemap (2P mode)
	dwb $6bab, $37 ; opponent atk meter attrmap (2P mode)

	board_game_mode $54b9, $48, NULL,  $00, $4a59, $3a, $4ae7, $3a ; GAMEMODE_MARATHON
	board_game_mode $54b9, $48, NULL,  $00, $4a59, $3a, $4ae7, $3a ; GAMEMODE_TIME_ZONE
	board_game_mode $54b9, $48, NULL,  $00, $4b2f, $3a, $4bbf, $3a ; GAMEMODE_LINE_CLEAR
	board_game_mode $54b9, $48, NULL,  $00, $4e76, $3a, $4f08, $3a ; GAMEMODE_PUZZLE
	board_game_mode $54b9, $48, NULL,  $00, $4a59, $3a, $4ae7, $3a ; GAMEMODE_GARBAGE
	board_game_mode $5650, $48, $5b62, $48, $4c0d, $3a, $4ca0, $3a ; GAMEMODE_CHALLENGE
	board_game_mode $581a, $48, $5b62, $48, $4cd9, $3a, $4d65, $3a ; GAMEMODE_2P_VS
	board_game_mode $59bc, $48, NULL,  $00, $4da5, $3a, $4e30, $3a ; GAMEMODE_2P_TIME_ZONE
	board_game_mode $581a, $48, $5b62, $48, $4cd9, $3a, $4d65, $3a ; GAMEMODE_2P_LINE_CLEAR

	ds 12, $00 ; padding

	; BOARD_FIGHTING
	dab Pals_116726 ; palettes
	dwb $464b, $4e ; background pattern gfx
	dwb $6477, $45 ; opponent atk meter tilemap (challenge mode)
	dwb $6485, $45 ; opponent atk meter attrmap (challenge mode)
	dwb $6574, $45 ; opponent atk meter tilemap (2P mode)
	dwb $6582, $45 ; opponent atk meter attrmap (2P mode)

	board_game_mode $5c30, $45, NULL,  $00, $61f5, $45, $6276, $45 ; GAMEMODE_MARATHON
	board_game_mode $5c30, $45, NULL,  $00, $61f5, $45, $6276, $45 ; GAMEMODE_TIME_ZONE
	board_game_mode $5c30, $45, NULL,  $00, $62ba, $45, $633d, $45 ; GAMEMODE_LINE_CLEAR
	board_game_mode $5c30, $45, NULL,  $00, $665a, $45, $66de, $45 ; GAMEMODE_PUZZLE
	board_game_mode $5c30, $45, NULL,  $00, $61f5, $45, $6276, $45 ; GAMEMODE_GARBAGE
	board_game_mode $5d8d, $45, $61e1, $45, $6384, $45, $6415, $45 ; GAMEMODE_CHALLENGE
	board_game_mode $5f1d, $45, $61e1, $45, $6493, $45, $651e, $45 ; GAMEMODE_2P_VS
	board_game_mode $605e, $45, NULL,  $00, $6590, $45, $660e, $45 ; GAMEMODE_2P_TIME_ZONE
	board_game_mode $5f1d, $45, $61e1, $45, $6493, $45, $651e, $45 ; GAMEMODE_2P_LINE_CLEAR

	ds 12, $00 ; padding

	; BOARD_POISON
	dab Pals_1197e6 ; palettes
	dwb $47a7, $4e ; background pattern gfx
	dwb $5511, $46 ; opponent atk meter tilemap (challenge mode)
	dwb $551f, $46 ; opponent atk meter attrmap (challenge mode)
	dwb $5609, $46 ; opponent atk meter tilemap (2P mode)
	dwb $5617, $46 ; opponent atk meter attrmap (2P mode)

	board_game_mode $4b66, $46, NULL,  $00, $5263, $46, $52f1, $46 ; GAMEMODE_MARATHON
	board_game_mode $4b66, $46, NULL,  $00, $5263, $46, $52f1, $46 ; GAMEMODE_TIME_ZONE
	board_game_mode $4b66, $46, NULL,  $00, $5340, $46, $53d1, $46 ; GAMEMODE_LINE_CLEAR
	board_game_mode $4b66, $46, NULL,  $00, $56f9, $46, $578c, $46 ; GAMEMODE_PUZZLE
	board_game_mode $4b66, $46, NULL,  $00, $5263, $46, $52f1, $46 ; GAMEMODE_GARBAGE
	board_game_mode $4d27, $46, $525f, $46, $5429, $46, $54bd, $46 ; GAMEMODE_CHALLENGE
	board_game_mode $4ee8, $46, $525f, $46, $552d, $46, $55be, $46 ; GAMEMODE_2P_VS
	board_game_mode $50aa, $46, NULL,  $00, $5625, $46, $56b0, $46 ; GAMEMODE_2P_TIME_ZONE
	board_game_mode $4ee8, $46, $525f, $46, $552d, $46, $55be, $46 ; GAMEMODE_2P_LINE_CLEAR

	ds 12, $00 ; padding

	; BOARD_FLYING
	dab Pals_e733b ; palettes
	dwb $490a, $4e ; background pattern gfx
	dwb $6b11, $37 ; opponent atk meter tilemap (challenge mode)
	dwb $6b2d, $37 ; opponent atk meter attrmap (challenge mode)
	dwb $6b1f, $37 ; opponent atk meter tilemap (2P mode)
	dwb $6b3b, $37 ; opponent atk meter attrmap (2P mode)

	board_game_mode $46bb, $48, NULL,  $00, $4000, $3a, $4086, $3a ; GAMEMODE_MARATHON
	board_game_mode $46bb, $48, NULL,  $00, $4000, $3a, $4086, $3a ; GAMEMODE_TIME_ZONE
	board_game_mode $46bb, $48, NULL,  $00, $40d4, $3a, $415c, $3a ; GAMEMODE_LINE_CLEAR
	board_game_mode $46bb, $48, NULL,  $00, $442b, $3a, $44b5, $3a ; GAMEMODE_PUZZLE
	board_game_mode $46bb, $48, NULL,  $00, $4000, $3a, $4086, $3a ; GAMEMODE_GARBAGE
	board_game_mode $4828, $48, $4c5e, $48, $41b1, $3a, $4240, $3a ; GAMEMODE_CHALLENGE
	board_game_mode $49ae, $48, $4c5e, $48, $4296, $3a, $4320, $3a ; GAMEMODE_2P_VS
	board_game_mode $4aed, $48, NULL,  $00, $4366, $3a, $43ed, $3a ; GAMEMODE_2P_TIME_ZONE
	board_game_mode $49ae, $48, $4c5e, $48, $4296, $3a, $4320, $3a ; GAMEMODE_2P_LINE_CLEAR

	ds 12, $00 ; padding

	; BOARD_PSYCHIC
	dab Pals_11b02a ; palettes
	dwb $4a3d, $4e ; background pattern gfx
	dwb $6d4d, $46 ; opponent atk meter tilemap (challenge mode)
	dwb $6d5b, $46 ; opponent atk meter attrmap (challenge mode)
	dwb $6e49, $46 ; opponent atk meter tilemap (2P mode)
	dwb $6e57, $46 ; opponent atk meter attrmap (2P mode)

	board_game_mode $63f9, $46, NULL,  $00, $6aa4, $46, $6b2c, $46 ; GAMEMODE_MARATHON
	board_game_mode $63f9, $46, NULL,  $00, $6aa4, $46, $6b2c, $46 ; GAMEMODE_TIME_ZONE
	board_game_mode $63f9, $46, NULL,  $00, $6b80, $46, $6c0a, $46 ; GAMEMODE_LINE_CLEAR
	board_game_mode $63f9, $46, NULL,  $00, $6f45, $46, $6fd1, $46 ; GAMEMODE_PUZZLE
	board_game_mode $63f9, $46, NULL,  $00, $6aa4, $46, $6b2c, $46 ; GAMEMODE_GARBAGE
	board_game_mode $659d, $46, $6a2a, $46, $6c5e, $46, $6cee, $46 ; GAMEMODE_CHALLENGE
	board_game_mode $6722, $46, $6a2a, $46, $6d69, $46, $6df4, $46 ; GAMEMODE_2P_VS
	board_game_mode $689a, $46, NULL,  $00, $6e65, $46, $6eeb, $46 ; GAMEMODE_2P_TIME_ZONE
	board_game_mode $6722, $46, $6a2a, $46, $6d69, $46, $6df4, $46 ; GAMEMODE_2P_LINE_CLEAR

	ds 12, $00 ; padding

	; BOARD_BUG
	dab Pals_114e15 ; palettes
	dwb $4b23, $4e ; background pattern gfx
	dwb $4b1a, $45 ; opponent atk meter tilemap (challenge mode)
	dwb $4b28, $45 ; opponent atk meter attrmap (challenge mode)
	dwb $4c22, $45 ; opponent atk meter tilemap (2P mode)
	dwb $4c30, $45 ; opponent atk meter attrmap (2P mode)

	board_game_mode $4000, $45, NULL,  $00, $484f, $45, $48d9, $45 ; GAMEMODE_MARATHON
	board_game_mode $4000, $45, NULL,  $00, $484f, $45, $48d9, $45 ; GAMEMODE_TIME_ZONE
	board_game_mode $4000, $45, NULL,  $00, $492d, $45, $49ba, $45 ; GAMEMODE_LINE_CLEAR
	board_game_mode $4000, $45, NULL,  $00, $4d30, $45, $4dbe, $45 ; GAMEMODE_PUZZLE
	board_game_mode $4000, $45, NULL,  $00, $484f, $45, $48d9, $45 ; GAMEMODE_GARBAGE
	board_game_mode $41bf, $45, $46ff, $45, $4a15, $45, $4aa8, $45 ; GAMEMODE_CHALLENGE
	board_game_mode $437d, $45, $46ff, $45, $4b36, $45, $4bbc, $45 ; GAMEMODE_2P_VS
	board_game_mode $453c, $45, NULL,  $00, $4c3e, $45, $4cc8, $45 ; GAMEMODE_2P_TIME_ZONE
	board_game_mode $437d, $45, $46ff, $45, $4b36, $45, $4bbc, $45 ; GAMEMODE_2P_LINE_CLEAR

	ds 12, $00 ; padding

	; BOARD_GHOST
	dab Pals_115c20 ; palettes
	dwb $4c7d, $4e ; background pattern gfx
	dwb $5884, $45 ; opponent atk meter tilemap (challenge mode)
	dwb $5892, $45 ; opponent atk meter attrmap (challenge mode)
	dwb $597d, $45 ; opponent atk meter tilemap (2P mode)
	dwb $598b, $45 ; opponent atk meter attrmap (2P mode)

	board_game_mode $4e25, $45, NULL,  $00, $55f0, $45, $5672, $45 ; GAMEMODE_MARATHON
	board_game_mode $4e25, $45, NULL,  $00, $55f0, $45, $5672, $45 ; GAMEMODE_TIME_ZONE
	board_game_mode $4e25, $45, NULL,  $00, $56c4, $45, $5750, $45 ; GAMEMODE_LINE_CLEAR
	board_game_mode $4e25, $45, NULL,  $00, $5a70, $45, $5afe, $45 ; GAMEMODE_PUZZLE
	board_game_mode $4e25, $45, NULL,  $00, $55f0, $45, $5672, $45 ; GAMEMODE_GARBAGE
	board_game_mode $4fbd, $45, $552b, $45, $57a7, $45, $5830, $45 ; GAMEMODE_CHALLENGE
	board_game_mode $50cb, $45, $552b, $45, $58a0, $45, $5928, $45 ; GAMEMODE_2P_VS
	board_game_mode $51d9, $45, NULL,  $00, $5999, $45, $5a21, $45 ; GAMEMODE_2P_TIME_ZONE
	board_game_mode $50cb, $45, $552b, $45, $58a0, $45, $5928, $45 ; GAMEMODE_2P_LINE_CLEAR

	db $8a, $53, $45, $00, $00, $00, $56, $5b, $45, $d5, $5b, $45

	; BOARD_DRAGON
	dab Pals_11cf55 ; palettes
	dwb $4db5, $4e ; background pattern gfx
	dwb $4bab, $47 ; opponent atk meter tilemap (challenge mode)
	dwb $4bb9, $47 ; opponent atk meter attrmap (challenge mode)
	dwb $4c9e, $47 ; opponent atk meter tilemap (2P mode)
	dwb $4cac, $47 ; opponent atk meter attrmap (2P mode)

	board_game_mode $4000, $47, NULL,  $00, $4927, $47, $49ae, $47 ; GAMEMODE_MARATHON
	board_game_mode $4000, $47, NULL,  $00, $4927, $47, $49ae, $47 ; GAMEMODE_TIME_ZONE
	board_game_mode $4000, $47, NULL,  $00, $49f7, $47, $4a80, $47 ; GAMEMODE_LINE_CLEAR
	board_game_mode $4000, $47, NULL,  $00, $4d9d, $47, $4e29, $47 ; GAMEMODE_PUZZLE
	board_game_mode $4000, $47, NULL,  $00, $4927, $47, $49ae, $47 ; GAMEMODE_GARBAGE
	board_game_mode $41bb, $47, $48c0, $47, $4ace, $47, $4b5d, $47 ; GAMEMODE_CHALLENGE
	board_game_mode $4378, $47, $48c0, $47, $4bc7, $47, $4c55, $47 ; GAMEMODE_2P_VS
	board_game_mode $4547, $47, NULL,  $00, $4cba, $47, $4d44, $47 ; GAMEMODE_2P_TIME_ZONE
	board_game_mode $4378, $47, $48c0, $47, $4bc7, $47, $4c55, $47 ; GAMEMODE_2P_LINE_CLEAR

	db $f9, $46, $47, $00, $00, $00, $76, $4e, $47, $04, $4f, $47

	; BOARD_DARK
	dab Pals_117332 ; palettes
	dwb $4e82, $4e ; background pattern gfx
	dwb $706d, $45 ; opponent atk meter tilemap (challenge mode)
	dwb $707b, $45 ; opponent atk meter attrmap (challenge mode)
	dwb $715f, $45 ; opponent atk meter tilemap (2P mode)
	dwb $716d, $45 ; opponent atk meter attrmap (2P mode)

	board_game_mode $6736, $45, NULL,  $00, $6de0, $45, $6e64, $45 ; GAMEMODE_MARATHON
	board_game_mode $6736, $45, NULL,  $00, $6de0, $45, $6e64, $45 ; GAMEMODE_TIME_ZONE
	board_game_mode $6736, $45, NULL,  $00, $6eb2, $45, $6f36, $45 ; GAMEMODE_LINE_CLEAR
	board_game_mode $6736, $45, NULL,  $00, $7260, $45, $72e6, $45 ; GAMEMODE_PUZZLE
	board_game_mode $6736, $45, NULL,  $00, $6de0, $45, $6e64, $45 ; GAMEMODE_GARBAGE
	board_game_mode $68d3, $45, $6ddc, $45, $6f84, $45, $7016, $45 ; GAMEMODE_CHALLENGE
	board_game_mode $6a7f, $45, $6ddc, $45, $7089, $45, $7113, $45 ; GAMEMODE_2P_VS
	board_game_mode $6c2b, $45, NULL,  $00, $717b, $45, $7205, $45 ; GAMEMODE_2P_TIME_ZONE
	board_game_mode $6a7f, $45, $6ddc, $45, $7089, $45, $7113, $45 ; GAMEMODE_2P_LINE_CLEAR

	ds 12, $00 ; padding

	; BOARD_STEEL
	dab Pals_117ca2 ; palettes
	dwb $4fc7, $4e ; background pattern gfx
	dwb $7a13, $45 ; opponent atk meter tilemap (challenge mode)
	dwb $7a21, $45 ; opponent atk meter attrmap (challenge mode)
	dwb $7af5, $45 ; opponent atk meter tilemap (2P mode)
	dwb $7b03, $45 ; opponent atk meter attrmap (2P mode)

	board_game_mode $7342, $45, NULL,  $00, $77c7, $45, $784b, $45 ; GAMEMODE_MARATHON
	board_game_mode $7342, $45, NULL,  $00, $77c7, $45, $784b, $45 ; GAMEMODE_TIME_ZONE
	board_game_mode $7342, $45, NULL,  $00, $7886, $45, $790d, $45 ; GAMEMODE_LINE_CLEAR
	board_game_mode $7342, $45, NULL,  $00, $7bdc, $45, $7c65, $45 ; GAMEMODE_PUZZLE
	board_game_mode $7342, $45, NULL,  $00, $77c7, $45, $784b, $45 ; GAMEMODE_GARBAGE
	board_game_mode $7440, $45, $77b3, $45, $794a, $45, $79d6, $45 ; GAMEMODE_CHALLENGE
	board_game_mode $7576, $45, $77b3, $45, $7a2f, $45, $7abc, $45 ; GAMEMODE_2P_VS
	board_game_mode $76ac, $45, NULL,  $00, $7b11, $45, $7b9c, $45 ; GAMEMODE_2P_TIME_ZONE
	board_game_mode $7576, $45, $77b3, $45, $7a2f, $45, $7abc, $45 ; GAMEMODE_2P_LINE_CLEAR

	ds 12, $00 ; padding

	; BOARD_0E
	dab Pals_e73bb ; palettes
	dwb $4000, $37 ; background pattern gfx
	dwb $6ad9, $37 ; opponent atk meter tilemap (challenge mode)
	dwb $6af5, $37 ; opponent atk meter attrmap (challenge mode)
	dwb $6ae7, $37 ; opponent atk meter tilemap (2P mode)
	dwb $6b03, $37 ; opponent atk meter attrmap (2P mode)

	board_game_mode $4000, $48, NULL,  $00, $740b, $39, $7494, $39 ; GAMEMODE_MARATHON
	board_game_mode $4000, $48, NULL,  $00, $740b, $39, $7494, $39 ; GAMEMODE_TIME_ZONE
	board_game_mode $4000, $48, NULL,  $00, $74e4, $39, $756f, $39 ; GAMEMODE_LINE_CLEAR
	board_game_mode $4000, $48, NULL,  $00, $782d, $39, $78ba, $39 ; GAMEMODE_PUZZLE
	board_game_mode $4000, $48, NULL,  $00, $740b, $39, $7494, $39 ; GAMEMODE_GARBAGE
	board_game_mode $419b, $48, $460b, $48, $75c3, $39, $7652, $39 ; GAMEMODE_CHALLENGE
	board_game_mode $4344, $48, $460b, $48, $7696, $39, $7720, $39 ; GAMEMODE_2P_VS
	board_game_mode $448c, $48, NULL,  $00, $7754, $39, $77dc, $39 ; GAMEMODE_2P_TIME_ZONE
	board_game_mode $4344, $48, $460b, $48, $7696, $39, $7720, $39 ; GAMEMODE_2P_LINE_CLEAR

	ds 12, $00 ; padding

	; BOARD_0F
	dab Pals_e733b ; palettes
	dwb $4110, $37 ; background pattern gfx
	dwb $6b11, $37 ; opponent atk meter tilemap (challenge mode)
	dwb $6b2d, $37 ; opponent atk meter attrmap (challenge mode)
	dwb $6b1f, $37 ; opponent atk meter tilemap (2P mode)
	dwb $6b3b, $37 ; opponent atk meter attrmap (2P mode)

	board_game_mode $46bb, $48, NULL,  $00, $4000, $3a, $4086, $3a ; GAMEMODE_MARATHON
	board_game_mode $46bb, $48, NULL,  $00, $4000, $3a, $4086, $3a ; GAMEMODE_TIME_ZONE
	board_game_mode $46bb, $48, NULL,  $00, $40d4, $3a, $415c, $3a ; GAMEMODE_LINE_CLEAR
	board_game_mode $46bb, $48, NULL,  $00, $442b, $3a, $44b5, $3a ; GAMEMODE_PUZZLE
	board_game_mode $46bb, $48, NULL,  $00, $4000, $3a, $4086, $3a ; GAMEMODE_GARBAGE
	board_game_mode $4828, $48, $4c5e, $48, $41b1, $3a, $4240, $3a ; GAMEMODE_CHALLENGE
	board_game_mode $49ae, $48, $4c5e, $48, $4296, $3a, $4320, $3a ; GAMEMODE_2P_VS
	board_game_mode $4aed, $48, NULL,  $00, $4366, $3a, $43ed, $3a ; GAMEMODE_2P_TIME_ZONE
	board_game_mode $49ae, $48, $4c5e, $48, $4296, $3a, $4320, $3a ; GAMEMODE_2P_LINE_CLEAR

	ds 12, $00 ; padding

	; BOARD_10
	dab Pals_e734b ; palettes
	dwb $426a, $37 ; background pattern gfx
	dwb $6b49, $37 ; opponent atk meter tilemap (challenge mode)
	dwb $6b65, $37 ; opponent atk meter attrmap (challenge mode)
	dwb $6b57, $37 ; opponent atk meter tilemap (2P mode)
	dwb $6b73, $37 ; opponent atk meter attrmap (2P mode)

	board_game_mode $4d61, $48, NULL,  $00, $4508, $3a, $4593, $3a ; GAMEMODE_MARATHON
	board_game_mode $4d61, $48, NULL,  $00, $4508, $3a, $4593, $3a ; GAMEMODE_TIME_ZONE
	board_game_mode $4d61, $48, NULL,  $00, $45e7, $3a, $4674, $3a ; GAMEMODE_LINE_CLEAR
	board_game_mode $4d61, $48, NULL,  $00, $496c, $3a, $49fc, $3a ; GAMEMODE_PUZZLE
	board_game_mode $4d61, $48, NULL,  $00, $4508, $3a, $4593, $3a ; GAMEMODE_GARBAGE
	board_game_mode $4f09, $48, $53bd, $48, $46cf, $3a, $4762, $3a ; GAMEMODE_CHALLENGE
	board_game_mode $50c6, $48, $53bd, $48, $47ba, $3a, $4847, $3a ; GAMEMODE_2P_VS
	board_game_mode $5227, $48, NULL,  $00, $4898, $3a, $4922, $3a ; GAMEMODE_2P_TIME_ZONE
	board_game_mode $50c6, $48, $53bd, $48, $47ba, $3a, $4847, $3a ; GAMEMODE_2P_LINE_CLEAR

	ds 12, $00 ; padding

	; BOARD_11
	dab Pals_e735b ; palettes
	dwb $43b3, $37 ; background pattern gfx
	dwb $6b81, $37 ; opponent atk meter tilemap (challenge mode)
	dwb $6b9d, $37 ; opponent atk meter attrmap (challenge mode)
	dwb $6b8f, $37 ; opponent atk meter tilemap (2P mode)
	dwb $6bab, $37 ; opponent atk meter attrmap (2P mode)

	board_game_mode $54b9, $48, NULL,  $00, $4a59, $3a, $4ae7, $3a ; GAMEMODE_MARATHON
	board_game_mode $54b9, $48, NULL,  $00, $4a59, $3a, $4ae7, $3a ; GAMEMODE_TIME_ZONE
	board_game_mode $54b9, $48, NULL,  $00, $4b2f, $3a, $4bbf, $3a ; GAMEMODE_LINE_CLEAR
	board_game_mode $54b9, $48, NULL,  $00, $4e76, $3a, $4f08, $3a ; GAMEMODE_PUZZLE
	board_game_mode $54b9, $48, NULL,  $00, $4a59, $3a, $4ae7, $3a ; GAMEMODE_GARBAGE
	board_game_mode $5650, $48, $5b62, $48, $4c0d, $3a, $4ca0, $3a ; GAMEMODE_CHALLENGE
	board_game_mode $581a, $48, $5b62, $48, $4cd9, $3a, $4d65, $3a ; GAMEMODE_2P_VS
	board_game_mode $59bc, $48, NULL,  $00, $4da5, $3a, $4e30, $3a ; GAMEMODE_2P_TIME_ZONE
	board_game_mode $581a, $48, $5b62, $48, $4cd9, $3a, $4d65, $3a ; GAMEMODE_2P_LINE_CLEAR

	ds 12, $00 ; padding

	; BOARD_12
	dab Pals_e739b ; palettes
	dwb $44f3, $37 ; background pattern gfx
	dwb $6bb9, $37 ; opponent atk meter tilemap (challenge mode)
	dwb $6bd5, $37 ; opponent atk meter attrmap (challenge mode)
	dwb $6bc7, $37 ; opponent atk meter tilemap (2P mode)
	dwb $6be3, $37 ; opponent atk meter attrmap (2P mode)

	board_game_mode $5c69, $48, NULL,  $00, $4f55, $3a, $4fcf, $3a ; GAMEMODE_MARATHON
	board_game_mode $5c69, $48, NULL,  $00, $4f55, $3a, $4fcf, $3a ; GAMEMODE_TIME_ZONE
	board_game_mode $5c69, $48, NULL,  $00, $5026, $3a, $50a3, $3a ; GAMEMODE_LINE_CLEAR
	board_game_mode $5c69, $48, NULL,  $00, $536c, $3a, $53eb, $3a ; GAMEMODE_PUZZLE
	board_game_mode $5c69, $48, NULL,  $00, $4f55, $3a, $4fcf, $3a ; GAMEMODE_GARBAGE
	board_game_mode $5d0a, $48, $5eed, $48, $5102, $3a, $5188, $3a ; GAMEMODE_CHALLENGE
	board_game_mode $5dab, $48, $5eed, $48, $51dd, $3a, $525b, $3a ; GAMEMODE_2P_VS
	board_game_mode $5e4c, $48, NULL,  $00, $52a6, $3a, $5324, $3a ; GAMEMODE_2P_TIME_ZONE
	board_game_mode $5dab, $48, $5eed, $48, $51dd, $3a, $525b, $3a ; GAMEMODE_2P_LINE_CLEAR

	ds 12, $00 ; padding

	; BOARD_13
	dab Pals_e738b ; palettes
	dwb $47b1, $37 ; background pattern gfx
	dwb $6bf1, $37 ; opponent atk meter tilemap (challenge mode)
	dwb $6c0d, $37 ; opponent atk meter attrmap (challenge mode)
	dwb $6bff, $37 ; opponent atk meter tilemap (2P mode)
	dwb $6c1b, $37 ; opponent atk meter attrmap (2P mode)

	board_game_mode $5f72, $48, NULL,  $00, $544c, $3a, $54d6, $3a ; GAMEMODE_MARATHON
	board_game_mode $5f72, $48, NULL,  $00, $544c, $3a, $54d6, $3a ; GAMEMODE_TIME_ZONE
	board_game_mode $5f72, $48, NULL,  $00, $5538, $3a, $55c4, $3a ; GAMEMODE_LINE_CLEAR
	board_game_mode $5f72, $48, NULL,  $00, $58df, $3a, $596d, $3a ; GAMEMODE_PUZZLE
	board_game_mode $5f72, $48, NULL,  $00, $544c, $3a, $54d6, $3a ; GAMEMODE_GARBAGE
	board_game_mode $60f2, $48, $65ac, $48, $562a, $3a, $56be, $3a ; GAMEMODE_CHALLENGE
	board_game_mode $62a0, $48, $65ac, $48, $5723, $3a, $57b4, $3a ; GAMEMODE_2P_VS
	board_game_mode $6434, $48, NULL,  $00, $5807, $3a, $5890, $3a ; GAMEMODE_2P_TIME_ZONE
	board_game_mode $62a0, $48, $65ac, $48, $5723, $3a, $57b4, $3a ; GAMEMODE_2P_LINE_CLEAR

	ds 12, $00 ; padding

	; BOARD_14
	dab Pals_e737b ; palettes
	dwb $464c, $37 ; background pattern gfx
	dwb $6c29, $37 ; opponent atk meter tilemap (challenge mode)
	dwb $6c45, $37 ; opponent atk meter attrmap (challenge mode)
	dwb $6c37, $37 ; opponent atk meter tilemap (2P mode)
	dwb $6c53, $37 ; opponent atk meter attrmap (2P mode)

	board_game_mode $66b6, $48, NULL,  $00, $59d5, $3a, $5a60, $3a ; GAMEMODE_MARATHON
	board_game_mode $66b6, $48, NULL,  $00, $59d5, $3a, $5a60, $3a ; GAMEMODE_TIME_ZONE
	board_game_mode $66b6, $48, NULL,  $00, $5aaf, $3a, $5b3c, $3a ; GAMEMODE_LINE_CLEAR
	board_game_mode $66b6, $48, NULL,  $00, $5e21, $3a, $5eb0, $3a ; GAMEMODE_PUZZLE
	board_game_mode $66b6, $48, NULL,  $00, $59d5, $3a, $5a60, $3a ; GAMEMODE_GARBAGE
	board_game_mode $6875, $48, $6d45, $48, $5b8e, $3a, $5c20, $3a ; GAMEMODE_CHALLENGE
	board_game_mode $6a47, $48, $6d45, $48, $5c66, $3a, $5cf8, $3a ; GAMEMODE_2P_VS
	board_game_mode $6b8a, $48, NULL,  $00, $5d4c, $3a, $5dd4, $3a ; GAMEMODE_2P_TIME_ZONE
	board_game_mode $6a47, $48, $6d45, $48, $5c66, $3a, $5cf8, $3a ; GAMEMODE_2P_LINE_CLEAR

	ds 12, $00 ; padding

	; BOARD_15
	dab Pals_e736b ; palettes
	dwb $48e5, $37 ; background pattern gfx
	dwb $6c61, $37 ; opponent atk meter tilemap (challenge mode)
	dwb $6c7d, $37 ; opponent atk meter attrmap (challenge mode)
	dwb $6c6f, $37 ; opponent atk meter tilemap (2P mode)
	dwb $6c8b, $37 ; opponent atk meter attrmap (2P mode)

	board_game_mode $4000, $49, NULL,  $00, $5f06, $3a, $5f91, $3a ; GAMEMODE_MARATHON
	board_game_mode $4000, $49, NULL,  $00, $5f06, $3a, $5f91, $3a ; GAMEMODE_TIME_ZONE
	board_game_mode $4000, $49, NULL,  $00, $5ffd, $3a, $6089, $3a ; GAMEMODE_LINE_CLEAR
	board_game_mode $4000, $49, NULL,  $00, $630b, $3a, $6399, $3a ; GAMEMODE_PUZZLE
	board_game_mode $4000, $49, NULL,  $00, $5f06, $3a, $5f91, $3a ; GAMEMODE_GARBAGE
	board_game_mode $414f, $49, $45d9, $49, $60cc, $3a, $615f, $3a ; GAMEMODE_CHALLENGE
	board_game_mode $4303, $49, $45d9, $49, $6196, $3a, $6226, $3a ; GAMEMODE_2P_VS
	board_game_mode $4471, $49, NULL,  $00, $6256, $3a, $62dd, $3a ; GAMEMODE_2P_TIME_ZONE
	board_game_mode $4303, $49, $45d9, $49, $6196, $3a, $6226, $3a ; GAMEMODE_2P_LINE_CLEAR

	ds 12, $00 ; padding

	; BOARD_16
	dab Pals_e73eb ; palettes
	dwb $4a2c, $37 ; background pattern gfx
	dwb $6d41, $37 ; opponent atk meter tilemap (challenge mode)
	dwb $6d5d, $37 ; opponent atk meter attrmap (challenge mode)
	dwb $6d4f, $37 ; opponent atk meter tilemap (2P mode)
	dwb $6d6b, $37 ; opponent atk meter attrmap (2P mode)

	board_game_mode $4707, $49, NULL,  $00, $63de, $3a, $6465, $3a ; GAMEMODE_MARATHON
	board_game_mode $4707, $49, NULL,  $00, $63de, $3a, $6465, $3a ; GAMEMODE_TIME_ZONE
	board_game_mode $4707, $49, NULL,  $00, $64b3, $3a, $653b, $3a ; GAMEMODE_LINE_CLEAR
	board_game_mode $4707, $49, NULL,  $00, $67fc, $3a, $6887, $3a ; GAMEMODE_PUZZLE
	board_game_mode $4707, $49, NULL,  $00, $63de, $3a, $6465, $3a ; GAMEMODE_GARBAGE
	board_game_mode $486a, $49, $4a9b, $49, $6589, $3a, $6618, $3a ; GAMEMODE_CHALLENGE
	board_game_mode $4952, $49, $4a9b, $49, $666c, $3a, $66f3, $3a ; GAMEMODE_2P_VS
	board_game_mode $49ef, $49, NULL,  $00, $673a, $3a, $67bc, $3a ; GAMEMODE_2P_TIME_ZONE
	board_game_mode $4952, $49, $4a9b, $49, $666c, $3a, $66f3, $3a ; GAMEMODE_2P_LINE_CLEAR

	ds 12, $00 ; padding

	; BOARD_17
	dab Pals_e73db ; palettes
	dwb $4b68, $37 ; background pattern gfx
	dwb $6d09, $37 ; opponent atk meter tilemap (challenge mode)
	dwb $6d25, $37 ; opponent atk meter attrmap (challenge mode)
	dwb $6d17, $37 ; opponent atk meter tilemap (2P mode)
	dwb $6d33, $37 ; opponent atk meter attrmap (2P mode)

	board_game_mode $4b35, $49, NULL,  $00, $68d9, $3a, $6954, $3a ; GAMEMODE_MARATHON
	board_game_mode $4b35, $49, NULL,  $00, $68d9, $3a, $6954, $3a ; GAMEMODE_TIME_ZONE
	board_game_mode $4b35, $49, NULL,  $00, $699d, $3a, $6a1b, $3a ; GAMEMODE_LINE_CLEAR
	board_game_mode $4b35, $49, NULL,  $00, $6ce9, $3a, $6d69, $3a ; GAMEMODE_PUZZLE
	board_game_mode $4b35, $49, NULL,  $00, $68d9, $3a, $6954, $3a ; GAMEMODE_GARBAGE
	board_game_mode $4c74, $49, $4f18, $49, $6a6b, $3a, $6af3, $3a ; GAMEMODE_CHALLENGE
	board_game_mode $4db4, $49, $4f18, $49, $6b50, $3a, $6bc9, $3a ; GAMEMODE_2P_VS
	board_game_mode $4e03, $49, NULL,  $00, $6c1e, $3a, $6ca0, $3a ; GAMEMODE_2P_TIME_ZONE
	board_game_mode $4db4, $49, $4f18, $49, $6b50, $3a, $6bc9, $3a ; GAMEMODE_2P_LINE_CLEAR

	ds 12, $00 ; padding

	; BOARD_18
	dab Pals_e73ab ; palettes
	dwb $4caa, $37 ; background pattern gfx
	dwb $6c99, $37 ; opponent atk meter tilemap (challenge mode)
	dwb $6cb5, $37 ; opponent atk meter attrmap (challenge mode)
	dwb $6ca7, $37 ; opponent atk meter tilemap (2P mode)
	dwb $6cc3, $37 ; opponent atk meter attrmap (2P mode)

	board_game_mode $5032, $49, NULL,  $00, $6dba, $3a, $6e3f, $3a ; GAMEMODE_MARATHON
	board_game_mode $5032, $49, NULL,  $00, $6dba, $3a, $6e3f, $3a ; GAMEMODE_TIME_ZONE
	board_game_mode $5032, $49, NULL,  $00, $6e80, $3a, $6f06, $3a ; GAMEMODE_LINE_CLEAR
	board_game_mode $5032, $49, NULL,  $00, $7173, $3a, $71fb, $3a ; GAMEMODE_PUZZLE
	board_game_mode $5032, $49, NULL,  $00, $6dba, $3a, $6e3f, $3a ; GAMEMODE_GARBAGE
	board_game_mode $51c8, $49, $5565, $49, $6f49, $3a, $6fd7, $3a ; GAMEMODE_CHALLENGE
	board_game_mode $5392, $49, $5565, $49, $700e, $3a, $708f, $3a ; GAMEMODE_2P_VS
	board_game_mode $5437, $49, NULL,  $00, $70bb, $3a, $7141, $3a ; GAMEMODE_2P_TIME_ZONE
	board_game_mode $5392, $49, $5565, $49, $700e, $3a, $708f, $3a ; GAMEMODE_2P_LINE_CLEAR

	ds 12, $00 ; padding

	; BOARD_19
	dab Pals_e73fb ; palettes
	dwb $4df8, $37 ; background pattern gfx
	dwb $6d79, $37 ; opponent atk meter tilemap (challenge mode)
	dwb $6d95, $37 ; opponent atk meter attrmap (challenge mode)
	dwb $6d87, $37 ; opponent atk meter tilemap (2P mode)
	dwb $6da3, $37 ; opponent atk meter attrmap (2P mode)

	board_game_mode $5630, $49, NULL,  $00, $723e, $3a, $72bd, $3a ; GAMEMODE_MARATHON
	board_game_mode $5630, $49, NULL,  $00, $723e, $3a, $72bd, $3a ; GAMEMODE_TIME_ZONE
	board_game_mode $5630, $49, NULL,  $00, $7305, $3a, $7386, $3a ; GAMEMODE_LINE_CLEAR
	board_game_mode $5630, $49, NULL,  $00, $7656, $3a, $76d9, $3a ; GAMEMODE_PUZZLE
	board_game_mode $5630, $49, NULL,  $00, $723e, $3a, $72bd, $3a ; GAMEMODE_GARBAGE
	board_game_mode $57be, $49, $5c54, $49, $73d3, $3a, $7462, $3a ; GAMEMODE_CHALLENGE
	board_game_mode $5953, $49, $5c54, $49, $74ab, $3a, $7539, $3a ; GAMEMODE_2P_VS
	board_game_mode $5ada, $49, NULL,  $00, $7581, $3a, $7608, $3a ; GAMEMODE_2P_TIME_ZONE
	board_game_mode $5953, $49, $5c54, $49, $74ab, $3a, $7539, $3a ; GAMEMODE_2P_LINE_CLEAR

	ds 12, $00 ; padding

	; BOARD_1A
	dab Pals_e73cb ; palettes
	dwb $4f43, $37 ; background pattern gfx
	dwb $6cd1, $37 ; opponent atk meter tilemap (challenge mode)
	dwb $6ced, $37 ; opponent atk meter attrmap (challenge mode)
	dwb $6cdf, $37 ; opponent atk meter tilemap (2P mode)
	dwb $6cfb, $37 ; opponent atk meter attrmap (2P mode)

	board_game_mode $5d38, $49, NULL,  $00, $7727, $3a, $77ae, $3a ; GAMEMODE_MARATHON
	board_game_mode $5d38, $49, NULL,  $00, $7727, $3a, $77ae, $3a ; GAMEMODE_TIME_ZONE
	board_game_mode $5d38, $49, NULL,  $00, $77fc, $3a, $7884, $3a ; GAMEMODE_LINE_CLEAR
	board_game_mode $5d38, $49, NULL,  $00, $7b24, $3a, $7bae, $3a ; GAMEMODE_PUZZLE
	board_game_mode $5d38, $49, NULL,  $00, $7727, $3a, $77ae, $3a ; GAMEMODE_GARBAGE
	board_game_mode $5ec6, $49, $635d, $49, $78d5, $3a, $795b, $3a ; GAMEMODE_CHALLENGE
	board_game_mode $606f, $49, $635d, $49, $79a0, $3a, $7a29, $3a ; GAMEMODE_2P_VS
	board_game_mode $61e0, $49, NULL,  $00, $7a68, $3a, $7aec, $3a ; GAMEMODE_2P_TIME_ZONE
	board_game_mode $606f, $49, $635d, $49, $79a0, $3a, $7a29, $3a ; GAMEMODE_2P_LINE_CLEAR

	ds 12, $00 ; padding

	; BOARD_1B
	dab Pals_e73cb ; palettes
	dwb $5029, $37 ; background pattern gfx
	dwb $6db1, $37 ; opponent atk meter tilemap (challenge mode)
	dwb $6dbf, $37 ; opponent atk meter attrmap (challenge mode)
	dwb $6db1, $37 ; opponent atk meter tilemap (2P mode)
	dwb $6dbf, $37 ; opponent atk meter attrmap (2P mode)

	board_game_mode $5d38, $49, NULL,  $00, $7727, $3a, $77ae, $3a ; GAMEMODE_MARATHON
	board_game_mode $5d38, $49, NULL,  $00, $7727, $3a, $77ae, $3a ; GAMEMODE_TIME_ZONE
	board_game_mode $5d38, $49, NULL,  $00, $77fc, $3a, $7884, $3a ; GAMEMODE_LINE_CLEAR
	board_game_mode $5d38, $49, NULL,  $00, $7b24, $3a, $7bae, $3a ; GAMEMODE_PUZZLE
	board_game_mode $5d38, $49, NULL,  $00, $7727, $3a, $77ae, $3a ; GAMEMODE_GARBAGE
	board_game_mode $5ec6, $49, $635d, $49, $78d5, $3a, $795b, $3a ; GAMEMODE_CHALLENGE
	board_game_mode $606f, $49, $635d, $49, $79a0, $3a, $7a29, $3a ; GAMEMODE_2P_VS
	board_game_mode $61e0, $49, NULL,  $00, $7a68, $3a, $7aec, $3a ; GAMEMODE_2P_TIME_ZONE
	board_game_mode $606f, $49, $635d, $49, $79a0, $3a, $7a29, $3a ; GAMEMODE_2P_LINE_CLEAR

	ds 12, $00 ; padding

	; BOARD_1C
	dab Pals_e73cb ; palettes
	dwb $70d0, $13 ; background pattern gfx
	dwb $6dcd, $37 ; opponent atk meter tilemap (challenge mode)
	dwb $6ddb, $37 ; opponent atk meter attrmap (challenge mode)
	dwb $6dcd, $37 ; opponent atk meter tilemap (2P mode)
	dwb $6ddb, $37 ; opponent atk meter attrmap (2P mode)

	board_game_mode $5d38, $49, NULL,  $00, $7727, $3a, $77ae, $3a ; GAMEMODE_MARATHON
	board_game_mode $5d38, $49, NULL,  $00, $7727, $3a, $77ae, $3a ; GAMEMODE_TIME_ZONE
	board_game_mode $5d38, $49, NULL,  $00, $77fc, $3a, $7884, $3a ; GAMEMODE_LINE_CLEAR
	board_game_mode $5d38, $49, NULL,  $00, $7b24, $3a, $7bae, $3a ; GAMEMODE_PUZZLE
	board_game_mode $5d38, $49, NULL,  $00, $7727, $3a, $77ae, $3a ; GAMEMODE_GARBAGE
	board_game_mode $5ec6, $49, $635d, $49, $78d5, $3a, $795b, $3a ; GAMEMODE_CHALLENGE
	board_game_mode $606f, $49, $635d, $49, $79a0, $3a, $7a29, $3a ; GAMEMODE_2P_VS
	board_game_mode $61e0, $49, NULL,  $00, $7a68, $3a, $7aec, $3a ; GAMEMODE_2P_TIME_ZONE
	board_game_mode $606f, $49, $635d, $49, $79a0, $3a, $7a29, $3a ; GAMEMODE_2P_LINE_CLEAR

	ds 12, $00 ; padding

	assert_table_length NUM_BOARDS
; 0x102bfc
