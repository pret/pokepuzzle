Music_EliteFourDanger: ; 18ddda (63:5dda)
	dw Music_EliteFourDanger_Ch1
	dw Music_EliteFourDanger_Ch2
	dw Music_EliteFourDanger_Ch3
	dw Music_EliteFourDanger_Ch4

Music_EliteFourDanger_Ch1: ; 18dde2 (63:5de2)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	musicd6 19
	musice3 2
	musicd4 55
	musicd4 55
	musicd8 36
	song_call Music_EliteFourDanger_branch_18deca
Music_EliteFourDanger_branch_18ddf4: ; 18ddf4 (63:5df4)
	musicd7 0
	musicd4 55
	song_call Music_EliteFourDanger_branch_18defc
	song_call Music_EliteFourDanger_branch_18de09
	musice3 2
	song_call Music_EliteFourDanger_branch_18e000
	song_call Music_EliteFourDanger_branch_18e027
	song_jump Music_EliteFourDanger_branch_18ddf4

Music_EliteFourDanger_branch_18de09: ; 18de09 (63:5e09)
	note_length 6
	note_pitch C_, 2
	note_length 6
	note_pitch G_, 2
	note_length 6
	note_pitch C_, 3
	note_length 6
	note_pitch C_, 2
	note_length 6
	note_pitch G_, 2
	note_length 6
	note_pitch C_, 3
	note_length 6
	note_pitch C_, 2
	note_length 6
	note_pitch C_, 3
	note_length 6
	note_pitch C_, 2
	note_length 6
	note_pitch G_, 2
	note_length 6
	note_pitch C_, 3
	note_length 6
	note_pitch C_, 2
	note_length 6
	note_pitch G_, 2
	note_length 6
	note_pitch C_, 3
	note_length 6
	note_pitch C_, 2
	note_length 6
	note_pitch C_, 3
	note_length 6
	note_pitch C#, 2
	note_length 6
	note_pitch G#, 2
	note_length 6
	note_pitch C#, 3
	note_length 6
	note_pitch C#, 2
	note_length 6
	note_pitch G#, 2
	note_length 6
	note_pitch C#, 3
	note_length 6
	note_pitch C#, 2
	note_length 6
	note_pitch C#, 3
	note_length 6
	note_pitch C#, 2
	note_length 6
	note_pitch G#, 2
	note_length 6
	note_pitch C#, 3
	note_length 6
	note_pitch C#, 2
	note_length 6
	note_pitch G#, 2
	note_length 6
	note_pitch C#, 3
	note_length 6
	note_pitch C#, 2
	note_length 6
	note_pitch C#, 3
	musicd8 39
	note_length 3
	note_pitch G_, 2
	musicd8 36
	note_length 3
	note_pitch G_, 2
	musicd8 39
	note_length 3
	note_pitch G_, 2
	musicd8 36
	note_length 3
	note_pitch G_, 2
	musicd8 39
	note_length 3
	note_pitch G_, 2
	musicd8 36
	note_length 3
	note_pitch G_, 2
	musicd8 39
	note_length 3
	note_pitch G_, 2
	musicd8 36
	note_length 3
	note_pitch G_, 2
	musicd8 39
	note_length 3
	note_pitch G_, 2
	musicd8 36
	note_length 3
	note_pitch G_, 2
	musicd8 39
	note_length 3
	note_pitch G_, 2
	musicd8 36
	note_length 3
	note_pitch G_, 2
	musicd8 39
	note_length 3
	note_pitch G_, 2
	musicd8 36
	note_length 3
	note_pitch G_, 2
	musicd8 39
	note_length 3
	note_pitch G_, 2
	musicd8 36
	note_length 3
	note_pitch G_, 2
	musicd8 39
	note_length 3
	note_pitch A#, 2
	musicd8 36
	note_length 3
	note_pitch A#, 2
	musicd8 39
	note_length 3
	note_pitch A#, 2
	musicd8 36
	note_length 3
	note_pitch A#, 2
	musicd8 39
	note_length 3
	note_pitch A#, 2
	musicd8 36
	note_length 3
	note_pitch A#, 2
	musicd8 39
	note_length 3
	note_pitch A#, 2
	musicd8 36
	note_length 3
	note_pitch A#, 2
	musicd8 39
	note_length 3
	note_pitch A#, 2
	musicd8 36
	note_length 3
	note_pitch A#, 2
	musicd8 39
	note_length 3
	note_pitch A#, 2
	musicd8 36
	note_length 3
	note_pitch A#, 2
	musicd8 39
	note_length 3
	note_pitch A#, 2
	musicd8 36
	note_length 3
	note_pitch A#, 2
	musicd8 39
	note_length 3
	note_pitch A#, 2
	musicd8 36
	note_length 3
	note_pitch A#, 2
	song_ret

Music_EliteFourDanger_branch_18deca: ; 18deca (63:5eca)
	duty_cycle_12_5
	musicd8 119
	musicd4 59
	note_length 18
	note_pitch F#, 1
	note_length 6
	continue_note
	musicd4 55
	note_length 18
	note_pitch G_, 1
	note_length 6
	continue_note
	note_length 18
	note_pitch G#, 1
	note_length 6
	continue_note
	note_length 18
	note_pitch A_, 1
	musicd4 61
	note_length 6
	note_pitch A_, 1
	song_ret

; unreferenced ?
Music_EliteFourDanger_branch_18dee4: ; 18dee4 (63:5ee4)
	duty_cycle_12_5
	musicd8 119
	musice3 3
	note_length 18
	note_pitch C_, 3
	note_length 6
	rest
	note_length 18
	note_pitch C_, 3
	note_length 6
	rest
	note_length 18
	note_pitch C_, 3
	note_length 6
	rest
	note_length 18
	note_pitch C_, 3
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch A_, 2
	song_ret

