Music_Lance: ; 189d83 (62:5d83)
	dw Music_Lance_Ch1
	dw Music_Lance_Ch2
	dw Music_Lance_Ch3
	dw Music_Lance_Ch4

Music_Lance_Ch1: ; 189d8b (62:5d8b)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	musicd6 15
	musicd7 0
	duty_cycle_75
	musice3 2
	musicd4 55
	duty_cycle_12_5
	musicd4 55
	note_length 12
	rest
Music_Lance_branch_189d9e: ; 189d9e (62:5d9e)
	musicd8 180
	song_call Music_Lance_branch_189dc1
	song_call Music_Lance_branch_189dbe
	song_call Music_Lance_branch_189dbe
	song_call Music_Lance_branch_189dbe
	song_call Music_Lance_branch_189dbe
	song_call Music_Lance_branch_189dc1
	song_call Music_Lance_branch_189dbe
	song_call Music_Lance_branch_189dbe
	song_call Music_Lance_branch_189ea2
	song_jump Music_Lance_branch_189d9e

Music_Lance_branch_189dbe: ; 189dbe (62:5dbe)
	note_length 48
	rest
	song_ret

Music_Lance_branch_189dc1: ; 189dc1 (62:5dc1)
	note_length 6
	note_pitch A#, 2
	note_length 3
	rest
	note_pitch D#, 2
	note_length 3
	rest
	note_pitch F_, 2
	note_length 3
	note_pitch E_, 2
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch A#, 2
	note_length 3
	note_pitch F_, 2
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch E_, 2
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch D#, 2
	note_length 3
	note_pitch G_, 2
	note_length 12
	note_pitch F#, 2
	note_length 12
	note_pitch B_, 2
	musicd8 207
	note_length 2
	note_pitch E_, 2
	note_length 1
	rest
	note_length 2
	note_pitch E_, 2
	note_length 1
	rest
	musicd8 180
	note_length 6
	note_pitch G#, 2
	musicd8 207
	note_length 2
	note_pitch E_, 2
	note_length 1
	rest
	note_length 2
	note_pitch E_, 2
	note_length 1
	rest
	musicd8 180
	note_length 6
	note_pitch A#, 2
	musicd8 207
	note_length 2
	note_pitch A#, 1
	note_length 1
	rest
	note_length 2
	note_pitch A#, 1
	note_length 1
	rest
	note_length 12
	rest
	musicd8 206
	note_length 2
	note_pitch A#, 1
	note_length 1
	rest
	note_length 3
	rest
	musicd8 180
	note_pitch D#, 1
	note_length 3
	note_pitch E_, 1
	note_length 3
	note_pitch D#, 1
	note_length 3
	note_pitch E_, 1
	note_length 3
	note_pitch D#, 1
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch C#, 2
	note_length 3
	note_pitch C_, 2
	musicd8 207
	note_length 2
	note_pitch A#, 1
	note_length 1
	rest
	note_length 2
	note_pitch A#, 1
	note_length 1
	rest
	note_length 12
	rest
	note_length 2
	note_pitch A#, 1
	note_length 1
	rest
	note_length 9
	rest
	musicd8 180
	note_length 6
	note_pitch A#, 1
	note_length 6
	note_pitch C#, 2
	note_length 6
	note_pitch D#, 2
	note_length 6
	note_pitch A#, 2
	note_length 3
	rest
	note_pitch D#, 2
	note_length 3
	rest
	note_pitch F_, 2
	note_length 3
	note_pitch E_, 2
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch A#, 2
	note_length 3
	note_pitch F_, 2
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch E_, 2
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch D#, 2
	note_length 3
	note_pitch G_, 2
	note_length 12
	note_pitch B_, 2
	note_length 12
	note_pitch D#, 3
	note_length 12
	note_pitch B_, 2
	note_length 3
	note_pitch B_, 3
	note_length 3
	note_pitch E_, 2
	note_length 3
	note_pitch B_, 1
	note_length 3
	note_pitch E_, 1
	note_length 2
	note_pitch A#, 1
	note_length 1
	rest
	note_length 2
	note_pitch A#, 1
	note_length 1
	rest
	note_length 12
	rest
	note_length 2
	note_pitch A#, 1
	note_length 1
	rest
	note_length 3
	rest
	note_pitch D#, 1
	note_length 3
	note_pitch E_, 1
	note_length 3
	note_pitch D#, 1
	note_length 3
	note_pitch E_, 1
	note_length 3
	note_pitch D#, 1
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch C#, 2
	note_length 3
	note_pitch C_, 2
	note_length 2
	note_pitch A#, 1
	note_length 1
	rest
	note_length 2
	note_pitch A#, 1
	note_length 1
	rest
	note_length 6
	rest
	note_length 2
	note_pitch A#, 1
	note_length 1
	rest
	note_length 3
	rest
	note_pitch A#, 1
	note_length 2
	note_pitch A#, 1
	note_length 1
	rest
	note_length 6
	rest
	note_pitch A#, 1
	note_length 6
	note_pitch C#, 2
	note_length 6
	note_pitch D#, 2
	song_ret

