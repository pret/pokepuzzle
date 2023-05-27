Music_MainMenu: ; 186f53 (61:6f53)
	dw Music_MainMenu_Ch1
	dw Music_MainMenu_Ch2
	dw Music_MainMenu_Ch3
	dw Music_MainMenu_Ch4

Music_MainMenu_Ch1: ; 186f5b (61:6f5b)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	musicd6 17
	musicd7 0
	duty_cycle_12_5
	musice3 2
	musicd4 55
	musicd8 221
	note_length 24
	rest
Music_MainMenu_branch_186f6d: ; 186f6d (61:6f6d)
	song_call Music_MainMenu_branch_186f91
	song_call Music_MainMenu_branch_186fc7
	song_call Music_MainMenu_branch_186f91
	song_call Music_MainMenu_branch_187001
	song_call Music_MainMenu_branch_187043
	song_call Music_MainMenu_branch_187064
	song_call Music_MainMenu_branch_187043
	song_call Music_MainMenu_branch_187064
	song_call Music_MainMenu_branch_187043
	song_call Music_MainMenu_branch_187064
	song_call Music_MainMenu_branch_187084
	song_jump Music_MainMenu_branch_186f6d

Music_MainMenu_branch_186f91: ; 186f91 (61:6f91)
	duty_cycle_12_5
	musicd7 0
	musicd4 55
	musicd8 222
	note_length 3
	note_pitch A_, 3
	note_length 3
	rest
	note_pitch F#, 3
	note_length 9
	rest
	note_length 3
	note_pitch D_, 4
	note_length 9
	rest
	note_length 3
	note_pitch D_, 4
	note_length 9
	rest
	note_length 3
	note_pitch D_, 4
	note_length 3
	rest
	note_pitch C#, 4
	note_length 3
	rest
	note_pitch A_, 3
	note_length 15
	rest
	duty_cycle_50
	musicd4 52
	musicd8 224
	musicd7 246
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_length 3
	note_pitch A_, 2
	note_length 6
	rest
	note_length 3
	rest
	song_ret

Music_MainMenu_branch_186fc7: ; 186fc7 (61:6fc7)
	duty_cycle_12_5
	musicd7 0
	musicd4 55
	musicd8 223
	note_length 3
	note_pitch C#, 3
	note_length 3
	rest
	note_pitch A_, 2
	note_length 3
	rest
	note_length 3
	note_pitch C#, 3
	note_length 3
	rest
	note_length 3
	note_pitch F#, 3
	note_length 9
	rest
	note_length 3
	note_pitch E_, 3
	note_length 9
	rest
	note_length 3
	note_pitch C#, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch F#, 3
	note_length 15
	rest
	duty_cycle_50
	musicd4 52
	musicd8 224
	musicd7 246
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_length 6
	rest
	song_ret

Music_MainMenu_branch_187001: ; 187001 (61:7001)
	duty_cycle_50
	musicd7 244
	musicd4 55
	musicd8 182
	note_pitch C#, 4
	note_length 3
	rest
	note_pitch A_, 3
	note_length 3
	rest
	note_pitch C#, 4
	note_length 3
	rest
	note_pitch F#, 4
	note_length 9
	rest
	note_length 3
	note_pitch E_, 4
	note_length 9
	rest
	note_length 3
	note_pitch C#, 4
	note_length 3
	rest
	note_length 1
	note_pitch G#, 3
	note_length 11
	note_pitch A_, 3
	musicd8 234
	note_length 12
	note_pitch A_, 3
	musicd7 0
	duty_cycle_50
	musicd4 52
	musicd8 236
	musicd7 246
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_length 6
	rest
	song_ret

; unreferenced ?
Music_MainMenu_branch_18703c: ; 18703c (61:703c)
	duty_cycle_12_5
	musicd7 0
	musicd4 55
	musicd8 208
Music_MainMenu_branch_187043: ; 187043 (61:7043)
	duty_cycle_12_5
	musicd7 0
	musicd4 55
	musicd8 222
	note_length 3
	note_pitch A#, 5
	note_length 9
	rest
	note_length 6
	note_pitch A#, 5
	note_length 3
	note_pitch A#, 5
	note_length 9
	rest
	note_length 3
	note_pitch A#, 5
	note_length 3
	rest
	duty_cycle_50
	musicd4 52
	musicd8 239
	musicd7 246
	note_length 9
	note_pitch D_, 3
	note_length 3
	rest
	song_ret

