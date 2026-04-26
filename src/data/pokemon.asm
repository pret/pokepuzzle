PokemonData:
	table_width PKMN_STRUCT_SIZE

	; CHIKORITA
	dwb $4000, $4f ; portrait gfx
	dwb $4665, $4f ; ?
	dab ChikoritaPalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dwb $6549, $10 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dwb $6579, $10 ; ?
	dwb $67bd, $10 ; ?
	dwb $67c6, $10 ; ?
	dwb $410a, $4d ; garbage gfx
	dwb $4216, $4d ; garbage palette
	db BOARD_GRASS ; board
	db $03, $16, $cb, $c7, $28, $c9, $c7, $01, $cd, $c7, $18

	; STEELIX
	dwb $70c6, $4f ; portrait gfx
	dwb $77ba, $4f ; ?
	dab SteelixPalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dwb $6549, $10 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dwb $65c4, $10 ; ?
	dwb $685f, $10 ; ?
	dwb $6868, $10 ; ?
	dwb $466c, $4d ; garbage gfx
	dwb $476b, $4d ; garbage palette
	db BOARD_STEEL ; board
	db $05, $16, $cb, $c7, $28, $c9, $c7, $12, $cd, $c7, $18

	; CYNDAQUIL
	dwb $4d5d, $4f ; portrait gfx
	dwb $536f, $4f ; ?
	dab CyndaquilPalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dwb $6549, $10 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dwb $6591, $10 ; ?
	dwb $67e1, $10 ; ?
	dwb $67ea, $10 ; ?
	dwb $4773, $4d ; garbage gfx
	dwb $486b, $4d ; garbage palette
	db BOARD_FIRE ; board
	db $0a, $16, $cb, $c7, $28, $c9, $c7, $02, $cd, $c7, $18

	; TOTODILE
	dwb $46fd, $4f ; portrait gfx
	dwb $4cc5, $4f ; ?
	dab TotodilePalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dwb $6549, $10 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dwb $659d, $10 ; ?
	dwb $67f3, $10 ; ?
	dwb $67fc, $10 ; ?
	dwb $5913, $4d ; garbage gfx
	dwb $5a14, $4d ; garbage palette
	db BOARD_WATER ; board
	db $02, $16, $cb, $c7, $28, $c9, $c7, $03, $cd, $c7, $18

	; GASTLY
	dwb $7852, $4f ; portrait gfx
	dwb $7f1d, $4f ; ?
	dab GastlyPalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dwb $6549, $10 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dwb $65d0, $10 ; ?
	dwb $6871, $10 ; ?
	dwb $687a, $10 ; ?
	dwb $4434, $4d ; garbage gfx
	dwb $4546, $4d ; garbage palette
	db BOARD_GHOST ; board
	db $0a, $16, $cb, $c7, $28, $c9, $c7, $11, $cd, $c7, $18

	; PIDGEY
	dwb $5407, $4f ; portrait gfx
	dwb $5b62, $4f ; ?
	dab PidgeyPalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dwb $6549, $10 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dwb $65ac, $10 ; ?
	dwb $6805, $10 ; ?
	dwb $680e, $10 ; ?
	dwb $551e, $4d ; garbage gfx
	dwb $55f2, $4d ; garbage palette
	db BOARD_FLYING ; board
	db $05, $16, $cb, $c7, $28, $c9, $c7, $0e, $cd, $c7, $18

	; CLEFFA
	dwb $4000, $52 ; portrait gfx
	dwb $45c9, $52 ; ?
	dab CleffaPalette ; portrait palette
	dwb $4661, $52 ; ?
	dwb $46f1, $52 ; ?
	dwb $6549, $10 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dwb $672c, $10 ; ?
	dwb $6991, $10 ; ?
	dwb $699a, $10 ; ?
	dwb $520f, $4d ; garbage gfx
	dwb $532e, $4d ; garbage palette
	db BOARD_NORMAL ; board
	db $11, $16, $cb, $c7, $28, $c9, $c7, $0c, $cd, $c7, $18

	; HITMONTOP
	dwb $4ceb, $51 ; portrait gfx
	dwb $53e9, $51 ; ?
	dab HitmontopPalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dwb $6549, $10 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dwb $6630, $10 ; ?
	dwb $68cb, $10 ; ?
	dwb $68d4, $10 ; ?
	dwb $4a90, $4d ; garbage gfx
	dwb $4b95, $4d ; garbage palette
	db BOARD_FIGHTING ; board
	db $0b, $13, $cb, $c7, $28, $c9, $c7, $18, $cd, $c7, $18

	; PICHU
	dwb $5481, $51 ; portrait gfx
	dwb $5b59, $51 ; ?
	dab PichuPalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dwb $6549, $10 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dwb $6714, $10 ; ?
	dwb $69b5, $10 ; ?
	dwb $69be, $10 ; ?
	dwb $5113, $4d ; garbage gfx
	dwb $5207, $4d ; garbage palette
	db BOARD_ELECTRIC ; board
	db $08, $16, $cb, $c7, $28, $c9, $c7, $09, $cd, $c7, $18

	; ELEKID
	dwb $5bf1, $51 ; portrait gfx
	dwb $6301, $51 ; ?
	dab ElekidPalette ; portrait palette
	dwb $6399, $51 ; ?
	dwb $6429, $51 ; ?
	dwb $6549, $10 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dwb $6660, $10 ; ?
	dwb $6925, $10 ; ?
	dwb $692e, $10 ; ?
	dwb $4331, $4d ; garbage gfx
	dwb $442c, $4d ; garbage palette
	db BOARD_ELECTRIC ; board
	db $12, $16, $cb, $c7, $28, $c9, $c7, $0b, $cd, $c7, $18

	; IGGLYBUFF
	dwb $6431, $51 ; portrait gfx
	dwb $69c1, $51 ; ?
	dab IgglybuffPalette ; portrait palette
	dwb $6a59, $51 ; ?
	dwb $6ae9, $51 ; ?
	dwb $6549, $10 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dwb $6720, $10 ; ?
	dwb $69a3, $10 ; ?
	dwb $69ac, $10 ; ?
	dwb $55fa, $4d ; garbage gfx
	dwb $56dd, $4d ; garbage palette
	db BOARD_NORMAL ; board
	db $11, $16, $cb, $c7, $28, $c9, $c7, $0a, $cd, $c7, $18

	; MAGBY
	dwb $6af1, $51 ; portrait gfx
	dwb $7236, $51 ; ?
	dab MagbyPalette ; portrait palette
	dwb $72ce, $51 ; ?
	dwb $735e, $51 ; ?
	dwb $6549, $10 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dwb $666c, $10 ; ?
	dwb $6937, $10 ; ?
	dwb $6940, $10 ; ?
	dwb $4000, $4d ; garbage gfx
	dwb $4102, $4d ; garbage palette
	db BOARD_FIRE ; board
	db $12, $16, $cb, $c7, $28, $c9, $c7, $0d, $cd, $c7, $18

	; SENTRET
	dwb $7366, $51 ; portrait gfx
	dwb $7971, $51 ; ?
	dab SentretPalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dwb $6549, $10 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dwb $6654, $10 ; ?
	dwb $6913, $10 ; ?
	dwb $691c, $10 ; ?
	dwb $4eea, $4d ; garbage gfx
	dwb $4fef, $4d ; garbage palette
	db BOARD_NORMAL ; board
	db $05, $16, $cb, $c7, $28, $c9, $c7, $07, $cd, $c7, $18

	; MARILL
	dwb $46fa, $51 ; portrait gfx
	dwb $4c53, $51 ; ?
	dab MarillPalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dwb $6549, $10 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dwb $663c, $10 ; ?
	dwb $68ef, $10 ; ?
	dwb $68f8, $10 ; ?
	dwb $4ccc, $4d ; garbage gfx
	dwb $4dd6, $4d ; garbage palette
	db BOARD_WATER ; board
	db $05, $16, $cb, $c7, $28, $c9, $c7, $04, $cd, $c7, $18

	; PIKACHU
	dwb $4000, $51 ; portrait gfx
	dwb $4662, $51 ; ?
	dab PikachuPalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dwb $6549, $10 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dwb $66fc, $10 ; ?
	dwb $697f, $10 ; ?
	dwb $6988, $10 ; ?
	dwb $5336, $4d ; garbage gfx
	dwb $5425, $4d ; garbage palette
	db BOARD_ELECTRIC ; board
	db $08, $16, $cb, $c7, $28, $c9, $c7, $05, $cd, $c7, $18

	; TOGEPI
	dwb $71c9, $50 ; portrait gfx
	dwb $78b3, $50 ; ?
	dab TogepiPalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dwb $6549, $10 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dwb $66a8, $10 ; ?
	dwb $696d, $10 ; ?
	dwb $6976, $10 ; ?
	dwb $57df, $4d ; garbage gfx
	dwb $590b, $4d ; garbage palette
	db BOARD_NORMAL ; board
	db $02, $16, $cb, $c7, $28, $c9, $c7, $06, $cd, $c7, $18

	; PRIMEAPE
	dwb $4000, $50 ; portrait gfx
	dwb $46a0, $50 ; ?
	dab PrimeapePalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dwb $6549, $10 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dwb $65e8, $10 ; ?
	dwb $6895, $10 ; ?
	dwb $689e, $10 ; ?
	dwb $4dde, $4d ; garbage gfx
	dwb $4ee2, $4d ; garbage palette
	db BOARD_FIGHTING ; board
	db $0a, $16, $cb, $c7, $28, $c9, $c7, $13, $cd, $c7, $18

	; BELLOSSOM
	dwb $5c26, $50 ; portrait gfx
	dwb $6346, $50 ; ?
	dab BellossomPalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dwb $6549, $10 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dwb $6648, $10 ; ?
	dwb $6901, $10 ; ?
	dwb $690a, $10 ; ?
	dwb $497d, $4d ; garbage gfx
	dwb $4a88, $4d ; garbage palette
	db BOARD_GRASS ; board
	db $03, $16, $cb, $c7, $28, $c9, $c7, $08, $cd, $c7, $18

	; DRAGONAIR
	dwb $63de, $50 ; portrait gfx
	dwb $69c7, $50 ; ?
	dab DragonairPalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dwb $6549, $10 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dwb $6624, $10 ; ?
	dwb $68a7, $10 ; ?
	dwb $68b0, $10 ; ?
	dwb $454e, $4d ; garbage gfx
	dwb $4664, $4d ; garbage palette
	db BOARD_DRAGON ; board
	db $03, $16, $cb, $c7, $28, $c9, $c7, $15, $cd, $c7, $18

	; JYNX
	dwb $6a5f, $50 ; portrait gfx
	dwb $7131, $50 ; ?
	dab JynxPalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dwb $6549, $10 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dwb $6690, $10 ; ?
	dwb $6949, $10 ; ?
	dwb $6952, $10 ; ?
	dwb $56e5, $4d ; garbage gfx
	dwb $57d7, $4d ; garbage palette
	db BOARD_PSYCHIC ; board
	db $0b, $13, $cb, $c7, $28, $c9, $c7, $16, $cd, $c7, $18

	; DRAGONITE
	dwb $54e2, $50 ; portrait gfx
	dwb $5b8e, $50 ; ?
	dab DragonitePalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dwb $6549, $10 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dwb $6618, $10 ; ?
	dwb $68dd, $10 ; ?
	dwb $68e6, $10 ; ?
	dwb $4873, $4d ; garbage gfx
	dwb $4975, $4d ; garbage palette
	db BOARD_DRAGON ; board
	db $0c, $1b, $cb, $c7, $28, $c9, $c7, $1a, $cd, $c7, $18

	; MURKROW
	dwb $4738, $50 ; portrait gfx
	dwb $4d80, $50 ; ?
	dab MurkrowPalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dwb $6549, $10 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dwb $6600, $10 ; ?
	dwb $695b, $10 ; ?
	dwb $6964, $10 ; ?
	dwb $5a1c, $4d ; garbage gfx
	dwb $5b2f, $4d ; garbage palette
	db BOARD_DARK ; board
	db $0b, $13, $cb, $c7, $28, $c9, $c7, $19, $cd, $c7, $18

	; CROBAT
	dwb $4e18, $50 ; portrait gfx
	dwb $544a, $50 ; ?
	dab CrobatPalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dwb $6549, $10 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dwb $660c, $10 ; ?
	dwb $68b9, $10 ; ?
	dwb $68c2, $10 ; ?
	dwb $4b9d, $4d ; garbage gfx
	dwb $4cc4, $4d ; garbage palette
	db BOARD_POISON ; board
	db $0b, $13, $cb, $c7, $28, $c9, $c7, $17, $cd, $c7, $18

	; CLEFAIRY
	dwb $5bfa, $4f ; portrait gfx
	dwb $6203, $4f ; ?
	dab ClefairyPalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dwb $6549, $10 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dwb $65ac, $10 ; ?
	dwb $6817, $10 ; ?
	dwb $6820, $10 ; ?
	dwb $542d, $4d ; garbage gfx
	dwb $5516, $4d ; garbage palette
	db BOARD_NORMAL ; board
	db $02, $16, $cb, $c7, $28, $c9, $c7, $10, $cd, $c7, $18

	; KAKUNA
	dwb $629b, $4f ; portrait gfx
	dwb $68b0, $4f ; ?
	dab KakunaPalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dwb $6549, $10 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dwb $65ac, $10 ; ?
	dwb $6829, $10 ; ?
	dwb $6832, $10 ; ?
	dwb $421e, $4d ; garbage gfx
	dwb $4329, $4d ; garbage palette
	db BOARD_BUG ; board
	db $03, $16, $cb, $c7, $28, $c9, $c7, $0f, $cd, $c7, $18

	; SEEL
	dwb $6948, $4f ; portrait gfx
	dwb $702e, $4f ; ?
	dab SeelPalette ; portrait palette
	dwb $46f9, $52 ; ?
	dwb $4789, $52 ; ?
	dwb $6549, $10 ; ?
	dab PortraitAnim_Hurt ; hurt animation
	dwb $65b8, $10 ; ?
	dwb $683b, $10 ; ?
	dwb $6844, $10 ; ?
	dwb $4ff7, $4d ; garbage gfx
	dwb $510b, $4d ; garbage palette
	db BOARD_WATER ; board
	db $08, $16, $cb, $c7, $28, $c9, $c7, $14, $cd, $c7, $18

	assert_table_length NUM_POKEMON
