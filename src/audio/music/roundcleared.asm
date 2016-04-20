Music_RoundCleared:: ; 187940 (61:7940)
	dw Music_RoundCleared_Ch1
	dw Music_RoundCleared_Ch2
	dw Music_RoundCleared_Ch3
	dw Music_RoundCleared_Ch4

Music_RoundCleared_Ch1:: ; 187948 (61:7948)
	INCBIN "baserom.gbc",$187948,$187a39 - $187948

Music_RoundCleared_Ch2:: ; 187a39 (61:7a39)
	INCBIN "baserom.gbc",$187a39,$187b31 - $187a39

Music_RoundCleared_Ch3:: ; 187b31 (61:7b31)
	INCBIN "baserom.gbc",$187b31,$187bfd - $187b31

Music_RoundCleared_Ch4:: ; 187bfd (61:7bfd)
	INCBIN "baserom.gbc",$187bfd,$188000 - $187bfd
