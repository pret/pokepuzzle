SECTION "HRAM", HRAM[$ff8a]

hff8a:: ds 1 ; ff8a
hff8b:: ds 1 ; ff8b
hff8c:: ds 1 ; ff8c
hff8d:: ds 1 ; ff8d
hff8e:: ds 1 ; ff8e
hff8f:: ds 1 ; ff8f
hff90:: ds 1 ; ff90
hff91:: ds 1 ; ff91
hff92:: ds 1 ; ff92
hff93:: ds 1 ; ff93
hff94:: ds 1 ; ff94
hff95:: ds 1 ; ff95
hff96:: ds 1 ; ff96
hff97:: ds 1 ; ff97
hff98:: ds 1 ; ff98

	ds $9

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

; size of wVirtualOAM in bytes
hVirtualOAMSize:: ds 1 ; ffb5

; GAMESTATE_* constant
hGameState:: ds 1 ; ffb6

hffb7:: ds 1 ; ffb7
hffb8:: ds 1 ; ffb8

; if TRUE then we are waiting for V-Blank to execute
hVBlankPending:: ds 1 ; ffb9

; function pointer and bank for a function
; to be called in V-Blank if non-NULL
hVBlankTrampolinePtr::  ds 2 ; ffba
hVBlankTrampolineBank:: ds 1 ; ffbc

; variables storing different information about player input:
; which keys are currently being pressed
hJoypadDown::           ds 1 ; ffbd
; which keys were pressed on this frame
hJoypadPressed::        ds 1 ; ffbe
; which keys are being held and are being repeated (see below)
hJoypadHeld::           ds 1 ; ffbf
; value of previous input to compare with current input
hPrevJoypadInput::      ds 1 ; ffc0
; timer used to countdown timer in order to repeat input
hJoypadRepeatTimer::    ds 1 ; ffc1
; initial delay of key being pressed before repeating
hJoypadRepeatDelay::    ds 1 ; ffc2
; how long to wait between each key repetition (aka repetition rate)
hJoypadRepeatInterval:: ds 1 ; ffc3

hCopyDest::       ds 2 ; ffc4
hCopyDestBank::   ds 1 ; ffc6
hCopySource::     ds 2 ; ffc7
hCopySourceBank:: ds 1 ; ffc9
hCopyLen::        ds 2 ; ffca
hCopyInterval::   ds 2 ; ffcc
hCopyIterations:: ds 2 ; ffce

hTempDecompress::   ds 1 ; ffd0
hDecompressLookbackLen:: ds 2 ; ffd1
hDecompressDest::   ds 2 ; ffd3
hDecompressSource:: ds 2 ; ffd5

	ds $ffe7 - $ffd7

hffe7:: ds 1 ; ffe7
hffe8:: ds 1 ; ffe8
hffe9:: ds 1 ; ffe9
hffea:: ds 1 ; ffea
hffeb:: ds 1 ; ffeb
hffec:: ds 1 ; ffec
hffed:: ds 1 ; ffed
hffee:: ds 1 ; ffee
hffef:: ds 1 ; ffef
hfff0:: ds 1 ; fff0
