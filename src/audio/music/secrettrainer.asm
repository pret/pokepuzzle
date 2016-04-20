Music_SecretTrainer:: ; 18fae0 (63:7ae0)
	dw Music_SecretTrainer_Ch1
	dw Music_SecretTrainer_Ch2
	dw Music_SecretTrainer_Ch3
	dw Music_SecretTrainer_Ch4

Music_SecretTrainer_Ch1:: ; 18fae8 (63:7ae8)
	INCBIN "baserom.gbc",$18fae8,$18fb68 - $18fae8

Music_SecretTrainer_Ch2:: ; 18fb68 (63:7b68)
	INCBIN "baserom.gbc",$18fb68,$18fbce - $18fb68

Music_SecretTrainer_Ch3:: ; 18fbce (63:7bce)
	INCBIN "baserom.gbc",$18fbce,$18fc3a - $18fbce

Music_SecretTrainer_Ch4:: ; 18fc3a (63:7c3a)
	INCBIN "baserom.gbc",$18fc3a,$190000 - $18fc3a
