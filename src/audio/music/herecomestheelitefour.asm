Music_HereComesTheEliteFour:: ; 18c8d7 (63:48d7)
	dw Music_HereComesTheEliteFour_Ch1
	dw Music_HereComesTheEliteFour_Ch2
	dw Music_HereComesTheEliteFour_Ch3
	dw Music_HereComesTheEliteFour_Ch4

Music_HereComesTheEliteFour_Ch1:: ; 18c8df (63:48df)
	INCBIN "baserom.gbc",$18c8df,$18c97d - $18c8df

Music_HereComesTheEliteFour_Ch2:: ; 18c97d (63:497d)
	INCBIN "baserom.gbc",$18c97d,$18c9ac - $18c97d

Music_HereComesTheEliteFour_Ch3:: ; 18c9ac (63:49ac)
	INCBIN "baserom.gbc",$18c9ac,$18ca29 - $18c9ac

Music_HereComesTheEliteFour_Ch4:: ; 18ca29 (63:4a29)
	INCBIN "baserom.gbc",$18ca29,$18ca9f - $18ca29
