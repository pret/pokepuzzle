Music_UnusedSong2:: ; 184d11 (61:4d11)
	dw Music_UnusedSong2_Ch1
	dw Music_UnusedSong2_Ch2
	dw Music_UnusedSong2_Ch3
	dw Music_UnusedSong2_Ch4

Music_UnusedSong2_Ch1:: ; 184d19 (61:4d19)
	INCBIN "baserom.gbc",$184d19,$184f3f - $184d19

Music_UnusedSong2_Ch2:: ; 184f3f (61:4f3f)
	INCBIN "baserom.gbc",$184f3f,$18512e - $184f3f

Music_UnusedSong2_Ch3:: ; 18512e (61:512e)
	INCBIN "baserom.gbc",$18512e,$1853a4 - $18512e

Music_UnusedSong2_Ch4:: ; 1853a4 (61:53a4)
	INCBIN "baserom.gbc",$1853a4,$1856af - $1853a4