Music_EliteFourDanger_branch_18defc: ; 18defc (63:5efc)
	duty_cycle_12_5
	musicd8 118
	musice3 2
	note_length 24
	note_pitch A#, 2
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch C_, 3
	note_length 6
	note_pitch A#, 2
	note_length 6
	note_pitch C_, 3
	note_length 24
	note_pitch C#, 3
	note_length 6
	note_pitch F_, 3
	note_length 6
	note_pitch D#, 3
	note_length 6
	note_pitch C#, 3
	note_length 6
	note_pitch D#, 3
	note_length 36
	note_pitch F_, 3
	note_length 12
	note_pitch D#, 3
	note_length 36
	note_pitch G#, 3
	note_length 12
	note_pitch F_, 3
	note_length 24
	note_pitch A#, 2
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch C_, 3
	note_length 6
	note_pitch A#, 2
	note_length 6
	note_pitch C_, 3
	note_length 21
	note_pitch C#, 3
	note_length 3
	rest
	note_length 6
	note_pitch F_, 3
	note_length 6
	note_pitch D#, 3
	note_length 6
	note_pitch C#, 3
	note_length 6
	note_pitch D#, 3
	note_length 45
	note_pitch C#, 3
	note_length 3
	continue_note
	duty_cycle_75
	musicd8 36
	musicd4 59
	note_length 6
	note_pitch G#, 3
	note_length 3
	rest
	musicd4 55
	note_length 6
	note_pitch G#, 3
	note_length 3
	rest
	note_length 12
	note_pitch G#, 3
	note_length 6
	rest
	note_length 12
	note_pitch F_, 3
	song_ret

; unreferenced ?
Music_EliteFourDanger_branch_18df4d: ; 18df4d (63:5f4d)
	musice3 0
	note_length 6
	note_pitch C_, 2
	note_length 6
	note_pitch G_, 2
	note_length 6
	note_pitch C_, 3
	note_length 6
	note_pitch C_, 2
	note_length 6
	note_pitch G_, 2
	note_length 6
	note_pitch C_, 3
	note_length 6
	note_pitch C_, 2
	note_length 6
	note_pitch C_, 3
	note_length 6
	note_pitch C#, 2
	note_length 6
	note_pitch G#, 2
	note_length 6
	note_pitch C#, 3
	note_length 6
	note_pitch C_, 2
	note_length 6
	note_pitch G#, 2
	note_length 6
	note_pitch C#, 3
	note_length 6
	note_pitch C#, 2
	note_length 6
	note_pitch C#, 3
	note_length 6
	note_pitch C#, 2
	note_length 6
	note_pitch G#, 2
	note_length 6
	note_pitch C#, 3
	note_length 6
	note_pitch C_, 2
	note_length 6
	note_pitch G#, 2
	note_length 6
	note_pitch C#, 3
	note_length 6
	note_pitch C#, 2
	note_length 6
	note_pitch C#, 3
	musicd8 39
	note_length 3
	note_pitch G_, 2
	musicd8 36
	note_length 3
	note_pitch G_, 2
	musicd8 39
	note_length 3
	note_pitch G_, 2
	musicd8 36
	note_length 3
	note_pitch G_, 2
	musicd8 39
	note_length 3
	note_pitch G_, 2
	musicd8 36
	note_length 3
	note_pitch G_, 2
	musicd8 39
	note_length 3
	note_pitch G_, 2
	musicd8 36
	note_length 3
	note_pitch G_, 2
	musicd8 39
	note_length 3
	note_pitch G_, 2
	musicd8 36
	note_length 3
	note_pitch G_, 2
	musicd8 39
	note_length 3
	note_pitch G_, 2
	musicd8 36
	note_length 3
	note_pitch G_, 2
	musicd8 39
	note_length 3
	note_pitch G_, 2
	musicd8 36
	note_length 3
	note_pitch G_, 2
	musicd8 39
	note_length 3
	note_pitch G_, 2
	musicd8 36
	note_length 3
	note_pitch G_, 2
	musicd8 39
	note_length 3
	note_pitch A#, 2
	musicd8 36
	note_length 3
	note_pitch A#, 2
	musicd8 39
	note_length 3
	note_pitch A#, 2
	musicd8 36
	note_length 3
	note_pitch A#, 2
	musicd8 39
	note_length 3
	note_pitch A#, 2
	musicd8 36
	note_length 3
	note_pitch A#, 2
	musicd8 39
	note_length 3
	note_pitch A#, 2
	musicd8 36
	note_length 3
	note_pitch A#, 2
	musicd8 39
	note_length 3
	note_pitch A#, 2
	musicd8 36
	note_length 3
	note_pitch A#, 2
	musicd8 39
	note_length 3
	note_pitch A#, 2
	musicd8 36
	note_length 3
	note_pitch A#, 2
	musicd8 39
	note_length 3
	note_pitch A#, 2
	musicd8 36
	note_length 3
	note_pitch A#, 2
	musicd8 39
	note_length 3
	note_pitch A#, 2
	musicd8 36
	note_length 3
	note_pitch A#, 2
	song_ret

Music_EliteFourDanger_branch_18e000: ; 18e000 (63:6000)
	musicd8 118
	note_length 45
	note_pitch C#, 2
	note_length 3
	continue_note
	note_length 24
	note_pitch A#, 1
	note_length 18
	note_pitch C#, 2
	note_length 6
	note_pitch D#, 2
	note_length 45
	note_pitch C_, 2
	note_length 3
	continue_note
	note_length 45
	note_pitch E_, 2
	note_length 3
	continue_note
	note_length 45
	note_pitch C#, 3
	note_length 3
	continue_note
	note_length 24
	note_pitch A#, 2
	note_length 18
	note_pitch C#, 3
	note_length 6
	note_pitch D#, 3
	note_length 45
	note_pitch C_, 3
	note_length 3
	continue_note
	note_length 45
	note_pitch A#, 2
	note_length 3
	continue_note
	song_ret

