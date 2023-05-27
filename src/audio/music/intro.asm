Music_Intro: ; 18a980 (62:6980)
	dw Music_Intro_Ch1
	dw Music_Intro_Ch2
	dw Music_Intro_Ch3
	dw Music_Intro_Ch4

Music_Intro_Ch1: ; 18a988 (62:6988)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	duty_cycle_75
	musicd4 55
	duty_cycle_12_5
	musicd4 55
	musicd8 36
	musicd6 17
	song_call Music_Intro_branch_18a9be
	song_call Music_Intro_branch_18aa2e
	musice3 2
	song_call Music_Intro_branch_18aa50
	song_call Music_Intro_branch_18aa61
	musicd6 7
	song_call Music_Intro_branch_18aa74
	musicd6 5
	song_call Music_Intro_branch_18aa83
	note_length 13
	continue_note
	musicd6 13
	song_call Music_Intro_branch_18aa87
Music_Intro_branch_18a9b6: ; 18a9b6 (62:69b6)
	musice3 0
	song_call Music_Intro_branch_18ab74
	song_jump Music_Intro_branch_18a9b6

Music_Intro_branch_18a9be: ; 18a9be (62:69be)
	note_length 48
	rest
	note_length 48
	rest
	note_length 48
	rest
	note_length 24
	rest
	duty_cycle_50
	musicd4 52
	musicd8 209
	musicd8 224
	note_length 3
	note_pitch C_, 2
	note_length 3
	note_pitch C_, 2
	note_length 3
	note_pitch C_, 2
	note_length 3
	rest
	musicd4 52
	musicd8 224
	note_length 3
	note_pitch F_, 1
	musicd8 219
	note_length 3
	note_pitch F_, 1
	note_length 6
	rest
	musicd4 55
	duty_cycle_12_5
	musicd8 39
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch D_, 3
	note_length 12
	note_pitch G_, 3
	note_length 6
	note_pitch D_, 3
	musicd8 36
	note_length 6
	note_pitch C_, 3
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch B_, 2
	note_length 12
	note_pitch G_, 3
	note_length 6
	note_pitch D_, 3
	note_length 48
	rest
	duty_cycle_50
	musicd4 52
	musicd8 224
	note_length 6
	rest
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch D_, 2
	note_length 3
	rest
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch A_, 1
	note_length 3
	rest
	note_length 3
	note_pitch A_, 1
	note_length 3
	note_pitch A_, 1
	note_length 6
	rest
	note_length 3
	note_pitch G_, 1
	musicd8 224
	note_length 3
	note_pitch G_, 1
	musicd8 219
	note_length 3
	note_pitch F_, 1
	musicd8 219
	note_length 3
	note_pitch F_, 1
	song_ret

Music_Intro_branch_18aa2e: ; 18aa2e (62:6a2e)
	musicd4 55
	musicd8 36
	duty_cycle_12_5
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch D_, 3
	note_length 12
	note_pitch G_, 3
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch C_, 3
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch B_, 2
	note_length 12
	note_pitch G_, 3
	note_length 6
	note_pitch D_, 3
	song_ret

Music_Intro_branch_18aa50: ; 18aa50 (62:6a50)
	note_length 6
	note_pitch A_, 4
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch A_, 4
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch A_, 3
	note_length 6
	note_pitch G_, 3
	song_ret

Music_Intro_branch_18aa61: ; 18aa61 (62:6a61)
	musice3 0
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch D_, 5
	song_ret

Music_Intro_branch_18aa74: ; 18aa74 (62:6a74)
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch G_, 4
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch G_, 4
	song_ret

Music_Intro_branch_18aa83: ; 18aa83 (62:6a83)
	note_length 3
	note_pitch D_, 4
	song_ret

; unreferenced ?
Music_Intro_branch_18aa86: ; 18aa86 (62:6a86)
	song_ret

Music_Intro_branch_18aa87: ; 18aa87 (62:6a87)
	musicd5
	musicd8 204
	duty_cycle_12_5
	note_length 1
	note_pitch A_, 3
	musicd8 202
	note_length 1
	note_pitch A_, 3
	musicd8 201
	note_length 1
	note_pitch A_, 3
	musicd8 205
	note_length 1
	note_pitch D_, 4
	musicd8 203
	note_length 1
	note_pitch D_, 4
	musicd8 202
	note_length 1
	note_pitch D_, 4
	musicd8 205
	note_length 1
	note_pitch F#, 4
	note_length 1
	note_pitch F#, 4
	note_length 1
	note_pitch F#, 4
	musicd8 206
	note_length 1
	note_pitch G_, 4
	musicd8 204
	note_length 1
	note_pitch G_, 4
	musicd8 203
	note_length 1
	note_pitch G_, 4
	musicd8 206
	note_length 1
	note_pitch A_, 3
	musicd8 204
	note_length 1
	note_pitch A_, 3
	musicd8 203
	note_length 1
	note_pitch A_, 3
	musicd8 207
	note_length 1
	note_pitch D_, 4
	musicd8 205
	note_length 1
	note_pitch D_, 4
	musicd8 203
	note_length 1
	note_pitch D_, 4
	musicd8 207
	note_length 1
	note_pitch F#, 4
	musicd8 205
	note_length 1
	note_pitch F#, 4
	musicd8 203
	note_length 1
	note_pitch F#, 4
	musicd8 208
	note_length 1
	note_pitch G_, 4
	musicd8 206
	note_length 1
	note_pitch G_, 4
	musicd8 203
	note_length 1
	note_pitch G_, 4
	musicd8 208
	note_length 1
	note_pitch A_, 3
	musicd8 206
	note_length 1
	note_pitch A_, 3
	musicd8 203
	note_length 1
	note_pitch A_, 3
	musicd8 209
	note_length 1
	note_pitch D_, 4
	musicd8 206
	note_length 1
	note_pitch D_, 4
	musicd8 203
	note_length 1
	note_pitch D_, 4
	musicd8 208
	note_length 1
	note_pitch F#, 4
	musicd8 206
	note_length 1
	note_pitch F#, 4
	musicd8 203
	note_length 1
	note_pitch F#, 4
	musicd8 210
	note_length 1
	note_pitch G_, 4
	musicd8 206
	note_length 1
	note_pitch G_, 4
	musicd8 203
	note_length 1
	note_pitch G_, 4
	musicd8 208
	note_length 1
	note_pitch A_, 3
	musicd8 206
	note_length 1
	note_pitch A_, 3
	musicd8 203
	note_length 1
	note_pitch A_, 3
	musicd8 211
	note_length 1
	note_pitch D_, 4
	musicd8 206
	note_length 1
	note_pitch D_, 4
	musicd8 203
	note_length 1
	note_pitch D_, 4
	musicd8 208
	note_length 1
	note_pitch F#, 4
	musicd8 206
	note_length 1
	note_pitch F#, 4
	musicd8 203
	note_length 1
	note_pitch F#, 4
	musicd8 208
	note_length 1
	note_pitch G_, 4
	musicd8 206
	note_length 1
	note_pitch G_, 4
	musicd8 203
	note_length 1
	note_pitch G_, 4
	duty_cycle_50
	musicd4 52
	musicd8 224
	note_length 6
	rest
	note_length 3
	note_pitch C_, 2
	note_length 3
	note_pitch C_, 2
	musicd8 219
	note_length 3
	note_pitch C_, 2
	musicd8 224
	note_pitch C_, 2
	note_length 3
	note_pitch A_, 1
	musicd8 219
	note_length 3
	note_pitch A_, 1
	musicd8 224
	note_pitch A_, 1
	note_length 3
	note_pitch G_, 1
	note_length 3
	note_pitch G_, 1
	note_length 3
	note_pitch G_, 1
	note_length 3
	note_pitch F_, 1
	note_length 3
	note_pitch F_, 1
	note_length 3
	note_pitch F_, 1
	musicd8 209
	note_length 2
	note_pitch F_, 1
	musicd5
	note_length 1
	rest
	song_ret

