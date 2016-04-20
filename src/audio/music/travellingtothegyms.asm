Music_TravellingToTheGyms:: ; 1875fd (61:75fd)
	dw Music_TravellingToTheGyms_Ch1
	dw Music_TravellingToTheGyms_Ch2
	dw Music_TravellingToTheGyms_Ch3
	dw $0000

Music_TravellingToTheGyms_Ch1:: ; 187605 (61:7605)
	INCBIN "baserom.gbc",$187605,$1876de - $187605

Music_TravellingToTheGyms_Ch2:: ; 1876de (61:76de)
	INCBIN "baserom.gbc",$1876de,$187802 - $1876de

Music_TravellingToTheGyms_Ch3:: ; 187802 (61:7802)
	INCBIN "baserom.gbc",$187802,$187940 - $187802
