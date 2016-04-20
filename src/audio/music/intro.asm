Music_Intro:: ; 18a980 (62:6980)
	dw Music_Intro_Ch1
	dw Music_Intro_Ch2
	dw Music_Intro_Ch3
	dw Music_Intro_Ch4

Music_Intro_Ch1:: ; 18a988 (62:6988)
	INCBIN "baserom.gbc",$18a988,$18ad09 - $18a988

Music_Intro_Ch2:: ; 18ad09 (62:6d09)
	INCBIN "baserom.gbc",$18ad09,$18b2cc - $18ad09

Music_Intro_Ch3:: ; 18b2cc (62:72cc)
	INCBIN "baserom.gbc",$18b2cc,$18b74e - $18b2cc

Music_Intro_Ch4:: ; 18b74e (62:774e)
	INCBIN "baserom.gbc",$18b74e,$18c000 - $18b74e
