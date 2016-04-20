Music_MainMenu:: ; 186f53 (61:6f53)
	dw Music_MainMenu_Ch1
	dw Music_MainMenu_Ch2
	dw Music_MainMenu_Ch3
	dw Music_MainMenu_Ch4

Music_MainMenu_Ch1:: ; 186f5b (61:6f5b)
	INCBIN "baserom.gbc",$186f5b,$1870c8 - $186f5b

Music_MainMenu_Ch2:: ; 1870c8 (61:70c8)
	INCBIN "baserom.gbc",$1870c8,$187388 - $1870c8

Music_MainMenu_Ch3:: ; 187388 (61:7388)
	INCBIN "baserom.gbc",$187388,$1874e5 - $187388

Music_MainMenu_Ch4:: ; 1874e5 (61:74e5)
	INCBIN "baserom.gbc",$1874e5,$1875fd - $1874e5
