Music_HereComesLance: ; 18ebd0 (63:6bd0)
	dw Music_HereComesLance_Ch1
	dw Music_HereComesLance_Ch2
	dw Music_HereComesLance_Ch3
	dw Music_HereComesLance_Ch4

Music_HereComesLance_Ch1: ; 18ebd8 (63:6bd8)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	musicd6 13
	duty_cycle_12_5
	musice3 0
	musicd4 55
Music_HereComesLance_branch_18ebe4: ; 18ebe4 (63:6be4)
	song_call Music_HereComesLance_branch_18ebea
	song_jump Music_HereComesLance_branch_18ebe4

Music_HereComesLance_branch_18ebea: ; 18ebea (63:6bea)
	musicd8 36
	note_length 3
	note_pitch C_, 0
	note_length 3
	note_pitch D#, 0
	note_length 3
	note_pitch F#, 0
	note_length 3
	note_pitch A_, 0
	note_length 3
	note_pitch C#, 1
	note_length 3
	note_pitch D#, 1
	note_length 3
	note_pitch F#, 1
	note_length 3
	note_pitch A_, 1
	note_length 3
	note_pitch C_, 2
	note_length 3
	note_pitch D#, 2
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch D#, 2
	musicd8 39
	note_length 3
	note_pitch D#, 0
	note_length 3
	note_pitch F#, 0
	note_length 3
	note_pitch A_, 0
	note_length 3
	note_pitch C#, 1
	note_length 3
	note_pitch D#, 1
	note_length 3
	note_pitch F#, 1
	note_length 3
	note_pitch A_, 1
	note_length 3
	note_pitch C_, 2
	note_length 3
	note_pitch D#, 2
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch D#, 3
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch F#, 2
	musicd8 36
	note_length 3
	note_pitch C#, 0
	note_length 3
	note_pitch E_, 0
	note_length 3
	note_pitch G_, 0
	note_length 3
	note_pitch A#, 0
	note_length 3
	note_pitch C#, 1
	note_length 3
	note_pitch E_, 1
	note_length 3
	note_pitch G_, 1
	note_length 3
	note_pitch A#, 1
	note_length 3
	note_pitch C#, 2
	note_length 3
	note_pitch E_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch A#, 2
	note_length 3
	note_pitch C#, 3
	note_length 3
	note_pitch A#, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch E_, 2
	musicd8 131
	note_length 3
	note_pitch E_, 0
	note_length 3
	note_pitch G_, 0
	note_length 3
	note_pitch A#, 0
	note_length 3
	note_pitch C#, 1
	note_length 3
	note_pitch E_, 1
	note_length 3
	note_pitch G_, 1
	musicd8 130
	note_length 3
	note_pitch A#, 1
	note_length 3
	note_pitch C#, 2
	note_length 3
	note_pitch E_, 2
	note_length 3
	note_pitch G_, 2
	musicd8 129
	note_length 3
	note_pitch A#, 2
	note_length 3
	note_pitch C#, 3
	note_length 3
	note_pitch E_, 3
	note_length 3
	note_pitch C#, 3
	note_length 3
	note_pitch A#, 2
	note_length 3
	note_pitch G_, 2
	song_ret

Music_HereComesLance_Ch2: ; 18ec77 (63:6c77)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	musicd4 55
Music_HereComesLance_branch_18ec7e: ; 18ec7e (63:6c7e)
	song_call Music_HereComesLance_branch_18ec84
	song_jump Music_HereComesLance_branch_18ec7e

Music_HereComesLance_branch_18ec84: ; 18ec84 (63:6c84)
	duty_cycle_50
	musicd8 123
	note_length 45
	note_pitch D_, 4
	note_length 3
	continue_note
	note_length 45
	note_pitch A_, 3
	note_length 3
	continue_note
	note_length 45
	note_pitch E_, 4
	note_length 3
	continue_note
	note_length 36
	note_pitch A#, 3
	note_length 12
	continue_note
	song_ret

Music_HereComesLance_Ch3: ; 18ec98 (63:6c98)
	stereo_panning_both
	musicd4 35
	wave 65
	musicd8 27
Music_HereComesLance_branch_18ec9f: ; 18ec9f (63:6c9f)
	song_call Music_HereComesLance_branch_18eca5
	song_jump Music_HereComesLance_branch_18ec9f

Music_HereComesLance_branch_18eca5: ; 18eca5 (63:6ca5)
	wave 66
	musicd4 59
	note_length 45
	note_pitch F#, 3
	note_length 3
	continue_note
	wave 67
	musicd4 56
	note_length 45
	note_pitch C_, 3
	note_length 3
	continue_note
	wave 66
	musicd4 59
	note_length 45
	note_pitch G_, 3
	note_length 3
	continue_note
	wave 63
	musicd4 56
	note_length 36
	note_pitch E_, 3
	note_length 12
	continue_note
	song_ret

Music_HereComesLance_Ch4: ; 18ecc6 (63:6cc6)
	stereo_panning_both
Music_HereComesLance_branch_18ecc7: ; 18ecc7 (63:6cc7)
	song_call Music_HereComesLance_branch_18eccd
	song_jump Music_HereComesLance_branch_18ecc7

Music_HereComesLance_branch_18eccd: ; 18eccd (63:6ccd)
	note_length 3
	noise 16
	note_length 6
	rest
	note_length 3
	noise 16
	note_length 6
	rest
	note_length 3
	noise 16
	note_length 3
	rest
	noise 11
	note_length 3
	rest
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	rest
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 16
	note_length 6
	rest
	note_length 3
	noise 16
	note_length 6
	rest
	note_length 3
	noise 16
	note_length 6
	rest
	note_length 3
	noise 16
	note_length 6
	rest
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 16
	note_length 6
	rest
	note_length 3
	noise 16
	note_length 6
	rest
	note_length 3
	noise 16
	note_length 3
	rest
	noise 17
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 18
	note_length 3
	noise 16
	note_length 3
	rest
	noise 16
	note_length 6
	rest
	note_length 3
	noise 16
	note_length 6
	rest
	note_length 3
	noise 16
	note_length 3
	rest
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 17
	note_length 3
	noise 18
	note_length 3
	rest
	noise 18
	note_length 3
	noise 18
	song_ret