Music_Intro_branch_18ab74: ; 18ab74 (62:6b74)
	duty_cycle_12_5
	musicd4 55
	musicd8 36
	note_length 3
	note_pitch G_, 1
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 6
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch C_, 1
	note_length 3
	note_pitch G_, 1
	note_length 3
	note_pitch C_, 2
	note_length 3
	note_pitch G_, 2
	note_length 6
	note_pitch C_, 3
	note_length 3
	note_pitch C_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 1
	note_length 3
	note_pitch A_, 1
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch A_, 1
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch C_, 4
	note_length 6
	note_pitch G_, 4
	note_length 3
	note_pitch G_, 3
	note_length 6
	note_pitch G_, 4
	note_length 6
	note_pitch G_, 3
	note_length 3
	note_pitch C_, 4
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch C_, 4
	note_length 3
	note_pitch C_, 1
	note_length 3
	note_pitch G_, 1
	note_length 3
	note_pitch C_, 2
	note_length 3
	note_pitch G_, 2
	note_length 6
	note_pitch C_, 3
	note_length 3
	note_pitch C_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 1
	note_length 3
	note_pitch A_, 1
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch G_, 2
	duty_cycle_50
	musicd4 52
	musicd8 224
	note_length 3
	note_pitch A_, 1
	note_length 3
	note_pitch A_, 1
	note_length 3
	note_pitch F_, 1
	musicd8 219
	note_length 3
	note_pitch D_, 1
	duty_cycle_12_5
	musicd4 55
	musicd8 36
	note_pitch G_, 1
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 6
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch C_, 1
	note_length 3
	note_pitch G_, 1
	note_length 3
	note_pitch C_, 2
	note_length 3
	note_pitch G_, 2
	note_length 6
	note_pitch C_, 3
	note_length 3
	note_pitch C_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 1
	note_length 3
	note_pitch A_, 1
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch A_, 1
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch C_, 4
	note_length 6
	note_pitch G_, 4
	note_length 3
	note_pitch G_, 3
	note_length 6
	note_pitch G_, 4
	note_length 6
	note_pitch G_, 3
	note_length 3
	note_pitch C_, 4
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch C_, 4
	note_length 3
	note_pitch C_, 1
	note_length 3
	note_pitch G_, 1
	note_length 3
	note_pitch C_, 2
	note_length 3
	note_pitch G_, 2
	note_length 6
	note_pitch C_, 3
	note_length 3
	note_pitch C_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 1
	note_length 3
	note_pitch A_, 1
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch G_, 2
	duty_cycle_50
	musicd4 52
	musicd8 224
	note_length 3
	note_pitch C_, 2
	note_length 3
	note_pitch C_, 2
	note_length 3
	note_pitch A_, 1
	note_length 3
	note_pitch F_, 1
	duty_cycle_12_5
	musicd4 55
	musicd8 36
	note_pitch G_, 1
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 6
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 6
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	rest
	note_length 6
	note_pitch E_, 3
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 6
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch C_, 1
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch G_, 3
	note_length 6
	note_pitch C_, 4
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch C_, 4
	note_length 3
	note_pitch G_, 4
	note_length 3
	note_pitch G_, 3
	note_length 6
	note_pitch G_, 4
	note_length 6
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 4
	note_length 6
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 3
	note_length 6
	note_pitch G_, 4
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch G_, 4
	note_length 3
	note_pitch C_, 2
	note_length 6
	rest
	note_length 3
	note_pitch C_, 2
	note_length 6
	rest
	note_length 3
	note_pitch D_, 2
	note_length 3
	rest
	note_length 9
	note_pitch G_, 4
	note_length 3
	rest
	duty_cycle_50
	musicd4 52
	musicd8 224
	note_length 3
	note_pitch C_, 2
	note_length 3
	note_pitch C_, 2
	note_length 3
	note_pitch G_, 1
	musicd8 219
	note_length 3
	note_pitch F_, 1
	song_ret

