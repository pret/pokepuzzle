SECTION "Text Engine", ROMX

INCLUDE "text/engine.asm"
INCLUDE "data/char_widths.asm"

FontGfx:
INCBIN "gfx/fonts/1.1bpp"
INCBIN "gfx/fonts/2.1bpp"
INCBIN "gfx/fonts/3.1bpp"


SECTION "Text 1", ROMX
INCLUDE "text/text1.asm"

SECTION "Text 2", ROMX
INCLUDE "text/text2.asm"

SECTION "Text 3", ROMX
INCLUDE "text/text3.asm"

SECTION "Text 4", ROMX
INCLUDE "text/text4.asm"
