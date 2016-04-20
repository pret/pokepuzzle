Music_GymBattleDanger:: ; 18ed33 (63:6d33)
	dw Music_GymBattleDanger_Ch1
	dw Music_GymBattleDanger_Ch2
	dw Music_GymBattleDanger_Ch3
	dw Music_GymBattleDanger_Ch4

Music_GymBattleDanger_Ch1:: ; 18ed3b (63:6d3b)
	INCBIN "baserom.gbc",$18ed3b,$18f02b - $18ed3b

Music_GymBattleDanger_Ch2:: ; 18f02b (63:702b)
	INCBIN "baserom.gbc",$18f02b,$18f2bd - $18f02b

Music_GymBattleDanger_Ch3:: ; 18f2bd (63:72bd)
	INCBIN "baserom.gbc",$18f2bd,$18f5fc - $18f2bd

Music_GymBattleDanger_Ch4:: ; 18f5fc (63:75fc)
	INCBIN "baserom.gbc",$18f5fc,$18f986 - $18f5fc