Music_Intro_Ch2: ; 18ad09 (62:6d09)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	musice3 -1
	song_call Music_Intro_branch_18af8a
	song_call Music_Intro_branch_18b12d
	note_length 13
	continue_note
	musice3 0
	song_call Music_Intro_branch_18ad23
Music_Intro_branch_18ad1d: ; 18ad1d (62:6d1d)
	song_call Music_Intro_branch_18ae8d
	song_jump Music_Intro_branch_18ad1d

Music_Intro_branch_18ad23: ; 18ad23 (62:6d23)
	note_length 6
	rest
	musicd8 202
	duty_cycle_12_5
	note_length 1
	note_pitch D_, 3
	musicd8 201
	note_length 1
	note_pitch D_, 3
	musicd8 201
	note_length 1
	note_pitch D_, 3
	musicd8 202
	note_length 1
	note_pitch G_, 3
	musicd8 201
	note_length 1
	note_pitch G_, 3
	musicd8 201
	note_length 1
	note_pitch G_, 3
	musicd8 203
	note_length 1
	note_pitch B_, 3
	musicd8 202
	note_length 1
	note_pitch B_, 3
	musicd8 201
	note_length 1
	note_pitch B_, 3
	note_length 1
	note_pitch C_, 4
	musicd8 202
	note_length 1
	note_pitch C_, 4
	musicd8 201
	note_length 1
	note_pitch C_, 4
	musicd8 204
	note_length 1
	note_pitch D_, 3
	musicd8 202
	note_length 1
	note_pitch D_, 3
	musicd8 201
	note_length 1
	note_pitch D_, 3
	musicd8 204
	note_length 1
	note_pitch G_, 3
	musicd8 202
	note_length 1
	note_pitch G_, 3
	musicd8 201
	note_length 1
	note_pitch G_, 3
	musicd8 205
	note_length 1
	note_pitch B_, 3
	musicd8 203
	note_length 1
	note_pitch B_, 3
	musicd8 201
	note_length 1
	note_pitch B_, 3
	musicd8 205
	note_length 1
	note_pitch C_, 4
	musicd8 203
	note_length 1
	note_pitch C_, 4
	musicd8 201
	note_length 1
	note_pitch C_, 4
	musicd8 206
	note_length 1
	note_pitch D_, 3
	musicd8 204
	note_length 1
	note_pitch D_, 3
	musicd8 202
	note_length 1
	note_pitch D_, 3
	musicd8 206
	note_length 1
	note_pitch G_, 3
	musicd8 204
	note_length 1
	note_pitch G_, 3
	musicd8 202
	note_length 1
	note_pitch G_, 3
	musicd8 207
	note_length 1
	note_pitch B_, 3
	musicd8 204
	note_length 1
	note_pitch B_, 3
	musicd8 202
	note_length 1
	note_pitch B_, 3
	musicd8 207
	note_length 1
	note_pitch C_, 4
	musicd8 204
	note_length 1
	note_pitch C_, 4
	musicd8 202
	note_length 1
	note_pitch C_, 4
	musicd8 208
	note_length 1
	note_pitch D_, 3
	musicd8 204
	note_length 1
	note_pitch D_, 3
	musicd8 202
	note_length 1
	note_pitch D_, 3
	musicd8 208
	note_length 1
	note_pitch G_, 3
	musicd8 204
	note_length 1
	note_pitch G_, 3
	musicd8 202
	note_length 1
	note_pitch G_, 3
	musicd8 209
	note_length 1
	note_pitch B_, 3
	musicd8 204
	note_length 1
	note_pitch B_, 3
	musicd8 202
	note_length 1
	note_pitch B_, 3
	musicd8 209
	note_length 1
	note_pitch C_, 4
	musicd8 204
	note_length 1
	note_pitch C_, 4
	musicd8 202
	note_length 1
	note_pitch C_, 4
	musicd8 209
	note_length 1
	note_pitch D_, 3
	musicd8 204
	note_length 1
	note_pitch D_, 3
	musicd8 202
	note_length 1
	note_pitch D_, 3
	musicd8 209
	note_length 1
	note_pitch G_, 3
	musicd8 204
	note_length 1
	note_pitch G_, 3
	musicd8 202
	note_length 1
	note_pitch G_, 3
	musicd8 211
	note_length 1
	note_pitch B_, 3
	musicd8 205
	note_length 1
	note_pitch B_, 3
	musicd8 203
	note_length 1
	note_pitch B_, 3
	musicd8 211
	note_length 1
	note_pitch C_, 4
	musicd8 205
	note_length 1
	note_pitch C_, 4
	musicd8 203
	note_length 1
	note_pitch C_, 4
	musicd8 212
	note_length 1
	note_pitch D_, 3
	musicd8 205
	note_length 1
	note_pitch D_, 3
	musicd8 203
	note_length 1
	note_pitch D_, 3
	musicd8 212
	note_length 1
	note_pitch G_, 3
	musicd8 205
	note_length 1
	note_pitch G_, 3
	musicd8 203
	note_length 1
	note_pitch G_, 3
	musicd8 212
	note_length 1
	note_pitch B_, 3
	musicd8 205
	note_length 1
	note_pitch B_, 3
	musicd8 203
	note_length 1
	note_pitch B_, 3
	musicd8 212
	note_length 1
	note_pitch C_, 4
	musicd8 205
	note_length 1
	note_pitch C_, 4
	musicd8 203
	note_length 1
	note_pitch C_, 4
	musicd8 212
	note_length 1
	note_pitch D_, 3
	musicd8 205
	note_length 1
	note_pitch D_, 3
	musicd8 203
	note_length 1
	note_pitch D_, 3
	musicd8 212
	note_length 1
	note_pitch G_, 3
	musicd8 205
	note_length 1
	note_pitch G_, 3
	musicd8 203
	note_length 1
	note_pitch G_, 3
	musicd8 212
	note_length 1
	note_pitch B_, 3
	musicd8 205
	note_length 1
	note_pitch B_, 3
	musicd8 203
	note_length 1
	note_pitch B_, 3
	musicd8 212
	note_length 1
	note_pitch C_, 4
	musicd8 205
	note_length 1
	note_pitch C_, 4
	musicd8 203
	note_length 1
	note_pitch C_, 4
	musicd8 212
	note_length 1
	note_pitch D_, 3
	musicd8 205
	note_length 1
	note_pitch D_, 3
	musicd8 203
	note_length 1
	note_pitch D_, 3
	musicd8 212
	note_length 1
	note_pitch G_, 3
	musicd8 205
	note_length 1
	note_pitch G_, 3
	musicd8 203
	note_length 1
	note_pitch G_, 3
	song_ret

