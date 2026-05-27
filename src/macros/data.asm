MACRO? dbw
	db \1
	dw \2
ENDM

MACRO? dwb
	dw \1
	db \2
ENDM

MACRO? dab
	dwb \1, BANK(\1)
ENDM

DEF percent EQUS "* $ff / 100"