Music_EliteFourDanger_branch_18e027: ; 18e027 (63:6027)
	musicd8 118
	note_length 6
	note_pitch C_, 3
	note_length 12
	rest
	note_length 6
	note_pitch C_, 3
	note_length 12
	rest
	note_length 6
	note_pitch C_, 3
	note_length 6
	rest
	note_pitch C#, 3
	note_length 12
	rest
	note_length 6
	note_pitch C#, 3
	note_length 12
	rest
	note_length 6
	note_pitch C#, 3
	note_length 6
	rest
	note_pitch D_, 3
	note_length 12
	rest
	note_length 6
	note_pitch D_, 3
	note_length 12
	rest
	note_length 6
	note_pitch D_, 3
	note_length 6
	rest
	note_pitch D#, 3
	note_length 6
	note_pitch D#, 3
	note_length 6
	note_pitch D#, 3
	note_length 6
	note_pitch D#, 3
	note_length 6
	note_pitch D#, 3
	note_length 12
	note_pitch D#, 3
	note_length 6
	rest
	note_length 42
	note_pitch F_, 3
	note_length 6
	rest
	note_length 42
	note_pitch F#, 3
	note_length 6
	rest
	note_length 42
	note_pitch G_, 3
	note_length 6
	rest
	note_length 24
	note_pitch G#, 3
	note_length 24
	note_pitch G_, 3
	song_ret

Music_EliteFourDanger_Ch2: ; 18e069 (63:6069)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	musicd4 55
	duty_cycle_50
	musicd4 55
	duty_cycle_12_5
	musicd4 55
	musicd8 161
	song_call Music_EliteFourDanger_branch_18e15c
Music_EliteFourDanger_branch_18e07b: ; 18e07b (63:607b)
	song_call Music_EliteFourDanger_branch_18e1a7
	song_call Music_EliteFourDanger_branch_18e08a
	song_call Music_EliteFourDanger_branch_18e299
	song_call Music_EliteFourDanger_branch_18e2c0
	song_jump Music_EliteFourDanger_branch_18e07b

Music_EliteFourDanger_branch_18e08a: ; 18e08a (63:608a)
	musicd8 52
	duty_cycle_50
	note_length 18
	note_pitch C_, 2
	note_length 18
	note_pitch A#, 1
	note_length 12
	note_pitch C_, 2
	duty_cycle_50
	musicd8 178
	musicd4 59
	note_length 9
	note_pitch C_, 3
	musicd4 55
	note_length 9
	note_pitch C#, 3
	note_length 12
	note_pitch C_, 3
	note_length 6
	note_pitch C_, 3
	note_length 6
	note_pitch A#, 2
	note_length 6
	note_pitch C_, 3
	duty_cycle_50
	musicd8 52
	note_length 18
	note_pitch A#, 1
	note_length 18
	note_pitch G#, 1
	note_length 12
	note_pitch A#, 1
	musicd8 178
	duty_cycle_50
	musicd4 59
	note_length 9
	note_pitch C#, 4
	musicd4 55
	note_length 9
	note_pitch D#, 4
	note_length 12
	note_pitch C#, 4
	note_length 6
	note_pitch C_, 4
	note_length 6
	note_pitch A#, 3
	note_length 6
	note_pitch C_, 4
	musicd8 52
	duty_cycle_50
	note_length 45
	note_pitch C_, 3
	note_length 3
	continue_note
	musicd8 211
	note_length 3
	note_pitch E_, 3
	musicd8 210
	note_length 3
	note_pitch E_, 3
	musicd8 209
	note_length 3
	note_pitch E_, 3
	musicd8 208
	note_length 3
	note_pitch E_, 3
	musicd8 207
	note_length 3
	note_pitch E_, 3
	musicd8 206
	note_length 3
	note_pitch E_, 3
	musicd8 207
	note_length 3
	note_pitch E_, 3
	musicd8 208
	note_length 3
	note_pitch E_, 3
	musicd8 209
	note_length 3
	note_pitch E_, 3
	musicd8 210
	note_length 3
	note_pitch E_, 3
	musicd8 211
	note_length 3
	note_pitch E_, 3
	musicd8 212
	note_length 3
	note_pitch E_, 3
	musicd8 213
	note_length 3
	note_pitch E_, 3
	musicd8 209
	note_length 3
	note_pitch E_, 3
	musicd8 213
	note_length 3
	note_pitch E_, 3
	musicd8 209
	note_length 3
	note_pitch E_, 3
	song_ret

; unreferenced ?
Music_EliteFourDanger_branch_18e10a: ; 18e10a (63:610a)
	musicd7 253
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch C#, 4
	musicd8 161
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch C#, 4
	musicd7 254
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch C#, 4
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch C#, 4
	musicd7 255
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch C#, 4
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch C#, 4
	musicd7 254
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch C#, 4
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch G#, 2
	duty_cycle_50
	musicd4 55
	musicd8 52
	musicd7 0
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch A_, 2
	song_ret

Music_EliteFourDanger_branch_18e15c: ; 18e15c (63:615c)
	duty_cycle_12_5
	musicd4 55
	musicd8 39
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch F#, 4
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch F#, 4
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch F#, 4
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 4
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 4
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch G_, 4
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch G#, 4
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch G#, 4
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch G#, 4
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch A_, 4
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch A_, 4
	duty_cycle_50
	musicd4 55
	musicd8 52
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch A_, 2
	song_ret

Music_EliteFourDanger_branch_18e1a7: ; 18e1a7 (63:61a7)
	duty_cycle_50
	musicd4 55
	musicd8 52
	note_length 24
	note_pitch A#, 2
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch C_, 3
	note_length 6
	note_pitch A#, 2
	note_length 6
	note_pitch C_, 3
	note_length 24
	note_pitch C#, 3
	note_length 6
	note_pitch F_, 3
	note_length 6
	note_pitch D#, 3
	note_length 6
	note_pitch C#, 3
	note_length 6
	note_pitch D#, 3
	note_length 36
	note_pitch F_, 3
	note_length 12
	note_pitch D#, 3
	note_length 36
	note_pitch G#, 3
	note_length 12
	note_pitch F_, 3
	note_length 24
	note_pitch A#, 2
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch C_, 3
	note_length 6
	note_pitch A#, 2
	note_length 6
	note_pitch C_, 3
	note_length 21
	note_pitch C#, 3
	note_length 3
	rest
	note_length 6
	note_pitch F_, 3
	note_length 6
	note_pitch D#, 3
	note_length 6
	note_pitch C#, 3
	note_length 6
	note_pitch D#, 3
	note_length 45
	note_pitch C#, 3
	note_length 3
	continue_note
	duty_cycle_12_5
	musicd8 162
	musicd4 59
	note_length 6
	note_pitch G#, 3
	note_length 3
	rest
	musicd4 55
	note_length 6
	note_pitch G#, 3
	note_length 3
	rest
	note_length 12
	note_pitch G#, 3
	note_length 6
	rest
	musicd8 52
	note_length 12
	note_pitch F_, 3
	song_ret

