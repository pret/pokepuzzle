Music_RoundCleared: ; 187940 (61:7940)
	dw Music_RoundCleared_Ch1
	dw Music_RoundCleared_Ch2
	dw Music_RoundCleared_Ch3
	dw Music_RoundCleared_Ch4

Music_RoundCleared_Ch1: ; 187948 (61:7948)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	musicd6 16
	musicd7 0
	duty_cycle_12_5
	musice3 2
	musicd8 221
	song_call Music_RoundCleared_branch_187963
	note_length 24
	rest
Music_RoundCleared_branch_18795b: ; 18795b (61:795b)
	musicd6 15
	song_call Music_RoundCleared_branch_187996
	song_jump Music_RoundCleared_branch_18795b

Music_RoundCleared_branch_187963: ; 187963 (61:7963)
	duty_cycle_12_5
	musicd8 179
	musicd4 55
	musicd7 0
	note_length 3
	note_pitch B_, 1
	note_length 3
	note_pitch B_, 1
	note_length 3
	rest
	note_pitch C_, 2
	note_length 6
	rest
	note_length 9
	note_pitch D_, 2
	musicd8 36
	note_length 3
	rest
	note_pitch D_, 2
	note_length 3
	rest
	note_pitch D_, 4
	note_length 3
	note_pitch C_, 4
	note_length 6
	note_pitch B_, 3
	note_length 3
	note_pitch C_, 4
	note_length 3
	note_pitch B_, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	musicd8 239
	note_length 21
	note_pitch G_, 4
	note_length 6
	rest
	song_ret

Music_RoundCleared_branch_187996: ; 187996 (61:7996)
	duty_cycle_12_5
	musicd7 0
	musicd4 55
	musicd8 34
	note_length 3
	note_pitch B_, 2
	note_length 3
	rest
	note_pitch C_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 9
	rest
	note_length 3
	note_pitch C_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch E_, 3
	note_length 9
	rest
	note_length 3
	note_pitch G_, 3
	note_length 6
	rest
	note_length 3
	note_pitch D_, 3
	note_length 6
	rest
	note_length 3
	note_pitch G_, 2
	note_length 9
	rest
	note_length 6
	note_pitch A_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch F#, 3
	note_length 3
	rest
	note_pitch B_, 2
	note_length 3
	rest
	note_pitch C_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 9
	rest
	note_length 3
	note_pitch C_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch E_, 3
	note_length 9
	rest
	note_length 3
	note_pitch G_, 3
	note_length 6
	rest
	note_length 3
	note_pitch D_, 3
	note_length 6
	rest
	note_length 3
	note_pitch G_, 3
	note_length 9
	rest
	note_length 3
	note_pitch F#, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch A_, 3
	note_length 3
	rest
	note_pitch E_, 4
	note_length 3
	rest
	note_pitch D_, 4
	note_length 3
	rest
	note_pitch C_, 4
	note_length 9
	rest
	note_length 3
	note_pitch B_, 3
	note_length 9
	rest
	note_length 3
	note_pitch A_, 3
	note_length 3
	rest
	note_pitch B_, 3
	note_length 3
	rest
	note_pitch C_, 4
	note_length 9
	rest
	note_length 12
	note_pitch D_, 4
	note_length 3
	note_pitch C_, 4
	note_length 3
	rest
	note_pitch B_, 3
	note_length 3
	rest
	note_length 6
	note_pitch A_, 3
	note_length 6
	rest
	note_length 3
	note_pitch F#, 3
	note_length 3
	rest
	note_pitch A_, 3
	note_length 3
	rest
	note_length 6
	note_pitch A#, 5
	note_length 3
	note_pitch F#, 3
	note_length 3
	rest
	note_length 9
	note_pitch B_, 3
	note_length 3
	rest
	note_length 6
	note_pitch A#, 5
	note_length 6
	note_pitch C_, 4
	note_length 6
	rest
	note_length 3
	note_pitch A#, 5
	note_length 3
	rest
	note_length 6
	note_pitch A#, 5
	note_length 6
	rest
	note_length 12
	note_pitch E_, 4
	note_length 6
	note_pitch A#, 5
	note_length 6
	rest
	song_ret

Music_RoundCleared_Ch2: ; 187a39 (61:7a39)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	duty_cycle_50
	musicd4 55
	song_call Music_RoundCleared_branch_187a4c
	note_length 24
	rest
Music_RoundCleared_branch_187a46: ; 187a46 (61:7a46)
	song_call Music_RoundCleared_branch_187a72
	song_jump Music_RoundCleared_branch_187a46