Music_MainMenu_branch_187064: ; 187064 (61:7064)
	duty_cycle_12_5
	musicd7 0
	musicd4 55
	musicd8 222
	note_pitch A#, 5
	note_length 9
	rest
	note_length 6
	note_pitch A#, 5
	note_length 3
	note_pitch A#, 5
	note_length 9
	rest
	note_length 3
	note_pitch A#, 5
	note_length 3
	rest
	duty_cycle_50
	musicd4 52
	musicd8 239
	musicd7 246
	note_length 9
	note_pitch A_, 2
	note_length 3
	rest
	song_ret

Music_MainMenu_branch_187084: ; 187084 (61:7084)
	duty_cycle_12_5
	musicd7 0
	musicd4 55
	musicd8 222
	note_length 3
	note_pitch A#, 5
	note_length 9
	rest
	note_length 6
	note_pitch A#, 5
	note_length 2
	note_pitch A#, 5
	note_length 1
	note_pitch A#, 5
	note_length 9
	rest
	note_length 3
	note_pitch A#, 5
	note_length 3
	rest
	duty_cycle_50
	musicd4 52
	musicd8 239
	musicd7 246
	note_length 9
	note_pitch D_, 3
	note_length 3
	rest
	duty_cycle_75
	musicd7 244
	musicd4 55
	musicd8 222
	note_length 6
	note_pitch C#, 4
	note_length 6
	note_pitch B_, 3
	note_length 6
	note_pitch A_, 3
	note_length 6
	note_pitch G_, 3
	note_length 1
	rest
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch B_, 3
	note_length 3
	note_pitch C#, 4
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch E_, 4
	note_length 2
	note_pitch F#, 4
	song_ret

Music_MainMenu_Ch2: ; 1870c8 (61:70c8)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	musicd7 0
	duty_cycle_50
	musicd4 55
	musicd6 17
	note_length 24
	rest
Music_MainMenu_branch_1870d6: ; 1870d6 (61:70d6)
	song_call Music_MainMenu_branch_1870df
	song_call Music_MainMenu_branch_1872d0
	song_jump Music_MainMenu_branch_1870d6

Music_MainMenu_branch_1870df: ; 1870df (61:70df)
	duty_cycle_50
	musicd7 0
	musicd4 55
	musicd8 179
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch A_, 2
	note_length 3
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_length 3
	note_pitch A_, 3
	note_length 9
	rest
	note_length 3
	note_pitch G_, 3
	note_length 9
	rest
	note_length 3
	note_pitch F#, 3
	note_length 3
	rest
	note_pitch E_, 3
	note_length 3
	rest
	note_pitch C#, 3
	note_length 6
	rest
	note_length 3
	rest
	musicd8 36
	duty_cycle_50
	rest
	note_length 3
	rest
	note_pitch D_, 5
	note_length 3
	note_pitch A_, 4
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch A_, 4
	note_length 3
	note_pitch D_, 5
	note_length 3
	note_pitch A_, 4
	musicd8 179
	duty_cycle_50
	note_length 3
	note_pitch C#, 3
	note_length 3
	rest
	note_pitch A_, 2
	note_length 3
	rest
	note_length 3
	note_pitch C#, 3
	note_length 3
	rest
	note_length 3
	note_pitch F#, 3
	note_length 9
	rest
	note_length 3
	note_pitch E_, 3
	note_length 9
	rest
	note_length 3
	note_pitch C#, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch F#, 3
	note_length 6
	rest
	note_length 3
	rest
	musicd8 36
	duty_cycle_12_5
	rest
	note_length 3
	rest
	note_pitch D_, 5
	note_length 3
	note_pitch A_, 4
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch A_, 4
	note_length 3
	note_pitch D_, 5
	note_length 3
	note_pitch A_, 4
	note_length 3
	note_pitch D_, 5
	note_length 3
	note_pitch A_, 4
	duty_cycle_50
	musicd8 179
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch A_, 2
	note_length 3
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_length 3
	note_pitch A_, 3
	note_length 9
	rest
	note_length 3
	note_pitch G_, 3
	note_length 9
	rest
	note_length 3
	note_pitch F#, 3
	note_length 3
	rest
	note_pitch E_, 3
	note_length 3
	rest
	note_length 3
	note_pitch C#, 3
	note_length 6
	rest
	musicd8 36
	duty_cycle_50
	rest
	note_length 3
	rest
	note_pitch D_, 5
	note_length 3
	note_pitch A_, 4
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch A_, 4
	note_length 3
	note_pitch D_, 5
	note_length 3
	note_pitch A_, 4
	duty_cycle_50
	musicd8 179
	note_length 3
	note_pitch C#, 3
	note_length 3
	rest
	note_pitch A_, 2
	note_length 3
	rest
	note_pitch C#, 3
	note_length 3
	rest
	note_pitch F#, 3
	note_length 9
	rest
	note_length 3
	note_pitch E_, 3
	note_length 9
	rest
	note_length 3
	note_pitch C#, 3
	note_length 3
	rest
	musicd8 179
	note_length 1
	note_pitch C#, 3
	note_length 23
	note_pitch D_, 3
	musicd8 237
	musicd4 56
	note_length 24
	note_pitch D_, 3
	song_ret