Music_Intro_branch_18ae8d: ; 18ae8d (62:6e8d)
	duty_cycle_50
	note_length 12
	rest
	musicd4 59
	musicd8 164
	note_length 3
	note_pitch G_, 3
	note_length 3
	rest
	musicd4 55
	note_length 30
	note_pitch D_, 3
	note_length 3
	continue_note
	note_length 3
	rest
	note_length 3
	note_pitch C_, 3
	note_length 3
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	musicd4 59
	note_length 12
	note_pitch E_, 3
	musicd4 55
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_length 6
	note_pitch C_, 3
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_length 6
	rest
	musicd4 59
	note_length 9
	note_pitch B_, 2
	note_length 3
	rest
	musicd4 55
	note_length 3
	note_pitch B_, 2
	note_length 3
	rest
	note_length 9
	note_pitch C_, 3
	note_length 6
	note_pitch B_, 2
	note_length 3
	rest
	note_length 3
	note_pitch A_, 2
	note_length 3
	rest
	note_length 9
	note_pitch B_, 2
	note_length 6
	note_pitch A_, 2
	note_length 3
	rest
	note_length 12
	note_pitch G_, 2
	note_length 18
	note_pitch A_, 2
	note_length 6
	continue_note
	note_length 12
	rest
	note_length 9
	note_pitch G_, 3
	note_length 3
	rest
	musicd4 59
	note_length 12
	note_pitch A_, 3
	musicd4 55
	note_length 6
	note_pitch G_, 3
	note_length 18
	rest
	note_length 9
	note_pitch G_, 3
	note_length 3
	rest
	musicd4 59
	note_length 12
	note_pitch A_, 3
	musicd4 55
	note_length 3
	note_pitch G_, 3
	note_length 3
	rest
	musicd4 59
	note_length 6
	note_pitch B_, 3
	note_length 3
	rest
	musicd4 55
	note_length 6
	note_pitch A_, 3
	note_length 3
	rest
	note_length 27
	note_pitch G_, 3
	note_length 3
	rest
	musicd4 59
	note_length 6
	note_pitch B_, 3
	note_length 3
	rest
	musicd4 55
	note_length 6
	note_pitch A_, 3
	note_length 3
	rest
	note_length 9
	note_pitch G_, 3
	note_length 3
	rest
	note_length 12
	note_pitch C_, 4
	note_length 3
	note_pitch B_, 3
	note_length 3
	rest
	musicd4 59
	note_length 6
	note_pitch B_, 3
	note_length 3
	rest
	musicd4 55
	note_length 6
	note_pitch A_, 3
	note_length 3
	rest
	note_length 30
	note_pitch G_, 3
	musicd4 60
	note_length 2
	note_pitch G_, 3
	note_length 1
	rest
	note_length 3
	rest
	musicd4 55
	musicd8 164
	note_length 2
	note_pitch G_, 3
	note_length 4
	rest
	note_length 2
	note_pitch F#, 3
	note_length 4
	rest
	note_length 2
	note_pitch G_, 3
	note_length 4
	rest
	musicd4 59
	note_length 6
	note_pitch A_, 3
	musicd4 55
	note_length 3
	note_pitch G_, 3
	note_length 3
	rest
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch G_, 3
	musicd4 59
	musicd8 44
	note_length 48
	note_pitch G_, 4
	musicd4 56
	note_length 10
	continue_note
	musicd4 60
	note_length 2
	continue_note
	musicd4 55
	note_length 12
	rest
	musicd8 177
	note_length 9
	note_pitch C_, 5
	note_length 9
	note_pitch B_, 4
	note_length 6
	note_pitch A_, 4
	note_length 9
	note_pitch B_, 4
	musicd4 59
	musicd8 44
	note_length 39
	note_pitch G_, 4
	musicd4 56
	note_length 12
	continue_note
	musicd4 60
	note_length 2
	continue_note
	note_length 10
	rest
	musicd5
	musicd8 176
	note_length 12
	note_pitch C_, 5
	note_length 9
	note_pitch B_, 4
	note_length 3
	rest
	song_ret

Music_Intro_branch_18af8a: ; 18af8a (62:6f8a)
	musicd4 52
	musicd8 224
	note_length 3
	note_pitch E_, 1
	musicd8 234
	note_length 3
	note_pitch E_, 1
	note_length 1
	rest
	musicd5
	note_length 41
	rest
	note_length 36
	rest
	musicd4 52
	musicd8 239
	note_length 3
	note_pitch E_, 1
	musicd8 234
	note_length 3
	note_pitch E_, 1
	musicd5
	note_length 6
	rest
	musicd4 52
	musicd8 239
	note_length 3
	note_pitch E_, 1
	musicd8 234
	note_length 3
	note_pitch E_, 1
	musicd5
	musicd8 207
	rest
	note_length 3
	rest
	rest
	note_length 3
	rest
	rest
	note_length 3
	rest
	rest
	note_length 3
	rest
	rest
	note_length 3
	rest
	rest
	note_length 3
	rest
	rest
	note_length 3
	rest
	rest
	note_length 3
	rest
	musicd8 204
	rest
	note_length 3
	rest
	rest
	note_length 3
	rest
	rest
	note_length 3
	rest
	rest
	note_length 3
	rest
	rest
	note_length 3
	rest
	rest
	note_length 3
	rest
	rest
	note_length 3
	rest
	musicd4 52
	musicd8 239
	note_length 3
	note_pitch E_, 1
	musicd8 234
	note_length 3
	note_pitch E_, 1
	musicd8 207
	musicd5
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch D_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	rest
	note_pitch D_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	musicd8 204
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	musicd4 52
	musicd8 239
	note_length 3
	note_pitch E_, 1
	musicd8 234
	note_length 3
	note_pitch E_, 1
	musicd5
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch D_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	rest
	note_pitch D_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	song_ret

