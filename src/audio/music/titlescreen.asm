Music_TitleScreen: ; 18c000 (63:4000)
	dw Music_TitleScreen_Ch1
	dw Music_TitleScreen_Ch2
	dw Music_TitleScreen_Ch3
	dw Music_TitleScreen_Ch4

Music_TitleScreen_Ch1: ; 18c008 (63:4008)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	duty_cycle_75
	musicd4 55
	duty_cycle_12_5
	musicd4 55
	musicd6 13
	musice3 1
	song_call Music_TitleScreen_branch_18c022
Music_TitleScreen_branch_18c01a: ; 18c01a (63:401a)
	musice3 0
	song_call Music_TitleScreen_branch_18c10e
	song_jump Music_TitleScreen_branch_18c01a

Music_TitleScreen_branch_18c022: ; 18c022 (63:4022)
	musicd5
	musicd8 204
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

Music_TitleScreen_branch_18c10e: ; 18c10e (63:410e)
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

Music_TitleScreen_Ch2: ; 18c2a3 (63:42a3)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	duty_cycle_75
	musicd8 39
	song_call Music_TitleScreen_branch_18c2b4
Music_TitleScreen_branch_18c2ae: ; 18c2ae (63:42ae)
	song_call Music_TitleScreen_branch_18c41e
	song_jump Music_TitleScreen_branch_18c2ae

Music_TitleScreen_branch_18c2b4: ; 18c2b4 (63:42b4)
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

Music_TitleScreen_branch_18c41e: ; 18c41e (63:441e)
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

Music_TitleScreen_Ch3: ; 18c51b (63:451b)
	stereo_panning_both
	musicd8 27
	wave 7
	musicd8 104
	musicd7 24
	song_call Music_TitleScreen_branch_18c52d
Music_TitleScreen_branch_18c527: ; 18c527 (63:4527)
	song_call Music_TitleScreen_branch_18c580
	song_jump Music_TitleScreen_branch_18c527

Music_TitleScreen_branch_18c52d: ; 18c52d (63:452d)
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

Music_TitleScreen_branch_18c580: ; 18c580 (63:4580)
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

Music_TitleScreen_Ch4: ; 18c6e0 (63:46e0)
	stereo_panning_both
	song_call Music_TitleScreen_branch_18c6ea
Music_TitleScreen_branch_18c6e4: ; 18c6e4 (63:46e4)
	song_call Music_TitleScreen_branch_18c716
	song_jump Music_TitleScreen_branch_18c6e4

Music_TitleScreen_branch_18c6ea: ; 18c6ea (63:46ea)
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

Music_TitleScreen_branch_18c716: ; 18c716 (63:4716)
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
