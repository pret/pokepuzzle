Music_TitleScreen:: ; 18c000 (63:4000)
	dw Music_TitleScreen_Ch1
	dw Music_TitleScreen_Ch2
	dw Music_TitleScreen_Ch3
	dw Music_TitleScreen_Ch4

Music_TitleScreen_Ch1:: ; 18c008 (63:4008)
	INCBIN "baserom.gbc",$18c008,$18c2a3 - $18c008

Music_TitleScreen_Ch2:: ; 18c2a3 (63:42a3)
	INCBIN "baserom.gbc",$18c2a3,$18c51b - $18c2a3

Music_TitleScreen_Ch3:: ; 18c51b (63:451b)
	INCBIN "baserom.gbc",$18c51b,$18c6e0 - $18c51b

Music_TitleScreen_Ch4:: ; 18c6e0 (63:46e0)
	INCBIN "baserom.gbc",$18c6e0,$18c8d7 - $18c6e0