; unreferenced ?
Music_Intro_branch_18b059: ; 18b059 (62:7059)
	musicd4 52
	musicd8 224
	note_length 3
	note_pitch E_, 2
	musicd8 234
	note_length 3
	note_pitch E_, 2
	musicd5
	musicd8 226
	note_length 42
	rest
	note_length 36
	rest
	musicd4 52
	musicd8 224
	note_length 3
	note_pitch E_, 2
	musicd8 219
	note_length 3
	note_pitch E_, 2
	note_length 6
	rest
	musicd4 52
	musicd8 224
	note_length 3
	note_pitch E_, 2
	musicd8 219
	note_length 3
	note_pitch E_, 2
	musicd4 55
	musicd8 36
	note_length 3
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch D_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	rest
	note_pitch D_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	musicd8 221
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	musicd4 52
	musicd8 224
	note_length 3
	note_pitch E_, 2
	musicd8 219
	note_length 3
	note_pitch E_, 2
	musicd8 211
	musicd4 55
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch D_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	rest
	note_pitch D_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	musicd8 221
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	musicd4 52
	musicd8 224
	note_length 3
	note_pitch E_, 2
	musicd8 219
	note_length 3
	note_pitch E_, 2
	musicd8 226
	musicd4 55
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch D_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	rest
	note_pitch D_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	song_ret

Music_Intro_branch_18b12d: ; 18b12d (62:712d)
	duty_cycle_75
	musice3 0
	musicd8 36
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch D_, 3
	note_length 12
	note_pitch G_, 3
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch C_, 3
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch B_, 2
	note_length 12
	note_pitch G_, 3
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch A_, 4
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch A_, 4
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch A_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch G_, 4
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch D_, 4
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch D_, 4
	musice3 0
	song_ret

; unreferenced ?
Music_Intro_branch_18b171: ; 18b171 (62:7171)
	song_ret

; unreferenced ?
Music_Intro_branch_18b172: ; 18b172 (62:7172)
	note_length 45
	note_pitch B_, 2
	note_length 3
	continue_note
	note_length 45
	note_pitch C_, 3
	note_length 3
	continue_note
	note_length 45
	note_pitch D_, 3
	note_length 3
	continue_note
	note_length 21
	note_pitch E_, 3
	note_length 3
	continue_note
	note_length 9
	note_pitch F#, 3
	note_length 3
	continue_note
	note_length 9
	note_pitch E_, 3
	note_length 3
	continue_note
	song_ret

; unreferenced ?
Music_Intro_branch_18b18b: ; 18b18b (62:718b)
	note_length 48
	rest
	note_length 6
	rest
	note_length 3
	note_pitch G_, 2
	note_length 3
	rest
	note_length 6
	note_pitch G_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	rest
	note_length 6
	note_pitch C_, 3
	note_length 3
	note_pitch C_, 3
	note_length 9
	rest
	note_length 3
	note_pitch G_, 2
	note_length 3
	rest
	note_length 6
	rest
	note_length 3
	note_pitch G_, 2
	note_length 3
	rest
	note_length 6
	note_pitch G_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	rest
	note_length 6
	note_pitch C_, 3
	note_length 15
	note_pitch C_, 3
	note_length 3
	rest
	note_length 6
	rest
	note_length 3
	note_pitch G_, 2
	note_length 3
	rest
	note_length 6
	note_pitch G_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	rest
	note_length 6
	note_pitch C_, 3
	note_length 3
	note_pitch C_, 3
	note_length 9
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_length 6
	rest
	note_length 6
	note_pitch D_, 3
	note_length 6
	rest
	note_length 9
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	rest
	note_length 12
	note_pitch D_, 3
	note_length 6
	rest
	note_length 3
	note_pitch G_, 2
	note_length 3
	rest
	note_length 6
	note_pitch G_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	rest
	note_length 6
	note_pitch C_, 3
	note_length 3
	note_pitch C_, 3
	note_length 9
	rest
	note_length 3
	note_pitch G_, 2
	note_length 3
	rest
	note_length 6
	rest
	note_length 3
	note_pitch G_, 2
	note_length 3
	rest
	note_length 6
	note_pitch G_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	rest
	note_length 6
	note_pitch C_, 3
	note_length 15
	note_pitch C_, 3
	note_length 3
	rest
	note_length 6
	rest
	note_length 3
	note_pitch G_, 2
	note_length 3
	rest
	note_length 6
	note_pitch G_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	rest
	note_length 6
	note_pitch C_, 3
	note_length 3
	note_pitch C_, 3
	note_length 9
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_length 6
	rest
	note_length 6
	note_pitch D_, 3
	note_length 6
	rest
	note_length 9
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	rest
	note_length 12
	note_pitch D_, 3
	song_ret

; unreferenced ?
Music_Intro_branch_18b228: ; 18b228 (62:7228)
	note_length 48
	rest
	note_length 3
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	rest
	note_length 6
	note_pitch G_, 3
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch E_, 3
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_length 12
	note_pitch A_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	rest
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch G_, 3
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch E_, 3
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_length 12
	note_pitch A_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	rest
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch C_, 4
	note_length 3
	note_pitch B_, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	rest
	note_length 12
	note_pitch G_, 4
	note_length 3
	note_pitch C_, 4
	note_length 3
	rest
	note_length 6
	note_pitch B_, 3
	note_length 6
	note_pitch C_, 4
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch D_, 4
	note_length 6
	note_pitch G_, 4
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch D_, 4
	note_length 6
	note_pitch G_, 4
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch G_, 4
	note_length 6
	note_pitch G_, 3
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch E_, 3
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_length 12
	note_pitch A_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	rest
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch G_, 3
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch E_, 3
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_length 12
	note_pitch A_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	rest
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch C_, 4
	note_length 3
	note_pitch B_, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	rest
	note_length 12
	note_pitch G_, 4
	note_length 3
	note_pitch C_, 4
	note_length 3
	rest
	note_length 6
	note_pitch B_, 3
	note_length 6
	note_pitch C_, 4
	song_ret

