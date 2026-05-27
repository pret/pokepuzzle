SECTION "Bank A", ROMX
FontGfx:: INCBIN "gfx/font.2bpp"

SECTION "Bank 13", ROMX
SECTION "Bank 13@5bac", ROMX[$5bac], BANK[$13]
Gfx_4dbac:: INCBIN "gfx/gfx_4dbac.2bpp"
SECTION "Bank 13@5c6c", ROMX[$5c6c], BANK[$13]
DemoHintGfx:: INCBIN "gfx/demo_hint.2bpp"

SECTION "Bank 32", ROMX
Gfx_c8000:: INCBIN "gfx/gfx_c8000.2bpp"

SECTION "Bank 36", ROMX
SECTION "Bank 36@6170", ROMX[$6170], BANK[$36]
PressStartGfx:: INCBIN "gfx/press_start.2bpp"

SECTION "Bank 36@6c50", ROMX[$6c50], BANK[$36]
Pals_dac50::
	rgb  0,  0,  0
	rgb 14,  0,  0
	rgb 14, 13,  0
	rgb 31, 31, 31

	rgb  0,  0,  0
	rgb  0,  0, 16
	rgb  0,  9, 19
	rgb 31, 31, 31

	rgb  0,  0,  0
	rgb  0, 11,  0
	rgb  8,  0, 18
	rgb 31, 31, 31
; 0xdac68

SECTION "Bank 38", ROMX
BlocksGfx:: INCBIN "gfx/blocks.2bpp"
Gfx_e1000:: INCBIN "gfx/gfx_e1000.2bpp"

SECTION "Bank 38@5880", ROMX[$5880], BANK[$38]

Pals_e1880::
	rgb 31,  8,  6
	rgb 21,  0,  0
	rgb 16, 15,  0
	rgb 28, 27,  0

	rgb  6,  9, 31
	rgb  0,  0, 22
	rgb  0, 11, 31
	rgb  0, 21, 31

	rgb  3, 31,  5
	rgb  0, 16,  0
	rgb 14,  0, 22
	rgb 31,  3, 31
; 0xe1898

SECTION "Bank 38@58a0", ROMX[$58a0], BANK[$38]
StopCounterGfx:: INCBIN "gfx/stop_counter.2bpp"

SECTION "Bank 39", ROMX

SECTION "Bank 39@733b", ROMX[$733b], BANK[$39]
Pals_e733b::
	rgb  1,  3,  6
	rgb  1,  7, 21
	rgb  7, 20, 22
	rgb 31, 31, 31

	rgb  4,  1,  6
	rgb 10,  2, 24
	rgb 19, 11, 26
	rgb 31, 31, 31

Pals_e734b::
	rgb  0,  3,  6
	rgb  0, 11, 24
	rgb 11, 25, 25
	rgb 31, 31, 31

	rgb  0,  3,  6
	rgb  0, 11, 24
	rgb  8, 21, 27
	rgb 31, 31, 31

Pals_e735b::
	rgb  2,  4,  0
	rgb 11,  6,  3
	rgb  9, 15,  0
	rgb 19, 24,  5

	rgb  3,  3,  0
	rgb 11,  6,  3
	rgb 23, 14,  7
	rgb 27, 20, 12

Pals_e736b::
	rgb  0,  6,  2
	rgb  0,  7,  6
	rgb  2, 12,  8
	rgb  8, 20, 11

	rgb  0,  6,  2
	rgb  1,  8,  4
	rgb  7, 12,  0
	rgb 19, 23,  0

Pals_e737b::
	rgb  5,  0,  1
	rgb 11,  1,  4
	rgb 26, 14,  5
	rgb 23,  1,  3

	rgb  3,  0,  1
	rgb 10,  3,  2
	rgb 24, 12,  5
	rgb 24, 12, 24

Pals_e738b::
	rgb  1,  1,  7
	rgb  1,  4, 16
	rgb  1,  8, 26
	rgb  7, 14, 27

	rgb  1,  1,  7
	rgb  1,  4, 16
	rgb  1,  8, 26
	rgb  8, 21, 31

Pals_e739b::
	rgb  2,  1,  4
	rgb 12,  1, 18
	rgb 20,  7, 23
	rgb 27, 20, 27

	rgb  1,  1,  6
	rgb  8,  1, 22
	rgb 15,  6, 30
	rgb 25, 20, 29