; unreferenced ?
Music_EliteFourDanger_branch_18e1fa: ; 18e1fa (63:61fa)
	musicd8 52
	duty_cycle_50
	note_length 18
	note_pitch C_, 2
	note_length 18
	note_pitch A#, 1
	note_length 12
	note_pitch C_, 2
	musicd4 59
	note_length 18
	note_pitch C#, 3
	musicd4 55
	musicd8 52
	note_length 18
	note_pitch C_, 3
	note_length 9
	note_pitch C#, 3
	note_length 3
	continue_note
	note_length 18
	note_pitch C#, 2
	note_length 18
	note_pitch C_, 2
	note_length 12
	note_pitch C#, 2
	duty_cycle_12_5
	musicd8 210
	note_length 3
	note_pitch C_, 2
	musicd8 209
	note_length 3
	note_pitch C_, 2
	musicd8 208
	note_length 3
	note_pitch C_, 2
	musicd8 207
	note_length 3
	note_pitch C_, 2
	musicd8 206
	note_length 3
	note_pitch C_, 2
	musicd8 207
	note_length 3
	note_pitch C_, 2
	musicd8 208
	note_length 3
	note_pitch C_, 2
	musicd8 209
	note_length 3
	note_pitch C_, 2
	musicd8 210
	note_length 3
	note_pitch C_, 2
	musicd8 211
	note_length 3
	note_pitch C_, 2
	musicd8 208
	note_length 3
	note_pitch C_, 2
	musicd8 211
	note_length 3
	note_pitch C_, 2
	musicd8 209
	note_length 3
	note_pitch C_, 2
	musicd8 211
	note_length 3
	note_pitch C_, 2
	musicd8 209
	note_length 3
	note_pitch C_, 2
	musicd8 211
	note_length 3
	note_pitch C_, 2
	musicd8 211
	note_length 3
	note_pitch E_, 2
	musicd8 210
	note_length 3
	note_pitch E_, 2
	musicd8 209
	note_length 3
	note_pitch E_, 2
	musicd8 208
	note_length 3
	note_pitch E_, 2
	musicd8 207
	note_length 3
	note_pitch E_, 2
	musicd8 206
	note_length 3
	note_pitch E_, 2
	musicd8 207
	note_length 3
	note_pitch E_, 2
	musicd8 208
	note_length 3
	note_pitch E_, 2
	musicd8 209
	note_length 3
	note_pitch E_, 2
	musicd8 210
	note_length 3
	note_pitch E_, 2
	musicd8 211
	note_length 3
	note_pitch E_, 2
	musicd8 212
	note_length 3
	note_pitch E_, 2
	musicd8 213
	note_length 3
	note_pitch E_, 2
	musicd8 209
	note_length 3
	note_pitch E_, 2
	musicd8 213
	note_length 3
	note_pitch E_, 2
	musicd8 209
	note_length 3
	note_pitch E_, 2
	song_ret

Music_EliteFourDanger_branch_18e299: ; 18e299 (63:6299)
	musicd8 52
	note_length 45
	note_pitch C#, 2
	note_length 3
	continue_note
	note_length 24
	note_pitch A#, 1
	note_length 18
	note_pitch C#, 2
	note_length 6
	note_pitch D#, 2
	note_length 45
	note_pitch C_, 2
	note_length 3
	continue_note
	note_length 45
	note_pitch E_, 2
	note_length 3
	continue_note
	note_length 45
	note_pitch C#, 3
	note_length 3
	continue_note
	note_length 24
	note_pitch A#, 2
	note_length 18
	note_pitch C#, 3
	note_length 6
	note_pitch D#, 3
	note_length 45
	note_pitch C_, 3
	note_length 3
	continue_note
	note_length 45
	note_pitch E_, 3
	note_length 3
	continue_note
	song_ret

Music_EliteFourDanger_branch_18e2c0: ; 18e2c0 (63:62c0)
	musicd8 52
	note_length 6
	note_pitch F_, 1
	note_length 6
	note_pitch C_, 2
	note_length 6
	note_pitch F_, 2
	note_length 6
	note_pitch F_, 1
	note_length 6
	note_pitch C_, 2
	note_length 6
	note_pitch F_, 2
	note_length 6
	note_pitch F_, 1
	note_length 6
	note_pitch F_, 2
	note_length 6
	note_pitch F#, 1
	note_length 6
	note_pitch C#, 2
	note_length 6
	note_pitch F#, 2
	note_length 6
	note_pitch F#, 1
	note_length 6
	note_pitch C#, 2
	note_length 6
	note_pitch F#, 2
	note_length 6
	note_pitch F#, 1
	note_length 6
	note_pitch F#, 2
	note_length 6
	note_pitch G_, 1
	note_length 6
	note_pitch D_, 2
	note_length 6
	note_pitch G_, 2
	note_length 6
	note_pitch G_, 1
	note_length 6
	note_pitch D_, 2
	note_length 6
	note_pitch G_, 2
	note_length 6
	note_pitch G_, 1
	note_length 6
	note_pitch G_, 2
	musicd8 39
	note_length 6
	note_pitch G#, 2
	note_length 6
	note_pitch G#, 2
	note_length 6
	note_pitch G#, 2
	note_length 6
	note_pitch G#, 2
	note_length 6
	note_pitch G#, 2
	note_length 12
	note_pitch G#, 2
	note_length 6
	continue_note
	note_length 42
	note_pitch C_, 4
	musicd8 52
	note_length 6
	continue_note
	note_length 42
	note_pitch C#, 4
	note_length 6
	continue_note
	note_length 45
	note_pitch D_, 4
	note_length 3
	continue_note
	note_length 24
	note_pitch D#, 4
	note_length 18
	note_pitch D_, 4
	duty_cycle_50
	musicd4 55
	musicd8 52
	musicd7 0
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch A_, 2
	song_ret

