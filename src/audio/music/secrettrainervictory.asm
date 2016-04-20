Music_SecretTrainerVictory:: ; 18f986 (63:7986)
	dw Music_SecretTrainerVictory_Ch1
	dw Music_SecretTrainerVictory_Ch2
	dw Music_SecretTrainerVictory_Ch3
	dw $0000

Music_SecretTrainerVictory_Ch1:: ; 18f98e (63:798e)
	INCBIN "baserom.gbc",$18f98e,$18fa03 - $18f98e

Music_SecretTrainerVictory_Ch2:: ; 18fa03 (63:7a03)
	INCBIN "baserom.gbc",$18fa03,$18fa83 - $18fa03

Music_SecretTrainerVictory_Ch3:: ; 18fa83 (63:7a83)
	INCBIN "baserom.gbc",$18fa83,$18fae0 - $18fa83
