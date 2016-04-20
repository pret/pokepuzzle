Music_Credits:: ; 1906ba (64:46ba)
	dw Music_Credits_Ch1
	dw Music_Credits_Ch2
	dw Music_Credits_Ch3
	dw Music_Credits_Ch4

Music_Credits_Ch1:: ; 1906c2 (64:46c2)
	INCBIN "baserom.gbc",$1906c2,$19085f - $1906c2

Music_Credits_Ch2:: ; 19085f (64:485f)
	INCBIN "baserom.gbc",$19085f,$190c8f - $19085f

Music_Credits_Ch3:: ; 190c8f (64:4c8f)
	INCBIN "baserom.gbc",$190c8f,$190f8d - $190c8f

Music_Credits_Ch4:: ; 190f8d (64:4f8d)
	INCBIN "baserom.gbc",$190f8d,$1913f3 - $190f8d