Music_EliteFourDanger_Ch3: ; 18e320 (63:6320)
	stereo_panning_both
	musicd7 12
	musicd4 55
	musicd8 27
	wave 67
	song_call Music_EliteFourDanger_branch_18e3c6
Music_EliteFourDanger_branch_18e32c: ; 18e32c (63:632c)
	musicd7 12
	song_call Music_EliteFourDanger_branch_18e426
	song_call Music_EliteFourDanger_branch_18e33d
	song_call Music_EliteFourDanger_branch_18e5c6
	song_call Music_EliteFourDanger_branch_18e651
	song_jump Music_EliteFourDanger_branch_18e32c

Music_EliteFourDanger_branch_18e33d: ; 18e33d (63:633d)
	note_length 6
	note_pitch C_, 1
	note_length 6
	note_pitch G_, 1
	note_length 6
	note_pitch C_, 2
	note_length 6
	note_pitch C_, 1
	note_length 6
	note_pitch D#, 1
	note_length 6
	note_pitch F_, 1
	note_length 6
	note_pitch G_, 1
	note_length 6
	note_pitch A#, 1
	note_length 3
	note_pitch C_, 1
	note_length 3
	note_pitch C_, 1
	note_length 3
	note_pitch C_, 1
	note_length 3
	note_pitch C_, 1
	note_length 6
	note_pitch G_, 1
	note_length 3
	note_pitch C_, 1
	note_length 3
	note_pitch C_, 1
	note_length 3
	note_pitch C_, 1
	note_length 3
	note_pitch C_, 1
	note_length 6
	note_pitch G_, 1
	note_length 6
	note_pitch C_, 1
	note_length 6
	note_pitch G_, 1
	note_length 3
	note_pitch C#, 1
	note_length 3
	note_pitch C#, 1
	note_length 3
	note_pitch C#, 1
	note_length 3
	note_pitch C#, 1
	note_length 6
	note_pitch G#, 1
	note_length 3
	note_pitch C#, 1
	note_length 3
	note_pitch C#, 1
	note_length 3
	note_pitch C#, 1
	note_length 3
	note_pitch C#, 1
	note_length 6
	note_pitch G#, 1
	note_length 6
	note_pitch C#, 1
	note_length 6
	note_pitch G#, 1
	note_length 3
	note_pitch C#, 1
	note_length 3
	note_pitch C#, 1
	note_length 3
	note_pitch C#, 1
	note_length 3
	note_pitch C#, 1
	note_length 6
	note_pitch G#, 1
	note_length 3
	note_pitch C#, 1
	note_length 3
	note_pitch C#, 1
	note_length 3
	note_pitch C#, 1
	note_length 3
	note_pitch C#, 1
	note_length 6
	note_pitch G#, 1
	note_length 6
	note_pitch C#, 1
	note_length 6
	note_pitch G#, 1
	note_length 3
	note_pitch C_, 1
	note_length 3
	note_pitch C_, 1
	note_length 3
	note_pitch C_, 1
	note_length 3
	note_pitch C_, 1
	note_length 6
	note_pitch G_, 1
	note_length 3
	note_pitch C_, 1
	note_length 3
	note_pitch C_, 1
	note_length 3
	note_pitch C_, 1
	note_length 3
	note_pitch C_, 1
	note_length 6
	note_pitch G_, 1
	note_length 6
	note_pitch C_, 1
	note_length 6
	note_pitch G_, 1
	note_length 3
	note_pitch G_, 1
	note_length 3
	note_pitch G_, 1
	note_length 3
	note_pitch G_, 1
	note_length 3
	note_pitch G_, 1
	note_length 6
	note_pitch C_, 1
	note_length 3
	note_pitch G_, 1
	note_length 3
	note_pitch G_, 1
	note_length 3
	note_pitch G_, 1
	note_length 3
	note_pitch G_, 1
	note_length 6
	note_pitch C_, 1
	note_length 6
	note_pitch G_, 1
	note_length 6
	note_pitch C_, 2
	song_ret

Music_EliteFourDanger_branch_18e3c6: ; 18e3c6 (63:63c6)
	musicd7 244
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch F#, 4
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch F#, 4
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch F#, 4
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 4
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 4
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch G_, 4
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch G#, 4
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch G#, 4
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch G#, 4
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch A_, 4
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch A_, 4
	musicd4 55
	musicd8 52
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch A_, 2
	song_ret

; unreferenced ?
Music_EliteFourDanger_branch_18e40d: ; 18e40d (63:640d)
	wave 64
	musicd4 59
	note_length 18
	note_pitch F#, 0
	note_length 6
	continue_note
	musicd4 55
	note_length 18
	note_pitch G_, 0
	note_length 6
	continue_note
	note_length 18
	note_pitch G#, 0
	note_length 6
	continue_note
	note_length 18
	note_pitch A_, 0
	musicd4 61
	note_length 6
	note_pitch A_, 0
	song_ret

