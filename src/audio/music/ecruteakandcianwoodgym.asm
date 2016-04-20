Music_EcruteakAndCianwoodGym:: ; 188ce0 (62:4ce0)
	dw Music_EcruteakAndCianwoodGym_Ch1
	dw Music_EcruteakAndCianwoodGym_Ch2
	dw Music_EcruteakAndCianwoodGym_Ch3
	dw Music_EcruteakAndCianwoodGym_Ch4

Music_EcruteakAndCianwoodGym_Ch1:: ; 188ce8 (62:4ce8)
	INCBIN "baserom.gbc",$188ce8,$188ff7 - $188ce8

Music_EcruteakAndCianwoodGym_Ch2:: ; 188ff7 (62:4ff7)
	INCBIN "baserom.gbc",$188ff7,$1892c7 - $188ff7

Music_EcruteakAndCianwoodGym_Ch3:: ; 1892c7 (62:52c7)
	INCBIN "baserom.gbc",$1892c7,$18951f - $1892c7

Music_EcruteakAndCianwoodGym_Ch4:: ; 18951f (62:551f)
	INCBIN "baserom.gbc",$18951f,$18961d - $18951f