Music_Lance_branch_189ea2: ; 189ea2 (62:5ea2)
	note_length 15
	note_pitch F_, 2
	note_length 3
	rest
	note_length 15
	note_pitch F#, 2
	note_length 3
	rest
	note_length 12
	note_pitch G_, 2
	note_length 3
	continue_note
	note_length 3
	rest
	note_length 24
	note_pitch G#, 2
	note_length 6
	rest
	note_pitch A_, 2
	note_length 6
	rest
	note_length 48
	rest
	note_length 48
	rest
	note_length 15
	note_pitch G_, 2
	note_length 3
	rest
	note_length 15
	note_pitch G#, 2
	note_length 3
	rest
	note_length 12
	note_pitch A_, 2
	note_length 3
	continue_note
	note_length 3
	rest
	note_length 24
	note_pitch A#, 2
	note_length 6
	rest
	note_pitch B_, 2
	note_length 6
	rest
	note_length 6
	rest
	note_length 12
	note_pitch C_, 3
	note_length 6
	rest
	note_length 12
	note_pitch C#, 3
	note_length 12
	rest
	musicd8 221
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch A#, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch A#, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch A#, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch A#, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch A#, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch A#, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch A#, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch A#, 2
	musicd8 221
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch B_, 2
	musicd8 219
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch B_, 2
	musicd8 222
	note_length 3
	note_pitch A_, 1
	note_length 3
	note_pitch B_, 1
	note_length 3
	note_pitch C_, 2
	note_length 3
	note_pitch E_, 1
	musicd8 219
	note_length 3
	note_pitch A_, 1
	note_length 3
	note_pitch B_, 1
	note_length 3
	note_pitch C_, 2
	note_length 3
	note_pitch E_, 1
	note_length 3
	note_pitch A_, 1
	note_length 3
	note_pitch B_, 1
	note_length 3
	note_pitch C_, 2
	note_length 3
	note_pitch E_, 1
	note_length 3
	note_pitch A_, 1
	note_length 3
	note_pitch B_, 1
	note_length 3
	note_pitch C_, 2
	note_length 3
	note_pitch E_, 1
	musicd8 221
	note_length 3
	note_pitch A#, 1
	note_length 3
	note_pitch C_, 2
	note_length 3
	note_pitch C#, 2
	note_length 3
	note_pitch F_, 1
	note_length 3
	note_pitch A#, 1
	note_length 3
	note_pitch C_, 2
	note_length 3
	note_pitch C#, 2
	note_length 3
	note_pitch F_, 1
	musicd8 220
	note_length 3
	note_pitch A#, 0
	note_length 3
	note_pitch C#, 1
	note_length 3
	note_pitch C#, 1
	note_length 3
	note_pitch F_, 1
	musicd8 221
	note_length 3
	note_pitch A#, 1
	note_length 3
	note_pitch C_, 2
	note_length 3
	note_pitch C#, 2
	note_length 3
	rest
	note_length 48
	rest
	note_length 48
	rest
	note_length 3
	rest
	musicd8 219
	note_length 3
	note_pitch D#, 2
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch A#, 2
	note_length 3
	note_pitch C#, 3
	note_length 3
	note_pitch D#, 3
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch A#, 3
	note_length 3
	note_pitch C#, 4
	note_length 3
	note_pitch D#, 4
	note_length 3
	note_pitch F#, 4
	note_length 3
	note_pitch D#, 4
	note_length 3
	note_pitch F#, 4
	note_length 3
	note_pitch A#, 3
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch A#, 3
	note_length 3
	note_pitch D#, 3
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch A#, 2
	note_length 3
	note_pitch D#, 2
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch A#, 2
	note_length 6
	rest
	musicd8 165
	note_length 6
	note_pitch D#, 2
	note_length 6
	note_pitch F#, 2
	note_length 6
	note_pitch G#, 2
	note_length 48
	rest
	note_length 48
	rest
	note_length 48
	rest
	note_length 48
	rest
	song_ret

