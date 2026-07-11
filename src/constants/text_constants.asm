; wLanguage constants
DEF JAPANESE EQU $0
DEF ENGLISH  EQU $1

; wFont constants
	const_def
	; contains uppercase latin and kanji
	const FONT1 ; $0
	; contains latin letters
	const FONT2 ; $1
	; contains latin letters
	const FONT3 ; $2

; terminates the text
DEF TX_END EQU $ff

DEF TX_UNKFE EQU $fe

DEF TX_FONT1 EQU $fd
DEF TX_FONT2 EQU $fc
DEF TX_FONT3 EQU $fb

; positions to a new line
DEF TX_NEWLINE EQU $fa

; clears all text
DEF TX_CLEAR EQU $f9