; unreferenced ?
Music_MainMenu_branch_1871ac: ; 1871ac (61:71ac)
	duty_cycle_50
	musicd7 0
	musicd4 55
	musicd8 179
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch A_, 2
	note_length 9
	rest
	note_length 3
	note_pitch A_, 3
	note_length 9
	rest
	note_length 3
	note_pitch G_, 3
	note_length 9
	rest
	note_length 3
	note_pitch F#, 3
	note_length 3
	rest
	note_pitch E_, 3
	note_length 3
	rest
	note_length 6
	note_pitch C#, 3
	musicd8 222
	duty_cycle_75
	note_length 3
	note_pitch C#, 3
	note_length 3
	rest
	note_pitch E_, 3
	note_length 3
	rest
	note_pitch D_, 5
	musicd8 207
	note_length 1
	note_pitch A_, 4
	musicd8 204
	note_length 1
	note_pitch A_, 4
	musicd8 202
	note_length 1
	note_pitch A_, 4
	musicd8 207
	note_length 1
	note_pitch D_, 4
	musicd8 204
	note_length 1
	note_pitch D_, 4
	musicd8 202
	note_length 1
	note_pitch D_, 4
	musicd8 207
	note_length 1
	note_pitch A_, 3
	musicd8 204
	note_length 1
	note_pitch A_, 3
	musicd8 202
	note_length 1
	note_pitch A_, 3
	musicd8 207
	note_length 1
	note_pitch D_, 4
	musicd8 204
	note_length 1
	note_pitch D_, 4
	musicd8 202
	note_length 1
	note_pitch D_, 4
	musicd8 207
	note_length 1
	note_pitch A_, 4
	musicd8 204
	note_length 1
	note_pitch A_, 4
	musicd8 202
	note_length 1
	note_pitch A_, 4
	musicd8 207
	note_length 1
	note_pitch D_, 5
	musicd8 204
	note_length 1
	note_pitch D_, 5
	musicd8 202
	note_length 1
	note_pitch D_, 5
	musicd8 207
	note_length 1
	note_pitch A_, 4
	musicd8 204
	note_length 1
	note_pitch A_, 4
	musicd8 202
	note_length 1
	note_pitch A_, 4
	song_ret

; unreferenced ?
Music_MainMenu_branch_18722b: ; 18722b (61:722b)
	musicd7 0
	duty_cycle_50
	musicd8 179
	note_length 3
	note_pitch E_, 3
	note_length 3
	rest
	note_pitch C#, 3
	note_length 9
	rest
	note_length 3
	note_pitch G_, 3
	note_length 9
	rest
	note_length 3
	note_pitch F#, 3
	note_length 9
	rest
	note_length 3
	note_pitch E_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	rest
	note_length 6
	note_pitch F#, 3
	musicd8 222
	duty_cycle_75
	note_length 3
	note_pitch F#, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch D_, 5
	musicd8 207
	note_length 1
	note_pitch A_, 4
	musicd8 204
	note_length 1
	note_pitch A_, 4
	musicd8 202
	note_length 1
	note_pitch A_, 4
	musicd8 207
	note_length 1
	note_pitch D_, 4
	musicd8 204
	note_length 1
	note_pitch D_, 4
	musicd8 202
	note_length 1
	note_pitch D_, 4
	musicd8 207
	note_length 1
	note_pitch A_, 4
	musicd8 204
	note_length 1
	note_pitch A_, 4
	musicd8 202
	note_length 1
	note_pitch A_, 4
	musicd8 207
	note_length 1
	note_pitch D_, 5
	musicd8 204
	note_length 1
	note_pitch D_, 5
	musicd8 202
	note_length 1
	note_pitch D_, 5
	musicd8 207
	note_length 1
	note_pitch A_, 4
	musicd8 204
	note_length 1
	note_pitch A_, 4
	musicd8 202
	note_length 1
	note_pitch A_, 4
	musicd8 207
	note_length 1
	note_pitch D_, 5
	musicd8 204
	note_length 1
	note_pitch D_, 5
	musicd8 202
	note_length 1
	note_pitch D_, 5
	musicd8 207
	note_length 1
	note_pitch A_, 4
	musicd8 204
	note_length 1
	note_pitch A_, 4
	musicd8 202
	note_length 1
	note_pitch A_, 4
	song_ret

