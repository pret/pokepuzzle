MACRO? dab
	dw \1   ; address
	db BANK(\1) ; bank
ENDM