Music_Lance_Ch2: ; 189fb3 (62:5fb3)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	musicd4 55
	musicd7 0
	duty_cycle_50
	musicd4 55
	musicd8 180
	note_length 3
	note_pitch A#, 2
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch C#, 3
Music_Lance_branch_189fc9: ; 189fc9 (62:5fc9)
	musicd4 55
	musicd8 180
	song_call Music_Lance_branch_189fdf
	song_call Music_Lance_branch_18a0b6
	song_call Music_Lance_branch_189fdf
	song_call Music_Lance_branch_18a0ca
	song_call Music_Lance_branch_18a0b6
	song_jump Music_Lance_branch_189fc9

Music_Lance_branch_189fdf: ; 189fdf (62:5fdf)
	musicd4 55
	duty_cycle_50
	note_length 6
	note_pitch D#, 3
	note_length 3
	rest
	note_pitch A#, 2
	note_length 3
	rest
	note_pitch A#, 2
	note_length 3
	note_pitch D#, 3
	note_length 3
	note_pitch D_, 3
	note_length 6
	note_pitch C#, 3
	note_length 6
	note_pitch C_, 3
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch A#, 2
	musicd8 182
	musicd4 59
	note_length 12
	note_pitch B_, 2
	musicd4 55
	musicd8 179
	note_length 12
	note_pitch E_, 3
	musicd8 181
	musicd4 55
	note_length 2
	note_pitch G#, 2
	note_length 1
	rest
	note_length 2
	note_pitch G#, 2
	note_length 1
	rest
	note_length 6
	note_pitch B_, 2
	musicd8 179
	note_length 2
	note_pitch G#, 2
	note_length 1
	rest
	note_length 2
	note_pitch G#, 2
	note_length 1
	rest
	note_length 6
	note_pitch C#, 3
	musicd8 180
	note_length 2
	note_pitch D#, 2
	note_length 1
	rest
	note_length 2
	note_pitch D#, 2
	note_length 1
	rest
	note_length 12
	rest
	note_length 2
	note_pitch D#, 2
	note_length 1
	rest
	note_length 6
	rest
	note_length 2
	note_pitch D#, 3
	note_length 1
	rest
	note_length 3
	rest
	note_length 2
	note_pitch D#, 3
	note_length 1
	rest
	note_length 9
	note_pitch E_, 3
	note_length 3
	rest
	note_length 2
	note_pitch D#, 2
	note_length 1
	rest
	note_length 2
	note_pitch D#, 2
	note_length 1
	rest
	note_length 12
	rest
	note_length 2
	note_pitch D#, 2
	note_length 1
	rest
	note_length 9
	rest
	note_length 6
	note_pitch D#, 2
	note_length 6
	note_pitch F#, 2
	note_length 6
	note_pitch G#, 2
	note_length 6
	note_pitch D#, 3
	note_length 3
	rest
	note_pitch A#, 2
	note_length 3
	rest
	note_pitch A#, 2
	note_length 3
	note_pitch D#, 3
	note_length 3
	note_pitch D_, 3
	note_length 6
	note_pitch C#, 3
	note_length 6
	note_pitch C_, 3
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch A#, 2
	musicd8 181
	musicd4 59
	note_length 12
	note_pitch E_, 3
	musicd8 179
	musicd4 55
	note_length 12
	note_pitch G#, 3
	musicd8 180
	musicd4 55
	note_length 12
	note_pitch E_, 3
	note_length 3
	note_pitch B_, 3
	note_length 3
	note_pitch B_, 1
	note_length 3
	note_pitch E_, 1
	note_length 3
	note_pitch B_, 0
	note_length 2
	note_pitch D#, 2
	note_length 1
	rest
	note_length 2
	note_pitch D#, 2
	note_length 1
	rest
	note_length 12
	rest
	note_length 2
	note_pitch D#, 2
	note_length 1
	rest
	note_length 6
	rest
	note_length 3
	note_pitch D#, 3
	note_length 3
	rest
	note_pitch D#, 3
	note_length 9
	note_pitch E_, 3
	note_length 3
	rest
	note_pitch D#, 2
	note_length 2
	note_pitch D#, 2
	note_length 1
	rest
	note_length 6
	rest
	note_length 2
	note_pitch D#, 2
	note_length 1
	rest
	note_length 3
	rest
	note_length 2
	note_pitch D#, 2
	note_length 1
	rest
	note_length 2
	note_pitch D#, 2
	note_length 1
	rest
	note_length 6
	rest
	note_pitch D#, 2
	note_length 6
	note_pitch F#, 2
	note_length 6
	note_pitch G#, 2
	song_ret