Pals_e73ab::
	rgb  1,  0,  5
	rgb  3,  1,  9
	rgb  9,  3, 18
	rgb 13, 10, 20

	rgb  2,  2,  4
	rgb  9,  5, 12
	rgb 16, 15, 19
	rgb 22, 22, 24

Pals_e73bb::
	rgb  4,  2,  0
	rgb 12,  4,  7
	rgb 28, 15, 19
	rgb 31, 27, 29

	rgb  3,  3,  0
	rgb  6, 14,  5
	rgb 28, 15, 19
	rgb 22, 29,  8

Pals_e73cb::
	rgb  6,  2,  0
	rgb 12,  6,  1
	rgb 18, 13,  4
	rgb 23, 20, 13

	rgb  6,  2,  0
	rgb 10,  4,  0
	rgb 18, 13,  4
	rgb 14,  9,  1

Pals_e73db::
	rgb  4,  0,  2
	rgb 11,  5, 19
	rgb 20,  9, 17
	rgb 28, 17, 21

	rgb  5,  2,  0
	rgb 13,  7,  3
	rgb 24, 13,  5
	rgb 28, 22, 11

Pals_e73eb::
	rgb  6,  2,  0
	rgb 17,  3, 29
	rgb 20,  8, 30
	rgb 24, 20, 28

	rgb  6,  2,  0
	rgb 14,  6,  0
	rgb 20, 14,  0
	rgb 29, 24,  0

Pals_e73fb::
	rgb  2,  0,  4
	rgb  0,  0, 11
	rgb  5,  4, 22
	rgb 14,  2, 31

	rgb  2,  0,  4
	rgb  6,  0, 16
	rgb 12,  1, 26
	rgb 19,  4, 31
; 0xe740b

SECTION "Bank 45", ROMX

SECTION "Bank 45@4e15", ROMX[$4e15], BANK[$45]
Pals_114e15::
	rgb  0,  0,  2
	rgb  0,  7,  3
	rgb  5, 17,  1
	rgb 18, 25,  0

	rgb  0,  2,  7
	rgb  0,  7,  9
	rgb  0, 17,  9
	rgb 13, 24,  4
; 0x114e25

SECTION "Bank 45@5c20", ROMX[$5c20], BANK[$45]
Pals_115c20::
	rgb  0,  1,  3
	rgb  1,  7,  9
	rgb 19, 26,  2
	rgb  0, 11, 11

	rgb  2,  0,  7
	rgb  0,  8, 11
	rgb  1,  5, 17
	rgb 16,  6, 18
; 0x115c30

SECTION "Bank 45@6726", ROMX[$6726], BANK[$45]
Pals_116726::
	rgb  3,  0,  1
	rgb 13,  1,  3
	rgb 26,  5,  2
	rgb 27, 13,  1

	rgb  3,  1, 10
	rgb  7,  0, 22
	rgb  4, 13, 27
	rgb  6, 21, 19
; 0x116736

SECTION "Bank 45@7332", ROMX[$7332], BANK[$45]
Pals_117332::
	rgb  4,  1,  4
	rgb  5,  0, 13
	rgb 10,  2, 23
	rgb 16,  5, 30

	rgb  4,  1,  4
	rgb  9,  2, 16
	rgb 18,  4, 23
	rgb 30, 17,  6
; 0x117342

SECTION "Bank 45@7ca2", ROMX[$7ca2], BANK[$45]
Pals_117ca2::
	rgb  0,  1,  3
	rgb  0,  7, 12
	rgb  2, 13, 20
	rgb  3, 20, 27

	rgb  0,  0,  4
	rgb  0,  1,  9
	rgb  0, 10,  7
	rgb  2, 18, 15
; 0x117cb2

SECTION "Bank 46", ROMX

SECTION "Bank 46@4b56", ROMX[$4b56], BANK[$46]
Pals_118b56::
	rgb  1,  1,  4
	rgb  0,  5, 13
	rgb  0, 14, 22
	rgb 28, 25,  0

	rgb  0,  8, 13
	rgb 12,  2, 14
	rgb 19, 11,  0
	rgb 28, 25,  0
; 0x118b66

SECTION "Bank 46@57e6", ROMX[$57e6], BANK[$46]
Pals_1197e6::
	rgb  3,  1,  1
	rgb 12,  2,  3
	rgb 19,  3, 17
	rgb 22,  5, 25

	rgb  7,  0,  1
	rgb 12,  1,  5
	rgb 18,  5, 14
	rgb  6, 14, 24
