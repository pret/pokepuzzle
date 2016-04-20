Music_EliteFour:: ; 18961d (62:561d)
	dw Music_EliteFour_Ch1
	dw Music_EliteFour_Ch2
	dw Music_EliteFour_Ch3
	dw Music_EliteFour_Ch4

Music_EliteFour_Ch1:: ; 189625 (62:5625)
	INCBIN "baserom.gbc",$189625,$18975f - $189625

Music_EliteFour_Ch2:: ; 18975f (62:575f)
	INCBIN "baserom.gbc",$18975f,$189907 - $18975f

Music_EliteFour_Ch3:: ; 189907 (62:5907)
	INCBIN "baserom.gbc",$189907,$189aef - $189907

Music_EliteFour_Ch4:: ; 189aef (62:5aef)
	INCBIN "baserom.gbc",$189aef,$189d83 - $189aef