Music_Lance_branch_18a0b6: ; 18a0b6 (62:60b6)
	note_length 48
	rest
	note_length 48
	rest
	note_length 48
	rest
	duty_cycle_50
	note_length 36
	rest
	musicd4 55
	note_length 3
	note_pitch A#, 2
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch C#, 3
	song_ret

Music_Lance_branch_18a0ca: ; 18a0ca (62:60ca)
	duty_cycle_75
	musicd4 55
	musicd8 180
	note_length 3
	note_pitch A#, 2
	note_length 3
	note_pitch A#, 2
	note_length 3
	rest
	note_pitch G#, 2
	note_length 3
	note_pitch A#, 2
	note_length 3
	rest
	note_pitch F#, 2
	note_length 3
	note_pitch G#, 2
	note_length 3
	rest
	note_pitch D#, 2
	note_length 3
	note_pitch F#, 2
	note_length 3
	rest
	note_pitch C#, 2
	note_length 3
	note_pitch D#, 2
	note_length 3
	rest
	note_pitch A#, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	note_pitch A#, 1
	note_length 3
	note_pitch C#, 2
	note_length 3
	note_pitch D#, 2
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch A#, 2
	note_length 3
	note_pitch C#, 3
	note_length 3
	note_pitch D#, 3
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch A#, 3
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch D#, 3
	note_length 3
	note_pitch C#, 3
	musicd8 182
	duty_cycle_50
	note_length 15
	note_pitch A#, 2
	note_length 3
	rest
	musicd8 180
	note_length 15
	note_pitch B_, 2
	note_length 3
	rest
	musicd8 178
	note_length 12
	note_pitch C_, 3
	note_length 3
	continue_note
	note_length 3
	rest
	musicd8 178
	note_length 24
	note_pitch C#, 3
	note_length 6
	rest
	musicd8 177
	note_pitch D_, 3
	note_length 6
	rest
	duty_cycle_75
	musicd8 179
	note_pitch D#, 4
	note_length 6
	note_pitch D_, 4
	note_length 6
	note_pitch C#, 4
	note_length 6
	note_pitch C_, 4
	note_length 3
	note_pitch D#, 4
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch C#, 4
	note_length 3
	note_pitch C_, 4
	note_length 3
	note_pitch B_, 3
	note_length 3
	rest
	note_pitch B_, 3
	note_length 3
	rest
	note_length 6
	rest
	note_length 33
	note_pitch D#, 4
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch C#, 4
	note_length 3
	note_pitch C_, 4
	musicd8 182
	musicd4 55
	duty_cycle_50
	note_length 15
	note_pitch C_, 3
	note_length 3
	rest
	musicd8 180
	note_length 15
	note_pitch C#, 3
	note_length 3
	rest
	musicd8 178
	note_length 12
	note_pitch D_, 3
	note_length 3
	continue_note
	note_length 3
	rest
	musicd8 177
	note_length 24
	note_pitch D#, 3
	note_length 6
	rest
	note_pitch E_, 3
	note_length 6
	rest
	duty_cycle_50
	musicd8 180
	note_length 6
	rest
	musicd4 59
	note_length 12
	note_pitch F_, 3
	musicd4 55
	note_length 6
	rest
	note_length 12
	note_pitch F#, 3
	note_length 12
	rest
	musicd4 59
	note_length 9
	note_pitch G_, 3
	musicd4 55
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch F#, 3
	note_length 6
	note_pitch F_, 3
	note_length 6
	note_pitch E_, 3
	note_length 6
	note_pitch D#, 3
	note_length 6
	note_pitch D_, 3
	musicd4 59
	note_length 12
	note_pitch D#, 3
	musicd4 55
	note_length 12
	note_pitch G#, 3
	musicd4 55
	note_length 12
	note_pitch G#, 2
	note_length 6
	note_pitch D#, 3
	note_length 6
	rest
	note_length 9
	note_pitch A_, 2
	note_length 3
	note_pitch E_, 2
	note_length 3
	rest
	note_pitch E_, 2
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch G#, 2
	note_length 6
	note_pitch G_, 2
	note_length 6
	note_pitch F#, 2
	note_length 6
	note_pitch F_, 2
	note_length 6
	note_pitch E_, 2
	musicd4 59
	note_length 12
	note_pitch F_, 2
	note_length 12
	note_pitch A#, 2
	musicd4 55
	note_length 15
	note_pitch C#, 3
	note_length 9
	rest
	musicd4 55
	musicd8 223
	duty_cycle_12_5
	note_length 3
	rest
	note_length 3
	note_pitch F#, 1
	note_length 3
	note_pitch A#, 1
	note_length 3
	note_pitch C#, 2
	note_length 3
	note_pitch D#, 2
	musicd8 221
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch A#, 2
	note_length 3
	note_pitch C#, 3
	note_length 3
	note_pitch D#, 3
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch A#, 3
	musicd8 222
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch D#, 3
	note_length 3
	note_pitch C#, 3
	musicd8 223
	note_length 3
	note_pitch D#, 3
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch A#, 2
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch A#, 2
	note_length 3
	note_pitch D#, 2
	musicd8 221
	note_length 3
	note_pitch C#, 2
	note_length 3
	note_pitch D#, 2
	note_length 3
	note_pitch G#, 1
	note_length 3
	note_pitch A#, 1
	note_length 3
	note_pitch F#, 1
	musicd8 222
	note_length 3
	note_pitch G#, 1
	note_length 3
	note_pitch A#, 1
	musicd8 223
	note_length 3
	note_pitch D#, 1
	note_length 3
	note_pitch C#, 1
	musicd8 223
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	note_pitch G#, 1
	note_length 3
	note_pitch A#, 1
	musicd8 221
	note_length 3
	note_pitch D#, 2
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch A#, 2
	note_length 3
	note_pitch C#, 3
	musicd8 222
	note_length 3
	note_pitch D#, 3
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch A#, 3
	musicd8 223
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch D#, 3
	note_length 3
	note_pitch C#, 3
	musicd8 224
	note_length 3
	note_pitch D#, 3
	note_length 3
	note_pitch A#, 2
	musicd8 221
	note_length 3
	note_pitch C#, 2
	note_length 3
	note_pitch D#, 2
	musicd8 222
	note_length 3
	note_pitch G#, 1
	note_length 3
	note_pitch A#, 1
	musicd8 223
	note_length 3
	note_pitch C#, 2
	note_length 3
	note_pitch D#, 2
	note_length 6
	rest
	musicd8 224
	note_pitch A#, 1
	note_length 6
	note_pitch C#, 2
	note_length 6
	note_pitch D#, 2
	song_ret

