Music_ElekidAndMagbysTheme:: ; 18d4d9 (63:54d9)
	dw Music_ElekidAndMagbysTheme_Ch1
	dw Music_ElekidAndMagbysTheme_Ch2
	dw Music_ElekidAndMagbysTheme_Ch3
	dw Music_ElekidAndMagbysTheme_Ch4

Music_ElekidAndMagbysTheme_Ch1:: ; 18d4e1 (63:54e1)
	INCBIN "baserom.gbc",$18d4e1,$18d658 - $18d4e1

Music_ElekidAndMagbysTheme_Ch2:: ; 18d658 (63:5658)
	INCBIN "baserom.gbc",$18d658,$18d8ab - $18d658

Music_ElekidAndMagbysTheme_Ch3:: ; 18d8ab (63:58ab)
	INCBIN "baserom.gbc",$18d8ab,$18dad9 - $18d8ab

Music_ElekidAndMagbysTheme_Ch4:: ; 18dad9 (63:5ad9)
	INCBIN "baserom.gbc",$18dad9,$18ddda - $18dad9
