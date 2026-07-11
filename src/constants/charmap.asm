	charmap "0", $00
	charmap "1", $01
	charmap "2", $02
	charmap "3", $03
	charmap "4", $04
	charmap "5", $05
	charmap "6", $06
	charmap "7", $07
	charmap "8", $08
	charmap "9", $09
	charmap "+", $0a
	charmap "-", $0b
	charmap "×", $0c
	charmap "/", $0d
	charmap "*", $0e
	charmap " ", $0f

	charmap "A", $10
	charmap "B", $11
	charmap "C", $12
	charmap "D", $13
	charmap "E", $14
	charmap "F", $15
	charmap "G", $16
	charmap "H", $17
	charmap "I", $18
	charmap "J", $19
	charmap "K", $1a
	charmap "L", $1b
	charmap "M", $1c
	charmap "N", $1d
	charmap "O", $1e
	charmap "P", $1f
	charmap "Q", $20
	charmap "R", $21
	charmap "S", $22
	charmap "T", $23
	charmap "U", $24
	charmap "V", $25
	charmap "W", $26
	charmap "X", $27
	charmap "Y", $28
	charmap "Z", $29

	charmap "(", $2a
	charmap ")", $2b
	charmap ":", $2c
	charmap ";", $2d
	charmap "[", $2e
	charmap "]", $2f

	charmap "a", $30
	charmap "b", $31
	charmap "c", $32
	charmap "d", $33
	charmap "e", $34
	charmap "f", $35
	charmap "g", $36
	charmap "h", $37
	charmap "i", $38
	charmap "j", $39
	charmap "k", $3a
	charmap "l", $3b
	charmap "m", $3c
	charmap "n", $3d
	charmap "o", $3e
	charmap "p", $3f
	charmap "q", $40
	charmap "r", $41
	charmap "s", $42
	charmap "t", $43
	charmap "u", $44
	charmap "v", $45
	charmap "w", $46
	charmap "x", $47
	charmap "y", $48
	charmap "z", $49

	charmap "'", $4a

	charmap "<PK>", $50
	charmap "<MN>", $51
	charmap "<PO>", $52
	charmap "<KE>", $53

	charmap "¿", $54
	charmap "¡", $55
	charmap "?", $56
	charmap "!", $57
	charmap ".", $58
	charmap "&", $59
	charmap "▷", $5a
	charmap "▶", $5b
	charmap "▼", $5c
	charmap "♂", $5d
	charmap "♀", $5e
	charmap "¥", $60 ; Poké Dollar sign
	charmap "<DOT>", $61 ; decimal point; same as "." in English
	charmap ",", $62
	charmap "“", $63
	charmap "”", $64
	charmap "·", $65
	charmap "…", $66
	charmap "○", $67
	charmap "<", $68
	charmap ">", $69

	charmap "Ä", $70
	charmap "À", $71
	charmap "Á", $72
	charmap "È", $73
	charmap "É", $74
	charmap "Ì", $75
	charmap "Í", $76
	charmap "Ö", $77
	charmap "Ò", $78
	charmap "Ó", $79
	charmap "Ü", $7a
	charmap "Ù", $7b
	charmap "Ú", $7c
	charmap "ä", $80
	charmap "à", $81
	charmap "á", $82
	charmap "â", $83
	charmap "ë", $84
	charmap "è", $85
	charmap "é", $86
	charmap "ê", $87
	charmap "ï", $88
	charmap "ì", $89
	charmap "í", $8a
	charmap "î", $8b
	charmap "ö", $8c
	charmap "ò", $8d
	charmap "ó", $8e
	charmap "ô", $8f
	charmap "ü", $90
	charmap "ù", $91
	charmap "ú", $92
	charmap "û", $93

	charmap "<c'>", $94
	charmap "<'d>", $95
	charmap "<d'>", $96
	charmap "<j'>", $97
	charmap "<'l>", $98
	charmap "<l'>", $99
	charmap "<'m>", $9a
	charmap "<m'>", $9b
	charmap "<n'>", $9c
	charmap "<p'>", $9d
	charmap "<'r>", $9e
	charmap "<'s>", $9f
	charmap "<s'>", $a0
	charmap "<'t>", $a1
	charmap "<t'>", $a2
	charmap "<u'>", $a3
	charmap "<'v>", $a4
	charmap "<y'>", $a5

	charmap "β", $a7
	charmap "ç", $a8
	charmap "Ñ", $a9
	charmap "ñ", $aa

	; control characters
	charmap "\n", $fa

PUSHC
	NEWCHARMAP font1

	charmap "0", $00
	charmap "1", $01
	charmap "2", $02
	charmap "3", $03
	charmap "4", $04
	charmap "5", $05
	charmap "6", $06
	charmap "7", $07
	charmap "8", $08
	charmap "9", $09

	charmap "A", $0a
	charmap "B", $0b
	charmap "C", $0c
	charmap "D", $0d
	charmap "E", $0e
	charmap "F", $0f
	charmap "G", $10
	charmap "H", $11
	charmap "I", $12
	charmap "J", $13
	charmap "K", $14
	charmap "L", $15
	charmap "M", $16
	charmap "N", $17
	charmap "O", $18
	charmap "P", $19
	charmap "Q", $1a
	charmap "R", $1b
	charmap "S", $1c
	charmap "T", $1d
	charmap "U", $1e
	charmap "V", $1f
	charmap "W", $20
	charmap "X", $21
	charmap "Y", $22
	charmap "Z", $23

	charmap ",", $24
	charmap ".", $25
	charmap " ", $26
	charmap "&", $27
	charmap "!", $28
	charmap "?", $29
	charmap "[", $2a
	charmap "]", $2b
	charmap "(", $2c
	charmap ")", $2d
	charmap "♥", $2e
	charmap "♠", $2f
POPC

; ASCII charmap, for save file strings
PUSHC
	NEWCHARMAP ascii
	DEF PRINTABLE_ASCII EQUS " !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz\{|}~"
	FOR i, STRLEN(#PRINTABLE_ASCII)
		charmap STRSLICE(#PRINTABLE_ASCII, i, i + 1), i + $20
	ENDR
POPC
