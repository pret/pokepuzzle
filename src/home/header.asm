SECTION "NULL", ROM0
NULL::

; rst vectors
SECTION "rst00", ROM0
	rst $38

SECTION "rst08", ROM0
	rst $38

SECTION "rst10", ROM0
	rst $38

SECTION "rst18", ROM0
	rst $38

SECTION "rst20", ROM0
	rst $38

SECTION "rst28", ROM0
	rst $38

SECTION "rst30", ROM0
	rst $38

SECTION "rst38", ROM0
	rst $38

; interrupts
SECTION "vblank", ROM0
	jp wVBlankHandler

SECTION "lcdc", ROM0
	jp wHBlankHandler

SECTION "timer", ROM0
	jp TimerHandler

SECTION "serial", ROM0
	jp SerialHandler

SECTION "joypad", ROM0
	reti

SECTION "romheader", ROM0
	nop
	jp Start