Music_Lance_Ch3: ; 18a25d (62:625d)
	stereo_panning_both
	musice3 -1
	musicd8 27
	wave 64
	musicd7 12
	musicd4 55
	note_length 12
	rest
Music_Lance_branch_18a26a: ; 18a26a (62:626a)
	song_call Music_Lance_branch_18a285
	song_call Music_Lance_branch_18a285
	song_call Music_Lance_branch_18a2d4
	song_call Music_Lance_branch_18a285
	song_call Music_Lance_branch_18a285
	song_call Music_Lance_branch_18a31f
	song_call Music_Lance_branch_18a285
	song_call Music_Lance_branch_18a2d4
	song_jump Music_Lance_branch_18a26a

Music_Lance_branch_18a285: ; 18a285 (62:6285)
	note_length 6
	note_pitch D#, 0
	note_length 12
	rest
	note_length 6
	note_pitch D#, 0
	note_length 6
	rest
	note_length 3
	note_pitch D#, 0
	note_length 3
	rest
	note_length 2
	note_pitch E_, 0
	note_length 1
	rest
	note_length 6
	note_pitch E_, 0
	note_length 3
	rest
	note_length 6
	note_pitch D#, 0
	note_length 12
	rest
	note_length 6
	note_pitch D#, 0
	note_length 6
	rest
	note_length 3
	note_pitch D#, 0
	note_length 3
	rest
	note_length 2
	note_pitch C#, 0
	note_length 1
	rest
	note_length 6
	note_pitch C#, 0
	note_length 3
	rest
	note_length 2
	note_pitch D#, 0
	note_length 1
	rest
	note_length 3
	note_pitch D#, 0
	note_length 12
	rest
	note_length 3
	note_pitch D#, 0
	note_length 9
	rest
	note_length 3
	note_pitch D#, 0
	note_length 3
	rest
	note_length 12
	note_pitch E_, 0
	note_length 2
	note_pitch D#, 0
	note_length 1
	rest
	note_length 3
	note_pitch D#, 0
	note_length 12
	rest
	note_length 2
	note_pitch D#, 0
	note_length 1
	rest
	note_length 9
	rest
	note_length 6
	note_pitch D#, 0
	note_length 6
	note_pitch F#, 0
	note_length 6
	note_pitch G#, 0
	song_ret

