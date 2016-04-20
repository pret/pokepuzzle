Music_MainMenuCopy:: ; 190000 (64:4000)
	dw Music_MainMenuCopy_Ch1
	dw Music_MainMenuCopy_Ch2
	dw Music_MainMenuCopy_Ch3
	dw Music_MainMenuCopy_Ch4

Music_MainMenuCopy_Ch1:: ; 190008 (64:4008)
	INCBIN "baserom.gbc",$190008,$190179 - $190008

Music_MainMenuCopy_Ch2:: ; 190179 (64:4179)
	INCBIN "baserom.gbc",$190179,$19043d - $190179

Music_MainMenuCopy_Ch3:: ; 19043d (64:443d)
	INCBIN "baserom.gbc",$19043d,$19059e - $19043d

Music_MainMenuCopy_Ch4:: ; 19059e (64:459e)
	INCBIN "baserom.gbc",$19059e,$1906ba - $19059e
