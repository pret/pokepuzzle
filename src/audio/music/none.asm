Music_None:: ; 184000 (61:4000)
	dw Music_None_Ch1
	dw Music_None_Ch2
	dw Music_None_Ch3
	dw Music_None_Ch4

Music_None_Ch1:: ; 184008 (61:4008)
	INCBIN "baserom.gbc",$184008,$184009 - $184008

Music_None_Ch2:: ; 184009 (61:4009)
	INCBIN "baserom.gbc",$184009,$18400a - $184009

Music_None_Ch3:: ; 18400a (61:400a)
	INCBIN "baserom.gbc",$18400a,$18400b - $18400a

Music_None_Ch4:: ; 18400b (61:400b)
	INCBIN "baserom.gbc",$18400b,$18400c - $18400b