Music_Lance_branch_18a2d4: ; 18a2d4 (62:62d4)
	note_length 6
	note_pitch D#, 0
	note_length 12
	rest
	note_length 6
	note_pitch D#, 0
	note_length 6
	rest
	note_length 3
	note_pitch D#, 0
	note_length 3
	rest
	note_length 2
	note_pitch E_, 0
	note_length 1
	rest
	note_length 6
	note_pitch E_, 0
	note_length 3
	rest
	note_length 6
	note_pitch D#, 0
	note_length 12
	rest
	note_length 6
	note_pitch D#, 0
	note_length 6
	rest
	note_length 3
	note_pitch D#, 0
	note_length 6
	rest
	note_length 9
	note_pitch C#, 0
	note_length 6
	note_pitch D#, 0
	note_length 12
	rest
	note_length 6
	note_pitch D#, 0
	note_length 6
	rest
	note_length 3
	note_pitch D#, 0
	note_length 3
	rest
	note_length 2
	note_pitch E_, 0
	note_length 1
	rest
	note_length 6
	note_pitch E_, 0
	note_length 3
	rest
	note_length 6
	note_pitch D#, 0
	note_length 12
	rest
	note_length 6
	note_pitch D#, 0
	note_length 6
	rest
	note_length 3
	note_pitch D#, 0
	note_length 3
	rest
	note_length 2
	note_pitch E_, 0
	note_length 1
	rest
	note_length 6
	note_pitch E_, 0
	note_length 3
	rest
	song_ret