Music_Intro_Ch3: ; 18b2cc (62:72cc)
	stereo_panning_both
	musicd8 27
	wave 72
	musicd7 12
	song_call Music_Intro_branch_18b4b8
	song_call Music_Intro_branch_18b4f9
	song_call Music_Intro_branch_18b4b8
	song_call Music_Intro_branch_18b4f9
	song_call Music_Intro_branch_18b4b8
	song_call Music_Intro_branch_18b4f9
	song_call Music_Intro_branch_18b4b8
	song_call Music_Intro_branch_18b4f9
	musicd7 12
	musice3 0
	wave 7
	musicd8 104
	song_call Music_Intro_branch_18b53a
	note_length 13
	rest
	musicd8 104
	musicd7 24
	song_call Music_Intro_branch_18b305
Music_Intro_branch_18b2ff: ; 18b2ff (62:72ff)
	song_call Music_Intro_branch_18b358
	song_jump Music_Intro_branch_18b2ff

Music_Intro_branch_18b305: ; 18b305 (62:7305)
	note_length 3
	note_pitch D_, 1
	note_length 3
	note_pitch G_, 1
	wave 71
	note_length 3
	note_pitch B_, 1
	note_length 3
	note_pitch C_, 2
	wave 70
	note_length 3
	note_pitch D_, 1
	note_length 3
	note_pitch G_, 1
	wave 69
	note_length 3
	note_pitch B_, 1
	note_length 3
	note_pitch C_, 2
	wave 68
	note_length 3
	note_pitch D_, 1
	note_length 3
	note_pitch G_, 1
	wave 67
	note_length 3
	note_pitch B_, 1
	note_length 3
	note_pitch C_, 2
	wave 66
	note_length 3
	note_pitch D_, 1
	note_length 3
	note_pitch G_, 1
	wave 65
	note_length 3
	note_pitch B_, 1
	note_length 3
	note_pitch C_, 2
	note_length 3
	note_pitch D_, 1
	note_length 3
	note_pitch G_, 1
	wave 64
	note_length 3
	note_pitch B_, 1
	note_length 3
	note_pitch C_, 2
	note_length 3
	note_pitch D_, 1
	note_length 3
	note_pitch G_, 1
	note_length 3
	note_pitch B_, 1
	note_length 3
	note_pitch C_, 2
	note_length 3
	note_pitch D_, 1
	note_length 3
	note_pitch G_, 1
	note_length 3
	note_pitch B_, 1
	wave 63
	note_length 3
	note_pitch C_, 2
	note_length 3
	note_pitch D_, 1
	note_length 3
	note_pitch G_, 1
	note_length 3
	note_pitch B_, 1
	note_length 3
	note_pitch C_, 2
	song_ret

Music_Intro_branch_18b358: ; 18b358 (62:7358)
	musice3 0
	musicd7 12
	musicd8 27
	wave 62
	note_length 3
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_length 6
	note_pitch D_, 1
	note_length 3
	note_pitch C_, 1
	note_length 6
	note_pitch B_, 0
	note_length 3
	rest
	note_length 9
	note_pitch A_, 0
	note_length 3
	rest
	note_pitch B_, 0
	note_length 3
	rest
	note_length 9
	note_pitch C_, 1
	note_length 3
	note_pitch B_, 0
	note_length 6
	rest
	note_length 3
	note_pitch C_, 1
	note_length 3
	rest
	note_length 9
	note_pitch D_, 1
	note_length 3
	note_pitch C_, 1
	note_length 6
	rest
	note_length 3
	note_pitch B_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch C_, 1
	note_length 6
	note_pitch B_, 0
	note_length 3
	rest
	note_length 12
	note_pitch A_, 0
	note_length 3
	note_pitch B_, 0
	note_length 3
	rest
	note_pitch C_, 1
	note_length 3
	note_pitch G_, 1
	note_length 3
	note_pitch C_, 2
	note_length 3
	note_pitch B_, 0
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch C_, 3
	note_length 6
	note_pitch C_, 1
	note_length 3
	note_pitch D_, 1
	note_length 3
	note_pitch A_, 1
	note_length 9
	note_pitch D_, 1
	note_length 3
	note_pitch A_, 1
	note_length 3
	note_pitch C_, 1
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_length 9
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch A_, 0
	note_length 3
	rest
	note_pitch A_, 0
	note_length 3
	rest
	note_length 9
	note_pitch A_, 0
	note_length 3
	rest
	note_pitch B_, 0
	note_length 3
	rest
	note_pitch B_, 0
	note_length 3
	rest
	note_length 9
	note_pitch B_, 0
	note_length 3
	rest
	note_pitch C_, 1
	note_length 3
	rest
	note_pitch C_, 1
	note_length 3
	rest
	note_length 6
	note_pitch C_, 1
	note_length 6
	rest
	wave 7
	musicd8 104
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 2
	note_length 3
	rest
	note_length 6
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 2
	note_length 3
	rest
	wave 62
	musicd8 27
	note_length 6
	note_pitch C_, 1
	note_length 3
	rest
	note_length 6
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch C_, 1
	note_length 3
	rest
	note_length 6
	note_pitch B_, 0
	note_length 3
	rest
	note_length 6
	note_pitch A_, 0
	note_length 3
	rest
	note_length 6
	note_pitch G_, 0
	note_length 3
	note_pitch G_, 1
	note_length 3
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	note_pitch D_, 1
	note_length 6
	rest
	note_length 3
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch A_, 0
	note_length 3
	rest
	note_pitch B_, 0
	note_length 3
	rest
	note_length 6
	note_pitch G_, 0
	note_length 3
	note_pitch G_, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	rest
	note_length 6
	note_pitch A_, 1
	note_length 3
	note_pitch G_, 1
	note_length 3
	rest
	note_length 6
	note_pitch F#, 1
	note_length 3
	note_pitch G_, 1
	note_length 3
	rest
	wave 7
	musicd8 104
	note_pitch A_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 1
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch A_, 1
	note_length 3
	note_pitch E_, 2
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch E_, 3
	note_length 3
	note_pitch E_, 2
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 4
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch D_, 4
	note_length 3
	note_pitch D_, 3
	note_length 6
	note_pitch D_, 4
	note_length 3
	note_pitch D_, 4
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch D_, 4
	note_length 6
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 6
	rest
	note_length 3
	note_pitch G_, 3
	note_length 6
	rest
	note_length 3
	note_pitch A_, 3
	note_length 9
	rest
	note_length 3
	note_pitch A_, 3
	note_length 3
	rest
	note_pitch A_, 3
	note_length 3
	rest
	note_pitch A_, 3
	note_length 3
	rest
	song_ret

