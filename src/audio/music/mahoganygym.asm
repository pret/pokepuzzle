Music_MahoganyGym:: ; 188000 (62:4000)
	dw Music_MahoganyGym_Ch1
	dw Music_MahoganyGym_Ch2
	dw Music_MahoganyGym_Ch3
	dw Music_MahoganyGym_Ch4

Music_MahoganyGym_Ch1:: ; 188008 (62:4008)
	INCBIN "baserom.gbc",$188008,$1881c7 - $188008

Music_MahoganyGym_Ch2:: ; 1881c7 (62:41c7)
	INCBIN "baserom.gbc",$1881c7,$18844e - $1881c7

Music_MahoganyGym_Ch3:: ; 18844e (62:444e)
	INCBIN "baserom.gbc",$18844e,$1886e6 - $18844e

Music_MahoganyGym_Ch4:: ; 1886e6 (62:46e6)
	INCBIN "baserom.gbc",$1886e6,$188be2 - $1886e6
