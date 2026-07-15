MACRO? tx_end
	db TX_END
ENDM

MACRO? tx_unk_fe
	db TX_UNKFE
ENDM

MACRO? text1
	db TX_FONT1
	PUSHC font1
		db \#
	POPC
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

MACRO? tx_set_vram_tiles
	db TX_SET_VRAM_TILES
	dab \1 ; ?
ENDM

MACRO? tx_color
	db TX_COLOR
	db \1 ; ?
ENDM

MACRO? tx_fill_color
	db TX_FILL_COLOR
	db \1 ; color index
ENDM

MACRO? tx_set_delay
	db TX_SET_DELAY
	db \1 ; delay amount
ENDM

MACRO? tx_allow_speedup
	db TX_ALLOW_SPEEDUP
	db \1 ; TRUE or FALSE
ENDM

MACRO? tx_jump
	db TX_JUMP
	dab \1 ; address
ENDM

MACRO? tx_lang_branch
	db TX_LANGUAGE_BRANCH
	dab \1 ; japanese
	dab \2 ; english
	REPT 4
		; other languages
		; (all set to the English text)
		dab \2
	ENDR
ENDM

MACRO? tx_exec
	db TX_EXEC
	dab \1 ; function
ENDM

MACRO? tx_condition
	db TX_CONDITION
	dab \1 ; function
ENDM

MACRO? tx_unk_ef
	db TX_UNKEF
	dab \1 ; ?
ENDM

MACRO? tx_wait
	db TX_WAIT
	db \1 ; number of seconds
ENDM

MACRO? tx_call
	db TX_CALL
	dab \1 ; function
ENDM

MACRO? tx_ret
	db TX_RET
ENDM
