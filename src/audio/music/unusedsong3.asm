Music_UnusedSong3:: ; 192339 (64:6339)
	dw Music_UnusedSong3_Ch1
	dw Music_UnusedSong3_Ch2
	dw Music_UnusedSong3_Ch3
	dw $0000

Music_UnusedSong3_Ch1:: ; 192341 (64:6341)
	INCBIN "baserom.gbc",$192341,$192430 - $192341

Music_UnusedSong3_Ch2:: ; 192430 (64:6430)
	INCBIN "baserom.gbc",$192430,$1924af - $192430

Music_UnusedSong3_Ch3:: ; 1924af (64:64af)
	INCBIN "baserom.gbc",$1924af,$192564 - $1924af
