PokemonData:
	table_width PKMN_STRUCT_SIZE

	; CHIKORITA
	dwb $4000, $4f ; portrait gfx
	dwb $4665, $4f ; ?
	dab ChikoritaPalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dab PortraitAnim_42549 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dab PortraitAnim_42579 ; ?
	dab PortraitAnim_427bd ; ?
	dab PortraitAnim_427c6 ; ?
	dwb $410a, $4d ; garbage gfx
	dwb $4216, $4d ; garbage palette
	db BOARD_GRASS ; board
	db $03 ; ?
	db $16 ; ?
	dwb wc7cb, $28 ; ?
	dwb wc7c9, $01 ; ?
	db $cd, $c7, $18

	; STEELIX
	dwb $70c6, $4f ; portrait gfx
	dwb $77ba, $4f ; ?
	dab SteelixPalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dab PortraitAnim_42549 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dab PortraitAnim_425c4 ; ?
	dab PortraitAnim_4285f ; ?
	dab PortraitAnim_42868 ; ?
	dwb $466c, $4d ; garbage gfx
	dwb $476b, $4d ; garbage palette
	db BOARD_STEEL ; board
	db $05 ; ?
	db $16 ; ?
	dwb wc7cb, $28 ; ?
	dwb wc7c9, $12 ; ?
	db $cd, $c7, $18

	; CYNDAQUIL
	dwb $4d5d, $4f ; portrait gfx
	dwb $536f, $4f ; ?
	dab CyndaquilPalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dab PortraitAnim_42549 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dab PortraitAnim_42591 ; ?
	dab PortraitAnim_427e1 ; ?
	dab PortraitAnim_427ea ; ?
	dwb $4773, $4d ; garbage gfx
	dwb $486b, $4d ; garbage palette
	db BOARD_FIRE ; board
	db $0a ; ?
	db $16 ; ?
	dwb wc7cb, $28 ; ?
	dwb wc7c9, $02 ; ?
	db $cd, $c7, $18

	; TOTODILE
	dwb $46fd, $4f ; portrait gfx
	dwb $4cc5, $4f ; ?
	dab TotodilePalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dab PortraitAnim_42549 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dab PortraitAnim_4259d ; ?
	dab PortraitAnim_427f3 ; ?
	dab PortraitAnim_427fc ; ?
	dwb $5913, $4d ; garbage gfx
	dwb $5a14, $4d ; garbage palette
	db BOARD_WATER ; board
	db $02 ; ?
	db $16 ; ?
	dwb wc7cb, $28 ; ?
	dwb wc7c9, $03 ; ?
	db $cd, $c7, $18

	; GASTLY
	dwb $7852, $4f ; portrait gfx
	dwb $7f1d, $4f ; ?
	dab GastlyPalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dab PortraitAnim_42549 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dab PortraitAnim_425d0 ; ?
	dab PortraitAnim_42871 ; ?
	dab PortraitAnim_4287a ; ?
	dwb $4434, $4d ; garbage gfx
	dwb $4546, $4d ; garbage palette
	db BOARD_GHOST ; board
	db $0a ; ?
	db $16 ; ?
	dwb wc7cb, $28 ; ?
	dwb wc7c9, $11 ; ?
	db $cd, $c7, $18

	; PIDGEY
	dwb $5407, $4f ; portrait gfx
	dwb $5b62, $4f ; ?
	dab PidgeyPalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dab PortraitAnim_42549 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dab PortraitAnim_425ac ; ?
	dab PortraitAnim_42805 ; ?
	dab PortraitAnim_4280e ; ?
	dwb $551e, $4d ; garbage gfx
	dwb $55f2, $4d ; garbage palette
	db BOARD_FLYING ; board
	db $05 ; ?
	db $16 ; ?
	dwb wc7cb, $28 ; ?
	dwb wc7c9, $0e ; ?
	db $cd, $c7, $18

	; CLEFFA
	dwb $4000, $52 ; portrait gfx
	dwb $45c9, $52 ; ?
	dab CleffaPalette ; portrait palette
	dwb $4661, $52 ; ?
	dwb $46f1, $52 ; ?
	dab PortraitAnim_42549 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dab PortraitAnim_4272c ; ?
	dab PortraitAnim_42991 ; ?
	dab PortraitAnim_4299a ; ?
	dwb $520f, $4d ; garbage gfx
	dwb $532e, $4d ; garbage palette
	db BOARD_NORMAL ; board
	db $11 ; ?
	db $16 ; ?
	dwb wc7cb, $28 ; ?
	dwb wc7c9, $0c ; ?
	db $cd, $c7, $18

	; HITMONTOP
	dwb $4ceb, $51 ; portrait gfx
	dwb $53e9, $51 ; ?
	dab HitmontopPalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dab PortraitAnim_42549 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dab PortraitAnim_42630 ; ?
	dab PortraitAnim_428cb ; ?
	dab PortraitAnim_428d4 ; ?
	dwb $4a90, $4d ; garbage gfx
	dwb $4b95, $4d ; garbage palette
	db BOARD_FIGHTING ; board
	db $0b ; ?
	db $13 ; ?
	dwb wc7cb, $28 ; ?
	dwb wc7c9, $18 ; ?
	db $cd, $c7, $18

	; PICHU
	dwb $5481, $51 ; portrait gfx
	dwb $5b59, $51 ; ?
	dab PichuPalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dab PortraitAnim_42549 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dab PortraitAnim_42714 ; ?
	dab PortraitAnim_429b5 ; ?
	dab PortraitAnim_429be ; ?
	dwb $5113, $4d ; garbage gfx
	dwb $5207, $4d ; garbage palette
	db BOARD_ELECTRIC ; board
	db $08 ; ?
	db $16 ; ?
	dwb wc7cb, $28 ; ?
	dwb wc7c9, $09 ; ?
	db $cd, $c7, $18

	; ELEKID
	dwb $5bf1, $51 ; portrait gfx
	dwb $6301, $51 ; ?
	dab ElekidPalette ; portrait palette
	dwb $6399, $51 ; ?
	dwb $6429, $51 ; ?
	dab PortraitAnim_42549 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dab PortraitAnim_42660 ; ?
	dab PortraitAnim_42925 ; ?
	dab PortraitAnim_4292e ; ?
	dwb $4331, $4d ; garbage gfx
	dwb $442c, $4d ; garbage palette
	db BOARD_ELECTRIC ; board
	db $12 ; ?
	db $16 ; ?
	dwb wc7cb, $28 ; ?
	dwb wc7c9, $0b ; ?
	db $cd, $c7, $18

	; IGGLYBUFF
	dwb $6431, $51 ; portrait gfx
	dwb $69c1, $51 ; ?
	dab IgglybuffPalette ; portrait palette
	dwb $6a59, $51 ; ?
	dwb $6ae9, $51 ; ?
	dab PortraitAnim_42549 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dab PortraitAnim_42720 ; ?
	dab PortraitAnim_429a3 ; ?
	dab PortraitAnim_429ac ; ?
	dwb $55fa, $4d ; garbage gfx
	dwb $56dd, $4d ; garbage palette
	db BOARD_NORMAL ; board
	db $11 ; ?
	db $16 ; ?
	dwb wc7cb, $28 ; ?
	dwb wc7c9, $0a ; ?
	db $cd, $c7, $18

	; MAGBY
	dwb $6af1, $51 ; portrait gfx
	dwb $7236, $51 ; ?
	dab MagbyPalette ; portrait palette
	dwb $72ce, $51 ; ?
	dwb $735e, $51 ; ?
	dab PortraitAnim_42549 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dab PortraitAnim_4266c ; ?
	dab PortraitAnim_42937 ; ?
	dab PortraitAnim_42940 ; ?
	dwb $4000, $4d ; garbage gfx
	dwb $4102, $4d ; garbage palette
	db BOARD_FIRE ; board
	db $12 ; ?
	db $16 ; ?
	dwb wc7cb, $28 ; ?
	dwb wc7c9, $0d ; ?
	db $cd, $c7, $18

	; SENTRET
	dwb $7366, $51 ; portrait gfx
	dwb $7971, $51 ; ?
	dab SentretPalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dab PortraitAnim_42549 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dab PortraitAnim_42654 ; ?
	dab PortraitAnim_42913 ; ?
	dab PortraitAnim_4291c ; ?
	dwb $4eea, $4d ; garbage gfx
	dwb $4fef, $4d ; garbage palette
	db BOARD_NORMAL ; board
	db $05 ; ?
	db $16 ; ?
	dwb wc7cb, $28 ; ?
	dwb wc7c9, $07 ; ?
	db $cd, $c7, $18

	; MARILL
	dwb $46fa, $51 ; portrait gfx
	dwb $4c53, $51 ; ?
	dab MarillPalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dab PortraitAnim_42549 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dab PortraitAnim_4263c ; ?
	dab PortraitAnim_428ef ; ?
	dab PortraitAnim_428f8 ; ?
	dwb $4ccc, $4d ; garbage gfx
	dwb $4dd6, $4d ; garbage palette
	db BOARD_WATER ; board
	db $05 ; ?
	db $16 ; ?
	dwb wc7cb, $28 ; ?
	dwb wc7c9, $04 ; ?
	db $cd, $c7, $18

	; PIKACHU
	dwb $4000, $51 ; portrait gfx
	dwb $4662, $51 ; ?
	dab PikachuPalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dab PortraitAnim_42549 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dab PortraitAnim_426fc ; ?
	dab PortraitAnim_4297f ; ?
	dab PortraitAnim_42988 ; ?
	dwb $5336, $4d ; garbage gfx
	dwb $5425, $4d ; garbage palette
	db BOARD_ELECTRIC ; board
	db $08 ; ?
	db $16 ; ?
	dwb wc7cb, $28 ; ?
	dwb wc7c9, $05 ; ?
	db $cd, $c7, $18

	; TOGEPI
	dwb $71c9, $50 ; portrait gfx
	dwb $78b3, $50 ; ?
	dab TogepiPalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dab PortraitAnim_42549 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dab PortraitAnim_426a8 ; ?
	dab PortraitAnim_4296d ; ?
	dab PortraitAnim_42976 ; ?
	dwb $57df, $4d ; garbage gfx
	dwb $590b, $4d ; garbage palette
	db BOARD_NORMAL ; board
	db $02 ; ?
	db $16 ; ?
	dwb wc7cb, $28 ; ?
	dwb wc7c9, $06 ; ?
	db $cd, $c7, $18

	; PRIMEAPE
	dwb $4000, $50 ; portrait gfx
	dwb $46a0, $50 ; ?
	dab PrimeapePalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dab PortraitAnim_42549 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dab PortraitAnim_425e8 ; ?
	dab PortraitAnim_42895 ; ?
	dab PortraitAnim_4289e ; ?
	dwb $4dde, $4d ; garbage gfx
	dwb $4ee2, $4d ; garbage palette
	db BOARD_FIGHTING ; board
	db $0a ; ?
	db $16 ; ?
	dwb wc7cb, $28 ; ?
	dwb wc7c9, $13 ; ?
	db $cd, $c7, $18

	; BELLOSSOM
	dwb $5c26, $50 ; portrait gfx
	dwb $6346, $50 ; ?
	dab BellossomPalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dab PortraitAnim_42549 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dab PortraitAnim_42648 ; ?
	dab PortraitAnim_42901 ; ?
	dab PortraitAnim_4290a ; ?
	dwb $497d, $4d ; garbage gfx
	dwb $4a88, $4d ; garbage palette
	db BOARD_GRASS ; board
	db $03 ; ?
	db $16 ; ?
	dwb wc7cb, $28 ; ?
	dwb wc7c9, $08 ; ?
	db $cd, $c7, $18

	; DRAGONAIR
	dwb $63de, $50 ; portrait gfx
	dwb $69c7, $50 ; ?
	dab DragonairPalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dab PortraitAnim_42549 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dab PortraitAnim_42624 ; ?
	dab PortraitAnim_428a7 ; ?
	dab PortraitAnim_428b0 ; ?
	dwb $454e, $4d ; garbage gfx
	dwb $4664, $4d ; garbage palette
	db BOARD_DRAGON ; board
	db $03 ; ?
	db $16 ; ?
	dwb wc7cb, $28 ; ?
	dwb wc7c9, $15 ; ?
	db $cd, $c7, $18

	; JYNX
	dwb $6a5f, $50 ; portrait gfx
	dwb $7131, $50 ; ?
	dab JynxPalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dab PortraitAnim_42549 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dab PortraitAnim_42690 ; ?
	dab PortraitAnim_42949 ; ?
	dab PortraitAnim_42952 ; ?
	dwb $56e5, $4d ; garbage gfx
	dwb $57d7, $4d ; garbage palette
	db BOARD_PSYCHIC ; board
	db $0b ; ?
	db $13 ; ?
	dwb wc7cb, $28 ; ?
	dwb wc7c9, $16 ; ?
	db $cd, $c7, $18

	; DRAGONITE
	dwb $54e2, $50 ; portrait gfx
	dwb $5b8e, $50 ; ?
	dab DragonitePalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dab PortraitAnim_42549 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dab PortraitAnim_42618 ; ?
	dab PortraitAnim_428dd ; ?
	dab PortraitAnim_428e6 ; ?
	dwb $4873, $4d ; garbage gfx
	dwb $4975, $4d ; garbage palette
	db BOARD_DRAGON ; board
	db $0c ; ?
	db $1b ; ?
	dwb wc7cb, $28 ; ?
	dwb wc7c9, $1a ; ?
	db $cd, $c7, $18

	; MURKROW
	dwb $4738, $50 ; portrait gfx
	dwb $4d80, $50 ; ?
	dab MurkrowPalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dab PortraitAnim_42549 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dab PortraitAnim_42600 ; ?
	dab PortraitAnim_4295b ; ?
	dab PortraitAnim_42964 ; ?
	dwb $5a1c, $4d ; garbage gfx
	dwb $5b2f, $4d ; garbage palette
	db BOARD_DARK ; board
	db $0b ; ?
	db $13 ; ?
	dwb wc7cb, $28 ; ?
	dwb wc7c9, $19 ; ?
	db $cd, $c7, $18

	; CROBAT
	dwb $4e18, $50 ; portrait gfx
	dwb $544a, $50 ; ?
	dab CrobatPalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dab PortraitAnim_42549 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dab PortraitAnim_4260c ; ?
	dab PortraitAnim_428b9 ; ?
	dab PortraitAnim_428c2 ; ?
	dwb $4b9d, $4d ; garbage gfx
	dwb $4cc4, $4d ; garbage palette
	db BOARD_POISON ; board
	db $0b ; ?
	db $13 ; ?
	dwb wc7cb, $28 ; ?
	dwb wc7c9, $17 ; ?
	db $cd, $c7, $18

	; CLEFAIRY
	dwb $5bfa, $4f ; portrait gfx
	dwb $6203, $4f ; ?
	dab ClefairyPalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dab PortraitAnim_42549 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dab PortraitAnim_425ac ; ?
	dab PortraitAnim_42817 ; ?
	dab PortraitAnim_42820 ; ?
	dwb $542d, $4d ; garbage gfx
	dwb $5516, $4d ; garbage palette
	db BOARD_NORMAL ; board
	db $02 ; ?
	db $16 ; ?
	dwb wc7cb, $28 ; ?
	dwb wc7c9, $10 ; ?
	db $cd, $c7, $18

	; KAKUNA
	dwb $629b, $4f ; portrait gfx
	dwb $68b0, $4f ; ?
	dab KakunaPalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dab PortraitAnim_42549 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dab PortraitAnim_425ac ; ?
	dab PortraitAnim_42829 ; ?
	dab PortraitAnim_42832 ; ?
	dwb $421e, $4d ; garbage gfx
	dwb $4329, $4d ; garbage palette
	db BOARD_BUG ; board
	db $03 ; ?
	db $16 ; ?
	dwb wc7cb, $28 ; ?
	dwb wc7c9, $0f ; ?
	db $cd, $c7, $18

	; SEEL
	dwb $6948, $4f ; portrait gfx
	dwb $702e, $4f ; ?
	dab SeelPalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dab PortraitAnim_42549 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dab PortraitAnim_425b8 ; ?
	dab PortraitAnim_4283b ; ?
	dab PortraitAnim_42844 ; ?
	dwb $4ff7, $4d ; garbage gfx
	dwb $510b, $4d ; garbage palette
	db BOARD_WATER ; board
	db $08 ; ?
	db $16 ; ?
	dwb wc7cb, $28 ; ?
	dwb wc7c9, $14 ; ?
	db $cd, $c7, $18

	assert_table_length NUM_POKEMON
