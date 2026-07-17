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

DEF TX_SET_VRAM_TILES EQU $f8

; sets color of text
DEF TX_COLOR EQU $f7

; sets fill color (text background)
DEF TX_FILL_COLOR EQU $f6

; sets text delay on each character
DEF TX_SET_DELAY EQU $f5

; if TRUE, allows speeding up with A btn
; is FALSE by default
DEF TX_SPEEDUP_ENABLED EQU $f4

DEF TX_JUMP EQU $f3

DEF TX_LANGUAGE_BRANCH EQU $f2

DEF TX_EXEC EQU $f1
DEF TX_CONDITION EQU $f0
DEF TX_UNKEF EQU $ef

DEF TX_WAIT EQU $ee

; call a text sub
DEF TX_CALL EQU $ed
; ret from a text sub
DEF TX_RET EQU $ec

; wTextProcessMode constants
	const_def
	const TXPROC_DONE      ; $0
	const TXPROC_NEXT_CHAR ; $1
	const TXPROC_PUSH_CHAR ; $2

; wPendingTextGfxOperation constants
	const_def 1
	const PUSH_1_TEXT_TILE  ; $1
	const PUSH_2_TEXT_TILES ; $2
	const SHOW_TEXT_TILE    ; $3