; unreferenced ?
Music_MainMenu_branch_1872a8: ; 1872a8 (61:72a8)
	duty_cycle_50
	musicd4 55
	musicd7 244
	musicd8 11
	note_length 3
	note_pitch E_, 4
	note_length 3
	rest
	note_pitch C#, 4
	note_length 3
	rest
	note_pitch E_, 4
	note_length 3
	rest
	note_length 1
	note_pitch F#, 4
	note_length 11
	note_pitch G_, 4
	note_length 12
	note_pitch F#, 4
	note_length 3
	note_pitch C#, 4
	note_length 3
	rest
	musicd8 179
	note_length 1
	note_pitch C#, 4
	note_length 23
	note_pitch D_, 4
	musicd8 237
	musicd4 56
	note_length 24
	note_pitch D_, 4
	song_ret

Music_MainMenu_branch_1872d0: ; 1872d0 (61:72d0)
	musicd7 244
	musicd4 55
	musicd8 11
	note_length 3
	note_pitch F#, 3
	note_length 3
	rest
	note_pitch E_, 3
	note_length 3
	rest
	note_length 12
	note_pitch D_, 3
	note_length 3
	note_pitch E_, 3
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch B_, 3
	note_length 9
	rest
	note_length 3
	note_pitch B_, 3
	note_length 3
	rest
	note_pitch A_, 3
	note_length 3
	rest
	note_length 12
	note_pitch G_, 3
	note_length 3
	note_pitch E_, 3
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch G_, 3
	note_length 9
	rest
	note_length 3
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch F#, 3
	note_length 3
	rest
	note_length 12
	note_pitch E_, 3
	note_length 3
	note_pitch C#, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch E_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch F#, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch A_, 3
	note_length 3
	rest
	note_pitch B_, 3
	note_length 3
	rest
	note_length 24
	note_pitch A_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	rest
	note_pitch C#, 4
	note_length 3
	rest
	note_length 9
	note_pitch B_, 3
	note_length 3
	rest
	note_pitch A_, 3
	note_length 3
	rest
	note_pitch B_, 3
	note_length 3
	rest
	note_pitch C#, 4
	note_length 3
	rest
	note_pitch D_, 4
	note_length 3
	rest
	note_pitch E_, 4
	note_length 3
	rest
	note_pitch D_, 4
	note_length 3
	rest
	note_length 9
	note_pitch C#, 4
	note_length 3
	rest
	note_pitch B_, 3
	note_length 3
	rest
	note_pitch C#, 4
	note_length 3
	rest
	note_pitch D_, 4
	note_length 3
	rest
	note_pitch E_, 4
	note_length 3
	rest
	note_pitch C#, 4
	note_length 3
	rest
	note_pitch B_, 3
	note_length 3
	rest
	note_pitch A_, 3
	note_length 3
	rest
	note_pitch B_, 3
	note_length 3
	rest
	note_pitch A_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch A_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	duty_cycle_50
	musicd8 11
	note_pitch A_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch F#, 3
	note_length 3
	rest
	note_pitch E_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	note_pitch E_, 3
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch B_, 3
	note_length 3
	note_pitch C#, 4
	note_length 3
	note_pitch D_, 4
	song_ret

Music_MainMenu_Ch3: ; 187388 (61:7388)
	stereo_panning_both
	musice3 0
	musicd8 104
	musicd4 56
	note_length 24
	rest
Music_MainMenu_branch_187391: ; 187391 (61:7391)
	musicd7 12
	wave 60
	song_call Music_MainMenu_branch_18739b
	song_jump Music_MainMenu_branch_187391