Music_Lance_branch_18a31f: ; 18a31f (62:631f)
	note_length 6
	note_pitch D#, 0
	note_length 12
	rest
	note_length 6
	note_pitch D#, 0
	note_length 6
	rest
	note_length 3
	note_pitch D#, 0
	note_length 3
	rest
	note_length 2
	note_pitch E_, 0
	note_length 1
	rest
	note_length 6
	note_pitch E_, 0
	note_length 3
	rest
	note_length 6
	note_pitch D#, 0
	note_length 12
	rest
	note_length 6
	note_pitch D#, 0
	note_length 6
	rest
	note_length 3
	note_pitch D#, 0
	note_length 3
	rest
	note_length 2
	note_pitch C#, 0
	note_length 1
	rest
	note_length 6
	note_pitch C#, 0
	note_length 3
	rest
	note_length 6
	note_pitch D#, 0
	note_length 12
	rest
	note_length 6
	note_pitch D#, 0
	note_length 6
	rest
	note_length 3
	note_pitch D#, 0
	note_length 3
	rest
	note_length 2
	note_pitch E_, 0
	note_length 1
	rest
	note_length 6
	note_pitch E_, 0
	note_length 3
	rest
	note_length 6
	note_pitch D#, 0
	note_length 12
	rest
	note_length 6
	note_pitch D#, 0
	note_length 6
	rest
	note_length 3
	note_pitch D#, 0
	note_length 3
	rest
	note_length 2
	note_pitch C#, 0
	note_length 1
	rest
	note_length 6
	note_pitch C#, 0
	note_length 3
	rest
	note_length 6
	note_pitch F_, 0
	note_length 12
	rest
	note_length 6
	note_pitch F_, 0
	note_length 6
	rest
	note_length 3
	note_pitch F_, 0
	note_length 3
	rest
	note_length 2
	note_pitch D#, 0
	note_length 1
	rest
	note_length 6
	note_pitch D#, 0
	note_length 3
	rest
	note_length 6
	note_pitch F_, 0
	note_length 12
	rest
	note_length 6
	note_pitch F_, 0
	note_length 6
	rest
	note_length 3
	note_pitch F_, 0
	note_length 3
	rest
	note_length 2
	note_pitch F#, 0
	note_length 1
	rest
	note_length 6
	note_pitch F#, 0
	note_length 3
	rest
	note_length 6
	note_pitch F_, 0
	note_length 12
	rest
	note_length 6
	note_pitch F_, 0
	note_length 6
	rest
	note_length 3
	note_pitch F_, 0
	note_length 3
	rest
	note_length 2
	note_pitch D#, 0
	note_length 1
	rest
	note_length 6
	note_pitch D#, 0
	note_length 3
	rest
	note_length 6
	note_pitch F_, 0
	note_length 12
	rest
	note_length 6
	note_pitch F_, 0
	note_length 6
	rest
	note_length 3
	note_pitch F_, 0
	note_length 3
	rest
	note_length 2
	note_pitch F#, 0
	note_length 1
	rest
	note_length 6
	note_pitch F#, 0
	note_length 3
	rest
	note_pitch C_, 0
	note_length 3
	rest
	note_length 12
	note_pitch C#, 1
	note_length 3
	note_pitch C_, 0
	note_length 6
	rest
	note_length 3
	note_pitch F#, 0
	note_length 3
	note_pitch G#, 0
	note_length 3
	note_pitch C#, 1
	note_length 3
	note_pitch F#, 1
	note_length 3
	note_pitch G#, 1
	note_length 3
	note_pitch C#, 2
	note_length 3
	note_pitch F#, 2
	note_length 48
	rest
	note_length 48
	rest
	note_length 2
	note_pitch A_, 0
	note_length 1
	rest
	note_length 2
	note_pitch A_, 0
	note_length 1
	rest
	note_length 3
	rest
	note_length 2
	note_pitch A_, 0
	note_length 1
	rest
	note_length 2
	note_pitch A_, 0
	note_length 1
	rest
	note_length 3
	rest
	note_length 2
	note_pitch A_, 0
	note_length 1
	rest
	note_length 2
	note_pitch A_, 0
	note_length 1
	rest
	note_length 3
	rest
	note_length 2
	note_pitch A_, 0
	note_length 1
	rest
	note_length 2
	note_pitch A_, 0
	note_length 1
	rest
	note_length 3
	rest
	note_length 2
	note_pitch A_, 0
	note_length 1
	rest
	note_length 2
	note_pitch A_, 0
	note_length 1
	rest
	note_length 2
	note_pitch A_, 0
	note_length 1
	rest
	note_length 2
	note_pitch A_, 0
	note_length 1
	rest
	note_length 2
	note_pitch A#, 0
	note_length 1
	rest
	note_length 2
	note_pitch A#, 0
	note_length 1
	rest
	note_length 2
	note_pitch A#, 0
	note_length 1
	rest
	note_length 2
	note_pitch A#, 0
	note_length 1
	rest
	note_length 2
	note_pitch A#, 0
	note_length 1
	rest
	note_length 3
	rest
	note_length 2
	note_pitch A#, 0
	note_length 1
	rest
	note_length 2
	note_pitch A#, 0
	note_length 1
	rest
	note_length 3
	rest
	note_length 2
	note_pitch A#, 0
	note_length 1
	rest
	note_length 2
	note_pitch A#, 0
	note_length 1
	rest
	note_length 3
	rest
	note_length 2
	note_pitch A#, 0
	note_length 1
	rest
	note_length 2
	note_pitch A#, 0
	note_length 1
	rest
	note_length 2
	note_pitch A#, 0
	note_length 1
	rest
	note_length 2
	note_pitch A#, 0
	note_length 1
	rest
	song_ret