; 0x1197f6

SECTION "Bank 46@63e9", ROMX[$63e9], BANK[$46]
Pals_11a3e9::
	rgb  2,  1,  0
	rgb 14,  4,  1
	rgb 23,  8,  0
	rgb 30, 20,  1

	rgb  6,  2,  1
	rgb 26, 10,  0
	rgb 22,  8,  1
	rgb 31, 22,  1
; 0x11a3f9

SECTION "Bank 46@702a", ROMX[$702a], BANK[$46]
Pals_11b02a::
	rgb  3,  0,  1
	rgb 16,  2,  6
	rgb  1, 14, 22
	rgb 28, 14,  1

	rgb  9,  1,  1
	rgb 17,  1,  7
	rgb 29,  4, 15
	rgb 29, 15,  1
; 0x11b03a

SECTION "Bank 46@7c37", ROMX[$7c37], BANK[$46]
Pals_11bc37::
	rgb  0,  0,  2
	rgb  3,  2, 17
	rgb  1, 19, 19
	rgb  6, 26, 26

	rgb  2,  2, 12
	rgb  1, 15, 20
	rgb 30,  6,  7
	rgb 30, 27,  0
; 0x11bc47

SECTION "Bank 47", ROMX

SECTION "Bank 47@4f55", ROMX[$4f55], BANK[$47]
Pals_11cf55::
	rgb  3,  0, 15
	rgb  0,  1,  6
	rgb  0, 10, 15
	rgb 10, 24, 11

	rgb 13,  2, 18
	rgb  0, 11, 10
	rgb  1,  1, 13
	rgb 12, 23, 11
; 0x11cf65

SECTION "Bank 4F", ROMX

SECTION "Bank 4F@46f5", ROMX[$46f5], BANK[$4f]
ChikoritaPalette::
	rgb 31, 31, 31
	rgb 29, 23, 12
	rgb  8, 19,  4
	rgb  5,  8,  4
; 0x13c6fd

SECTION "Bank 4F@4d55", ROMX[$4d55], BANK[$4f]
TotodilePalette::
	rgb 31, 31, 31
	rgb 31, 20, 10
	rgb 10, 22, 26
	rgb  6,  6, 17
; 0x13cd5d

SECTION "Bank 4F@53ff", ROMX[$53ff], BANK[$4f]
CyndaquilPalette::
	rgb 31, 31, 31
	rgb 31, 30,  0
	rgb 19,  3,  8
	rgb 13,  3, 17
; 0x13d407

SECTION "Bank 4F@5bf2", ROMX[$5bf2], BANK[$4f]
PidgeyPalette::
	rgb 31, 31, 31
	rgb 31, 17, 31
	rgb 19,  8,  2
	rgb  6,  2,  0
; 0x13dbfa

SECTION "Bank 4F@6293", ROMX[$6293], BANK[$4f]
ClefairyPalette::
	rgb 31, 31, 31
	rgb 31, 13, 25
	rgb 18,  7,  4
	rgb  0,  0,  0
; 0x13e29b

SECTION "Bank 4F@6940", ROMX[$6940], BANK[$4f]
KakunaPalette::
	rgb 31, 31, 31
	rgb 31, 27,  4
	rgb 20, 12,  7
	rgb  6,  4,  3
; 0x13e948

SECTION "Bank 4F@70be", ROMX[$70be], BANK[$4f]
SeelPalette::
	rgb 31, 31, 31
	rgb 29, 11, 18
	rgb 19, 21, 31
	rgb  3,  3,  8
; 0x13f0c6

SECTION "Bank 4F@784a", ROMX[$784a], BANK[$4f]
SteelixPalette::
	rgb 31, 31, 31
	rgb 17, 15, 26
	rgb 12,  8, 12
	rgb  7,  3,  7
; 0x13f852

SECTION "Bank 4F@7fad", ROMX[$7fad], BANK[$4f]
GastlyPalette::
	rgb 31, 31, 31
	rgb 30, 15,  8
	rgb 17,  0, 23
	rgb  1,  1,  7
; 0x13ffb5

SECTION "Bank 50", ROMX

