; rst vectors
SECTION "rst 00",ROM0[$00]
	rst $38

SECTION "rst 08",ROM0[$08]
	rst $38

SECTION "rst 10",ROM0[$10]
	rst $38

SECTION "rst 18",ROM0[$18]
	rst $38

SECTION "rst 20",ROM0[$20]
	rst $38

SECTION "rst 28",ROM0[$28]
	rst $38

SECTION "rst 30",ROM0[$30]
	rst $38

SECTION "rst 38",ROM0[$38]
	rst $38

; interrupts
SECTION "vblank",ROM0[$40]
	jp $c492 ; VBlankHandler

SECTION "hblank",ROM0[$48]
	jp $c342 ; HBlankHandler

SECTION "timer",ROM0[$50]
	jp $0ef8 ; TimerHandler

SECTION "serial",ROM0[$58]
	jp $0e54 ; SerialHandler

SECTION "joypad",ROM0[$60]
	reti

SECTION "romheader",ROM0[$100]
	nop
	jp Start

; manually declare part of the rom header
; because rgblink mistakenly pads these with FF
SECTION "gbc only",ROM0[$143]
	db $c0

SECTION "sgb flag",ROM0[$146]
	db $00

SECTION "start",ROM0[$150]
Start: ; 0150 (0:0150)

INCBIN "baserom.gbc",$150,$35b6 - $150
