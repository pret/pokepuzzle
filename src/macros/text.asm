MACRO? tx_end
	db TX_END
ENDM

MACRO? tx_unk_fe
	db TX_UNKFE
ENDM

MACRO? text1
	db TX_FONT1, \#
ENDM

MACRO? text2
	db TX_FONT2, \#
ENDM

MACRO? text3
	db TX_FONT3, \#
ENDM

MACRO? tx_clear
	db TX_CLEAR
ENDM

DEF TX_UNKF8 EQU $f8
MACRO? tx_unk_f8
	db TX_UNKF8
	dab \1 ; ?
ENDM

DEF TX_UNKF7 EQU $f7
MACRO? tx_unk_f7
	db TX_UNKF7
ENDM

DEF TX_FILL_COLOR EQU $f6
MACRO? tx_unk_f6
	db TX_FILL_COLOR
ENDM

DEF TX_UNKF5 EQU $f5
MACRO? tx_unk_f5
	db TX_UNKF5
ENDM

DEF TX_UNKF4 EQU $f4
MACRO? tx_unk_f4
	db TX_UNKF4
ENDM

DEF TX_UNKF3 EQU $f3
MACRO? tx_unk_f3
	db TX_UNKF3
ENDM

DEF TX_UNKF2 EQU $f2
MACRO? tx_unk_f2
	db TX_UNKF2
	dab \1 ; japanese
	dab \2 ; english
	REPT 4
		; other languages?
		dab \2
	ENDR
ENDM

DEF TX_UNKF1 EQU $f1
MACRO? tx_unk_f1
	db TX_UNKF1
ENDM

DEF TX_UNKF0 EQU $f0
MACRO? tx_unk_f0
	db TX_UNKF0
ENDM

DEF TX_UNKEF EQU $ef
MACRO? tx_unk_ef
	db TX_UNKEF
ENDM

DEF TX_UNKEE EQU $ee
MACRO? tx_unk_ee
	db TX_UNKEE
ENDM

DEF TX_UNKED EQU $ed
MACRO? tx_unk_ed
	db TX_UNKED
ENDM

DEF TX_UNKEC EQU $ec
MACRO? tx_unk_ec
	db TX_UNKEC
ENDM