Music_EliteFourDanger_branch_18e426: ; 18e426 (63:6426)
	musicd4 55
	wave 63
	note_length 2
	note_pitch D_, 1
	note_length 1
	rest
	note_length 2
	note_pitch D_, 1
	note_length 1
	rest
	note_length 2
	note_pitch D_, 1
	note_length 1
	rest
	note_length 2
	note_pitch D_, 1
	note_length 1
	rest
	note_length 6
	note_pitch G_, 1
	note_length 2
	note_pitch D_, 1
	note_length 1
	rest
	note_length 2
	note_pitch D_, 1
	note_length 1
	rest
	note_length 2
	note_pitch D_, 1
	note_length 1
	rest
	note_length 2
	note_pitch D_, 1
	note_length 1
	rest
	note_length 6
	note_pitch G_, 1
	note_length 6
	note_pitch D_, 1
	note_length 6
	note_pitch G_, 1
	note_length 2
	note_pitch D_, 1
	note_length 1
	rest
	note_length 2
	note_pitch D_, 1
	note_length 1
	rest
	note_length 2
	note_pitch D_, 1
	note_length 1
	rest
	note_length 2
	note_pitch D_, 1
	note_length 1
	rest
	note_length 6
	note_pitch G_, 1
	note_length 2
	note_pitch D_, 1
	note_length 1
	rest
	note_length 2
	note_pitch D_, 1
	note_length 1
	rest
	note_length 2
	note_pitch D_, 1
	note_length 1
	rest
	note_length 2
	note_pitch D_, 1
	note_length 1
	rest
	note_length 6
	note_pitch G_, 1
	note_length 6
	note_pitch D_, 1
	note_length 6
	note_pitch G_, 1
	note_length 2
	note_pitch C#, 1
	note_length 1
	rest
	note_length 2
	note_pitch C#, 1
	note_length 1
	rest
	note_length 2
	note_pitch C#, 1
	note_length 1
	rest
	note_length 2
	note_pitch C#, 1
	note_length 1
	rest
	note_length 6
	note_pitch G#, 1
	note_length 2
	note_pitch C#, 1
	note_length 1
	rest
	note_length 3
	note_pitch C#, 1
	note_length 2
	note_pitch C#, 1
	note_length 1
	rest
	note_length 2
	note_pitch C#, 1
	note_length 1
	rest
	note_length 6
	note_pitch G#, 1
	note_length 6
	note_pitch C#, 1
	note_length 6
	note_pitch G#, 1
	note_length 9
	note_pitch C#, 1
	note_length 9
	note_pitch G#, 1
	note_length 12
	note_pitch C#, 1
	note_length 6
	note_pitch A#, 1
	note_length 6
	note_pitch A_, 1
	note_length 6
	note_pitch G#, 1
	note_length 2
	note_pitch D_, 1
	note_length 1
	rest
	note_length 2
	note_pitch D_, 1
	note_length 1
	rest
	note_length 2
	note_pitch D_, 1
	note_length 1
	rest
	note_length 2
	note_pitch D_, 1
	note_length 1
	rest
	note_length 6
	note_pitch G_, 1
	note_length 2
	note_pitch D_, 1
	note_length 1
	rest
	note_length 2
	note_pitch D_, 1
	note_length 1
	rest
	note_length 2
	note_pitch D_, 1
	note_length 1
	rest
	note_length 2
	note_pitch D_, 1
	note_length 1
	rest
	note_length 6
	note_pitch G_, 1
	note_length 6
	note_pitch D_, 1
	note_length 6
	note_pitch G_, 1
	note_length 2
	note_pitch D_, 1
	note_length 1
	rest
	note_length 2
	note_pitch D_, 1
	note_length 1
	rest
	note_length 2
	note_pitch D_, 1
	note_length 1
	rest
	note_length 2
	note_pitch D_, 1
	note_length 1
	rest
	note_length 6
	note_pitch G_, 1
	note_length 2
	note_pitch D_, 1
	note_length 1
	rest
	note_length 2
	note_pitch D_, 1
	note_length 1
	rest
	note_length 2
	note_pitch D_, 1
	note_length 1
	rest
	note_length 2
	note_pitch D_, 1
	note_length 1
	rest
	note_length 6
	note_pitch G_, 1
	note_length 6
	note_pitch D_, 1
	note_length 6
	note_pitch G_, 1
	note_length 9
	note_pitch C#, 1
	note_length 9
	note_pitch G#, 1
	note_length 9
	note_pitch C#, 2
	note_length 9
	note_pitch G#, 1
	note_length 6
	note_pitch C#, 1
	note_length 6
	note_pitch C_, 1
	note_length 9
	note_pitch C#, 1
	note_length 9
	note_pitch G#, 1
	note_length 12
	note_pitch C#, 1
	note_length 6
	note_pitch A#, 1
	note_length 6
	note_pitch A_, 1
	note_length 6
	note_pitch G#, 1
	song_ret

; unreferenced ?
Music_EliteFourDanger_branch_18e515: ; 18e515 (63:6515)
	note_length 6
	note_pitch C_, 1
	note_length 6
	note_pitch G_, 1
	musicd4 59
	note_length 6
	note_pitch C_, 2
	musicd4 55
	note_length 6
	note_pitch C_, 1
	note_length 6
	note_pitch D#, 1
	note_length 6
	note_pitch F_, 1
	note_length 6
	note_pitch G_, 1
	note_length 6
	note_pitch A#, 1
	note_length 2
	note_pitch C#, 1
	note_length 1
	rest
	note_length 2
	note_pitch C#, 1
	note_length 1
	rest
	note_length 2
	note_pitch C#, 1
	note_length 1
	rest
	note_length 2
	note_pitch C#, 1
	note_length 1
	rest
	note_length 6
	note_pitch G#, 1
	note_length 2
	note_pitch C#, 1
	note_length 1
	rest
	note_length 2
	note_pitch C#, 1
	note_length 1
	rest
	note_length 2
	note_pitch C#, 1
	note_length 1
	rest
	note_length 2
	note_pitch C#, 1
	note_length 1
	rest
	note_length 6
	note_pitch G#, 1
	note_length 6
	note_pitch C#, 1
	note_length 6
	note_pitch G#, 1
	note_length 2
	note_pitch C#, 1
	note_length 1
	rest
	note_length 2
	note_pitch C#, 1
	note_length 1
	rest
	note_length 6
	note_pitch G#, 1
	note_length 2
	note_pitch C#, 1
	note_length 1
	rest
	note_length 2
	note_pitch C#, 1
	note_length 1
	rest
	note_length 6
	note_pitch G#, 1
	musicd4 59
	note_length 6
	note_pitch C#, 1
	musicd4 55
	note_length 6
	note_pitch A#, 1
	note_length 6
	note_pitch A_, 1
	note_length 6
	note_pitch G#, 1
	note_length 2
	note_pitch C_, 1
	note_length 1
	rest
	note_length 2
	note_pitch C_, 1
	note_length 1
	rest
	note_length 2
	note_pitch C_, 1
	note_length 1
	rest
	note_length 2
	note_pitch C_, 1
	note_length 1
	rest
	note_length 6
	note_pitch G_, 1
	note_length 2
	note_pitch C_, 1
	note_length 1
	rest
	note_length 2
	note_pitch C_, 1
	note_length 1
	rest
	note_length 2
	note_pitch C_, 1
	note_length 1
	rest
	note_length 2
	note_pitch C_, 1
	note_length 1
	rest
	note_length 6
	note_pitch G_, 1
	note_length 6
	note_pitch C_, 1
	note_length 6
	note_pitch G_, 1
	note_length 2
	note_pitch G_, 1
	note_length 1
	rest
	note_length 2
	note_pitch G_, 1
	note_length 1
	rest
	note_length 2
	note_pitch G_, 1
	note_length 1
	rest
	note_length 2
	note_pitch G_, 1
	note_length 1
	rest
	note_length 6
	note_pitch C_, 1
	note_length 2
	note_pitch G_, 1
	note_length 1
	rest
	note_length 2
	note_pitch G_, 1
	note_length 1
	rest
	note_length 2
	note_pitch G_, 1
	note_length 1
	rest
	note_length 2
	note_pitch G_, 1
	note_length 1
	rest
	musicd4 59
	note_length 6
	note_pitch C_, 1
	musicd4 55
	note_length 6
	note_pitch G_, 1
	note_length 6
	note_pitch C_, 2
	song_ret

