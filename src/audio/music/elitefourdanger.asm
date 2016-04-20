Music_EliteFourDanger:: ; 18ddda (63:5dda)
	dw Music_EliteFourDanger_Ch1
	dw Music_EliteFourDanger_Ch2
	dw Music_EliteFourDanger_Ch3
	dw Music_EliteFourDanger_Ch4

Music_EliteFourDanger_Ch1:: ; 18dde2 (63:5de2)
	INCBIN "baserom.gbc",$18dde2,$18e069 - $18dde2

Music_EliteFourDanger_Ch2:: ; 18e069 (63:6069)
	INCBIN "baserom.gbc",$18e069,$18e320 - $18e069

Music_EliteFourDanger_Ch3:: ; 18e320 (63:6320)
	INCBIN "baserom.gbc",$18e320,$18e740 - $18e320

Music_EliteFourDanger_Ch4:: ; 18e740 (63:6740)
	INCBIN "baserom.gbc",$18e740,$18ebd0 - $18e740
