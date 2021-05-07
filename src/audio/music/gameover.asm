Music_GameOver: ; 18a872 (62:6872)
	dw Music_GameOver_Ch1
	dw Music_GameOver_Ch2
	dw Music_GameOver_Ch3
	dw $0000

Music_GameOver_Ch1: ; 18a87a (62:687a)
	volume 119
	volume_envelope 115
	stereo_panning_both
	musicd6 6
	musicd4 35
	duty_cycle_50
	musicd8 40
	musicd7 0
	musicd4 55
	musicd2
	music01 1
Music_GameOver_branch_18a88c: ; 18a88c (62:688c)
	song_call Music_GameOver_branch_18a892
	song_jump Music_GameOver_branch_18a88c

Music_GameOver_branch_18a892: ; 18a892 (62:6892)
	musice3 0
	music01 6
	music8a 194
	music01 6
	music8a 196
	music01 6
	music8a 197
	music01 12
	music8a 201
	music01 6
	music8a 199
	music01 6
	music8a 196
	music01 6
	music8a 194
	music01 6
	music8a 192
	music01 6
	music8a 194
	music01 6
	music8a 196
	music01 12
	music8a 199
	music01 6
	music8a 197
	music01 6
	music8a 196
	music01 6
	music8a 197
	music01 6
	music8a 194
	music01 6
	music8a 196
	music01 6
	music8a 197
	music01 12
	music8a 194
	music01 6
	music8a 196
	music01 6
	music8a 197
	music01 6
	music8a 199
	music01 1
	music8a 200
	music01 5
	music8a 201
	music01 6
	music8a 192
	music01 6
	music8a 201
	music01 12
	music8a 199
	music01 6
	musicd2
	music01 6
	musicd2
	music01 6
	musicd2
	song_ret

Music_GameOver_Ch2: ; 18a8cf (62:68cf)
	volume 119
	volume_envelope 115
	stereo_panning_both
	musicd4 37
	duty_cycle_50
	musicd7 0
	musice3 0
Music_GameOver_branch_18a8db: ; 18a8db (62:68db)
	song_call Music_GameOver_branch_18a8e1
	song_jump Music_GameOver_branch_18a8db

Music_GameOver_branch_18a8e1: ; 18a8e1 (62:68e1)
	musicd8 43
	music01 5
	music8a 178
	music01 1
	musicd3
	music01 5
	music8a 182
	music01 1
	musicd3
	music01 5
	music8a 185
	music01 1
	musicd3
	music01 29
	music8a 190
	music01 1
	musicd3
	music01 5
	music8a 177
	music01 1
	musicd3
	music01 5
	music8a 184
	music01 1
	musicd3
	music01 5
	music8a 180
	music01 1
	musicd3
	music01 6
	music8a 189
	musicd8 233
	music01 6
	music8a 189
	musicd8 43
	music01 18
	music8a 182
	music01 5
	music8a 175
	music01 1
	musicd3
	music01 5
	music8a 178
	music01 1
	musicd3
	music01 5
	music8a 182
	music01 1
	musicd3
	music01 5
	music8a 185
	music01 1
	musicd3
	music01 5
	music8a 187
	music01 1
	musicd3
	music01 5
	music8a 190
	music01 1
	musicd3
	music01 12
	music8a 194
	music01 12
	music8a 197
	music01 18
	musicd3
	music01 6
	musicd2
	music01 6
	music8a 185
	music01 6
	music8a 173
	song_ret

Music_GameOver_Ch3: ; 18a92e (62:692e)
	stereo_panning_both
	wave 7
	musicd8 101
	musicd7 0
	musicd4 35
	musice3 0
Music_GameOver_branch_18a939: ; 18a939 (62:6939)
	song_call Music_GameOver_branch_18a93f
	song_jump Music_GameOver_branch_18a939

Music_GameOver_branch_18a93f: ; 18a93f (62:693f)
	music01 6
	music8a 194
	music01 6
	music8a 196
	music01 6
	music8a 197
	music01 12
	music8a 201
	music01 6
	music8a 199
	music01 6
	music8a 196
	music01 6
	music8a 194
	music01 6
	music8a 192
	music01 6
	music8a 194
	music01 6
	music8a 196
	music01 12
	music8a 199
	music01 6
	music8a 197
	music01 6
	music8a 196
	music01 6
	music8a 197
	music01 6
	music8a 194
	music01 6
	music8a 196
	music01 6
	music8a 197
	music01 12
	music8a 194
	music01 6
	music8a 196
	music01 6
	music8a 197
	music01 6
	music8a 199
	music01 1
	music8a 200
	music01 5
	music8a 201
	music01 6
	music8a 192
	music01 6
	music8a 201
	music01 12
	music8a 199
	music01 6
	musicd2
	music01 6
	music8a 185
	music01 6
	music8a 173
	song_ret

; unreferenced ?
Music_GameOver_branch_18a97a: ; 18a92e (62:692e)
	stereo_panning_both
Music_GameOver_branch_18a97b: ; 18a97b (62:697b)
	musicd2
	music01 48
	song_jump Music_GameOver_branch_18a97b
