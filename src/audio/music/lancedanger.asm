Music_LanceDanger:: ; 1913f3 (64:53f3)
	dw Music_LanceDanger_Ch1
	dw Music_LanceDanger_Ch2
	dw Music_LanceDanger_Ch3
	dw Music_LanceDanger_Ch4

Music_LanceDanger_Ch1:: ; 1913fb (64:53fb)
	INCBIN "baserom.gbc",$1913fb,$191669 - $1913fb

Music_LanceDanger_Ch2:: ; 191669 (64:5669)
	INCBIN "baserom.gbc",$191669,$191aac - $191669

Music_LanceDanger_Ch3:: ; 191aac (64:5aac)
	INCBIN "baserom.gbc",$191aac,$19206b - $191aac

Music_LanceDanger_Ch4:: ; 19206b (64:606b)
	INCBIN "baserom.gbc",$19206b,$192339 - $19206b
