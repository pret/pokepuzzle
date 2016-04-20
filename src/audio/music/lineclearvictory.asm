Music_LineClearVictory:: ; 192564 (64:6564)
	dw Music_LineClearVictory_Ch1
	dw Music_LineClearVictory_Ch2
	dw Music_LineClearVictory_Ch3
	dw Music_LineClearVictory_Ch4

Music_LineClearVictory_Ch1:: ; 19256c (64:656c)
	INCBIN "baserom.gbc",$19256c,$1925b1 - $19256c

Music_LineClearVictory_Ch2:: ; 1925b1 (64:65b1)
	INCBIN "baserom.gbc",$1925b1,$1925e0 - $1925b1

Music_LineClearVictory_Ch3:: ; 1925e0 (64:65e0)
	INCBIN "baserom.gbc",$1925e0,$1925fe - $1925e0

Music_LineClearVictory_Ch4:: ; 1925fe (64:65fe)
	INCBIN "baserom.gbc",$1925fe,$194000 - $1925fe