Music_MainMenu_branch_18739b: ; 18739b (61:739b)
	note_length 3
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch D_, 1
	note_length 9
	rest
	note_length 3
	note_pitch A_, 0
	note_length 3
	rest
	note_pitch A_, 0
	note_length 9
	rest
	note_length 3
	note_pitch D_, 0
	note_length 3
	rest
	note_pitch D_, 0
	note_length 3
	rest
	note_pitch D_, 0
	note_length 3
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_pitch D_, 0
	note_length 3
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_length 12
	note_pitch A_, 0
	note_length 12
	note_pitch G_, 0
	note_length 3
	note_pitch E_, 0
	note_length 3
	rest
	note_pitch E_, 0
	note_length 9
	rest
	note_length 3
	note_pitch A_, 0
	note_length 3
	rest
	note_pitch A_, 0
	note_length 9
	rest
	note_length 3
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch D_, 0
	note_length 3
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_pitch D_, 0
	note_length 3
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_length 12
	note_pitch A_, 0
	note_length 12
	note_pitch D_, 1
	note_length 3
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch D_, 1
	note_length 9
	rest
	note_length 3
	note_pitch A_, 0
	note_length 3
	rest
	note_pitch A_, 0
	note_length 9
	rest
	note_length 3
	note_pitch D_, 0
	note_length 3
	rest
	note_pitch D_, 0
	note_length 3
	rest
	note_pitch D_, 0
	note_length 3
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_pitch D_, 0
	note_length 3
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_length 12
	note_pitch A_, 0
	note_length 12
	note_pitch G_, 0
	note_length 3
	note_pitch E_, 0
	note_length 3
	rest
	note_pitch E_, 0
	note_length 9
	rest
	note_length 3
	note_pitch A_, 0
	note_length 3
	rest
	note_pitch A_, 0
	note_length 9
	rest
	note_length 3
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch D_, 0
	note_length 3
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_pitch D_, 0
	note_length 3
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_length 12
	note_pitch A_, 0
	note_length 12
	note_pitch D_, 1
	note_length 3
	note_pitch F#, 0
	note_length 3
	rest
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch A_, 0
	note_length 9
	rest
	note_length 3
	note_pitch D_, 1
	note_length 9
	rest
	note_length 3
	note_pitch A_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch D_, 1
	note_length 9
	rest
	note_length 3
	note_pitch B_, 0
	note_length 9
	rest
	note_length 3
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch B_, 0
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	rest
	note_pitch E_, 0
	note_length 3
	rest
	note_pitch B_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch B_, 0
	note_length 3
	rest
	note_pitch E_, 1
	note_length 3
	rest
	note_pitch B_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch E_, 1
	note_length 3
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch A_, 0
	note_length 3
	rest
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch A_, 0
	note_length 3
	rest
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_length 6
	note_pitch F#, 0
	note_length 3
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_pitch A_, 0
	note_length 3
	rest
	note_pitch A_, 0
	note_length 3
	note_pitch A_, 0
	note_length 6
	note_pitch D_, 1
	note_length 3
	note_pitch A_, 0
	note_length 3
	note_pitch A_, 0
	note_length 6
	note_pitch D_, 1
	note_length 6
	note_pitch G_, 0
	note_length 3
	note_pitch E_, 1
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch B_, 0
	note_length 3
	rest
	note_pitch B_, 0
	note_length 3
	note_pitch B_, 0
	note_length 6
	note_pitch E_, 1
	note_length 3
	note_pitch B_, 0
	note_length 3
	note_pitch B_, 0
	note_length 6
	note_pitch E_, 1
	note_length 6
	note_pitch E_, 0
	note_length 3
	note_pitch B_, 0
	note_length 3
	rest
	note_pitch E_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	note_pitch G_, 0
	note_length 6
	note_pitch B_, 0
	note_length 3
	note_pitch G_, 0
	note_length 3
	note_pitch G_, 0
	note_length 6
	note_pitch B_, 0
	note_length 6
	note_pitch F#, 0
	note_length 3
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_pitch A_, 0
	note_length 3
	rest
	note_pitch A_, 0
	note_length 3
	note_pitch A_, 0
	note_length 6
	note_pitch D_, 1
	note_length 3
	note_pitch A_, 0
	note_length 3
	note_pitch A_, 0
	note_length 6
	note_pitch D_, 1
	song_ret

Music_MainMenu_Ch4: ; 1874e5 (61:74e5)
	stereo_panning_both
	note_length 6
	noise 17
	note_length 6
	noise 17
	note_length 3
	noise 17
	note_length 1
	noise 17
	note_length 1
	noise 17
	note_length 1
	noise 18
	note_length 3
	noise 18
	note_length 3
	noise 18
Music_MainMenu_branch_1874f6: ; 1874f6 (61:74f6)
	note_length 6
	noise 15
	note_length 6
	noise 12
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 17
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 17
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 17
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 17
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 15
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 3
	note_length 6
	noise 12
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 3
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 3
	note_length 6
	noise 12
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 3
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 3
	note_length 6
	noise 12
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 3
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 3
	note_length 6
	noise 12
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 3
	note_length 6
	noise 12
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 3
	note_length 6
	noise 12
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 3
	note_length 6
	noise 12
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 17
	note_length 6
	noise 17
	note_length 6
	noise 17
	note_length 6
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 18
	note_length 3
	noise 18
	note_length 3
	noise 18
	song_jump Music_MainMenu_branch_1874f6
