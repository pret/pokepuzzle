Music_GoldenrodGym:: ; 18400c (61:400c)
	dw Music_GoldenrodGym_Ch1
	dw Music_GoldenrodGym_Ch2
	dw Music_GoldenrodGym_Ch3
	dw Music_GoldenrodGym_Ch4

Music_GoldenrodGym_Ch1:: ; 184014 (61:4014)
	INCBIN "baserom.gbc",$184014,$1841df - $184014

Music_GoldenrodGym_Ch2:: ; 1841df (61:41df)
	INCBIN "baserom.gbc",$1841df,$1844f6 - $1841df

Music_GoldenrodGym_Ch3:: ; 1844f6 (61:44f6)
	INCBIN "baserom.gbc",$1844f6,$184996 - $1844f6

Music_GoldenrodGym_Ch4:: ; 184996 (61:4996)
	INCBIN "baserom.gbc",$184996,$184d11 - $184996