SECTION "Bank 50@4730", ROMX[$4730], BANK[$50]
PrimeapePalette::
	rgb 31, 31, 31
	rgb 31, 15,  6
	rgb 20,  7,  0
	rgb 11,  5,  0
; 0x140738

SECTION "Bank 50@4e10", ROMX[$4e10], BANK[$50]
MurkrowPalette::
	rgb 31, 31, 31
	rgb 23, 19,  3
	rgb 10, 11, 20
	rgb  5,  0,  8
; 0x140e18

SECTION "Bank 50@54da", ROMX[$54da], BANK[$50]
CrobatPalette::
	rgb 31, 31, 31
	rgb  4,  9, 15
	rgb 18,  8, 21
	rgb  5,  3,  8
; 0x1414e2

SECTION "Bank 50@5c1e", ROMX[$5c1e], BANK[$50]
DragonitePalette::
	rgb 31, 31, 30
	rgb 11, 10, 17
	rgb 21, 18,  6
	rgb  8,  6,  0
; 0x141c26

SECTION "Bank 50@63d6", ROMX[$63d6], BANK[$50]
BellossomPalette::
	rgb 30, 30, 30
	rgb 28, 11, 26
	rgb 15, 23,  6
	rgb  9,  6,  0
; 0x1423de

SECTION "Bank 50@6a57", ROMX[$6a57], BANK[$50]
DragonairPalette::
	rgb 31, 31, 31
	rgb 14, 19, 31
	rgb  5, 11, 31
	rgb  1,  3, 10
; 0x142a5f

SECTION "Bank 50@71c1", ROMX[$71c1], BANK[$50]
JynxPalette::
	rgb 31, 31, 31
	rgb 31, 28,  9
	rgb 31,  5, 15
	rgb 13,  0, 13
; 0x1431c9

SECTION "Bank 50@7943", ROMX[$7943], BANK[$50]
TogepiPalette::
	rgb 31, 31, 30
	rgb 30, 26, 11
	rgb 31,  6, 20
	rgb  9,  7,  3
; 0x14394b

SECTION "Bank 51", ROMX

SECTION "Bank 51@46f2", ROMX[$46f2], BANK[$51]
PikachuPalette::
	rgb 31, 31, 31
	rgb 29, 26,  5
	rgb 26,  6,  0
	rgb 10,  5,  2
; 0x1446fa

SECTION "Bank 51@4ce3", ROMX[$4ce3], BANK[$51]
MarillPalette::
	rgb 31, 31, 31
	rgb  9, 13, 29
	rgb 25,  8,  5
	rgb  0,  0, 12
; 0x144ceb

SECTION "Bank 51@5479", ROMX[$5479], BANK[$51]
HitmontopPalette::
	rgb 31, 31, 31
	rgb 31, 18, 23
	rgb  8, 10, 21
	rgb  7,  1,  4
; 0x145481

SECTION "Bank 51@5be9", ROMX[$5be9], BANK[$51]
PichuPalette::
	rgb 31, 31, 31
	rgb 29, 26,  5
	rgb 26,  6,  0
	rgb  9,  4,  1
; 0x145bf1

SECTION "Bank 51@6391", ROMX[$6391], BANK[$51]
ElekidPalette::
	rgb 31, 31, 31
	rgb 31, 31,  5
	rgb 15, 10,  3
	rgb  8,  3,  1
; 0x146399

SECTION "Bank 51@6a51", ROMX[$6a51], BANK[$51]
IgglybuffPalette::
	rgb 31, 31, 31
	rgb 30, 13, 31
	rgb 23,  8,  5
	rgb  8,  0,  1
; 0x146a59

SECTION "Bank 51@72c6", ROMX[$72c6], BANK[$51]
MagbyPalette::
	rgb 31, 31, 31
	rgb 31, 18,  9
	rgb 23,  9, 10
	rgb 10,  2,  2
; 0x1472ce

SECTION "Bank 51@7a01", ROMX[$7a01], BANK[$51]
SentretPalette::
	rgb 31, 31, 31
	rgb 22, 15, 10
	rgb 15,  7,  4
	rgb  7,  3,  0
; 0x147a09

SECTION "Bank 52", ROMX

SECTION "Bank 52@4659", ROMX[$4659], BANK[$52]
CleffaPalette::
	rgb 31, 31, 31
	rgb 31, 13, 25
	rgb 16, 10,  0
	rgb 11,  1, 10
; 0x148661

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
