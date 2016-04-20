Music_AzaleaAndBlackthornGym:: ; 185d0a (61:5d0a)
	dw Music_AzaleaAndBlackthornGym_Ch1
	dw Music_AzaleaAndBlackthornGym_Ch2
	dw Music_AzaleaAndBlackthornGym_Ch3
	dw Music_AzaleaAndBlackthornGym_Ch4

Music_AzaleaAndBlackthornGym_Ch1:: ; 185d12 (61:5d12)
	INCBIN "baserom.gbc",$185d12,$185e6a - $185d12

Music_AzaleaAndBlackthornGym_Ch2:: ; 185e6a (61:5e6a)
	INCBIN "baserom.gbc",$185e6a,$186158 - $185e6a

Music_AzaleaAndBlackthornGym_Ch3:: ; 186158 (61:6158)
	INCBIN "baserom.gbc",$186158,$18637c - $186158

Music_AzaleaAndBlackthornGym_Ch4:: ; 18637c (61:637c)
	INCBIN "baserom.gbc",$18637c,$186675 - $18637c
