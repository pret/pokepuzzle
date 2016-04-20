Music_VioletAndOlivineGym:: ; 186675 (61:6675)
	dw Music_VioletAndOlivineGym_Ch1
	dw Music_VioletAndOlivineGym_Ch2
	dw Music_VioletAndOlivineGym_Ch3
	dw Music_VioletAndOlivineGym_Ch4

Music_VioletAndOlivineGym_Ch1:: ; 18667d (61:667d)
	INCBIN "baserom.gbc",$18667d,$18689b - $18667d

Music_VioletAndOlivineGym_Ch2:: ; 18689b (61:689b)
	INCBIN "baserom.gbc",$18689b,$186b2c - $18689b

Music_VioletAndOlivineGym_Ch3:: ; 186b2c (61:6b2c)
	INCBIN "baserom.gbc",$186b2c,$186d6f - $186b2c

Music_VioletAndOlivineGym_Ch4:: ; 186d6f (61:6d6f)
	INCBIN "baserom.gbc",$186d6f,$186f53 - $186d6f