Music_RoundCleared_branch_187a4c: ; 187a4c (61:7a4c)
	musicd7 0
	duty_cycle_50
	musicd8 175
	musicd4 55
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch D_, 2
	note_length 3
	rest
	note_pitch E_, 2
	note_length 6
	rest
	note_length 9
	note_pitch F#, 2
	note_length 3
	rest
	note_pitch F#, 2
	note_length 3
	rest
	note_length 12
	note_pitch G_, 2
	note_length 12
	continue_note
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch D_, 3
	musicd8 46
	note_length 27
	note_pitch D_, 4
	song_ret

Music_RoundCleared_branch_187a72: ; 187a72 (61:7a72)
	duty_cycle_50
	musicd7 0
	musicd4 55
	musicd8 36
	note_length 3
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch A_, 2
	note_length 3
	rest
	note_pitch B_, 2
	note_length 9
	rest
	note_length 3
	note_pitch A_, 2
	note_length 3
	rest
	note_pitch B_, 2
	note_length 3
	rest
	note_pitch C_, 3
	note_length 9
	rest
	duty_cycle_12_5
	note_length 3
	note_pitch G_, 3
	note_length 6
	continue_note
	note_length 3
	note_pitch D_, 3
	note_length 6
	continue_note
	note_length 3
	note_pitch G_, 2
	note_length 9
	continue_note
	duty_cycle_50
	musicd4 59
	musicd8 166
	note_length 6
	note_pitch F#, 3
	musicd4 55
	note_length 3
	note_pitch E_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	rest
	musicd8 36
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch A_, 2
	note_length 3
	rest
	note_pitch B_, 2
	note_length 9
	rest
	note_length 3
	note_pitch A_, 2
	note_length 3
	rest
	note_pitch B_, 2
	note_length 3
	rest
	note_pitch C_, 3
	note_length 9
	rest
	duty_cycle_12_5
	note_length 3
	note_pitch G_, 3
	note_length 6
	continue_note
	note_length 3
	note_pitch D_, 3
	note_length 6
	continue_note
	note_length 3
	note_pitch G_, 3
	note_length 9
	continue_note
	duty_cycle_50
	musicd8 166
	musicd4 59
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	musicd4 55
	note_pitch E_, 3
	note_length 3
	rest
	note_pitch F#, 3
	note_length 3
	rest
	musicd8 36
	note_pitch C_, 4
	note_length 3
	continue_note
	note_pitch B_, 3
	note_length 3
	rest
	note_pitch A_, 3
	note_length 9
	rest
	note_pitch G_, 3
	note_length 3
	continue_note
	note_pitch F#, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch A_, 3
	note_length 9
	rest
	musicd4 59
	note_length 12
	note_pitch B_, 3
	musicd4 55
	note_length 3
	note_pitch A_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_length 6
	note_pitch F#, 3
	note_length 6
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch F#, 3
	note_length 9
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 9
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch A_, 3
	note_length 3
	rest
	note_length 6
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch B_, 3
	note_length 9
	rest
	duty_cycle_12_5
	note_length 3
	note_pitch C_, 5
	note_length 3
	note_pitch B_, 4
	note_length 6
	note_pitch A_, 4
	note_length 3
	note_pitch B_, 4
	note_length 3
	note_pitch A_, 4
	note_length 6
	note_pitch G_, 4
	song_ret

Music_RoundCleared_Ch3: ; 187b31 (61:7b31)
	stereo_panning_both
	musice3 0
	musicd8 27
	musicd7 12
	musicd4 56
	song_call Music_RoundCleared_branch_187b45
	note_length 24
	rest
Music_RoundCleared_branch_187b3f: ; 187b3f (61:7b3f)
	song_call Music_RoundCleared_branch_187b5c
	song_jump Music_RoundCleared_branch_187b3f

Music_RoundCleared_branch_187b45: ; 187b45 (61:7b45)
	note_length 3
	note_pitch D_, 1
	note_length 3
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch E_, 1
	note_length 6
	rest
	note_length 9
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_length 12
	note_pitch G_, 1
	note_length 42
	continue_note
	note_length 6
	rest
	song_ret