Music_Intro_branch_18b4b8: ; 18b4b8 (62:74b8)
	wave 66
	note_length 3
	note_pitch G_, 0
	wave 72
	note_length 3
	note_pitch G_, 0
	wave 65
	note_length 3
	note_pitch G_, 0
	wave 72
	note_length 3
	note_pitch G_, 0
	wave 64
	note_length 3
	note_pitch G_, 0
	wave 71
	note_length 3
	note_pitch G_, 0
	wave 63
	note_length 3
	note_pitch G_, 0
	wave 70
	note_length 3
	note_pitch G_, 0
	wave 62
	note_length 3
	note_pitch G_, 0
	wave 69
	note_length 3
	note_pitch G_, 0
	wave 61
	note_length 3
	note_pitch G_, 0
	wave 69
	note_length 3
	note_pitch G_, 0
	wave 60
	note_length 3
	note_pitch G_, 0
	wave 68
	note_length 3
	note_pitch G_, 0
	wave 59
	note_length 3
	note_pitch G_, 0
	wave 68
	note_length 3
	note_pitch G_, 0
	song_ret

Music_Intro_branch_18b4f9: ; 18b4f9 (62:74f9)
	wave 59
	note_length 3
	note_pitch G_, 0
	wave 72
	note_length 3
	note_pitch G_, 0
	wave 60
	note_length 3
	note_pitch G_, 0
	wave 72
	note_length 3
	note_pitch G_, 0
	wave 61
	note_length 3
	note_pitch G_, 0
	wave 71
	note_length 3
	note_pitch G_, 0
	wave 62
	note_length 3
	note_pitch G_, 0
	wave 70
	note_length 3
	note_pitch G_, 0
	wave 63
	note_length 3
	note_pitch G_, 0
	wave 69
	note_length 3
	note_pitch G_, 0
	wave 63
	note_length 3
	note_pitch G_, 0
	wave 69
	note_length 3
	note_pitch G_, 0
	wave 63
	note_length 3
	note_pitch G_, 0
	wave 68
	note_length 3
	note_pitch G_, 0
	wave 67
	note_length 3
	note_pitch G_, 0
	wave 68
	note_length 3
	note_pitch G_, 0
	song_ret

Music_Intro_branch_18b53a: ; 18b53a (62:753a)
	musicd8 103
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch D_, 3
	note_length 12
	note_pitch G_, 3
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch C_, 3
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch B_, 2
	note_length 12
	note_pitch G_, 3
	note_length 6
	note_pitch D_, 3
	note_length 6
	rest
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	rest
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch A_, 3
	note_length 6
	note_pitch G_, 3
	musice3 0
	note_length 3
	note_pitch D_, 1
	note_length 3
	note_pitch G_, 1
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch G_, 1
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch D_, 4
	song_ret

; unreferenced ?
Music_Intro_branch_18b58b: ; 18b58b (62:758b)
	song_ret

; unreferenced ?
Music_Intro_branch_18b58c: ; 18b58c (62:758c)
	note_length 6
	note_pitch G_, 1
	note_length 6
	note_pitch G_, 1
	note_length 6
	note_pitch D_, 4
	note_length 6
	note_pitch G_, 1
	note_length 6
	note_pitch D_, 4
	note_length 6
	note_pitch G_, 1
	note_length 6
	note_pitch D_, 4
	note_length 6
	note_pitch G_, 1
	note_length 6
	note_pitch A_, 1
	note_length 6
	note_pitch A_, 1
	note_length 6
	note_pitch E_, 4
	note_length 6
	note_pitch A_, 1
	note_length 6
	note_pitch E_, 4
	note_length 6
	note_pitch A_, 1
	note_length 6
	note_pitch E_, 4
	note_length 6
	note_pitch A_, 1
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch F#, 4
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch F#, 4
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch F#, 4
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch C_, 2
	note_length 6
	note_pitch C_, 2
	note_length 6
	note_pitch G_, 4
	note_length 6
	note_pitch C_, 2
	note_length 6
	note_pitch G_, 4
	note_length 6
	note_pitch C_, 2
	note_length 6
	note_pitch G_, 4
	note_length 6
	note_pitch C_, 2
	song_ret

