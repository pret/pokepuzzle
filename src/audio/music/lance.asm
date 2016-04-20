Music_Lance:: ; 189d83 (62:5d83)
	dw Music_Lance_Ch1
	dw Music_Lance_Ch2
	dw Music_Lance_Ch3
	dw Music_Lance_Ch4

Music_Lance_Ch1:: ; 189d8b (62:5d8b)
	INCBIN "baserom.gbc",$189d8b,$189fb3 - $189d8b

Music_Lance_Ch2:: ; 189fb3 (62:5fb3)
	INCBIN "baserom.gbc",$189fb3,$18a25d - $189fb3

Music_Lance_Ch3:: ; 18a25d (62:625d)
	INCBIN "baserom.gbc",$18a25d,$18a44d - $18a25d

Music_Lance_Ch4:: ; 18a44d (62:644d)
	INCBIN "baserom.gbc",$18a44d,$18a872 - $18a44d