Music_RoundCleared_branch_187b5c: ; 187b5c (61:7b5c)
	musicd7 12
	wave 64
	note_length 3
	note_pitch G_, 0
	note_length 9
	rest
	note_length 3
	note_pitch G_, 1
	note_length 9
	rest
	note_length 3
	note_pitch G_, 0
	note_length 6
	rest
	note_length 3
	note_pitch G_, 1
	note_length 6
	rest
	note_length 3
	note_pitch D_, 1
	note_length 3
	rest
	note_length 6
	note_pitch C_, 1
	note_length 3
	note_pitch G_, 1
	note_length 3
	rest
	note_pitch C_, 2
	note_length 9
	rest
	note_length 3
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch D_, 2
	note_length 9
	rest
	note_length 3
	note_pitch A_, 1
	note_length 3
	rest
	note_pitch G_, 0
	note_length 9
	rest
	note_length 3
	note_pitch G_, 1
	note_length 9
	rest
	note_length 3
	note_pitch G_, 0
	note_length 6
	rest
	note_length 3
	note_pitch G_, 1
	note_length 6
	rest
	note_length 3
	note_pitch D_, 1
	note_length 3
	rest
	note_length 6
	note_pitch C_, 1
	note_length 3
	note_pitch G_, 1
	note_length 3
	rest
	note_pitch C_, 2
	note_length 9
	rest
	note_length 3
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch D_, 2
	note_length 9
	rest
	note_length 3
	note_pitch A_, 1
	note_length 3
	rest
	note_pitch C_, 2
	note_length 9
	rest
	note_length 6
	note_pitch C_, 2
	note_length 6
	rest
	note_length 3
	note_pitch B_, 1
	note_length 9
	rest
	note_length 6
	note_pitch B_, 1
	note_length 6
	rest
	note_length 3
	note_pitch A_, 1
	note_length 9
	rest
	note_length 6
	note_pitch A_, 1
	note_length 6
	rest
	note_length 3
	note_pitch G_, 1
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	rest
	note_length 12
	note_pitch G_, 1
	note_length 3
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch F#, 1
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
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch A_, 1
	note_length 3
	rest
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch B_, 1
	note_length 3
	rest
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch C_, 2
	note_length 3
	rest
	note_pitch D_, 1
	note_length 3
	rest
	note_length 12
	note_pitch B_, 1
	song_ret

Music_RoundCleared_Ch4: ; 187bfd (61:7bfd)
	stereo_panning_both
	musicd6 16
	song_call Music_RoundCleared_branch_187c0b
	note_length 24
	rest
Music_RoundCleared_branch_187c05: ; 187c05 (61:7c05)
	song_call Music_RoundCleared_branch_187c22
	song_jump Music_RoundCleared_branch_187c05

Music_RoundCleared_branch_187c0b: ; 187c0b (61:7c0b)
	note_length 3
	noise 18
	note_length 3
	noise 18
	note_length 3
	continue_note
	noise 18
	note_length 6
	continue_note
	note_length 9
	noise 18
	note_length 3
	continue_note
	noise 18
	note_length 3
	continue_note
	note_length 12
	noise 16
	note_length 12
	continue_note
	note_length 36
	continue_note
	song_ret

Music_RoundCleared_branch_187c22: ; 187c22 (61:7c22)
	note_length 6
	noise 11
	note_length 6
	continue_note
	noise 11
	note_length 6
	noise 11
	note_length 6
	continue_note
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 6
	noise 11
	note_length 6
	noise 11
	note_length 6
	continue_note
	noise 11
	note_length 6
	noise 11
	note_length 6
	continue_note
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 6
	noise 11
	note_length 6
	noise 11
	note_length 6
	continue_note
	noise 11
	note_length 6
	noise 11
	note_length 6
	continue_note
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 6
	noise 11
	note_length 6
	noise 11
	note_length 6
	continue_note
	noise 11
	note_length 6
	noise 11
	note_length 6
	continue_note
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 6
	noise 11
	note_length 6
	noise 11
	note_length 6
	continue_note
	noise 11
	note_length 6
	noise 11
	note_length 6
	continue_note
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 6
	noise 11
	note_length 6
	noise 11
	note_length 6
	continue_note
	noise 11
	note_length 6
	noise 11
	note_length 6
	continue_note
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 6
	noise 11
	note_length 6
	noise 3
	note_length 6
	noise 11
	note_length 6
	noise 16
	note_length 6
	noise 11
	note_length 6
	noise 3
	note_length 6
	noise 11
	note_length 6
	noise 16
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 11
	note_length 6
	noise 16
	note_length 6
	noise 11
	note_length 6
	noise 3
	note_length 6
	noise 11
	note_length 6
	noise 16
	note_length 6
	noise 3
	song_ret