Music_Lance_Ch4: ; 18a44d (62:644d)
	stereo_panning_both
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 3
	note_length 3
	continue_note
Music_Lance_branch_18a456: ; 18a456 (62:6456)
	song_call Music_Lance_branch_18a45c
	song_jump Music_Lance_branch_18a456

Music_Lance_branch_18a45c: ; 18a45c (62:645c)
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 6
	continue_note
	note_length 3
	noise 17
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 9
	continue_note
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 18
	note_length 24
	continue_note
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 6
	continue_note
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 18
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 6
	continue_note
	note_length 3
	noise 17
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 9
	continue_note
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 24
	continue_note
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
	continue_note
	note_pitch G#, 0
	note_length 3
	noise 17
	note_length 3
	note_pitch G#, 0
	note_length 3
	continue_note
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
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
	continue_note
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 11
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
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
	continue_note
	note_pitch G#, 0
	note_length 3
	noise 17
	note_length 3
	note_pitch G#, 0
	note_length 3
	continue_note
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	continue_note
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
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
	continue_note
	note_pitch G#, 0
	note_length 3
	noise 17
	note_length 3
	note_pitch G#, 0
	note_length 3
	continue_note
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
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
	continue_note
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
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
	continue_note
	note_pitch G#, 0
	note_length 3
	noise 17
	note_length 3
	note_pitch G#, 0
	note_length 3
	continue_note
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
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
	continue_note
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 9
	continue_note
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 18
	note_length 3
	noise 18
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	continue_note
	noise 18
	note_length 3
	noise 18
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 9
	continue_note
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 24
	continue_note
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 6
	continue_note
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 18
	note_length 3
	noise 18
	song_ret
