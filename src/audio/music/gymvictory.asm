Music_GymVictory:: ; 188be2 (62:4be2)
	dw Music_GymVictory_Ch1
	dw Music_GymVictory_Ch2
	dw Music_GymVictory_Ch3
	dw $0000

Music_GymVictory_Ch1:: ; 188bea (62:4bea)
	INCBIN "baserom.gbc",$188bea,$188c44 - $188bea

Music_GymVictory_Ch2:: ; 188c44 (62:4c44)
	INCBIN "baserom.gbc",$188c44,$188c97 - $188c44

Music_GymVictory_Ch3:: ; 188c97 (62:4c97)
	INCBIN "baserom.gbc",$188c97,$188ce0 - $188c97