; unreferenced ?
Music_Intro_branch_18b5cd: ; 18b5cd (62:75cd)
	note_length 3
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_length 3
	note_pitch G_, 0
	note_length 15
	rest
	note_length 3
	note_pitch G_, 0
	note_length 15
	rest
	note_length 6
	note_pitch C_, 1
	note_length 6
	note_pitch B_, 0
	note_length 3
	note_pitch G_, 0
	note_length 15
	rest
	note_length 3
	note_pitch G_, 0
	note_length 15
	rest
	note_length 9
	note_pitch F#, 0
	note_length 3
	rest
	note_length 3
	note_pitch G_, 0
	note_length 15
	rest
	note_length 3
	note_pitch G_, 0
	note_length 15
	rest
	note_length 6
	note_pitch C_, 1
	note_length 6
	note_pitch B_, 0
	note_length 6
	note_pitch A_, 0
	note_length 6
	note_pitch B_, 0
	note_length 6
	rest
	note_length 6
	note_pitch C_, 1
	note_length 6
	rest
	note_length 6
	note_pitch D_, 1
	note_length 12
	note_pitch D_, 1
	note_length 3
	note_pitch G_, 0
	note_length 3
	rest
	note_length 3
	note_pitch G_, 0
	note_length 3
	rest
	note_length 3
	note_pitch G_, 0
	note_length 3
	rest
	note_length 3
	note_pitch G_, 0
	note_length 3
	rest
	note_length 3
	note_pitch G_, 0
	note_length 3
	rest
	note_length 6
	note_pitch G_, 0
	note_length 6
	note_pitch C_, 1
	note_length 6
	note_pitch B_, 0
	note_length 3
	note_pitch G_, 0
	note_length 3
	rest
	note_length 3
	note_pitch G_, 0
	note_length 3
	rest
	note_length 3
	note_pitch G_, 0
	note_length 3
	rest
	note_length 3
	note_pitch G_, 0
	note_length 3
	rest
	note_length 6
	note_pitch C_, 1
	note_length 6
	note_pitch C_, 1
	note_length 6
	note_pitch C_, 1
	note_length 6
	note_pitch C_, 1
	note_length 3
	note_pitch G_, 0
	note_length 3
	rest
	note_length 3
	note_pitch G_, 0
	note_length 3
	rest
	note_length 3
	note_pitch G_, 0
	note_length 3
	rest
	note_length 3
	note_pitch G_, 0
	note_length 3
	rest
	note_length 6
	note_pitch C_, 1
	note_length 6
	note_pitch B_, 0
	note_length 6
	note_pitch C_, 1
	note_length 6
	note_pitch D_, 1
	note_length 6
	rest
	note_length 6
	note_pitch D_, 1
	note_length 6
	rest
	note_length 6
	note_pitch D_, 1
	note_length 6
	note_pitch D_, 1
	note_length 6
	note_pitch D_, 1
	note_length 6
	note_pitch D_, 1
	note_length 6
	note_pitch D_, 1
	song_ret

; unreferenced ?
Music_Intro_branch_18b673: ; 18b673 (62:7673)
	note_length 3
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch F#, 0
	note_length 3
	note_pitch F_, 0
	note_length 3
	note_pitch G_, 0
	note_length 3
	rest
	song_ret

Music_Intro_Ch4: ; 18b74e (62:774e)
	stereo_panning_both
	song_call Music_Intro_branch_18b94f
	song_call Music_Intro_branch_18b9d3
	note_length 13
	rest
	song_call Music_Intro_branch_18b762
Music_Intro_branch_18b75a: ; 18b75a (62:775a)
	musicd6 13
	song_call Music_Intro_branch_18b78e
	song_jump Music_Intro_branch_18b75a

Music_Intro_branch_18b762: ; 18b762 (62:7762)
	note_length 3
	noise 3
	note_length 9
	continue_note
	note_length 3
	noise 3
	note_length 9
	continue_note
	note_length 3
	noise 3
	note_length 9
	continue_note
	note_length 3
	noise 3
	note_length 9
	continue_note
	note_length 3
	noise 17
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 18
	note_length 3
	noise 18
	note_length 3
	noise 18
	song_ret

Music_Intro_branch_18b78e: ; 18b78e (62:778e)
	note_length 3
	noise 15
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 18
	note_length 3
	noise 18
	note_length 3
	noise 15
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 18
	note_length 3
	noise 18
	note_length 3
	noise 15
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 15
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 18
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 18
	song_ret

Music_Intro_branch_18b94f: ; 18b94f (62:794f)
	note_length 6
	noise 11
	note_length 6
	continue_note
	noise 11
	note_length 6
	continue_note
	noise 11
	note_length 6
	continue_note
	noise 11
	note_length 6
	note_pitch A#, 0
	note_length 6
	noise 11
	note_length 6
	continue_note
	noise 11
	note_length 6
	continue_note
	noise 11
	note_length 6
	continue_note
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	note_pitch A#, 0
	note_length 3
	noise 11
	note_length 6
	noise 11
	note_length 6
	continue_note
	noise 11
	note_length 6
	continue_note
	noise 11
	note_length 6
	continue_note
	noise 11
	note_length 6
	note_pitch A#, 0
	note_length 6
	noise 11
	note_length 6
	continue_note
	noise 11
	note_length 6
	continue_note
	noise 11
	note_length 6
	continue_note
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	note_pitch A#, 0
	note_length 3
	noise 11
	note_length 6
	noise 11
	note_length 6
	continue_note
	noise 11
	note_length 6
	continue_note
	noise 11
	note_length 6
	continue_note
	noise 11
	note_length 6
	note_pitch A#, 0
	note_length 6
	noise 11
	note_length 6
	continue_note
	noise 11
	note_length 6
	continue_note
	noise 11
	note_length 6
	continue_note
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	note_pitch A#, 0
	note_length 3
	noise 11
	note_length 6
	noise 11
	note_length 6
	note_pitch A#, 0
	note_length 6
	noise 11
	note_length 6
	note_pitch A#, 0
	note_length 6
	noise 11
	note_length 6
	note_pitch A#, 0
	note_length 6
	noise 11
	note_length 6
	note_pitch A#, 0
	note_length 6
	noise 11
	note_length 6
	noise 17
	note_length 6
	noise 11
	note_length 6
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
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
	song_ret

Music_Intro_branch_18b9d3: ; 18b9d3 (62:79d3)
	note_length 6
	noise 3
	note_length 36
	continue_note
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 30
	continue_note
	note_length 12
	noise 17
	note_length 6
	noise 3
	note_length 36
	continue_note
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 42
	continue_note
	song_ret
