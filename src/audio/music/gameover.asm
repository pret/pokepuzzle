Music_GameOver:: ; 18a872 (62:6872)
	dw Music_GameOver_Ch1
	dw Music_GameOver_Ch2
	dw Music_GameOver_Ch3
	dw $0000

Music_GameOver_Ch1:: ; 18a87a (62:687a)
	INCBIN "baserom.gbc",$18a87a,$18a8cf - $18a87a

Music_GameOver_Ch2:: ; 18a8cf (62:68cf)
	INCBIN "baserom.gbc",$18a8cf,$18a92e - $18a8cf

Music_GameOver_Ch3:: ; 18a92e (62:692e)
	INCBIN "baserom.gbc",$18a92e,$18a980 - $18a92e
