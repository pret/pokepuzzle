Music_HereComesLance:: ; 18ebd0 (63:6bd0)
	dw Music_HereComesLance_Ch1
	dw Music_HereComesLance_Ch2
	dw Music_HereComesLance_Ch3
	dw Music_HereComesLance_Ch4

Music_HereComesLance_Ch1:: ; 18ebd8 (63:6bd8)
	INCBIN "baserom.gbc",$18ebd8,$18ec77 - $18ebd8

Music_HereComesLance_Ch2:: ; 18ec77 (63:6c77)
	INCBIN "baserom.gbc",$18ec77,$18ec98 - $18ec77

Music_HereComesLance_Ch3:: ; 18ec98 (63:6c98)
	INCBIN "baserom.gbc",$18ec98,$18ecc6 - $18ec98

Music_HereComesLance_Ch4:: ; 18ecc6 (63:6cc6)
	INCBIN "baserom.gbc",$18ecc6,$18ed33 - $18ecc6