Music_EliteFourDanger_branch_18e5c6: ; 18e5c6 (63:65c6)
	note_length 12
	note_pitch C#, 1
	note_length 3
	note_pitch C#, 1
	note_length 3
	rest
	note_length 12
	note_pitch G#, 1
	note_length 6
	note_pitch C#, 2
	note_length 6
	note_pitch G#, 1
	note_length 6
	note_pitch C#, 1
	note_length 6
	note_pitch A#, 0
	note_length 6
	note_pitch F_, 1
	note_length 6
	note_pitch A#, 0
	note_length 6
	note_pitch F_, 1
	note_length 6
	note_pitch A#, 0
	note_length 6
	note_pitch F_, 1
	note_length 6
	note_pitch A#, 0
	note_length 6
	note_pitch F_, 1
	note_length 6
	note_pitch C_, 2
	note_length 3
	rest
	note_pitch C_, 2
	note_length 3
	note_pitch C_, 1
	note_length 3
	rest
	note_length 12
	note_pitch C_, 1
	note_length 6
	note_pitch C_, 2
	note_length 6
	note_pitch G_, 1
	note_length 6
	note_pitch C_, 1
	note_length 6
	note_pitch C_, 1
	note_length 6
	note_pitch G_, 1
	note_length 6
	note_pitch C_, 2
	note_length 6
	note_pitch C_, 1
	note_length 6
	note_pitch G_, 1
	note_length 6
	note_pitch C_, 2
	note_length 6
	note_pitch C_, 1
	note_length 6
	note_pitch C_, 2
	note_length 12
	note_pitch C#, 1
	note_length 3
	note_pitch C#, 1
	note_length 3
	rest
	note_length 12
	note_pitch G#, 1
	note_length 6
	note_pitch C#, 2
	note_length 6
	note_pitch G#, 1
	note_length 6
	note_pitch C#, 1
	note_length 6
	note_pitch A#, 0
	musicd4 59
	note_length 6
	note_pitch F_, 1
	musicd4 55
	note_length 6
	note_pitch A#, 0
	note_length 6
	note_pitch F_, 1
	note_length 6
	note_pitch A#, 0
	note_length 6
	note_pitch F_, 1
	note_length 6
	note_pitch A#, 0
	note_length 6
	note_pitch F_, 1
	note_length 6
	note_pitch C_, 2
	note_length 3
	rest
	note_pitch C_, 2
	note_length 3
	note_pitch C_, 1
	note_length 3
	rest
	note_length 12
	note_pitch C_, 1
	note_length 6
	note_pitch C_, 2
	note_length 6
	note_pitch G_, 1
	note_length 6
	note_pitch C_, 1
	note_length 6
	note_pitch C_, 1
	musicd4 59
	note_length 6
	note_pitch G_, 1
	musicd4 55
	note_length 6
	note_pitch C_, 2
	note_length 6
	note_pitch C_, 1
	note_length 6
	note_pitch C_, 2
	musicd4 59
	note_length 6
	note_pitch G_, 1
	musicd4 55
	note_length 6
	note_pitch G_, 2
	note_length 6
	note_pitch C_, 2
	song_ret

