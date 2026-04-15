SECTION "Bank A", ROMX
Font1Gfx:: INCBIN "gfx/font1.2bpp"
Font2Gfx:: INCBIN "gfx/font2.2bpp"


SECTION "Bank 32", ROMX
Gfx_c8000:: INCBIN "gfx/gfx_c8000.2bpp"

SECTION "Bank 53", ROMX

SECTION "Bank 53@50f3", ROMX[$50f3], BANK[$53]
Pals_14d0f3::
	rgb 31, 31, 31
	rgb 29, 26,  5
	rgb 26,  6,  0
	rgb 10,  5,  2

	rgb  8, 15, 31
	rgb 14, 19, 29
	rgb 20, 21, 29
	rgb 31, 31, 31

	rgb  8, 15, 31
	rgb 29, 26,  5
	rgb 26,  6,  0
	rgb 10,  5,  2

	rgb  8, 15, 31
	rgb 31, 31, 31
	rgb 26,  6,  0
	rgb 10,  5,  2

	rgb  8, 15, 31
	rgb 29, 26,  5
	rgb 31, 31, 31
	rgb 10,  5,  2

	rgb  8, 15, 31
	rgb 16, 26, 22
	rgb 12, 20, 25
	rgb 31, 31, 31

	rgb  0,  0,  0
	rgb 10, 10, 10
	rgb 21, 21, 21
	rgb 31, 31, 31

	rgb 31, 31, 31
	rgb  4,  4,  4
	rgb  0,  0,  0
	rgb 31, 31, 31

Tilemap_14d133:: INCBIN "data/bg_14d133.tilemap"
; 0x14d183

SECTION "Bank 53@51d3", ROMX[$51d3], BANK[$53]
Tilemap_14d1d3:: INCBIN "data/bg_14d1d3.tilemap"

SECTION "Bank 53@529b", ROMX[$529b], BANK[$53]
Attrmap_14d29b:: INCBIN "data/bg_14d29b.attrmap"

SECTION "Bank 53@533b", ROMX[$533b], BANK[$53]
Attrmap_14d33b:: INCBIN "data/bg_14d33b.attrmap"

SECTION "Bank 53@54cb", ROMX[$54cb], BANK[$53]
Tilemap_14d4cb:: INCBIN "data/bg_14d4cb.tilemap"
Attrmap_14d52f:: INCBIN "data/bg_14d52f.attrmap"
