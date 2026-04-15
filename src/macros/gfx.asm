MACRO assert_valid_rgb
	REPT _NARG
		ASSERT 0 <= (\1) && (\1) <= 31, "RGB channel must be 0-31"
		SHIFT
	ENDR
ENDM

MACRO rgb
	REPT _NARG / 3
		assert_valid_rgb \1, \2, \3
		dw palred (\1) + palgreen (\2) + palblue (\3)
		SHIFT 3
	ENDR
ENDM

DEF palred   EQUS "(1 << B_COLOR_RED) *"
DEF palgreen EQUS "(1 << B_COLOR_GREEN) *"
DEF palblue  EQUS "(1 << B_COLOR_BLUE) *"

DEF palettes EQUS "* PAL_SIZE"
DEF palette  EQUS "+ PAL_SIZE *"

DEF tiles EQUS "* TILE_SIZE"
DEF tile  EQUS "+ TILE_SIZE *"

MACRO? lddmgpal
	ld \1, \2 | (\3 << 2) | (\4 << 4) | (\5 << 6)
ENDM