Music_EliteFourDanger_branch_18e651: ; 18e651 (63:6651)
	note_length 2
	note_pitch C_, 1
	note_length 1
	rest
	note_length 2
	note_pitch C_, 1
	note_length 1
	rest
	note_length 2
	note_pitch C_, 1
	note_length 1
	rest
	note_length 2
	note_pitch C_, 1
	note_length 1
	rest
	note_length 6
	note_pitch F_, 1
	note_length 3
	note_pitch C_, 1
	note_length 3
	note_pitch F_, 0
	note_length 6
	note_pitch C_, 0
	note_length 6
	note_pitch C_, 1
	note_length 6
	note_pitch F_, 0
	note_length 6
	note_pitch C_, 1
	note_length 2
	note_pitch C#, 1
	note_length 1
	rest
	note_length 2
	note_pitch C#, 1
	note_length 1
	rest
	note_length 2
	note_pitch C#, 1
	note_length 1
	rest
	note_length 2
	note_pitch C#, 1
	note_length 1
	rest
	note_length 6
	note_pitch F#, 1
	note_length 2
	note_pitch C#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 0
	note_length 1
	rest
	note_length 6
	note_pitch C#, 0
	note_length 6
	note_pitch C#, 1
	note_length 6
	note_pitch F#, 0
	note_length 6
	note_pitch C#, 1
	musicd8 27
	note_length 2
	note_pitch D_, 1
	note_length 1
	rest
	note_length 2
	note_pitch D_, 1
	note_length 1
	rest
	note_length 2
	note_pitch D_, 1
	note_length 1
	rest
	note_length 2
	note_pitch D_, 1
	note_length 1
	rest
	note_length 6
	note_pitch G_, 1
	note_length 2
	note_pitch D_, 1
	note_length 1
	rest
	note_length 2
	note_pitch G_, 0
	note_length 1
	rest
	note_length 6
	note_pitch D_, 0
	note_length 6
	note_pitch D_, 1
	note_length 6
	note_pitch G_, 0
	note_length 6
	note_pitch D_, 1
	note_length 2
	note_pitch D#, 1
	note_length 1
	rest
	note_length 2
	note_pitch D#, 1
	note_length 1
	rest
	note_length 2
	note_pitch D#, 1
	note_length 1
	rest
	note_length 2
	note_pitch D#, 1
	note_length 1
	rest
	note_length 6
	note_pitch G#, 1
	note_length 3
	note_pitch D#, 1
	note_length 3
	note_pitch G#, 0
	note_length 6
	note_pitch D#, 0
	note_length 6
	note_pitch D#, 1
	note_length 6
	note_pitch G#, 0
	note_length 6
	note_pitch D#, 1
	note_length 2
	note_pitch C_, 2
	note_length 1
	rest
	note_length 2
	note_pitch C_, 2
	note_length 1
	rest
	note_length 2
	note_pitch C_, 2
	note_length 1
	rest
	note_length 2
	note_pitch C_, 2
	note_length 1
	rest
	note_length 6
	note_pitch F_, 2
	note_length 2
	note_pitch C_, 2
	note_length 1
	rest
	note_length 2
	note_pitch F_, 1
	note_length 1
	rest
	note_length 6
	note_pitch C_, 1
	note_length 6
	note_pitch C_, 2
	note_length 6
	note_pitch F_, 1
	note_length 6
	note_pitch C_, 2
	note_length 2
	note_pitch C#, 2
	note_length 1
	rest
	note_length 2
	note_pitch C#, 2
	note_length 1
	rest
	note_length 2
	note_pitch C#, 2
	note_length 1
	rest
	note_length 2
	note_pitch C#, 2
	note_length 1
	rest
	note_length 6
	note_pitch F#, 2
	note_length 2
	note_pitch C#, 2
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 6
	note_pitch C#, 1
	note_length 6
	note_pitch C#, 2
	note_length 6
	note_pitch F#, 1
	note_length 6
	note_pitch C#, 2
	note_length 2
	note_pitch D_, 2
	note_length 1
	rest
	note_length 2
	note_pitch D_, 2
	note_length 1
	rest
	note_length 2
	note_pitch D_, 2
	note_length 1
	rest
	note_length 2
	note_pitch D_, 2
	note_length 1
	rest
	note_length 6
	note_pitch G_, 2
	note_length 2
	note_pitch D_, 2
	note_length 1
	rest
	note_length 2
	note_pitch G_, 1
	note_length 1
	rest
	note_length 6
	note_pitch D_, 1
	note_length 6
	note_pitch D_, 2
	note_length 6
	note_pitch G_, 1
	note_length 6
	note_pitch D_, 2
	note_length 24
	note_pitch D#, 1
	note_length 21
	note_pitch D_, 1
	note_length 3
	continue_note
	song_ret

Music_EliteFourDanger_Ch4: ; 18e740 (63:6740)
	stereo_panning_both
	song_call Music_EliteFourDanger_branch_18e812
Music_EliteFourDanger_branch_18e744: ; 18e744 (63:6744)
	song_call Music_EliteFourDanger_branch_18e843
	song_call Music_EliteFourDanger_branch_18e753
	song_call Music_EliteFourDanger_branch_18e9e1
	song_call Music_EliteFourDanger_branch_18eae2
	song_jump Music_EliteFourDanger_branch_18e744

Music_EliteFourDanger_branch_18e753: ; 18e753 (63:6753)
	note_length 6
	noise 16
	note_length 3
	noise 11
	note_length 3
	noise 3
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
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 11
	song_ret

Music_EliteFourDanger_branch_18e812: ; 18e812 (63:6812)
	note_length 6
	noise 16
	note_length 6
	noise 10
	note_length 6
	noise 18
	note_length 6
	noise 10
	note_length 3
	noise 10
	note_length 3
	noise 10
	note_length 3
	noise 18
	note_length 3
	noise 10
	note_length 3
	noise 10
	note_length 3
	noise 10
	note_length 3
	noise 18
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 6
	noise 17
	note_length 6
	noise 17
	note_length 6
	noise 18
	note_length 3
	noise 17
	note_length 3
	noise 18
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
	note_length 3
	noise 18
	song_ret

Music_EliteFourDanger_branch_18e843: ; 18e843 (63:6843)
	note_length 3
	noise 16
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
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
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
	note_length 6
	noise 16
	note_length 3
	noise 11
	note_length 3
	noise 3
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
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
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
	song_ret

; unreferenced ?
Music_EliteFourDanger_branch_18e942: ; 18e942 (63:6942)
	note_length 6
	noise 16
	note_length 3
	noise 11
	note_length 3
	noise 3
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
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 18
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

Music_EliteFourDanger_branch_18e9e1: ; 18e9e1 (63:69e1)
	note_length 3
	noise 12
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
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 16
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
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 18
	note_length 3
	noise 18
	song_ret

Music_EliteFourDanger_branch_18eae2: ; 18eae2 (63:6ae2)
	note_length 6
	noise 16
	note_length 3
	noise 3
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
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 17
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
	noise 11
	note_length 3
	noise 3
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
	noise 3
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
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 16
	note_length 3
	continue_note
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 3
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
	noise 16
	note_length 3
	noise 11
	note_length 3
	noise 3
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
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 17
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
	noise 11
	note_length 3
	noise 3
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
	noise 3
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
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 16
	note_length 6
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 17
	song_ret
