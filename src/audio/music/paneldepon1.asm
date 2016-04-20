Music_PanelDePon1:: ; 91365 (24:5365)
	dw Music_PanelDePon1_Ch1
	dw Music_PanelDePon1_Ch2
	dw Music_PanelDePon1_Ch3
	dw Music_PanelDePon1_Ch4

Music_PanelDePon1_Ch1:: ; 9136d (24:536d)
	INCBIN "baserom.gbc",$9136d,$9146c - $9136d

Music_PanelDePon1_Ch2:: ; 9146c (24:546c)
	INCBIN "baserom.gbc",$9146c,$9151a - $9146c

Music_PanelDePon1_Ch3:: ; 9151a (24:551a)
	INCBIN "baserom.gbc",$9151a,$915bf - $9151a

Music_PanelDePon1_Ch4:: ; 915bf (24:55bf)
	INCBIN "baserom.gbc",$915bf,$94000 - $915bf
