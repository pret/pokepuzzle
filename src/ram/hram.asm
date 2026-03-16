SECTION "HRAM", HRAM[$ff8a]

	ds $18

; either RAMG_SRAM_DISABLE or RAMG_SRAM_ENABLE
hSRAMEnabled:: ds 1 ; ffa2

hROMBank:: ds 1 ; ffa3
hHighROMBank:: ds 1 ; ffa4
hSRAMBank:: ds 1 ; ffa5
hVRAMBank:: ds 1 ; ffa6
hWRAMBank:: ds 1 ; ffa7

hInitialA:: ds 1 ; ffa8
hCompatibleConsole:: ds 1 ; ffa9

hIE:: ds 1 ; ffaa
hLCDC:: ds 1 ; ffab
hSCX:: ds 1 ; ffac
hSCY:: ds 1 ; ffad
hWX:: ds 1 ; ffae
hWY:: ds 1 ; ffaf

	ds 1

hLastSCX:: ds 1 ; ffb1
hLastSCY:: ds 1 ; ffb2

	ds $ffb5 - $ffb3

hffb5:: ds 1 ; ffb5
hffb6:: ds 1 ; ffb6
hffb7:: ds 1 ; ffb7
hffb8:: ds 1 ; ffb8
hffb9:: ds 1 ; ffb9

; function pointer and bank for a function
; to be called in V-Blank if non-NULL
hVBlankTrampolinePtr::  ds 2 ; ffba
hVBlankTrampolineBank:: ds 1 ; ffbc

hffbd:: ds 1 ; ffbd
hffbe:: ds 1 ; ffbe
hffbf:: ds 1 ; ffbf

	ds $ffc4 - $ffc0

hCopyDest::       ds 2 ; ffc4
hCopyDestBank::   ds 1 ; ffc6
hCopySource::     ds 2 ; ffc7
hCopySourceBank:: ds 1 ; ffc9
hCopyLen::        ds 2 ; ffca
hCopyInterval::   ds 2 ; ffcc
hCopyIterations:: ds 2 ; ffce
