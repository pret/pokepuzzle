Music_MahoganyGym: ; 188000 (62:4000)
	dw Music_MahoganyGym_Ch1
	dw Music_MahoganyGym_Ch2
	dw Music_MahoganyGym_Ch3
	dw Music_MahoganyGym_Ch4

Music_MahoganyGym_Ch1: ; 188008 (62:4008)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	musicd6 14
	musicd7 0
	duty_cycle_75
	musicd4 55
	musicd8 36
	note_length 30
	rest
	note_length 6
	note_pitch C_, 2
	note_length 6
	note_pitch D_, 2
	note_length 6
	note_pitch E_, 2
Music_MahoganyGym_branch_18801e: ; 18801e (62:401e)
	song_call Music_MahoganyGym_branch_18802d
	song_call Music_MahoganyGym_branch_1880a2
	song_call Music_MahoganyGym_branch_18802d
	song_call Music_MahoganyGym_branch_1880b2
	song_jump Music_MahoganyGym_branch_18801e

Music_MahoganyGym_branch_18802d: ; 18802d (62:402d)
	duty_cycle_12_5
	musicd4 55
	musicd8 36
	note_length 12
	note_pitch F_, 2
	note_length 6
	rest
	note_length 9
	note_pitch F_, 2
	note_length 3
	rest
	note_pitch A#, 2
	note_length 3
	rest
	note_pitch A_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	note_length 12
	note_pitch A_, 2
	note_length 6
	rest
	note_length 3
	note_pitch F_, 2
	note_length 3
	rest
	note_length 6
	note_pitch D_, 2
	note_length 3
	note_pitch F_, 3
	note_length 3
	rest
	note_pitch E_, 3
	note_length 9
	note_pitch F_, 3
	note_length 12
	note_pitch G_, 2
	note_length 6
	rest
	note_length 9
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch A_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch F_, 2
	note_length 3
	rest
	note_length 12
	note_pitch G_, 2
	note_length 6
	rest
	note_length 3
	note_pitch E_, 2
	note_length 3
	rest
	note_length 6
	note_pitch C_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 9
	note_pitch E_, 3
	note_length 48
	rest
	note_length 30
	rest
	note_length 3
	note_pitch F_, 3
	note_length 3
	rest
	note_pitch E_, 3
	note_length 9
	note_pitch F_, 3
	note_length 48
	continue_note
	note_length 48
	rest
	note_length 18
	note_pitch A#, 1
	note_length 18
	note_pitch D_, 2
	note_length 6
	note_pitch A#, 2
	note_length 6
	rest
	note_length 18
	note_pitch A_, 2
	note_length 3
	note_pitch F_, 2
	note_length 3
	rest
	note_length 12
	note_pitch D_, 2
	note_length 12
	rest
	note_length 18
	note_pitch A#, 1
	note_length 15
	note_pitch C#, 2
	note_length 3
	rest
	note_length 6
	note_pitch C#, 2
	note_length 6
	rest
	song_ret

Music_MahoganyGym_branch_1880a2: ; 1880a2 (62:40a2)
	note_length 48
	note_pitch C_, 2
	note_length 3
	note_pitch C_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch A_, 2
	note_length 3
	rest
	note_pitch C_, 3
	note_length 27
	rest
	song_ret

Music_MahoganyGym_branch_1880b2: ; 1880b2 (62:40b2)
	note_length 12
	note_pitch C_, 2
	note_length 12
	rest
	note_pitch G_, 1
	note_length 12
	note_pitch A_, 1
	note_length 3
	note_pitch A#, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch F_, 3
	note_length 3
	note_pitch A#, 3
	note_length 3
	note_pitch A#, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch F_, 3
	note_length 3
	note_pitch A#, 3
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
	note_pitch E_, 3
	note_length 3
	rest
	note_length 9
	note_pitch F_, 3
	note_length 3
	note_pitch E_, 3
	note_length 6
	rest
	note_pitch D_, 3
	note_length 24
	rest
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch A#, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch F_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch A#, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch F_, 2
	note_length 3
	note_pitch E_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 2
	note_length 3
	note_pitch E_, 2
	note_length 3
	note_pitch E_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 2
	note_length 3
	note_pitch E_, 2
	musicd8 36
	note_length 6
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 6
	rest
	note_length 3
	note_pitch A_, 2
	note_length 3
	rest
	note_length 6
	note_pitch F_, 1
	note_length 3
	rest
	note_pitch E_, 1
	note_length 6
	rest
	note_length 3
	note_pitch F_, 1
	note_length 3
	rest
	note_pitch D_, 2
	musicd8 224
	note_length 3
	note_pitch F_, 2
	note_length 3
	note_pitch A#, 2
	note_length 3
	note_pitch A#, 1
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch F_, 2
	note_length 3
	note_pitch A#, 2
	note_length 3
	note_pitch A#, 1
	note_length 3
	note_pitch E_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch C_, 2
	note_length 3
	note_pitch E_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch C_, 2
	musicd8 36
	note_length 6
	note_pitch E_, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	rest
	note_pitch A_, 3
	note_length 3
	rest
	note_pitch F#, 3
	note_length 9
	rest
	note_length 3
	note_pitch F#, 2
	note_length 3
	rest
	note_pitch F#, 2
	note_length 3
	note_pitch F#, 2
	note_length 6
	rest
	musicd8 221
	note_length 3
	note_pitch A#, 1
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch F_, 2
	note_length 3
	note_pitch G_, 1
	musicd8 223
	note_length 3
	note_pitch A#, 1
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch F_, 2
	note_length 3
	note_pitch G_, 1
	musicd8 224
	note_length 3
	note_pitch A#, 1
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch F_, 2
	note_length 3
	note_pitch G_, 1
	musicd8 226
	note_length 3
	note_pitch A#, 1
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch A#, 1
	note_length 3
	note_pitch G_, 1
	musicd8 36
	note_length 30
	rest
	note_length 3
	note_pitch G_, 1
	note_length 6
	rest
	note_pitch G_, 1
	note_length 3
	rest
	note_length 6
	note_pitch F_, 1
	note_length 3
	rest
	note_pitch E_, 1
	note_length 6
	rest
	note_pitch F_, 1
	note_length 24
	rest
	note_length 6
	note_pitch A_, 1
	note_length 3
	rest
	note_pitch G_, 1
	note_length 6
	rest
	note_pitch A_, 1
	note_length 24
	rest
	note_length 6
	note_pitch F_, 2
	note_length 3
	rest
	note_pitch E_, 2
	note_length 6
	rest
	note_pitch F_, 2
	note_length 24
	rest
	note_length 6
	note_pitch A_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 6
	rest
	note_length 3
	note_pitch A_, 2
	note_length 9
	rest
	note_length 3
	note_pitch A_, 2
	note_length 3
	rest
	note_pitch A_, 2
	note_length 6
	note_pitch G_, 2
	note_length 3
	rest
	note_length 6
	note_pitch G_, 2
	note_length 42
	rest
	note_length 48
	rest
	note_length 48
	rest
	note_length 48
	rest
	note_length 48
	rest
	note_length 48
	rest
	note_length 48
	rest
	note_length 48
	rest
	song_ret

Music_MahoganyGym_Ch2: ; 1881c7 (62:41c7)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	musicd6 14
	musicd7 0
	duty_cycle_50
	musicd4 55
	musicd4 55
	musicd8 32
	note_length 6
	note_pitch C_, 2
	note_length 6
	note_pitch D_, 2
	note_length 6
	note_pitch E_, 2
	note_length 6
	note_pitch D_, 2
	note_length 6
	note_pitch E_, 2
	note_length 6
	note_pitch G_, 2
	note_length 6
	note_pitch A_, 2
	note_length 6
	note_pitch A#, 2
Music_MahoganyGym_branch_1881e7: ; 1881e7 (62:41e7)
	song_call Music_MahoganyGym_branch_1881f6
	song_call Music_MahoganyGym_branch_1882a0
	song_call Music_MahoganyGym_branch_1881f6
	song_call Music_MahoganyGym_branch_1882b2
	song_jump Music_MahoganyGym_branch_1881e7

Music_MahoganyGym_branch_1881f6: ; 1881f6 (62:41f6)
	musicd8 179
	musicd4 59
	note_length 12
	note_pitch C_, 3
	musicd4 55
	note_length 6
	rest
	note_length 9
	note_pitch D_, 3
	note_length 3
	rest
	musicd8 32
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch C_, 3
	note_length 3
	rest
	note_pitch A#, 2
	note_length 3
	continue_note
	musicd8 179
	note_length 12
	note_pitch C_, 3
	note_length 6
	rest
	musicd8 32
	note_length 3
	note_pitch A_, 2
	note_length 3
	rest
	note_length 6
	note_pitch F_, 2
	note_length 3
	note_pitch A_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 9
	note_pitch A_, 3
	musicd8 179
	note_length 12
	note_pitch A#, 2
	note_length 6
	rest
	note_length 9
	note_pitch C_, 3
	note_length 3
	rest
	musicd8 32
	note_pitch C_, 3
	note_length 3
	rest
	note_pitch A#, 2
	note_length 3
	rest
	note_pitch A_, 2
	note_length 3
	continue_note
	musicd8 179
	note_length 12
	note_pitch A#, 2
	note_length 6
	rest
	note_length 3
	note_pitch G_, 2
	note_length 3
	rest
	note_length 6
	note_pitch E_, 2
	musicd8 32
	note_length 3
	note_pitch E_, 3
	note_length 3
	rest
	note_pitch F_, 3
	note_length 9
	note_pitch G_, 3
	musicd8 179
	note_length 1
	note_pitch C#, 2
	note_length 17
	note_pitch D_, 2
	note_length 18
	note_pitch F_, 2
	note_length 6
	note_pitch D_, 3
	note_length 6
	rest
	note_length 18
	note_pitch C_, 3
	note_length 3
	note_pitch A_, 2
	note_length 3
	rest
	note_length 6
	note_pitch F_, 2
	musicd8 32
	note_length 3
	note_pitch A_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 9
	note_pitch A_, 3
	musicd8 179
	note_length 18
	note_pitch D_, 2
	note_length 18
	note_pitch F_, 2
	note_length 6
	note_pitch D_, 3
	note_length 6
	continue_note
	musicd8 179
	note_length 12
	note_pitch C_, 3
	note_length 12
	note_pitch E_, 2
	note_length 12
	note_pitch D_, 2
	note_length 6
	note_pitch E_, 2
	note_length 6
	rest
	note_length 18
	note_pitch D_, 2
	note_length 18
	note_pitch F_, 2
	note_length 6
	note_pitch D_, 3
	note_length 6
	rest
	musicd4 59
	note_length 18
	note_pitch C_, 3
	musicd4 55
	note_length 3
	note_pitch A_, 2
	note_length 3
	rest
	note_length 12
	note_pitch F_, 2
	note_length 12
	rest
	note_length 18
	note_pitch C#, 2
	note_length 18
	note_pitch F_, 2
	note_length 6
	note_pitch G_, 2
	note_length 6
	continue_note
	song_ret

Music_MahoganyGym_branch_1882a0: ; 1882a0 (62:42a0)
	note_length 48
	note_pitch F_, 2
	musicd8 32
	note_length 3
	note_pitch E_, 2
	note_length 3
	rest
	note_pitch E_, 3
	note_length 3
	rest
	note_pitch F_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 27
	continue_note
	song_ret

Music_MahoganyGym_branch_1882b2: ; 1882b2 (62:42b2)
	musicd8 179
	musicd4 55
	note_length 12
	note_pitch F_, 2
	note_length 6
	rest
	note_pitch F_, 1
	note_length 12
	note_pitch A#, 1
	note_length 12
	note_pitch C_, 2
	note_length 6
	note_pitch F_, 3
	note_length 12
	rest
	musicd4 55
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch F_, 3
	note_length 3
	rest
	note_pitch F_, 3
	note_length 3
	rest
	note_pitch F_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	musicd4 59
	note_length 9
	note_pitch A_, 3
	musicd4 55
	note_length 3
	note_pitch G_, 3
	note_length 6
	rest
	note_pitch F_, 3
	note_length 24
	rest
	note_length 12
	rest
	note_length 18
	note_pitch F_, 3
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch C_, 3
	note_length 3
	rest
	note_pitch A_, 2
	note_length 3
	rest
	note_length 6
	note_pitch C_, 3
	note_length 3
	rest
	note_pitch C_, 3
	note_length 6
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_length 6
	note_pitch A_, 1
	note_length 3
	rest
	note_pitch G_, 1
	note_length 6
	rest
	note_length 3
	note_pitch A_, 1
	note_length 3
	rest
	note_length 12
	rest
	note_length 18
	note_pitch F_, 3
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch F_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_length 6
	note_pitch A_, 3
	note_length 3
	note_pitch C_, 4
	note_length 3
	rest
	note_pitch C_, 4
	note_length 3
	rest
	note_pitch D_, 4
	note_length 3
	rest
	note_length 6
	note_pitch F_, 4
	note_length 3
	note_pitch D_, 4
	note_length 3
	rest
	note_pitch C_, 4
	note_length 3
	rest
	note_pitch A_, 3
	note_length 3
	rest
	musicd4 59
	note_length 9
	note_pitch A#, 3
	musicd4 55
	note_length 3
	note_pitch A_, 3
	note_length 6
	rest
	note_length 18
	note_pitch F_, 3
	note_length 12
	rest
	musicd4 55
	note_length 9
	note_pitch A#, 1
	note_length 3
	note_pitch A_, 1
	note_length 6
	rest
	note_length 3
	note_pitch F_, 1
	note_length 9
	rest
	note_length 3
	note_pitch C_, 2
	note_length 6
	rest
	note_pitch A#, 1
	note_length 3
	rest
	note_length 6
	note_pitch A_, 1
	note_length 3
	rest
	note_pitch G_, 1
	note_length 6
	rest
	note_pitch A_, 1
	note_length 6
	rest
	musicd8 32
	duty_cycle_12_5
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 3
	note_length 3
	continue_note
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 3
	note_length 3
	continue_note
	musicd8 179
	duty_cycle_50
	note_length 6
	note_pitch D_, 2
	note_length 3
	rest
	note_pitch C_, 2
	note_length 6
	rest
	note_pitch D_, 2
	note_length 6
	rest
	musicd8 32
	duty_cycle_12_5
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 3
	note_length 3
	continue_note
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 3
	note_length 3
	continue_note
	musicd8 179
	duty_cycle_50
	note_length 6
	note_pitch A_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 6
	rest
	note_pitch A_, 2
	note_length 6
	rest
	musicd8 32
	duty_cycle_12_5
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 3
	note_length 3
	continue_note
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 3
	note_length 3
	continue_note
	musicd8 179
	duty_cycle_50
	note_length 6
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch C_, 3
	note_length 6
	rest
	note_length 3
	note_pitch D_, 3
	note_length 9
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 6
	note_pitch C_, 3
	note_length 3
	rest
	note_length 6
	note_pitch C_, 3
	note_length 6
	rest
	note_pitch D_, 3
	note_length 6
	rest
	note_pitch C_, 3
	note_length 3
	note_pitch F_, 3
	note_length 3
	rest
	note_pitch E_, 3
	note_length 3
	rest
	note_length 6
	note_pitch C_, 3
	note_length 6
	rest
	note_length 3
	note_pitch C_, 3
	note_length 3
	rest
	note_length 6
	note_pitch D_, 3
	note_length 6
	rest
	note_pitch A_, 2
	note_length 3
	rest
	note_pitch A#, 2
	note_length 6
	rest
	note_pitch C_, 3
	note_length 6
	rest
	note_pitch C_, 1
	note_length 3
	note_pitch F_, 1
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	rest
	note_length 6
	note_pitch A_, 1
	note_length 3
	note_pitch A#, 1
	note_length 3
	rest
	note_pitch A_, 1
	note_length 3
	rest
	note_pitch F_, 1
	note_length 3
	rest
	note_length 6
	note_pitch C_, 1
	note_length 3
	rest
	note_length 6
	note_pitch C_, 1
	note_length 3
	rest
	note_length 6
	note_pitch D_, 1
	musicd8 31
	duty_cycle_50
	note_length 3
	note_pitch C_, 4
	note_length 3
	note_pitch C_, 4
	note_length 6
	note_pitch C_, 5
	musicd8 32
	duty_cycle_12_5
	note_length 3
	note_pitch C_, 4
	note_length 3
	note_pitch C_, 4
	note_length 6
	note_pitch C_, 5
	musicd8 179
	duty_cycle_50
	note_length 6
	note_pitch C#, 3
	note_length 6
	rest
	note_pitch D#, 3
	note_length 6
	rest
	note_pitch A#, 2
	note_length 3
	note_pitch B_, 2
	note_length 3
	rest
	note_pitch C#, 3
	note_length 3
	rest
	note_pitch F#, 3
	note_length 3
	rest
	note_length 6
	note_pitch F_, 3
	note_length 6
	rest
	note_length 3
	note_pitch G#, 3
	note_length 3
	rest
	musicd8 31
	duty_cycle_50
	note_length 6
	note_pitch C#, 4
	note_length 3
	note_pitch C#, 4
	note_length 3
	note_pitch C#, 4
	duty_cycle_12_5
	musicd8 32
	note_length 6
	note_pitch C#, 5
	note_length 3
	note_pitch C#, 4
	note_length 3
	note_pitch C#, 4
	note_length 6
	note_pitch C#, 5
	note_length 6
	rest
	musicd8 179
	duty_cycle_50
	note_length 3
	note_pitch C#, 2
	note_length 3
	rest
	note_length 6
	note_pitch D#, 2
	note_length 6
	rest
	note_length 9
	note_pitch F_, 2
	note_length 3
	note_pitch G#, 2
	note_length 6
	rest
	note_pitch C#, 3
	note_length 48
	rest
	song_ret

Music_MahoganyGym_Ch3: ; 18844e (62:444e)
	stereo_panning_both
	musice3 0
	musicd8 27
	wave 63
	musicd4 55
	musicd7 12
	note_length 12
	rest
	note_length 6
	note_pitch C_, 1
	note_length 6
	note_pitch A#, 0
	note_length 6
	note_pitch A_, 0
	note_length 6
	note_pitch G_, 0
	note_length 6
	note_pitch F_, 0
	note_length 6
	note_pitch E_, 0
Music_MahoganyGym_branch_188467: ; 188467 (62:4467)
	song_call Music_MahoganyGym_branch_188479
	song_call Music_MahoganyGym_branch_18853d
	song_call Music_MahoganyGym_branch_188479
	song_call Music_MahoganyGym_branch_188572
	song_call Music_MahoganyGym_branch_188581
	song_jump Music_MahoganyGym_branch_188467

Music_MahoganyGym_branch_188479: ; 188479 (62:4479)
	note_length 6
	note_pitch G_, 0
	note_length 6
	rest
	note_length 9
	note_pitch G_, 0
	note_length 3
	note_pitch D_, 0
	note_length 3
	note_pitch F_, 0
	note_length 3
	rest
	note_length 6
	note_pitch G_, 0
	note_length 6
	rest
	note_length 6
	note_pitch A_, 0
	note_length 3
	continue_note
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_length 6
	note_pitch A_, 0
	note_length 6
	note_pitch C_, 0
	note_length 3
	note_pitch D_, 0
	note_length 3
	rest
	note_length 12
	note_pitch D_, 0
	note_length 3
	note_pitch F_, 0
	note_length 3
	rest
	note_length 6
	note_pitch G_, 0
	note_length 6
	rest
	note_length 9
	note_pitch G_, 0
	note_length 3
	note_pitch D_, 0
	note_length 3
	note_pitch F_, 0
	note_length 3
	rest
	note_length 12
	note_pitch G_, 0
	note_length 6
	note_pitch C_, 1
	note_length 6
	rest
	note_length 3
	note_pitch C_, 1
	note_length 3
	rest
	note_length 6
	note_pitch C_, 1
	note_length 6
	note_pitch C_, 0
	note_length 3
	note_pitch C_, 1
	note_length 3
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch C_, 1
	note_length 3
	rest
	note_pitch C_, 1
	note_length 3
	note_pitch A#, 0
	note_length 3
	note_pitch A_, 0
	note_length 6
	note_pitch G_, 0
	note_length 6
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 6
	rest
	note_pitch G_, 0
	note_length 6
	rest
	note_length 3
	note_pitch G_, 0
	note_length 3
	rest
	note_length 6
	note_pitch A_, 0
	note_length 3
	rest
	note_pitch A_, 0
	note_length 6
	rest
	note_pitch C_, 0
	note_length 3
	note_pitch D_, 0
	note_length 3
	rest
	note_length 12
	note_pitch D_, 0
	note_length 3
	note_pitch D_, 1
	note_length 3
	rest
	note_length 6
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	note_pitch F_, 0
	note_length 3
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 6
	rest
	note_pitch G_, 0
	note_length 6
	rest
	note_length 3
	note_pitch G_, 0
	note_length 3
	rest
	note_length 6
	note_pitch A_, 0
	note_length 3
	rest
	note_pitch A_, 0
	note_length 3
	note_pitch C_, 1
	note_length 3
	note_pitch A_, 0
	note_length 3
	note_pitch C_, 1
	note_length 3
	note_pitch C#, 1
	note_length 3
	note_pitch D_, 1
	note_length 3
	rest
	note_length 9
	note_pitch F_, 1
	note_length 3
	note_pitch G_, 0
	note_length 3
	note_pitch F_, 0
	note_length 3
	note_pitch D_, 0
	note_length 6
	note_pitch G_, 0
	note_length 6
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 6
	rest
	note_pitch G_, 0
	note_length 6
	rest
	note_length 3
	note_pitch G_, 0
	note_length 3
	rest
	note_length 6
	note_pitch A_, 0
	note_length 3
	rest
	note_pitch A_, 0
	note_length 6
	rest
	note_pitch C_, 0
	note_length 3
	note_pitch D_, 0
	note_length 3
	rest
	note_length 6
	note_pitch D_, 0
	note_length 6
	rest
	note_length 6
	note_pitch D_, 0
	song_ret

Music_MahoganyGym_branch_18853d: ; 18853d (62:453d)
	note_length 6
	note_pitch F#, 0
	note_length 6
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_pitch F#, 0
	note_length 6
	rest
	note_pitch F#, 0
	note_length 6
	rest
	note_pitch C_, 1
	note_length 6
	rest
	note_length 3
	note_pitch C_, 1
	note_length 3
	rest
	note_length 6
	note_pitch C_, 1
	note_length 6
	note_pitch G_, 0
	note_length 9
	note_pitch C_, 0
	note_length 3
	rest
	note_length 6
	note_pitch C_, 0
	note_length 6
	note_pitch G_, 0
	note_length 3
	note_pitch C_, 1
	note_length 3
	rest
	note_pitch C_, 1
	note_length 3
	rest
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch E_, 1
	note_length 9
	rest
	note_pitch C_, 1
	note_length 3
	note_pitch G_, 0
	note_length 3
	note_pitch C_, 0
	note_length 3
	note_pitch E_, 0
	song_ret

Music_MahoganyGym_branch_188572: ; 188572 (62:4572)
	note_length 6
	note_pitch F#, 0
	note_length 6
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_pitch F#, 0
	note_length 6
	rest
	note_pitch C#, 1
	note_length 6
	rest
	note_pitch C#, 1
	song_ret

Music_MahoganyGym_branch_188581: ; 188581 (62:4581)
	note_length 6
	note_pitch F_, 0
	note_length 3
	rest
	note_pitch F_, 0
	note_length 6
	rest
	note_pitch F_, 0
	note_length 12
	note_pitch D#, 1
	note_length 12
	note_pitch F_, 1
	note_length 12
	note_pitch A#, 1
	note_length 36
	rest
	note_length 6
	note_pitch A_, 1
	note_length 3
	rest
	note_pitch A_, 1
	note_length 6
	rest
	note_pitch D_, 1
	note_length 6
	rest
	note_length 3
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch D_, 1
	note_length 6
	note_pitch C_, 1
	note_length 3
	rest
	note_length 6
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 6
	rest
	note_pitch G_, 0
	note_length 3
	note_pitch C_, 1
	note_length 3
	rest
	note_pitch C_, 1
	note_length 3
	rest
	note_pitch C_, 1
	note_length 3
	rest
	note_pitch C_, 1
	note_length 3
	rest
	note_length 6
	note_pitch A_, 0
	note_length 3
	rest
	note_pitch A_, 0
	note_length 6
	rest
	note_pitch D_, 0
	note_length 6
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch C_, 1
	note_length 6
	rest
	note_length 3
	note_pitch D_, 1
	note_length 3
	rest
	note_length 6
	note_pitch A#, 0
	note_length 6
	rest
	note_pitch A#, 0
	note_length 3
	rest
	note_pitch A#, 0
	note_length 3
	note_pitch C_, 1
	note_length 3
	rest
	note_pitch C_, 1
	note_length 3
	rest
	note_length 6
	note_pitch C_, 1
	note_length 6
	note_pitch E_, 1
	note_length 6
	note_pitch A_, 1
	note_length 3
	rest
	note_pitch A_, 1
	note_length 6
	rest
	note_pitch D_, 1
	note_length 6
	rest
	note_length 3
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch D_, 1
	note_length 3
	note_pitch D_, 1
	note_length 6
	rest
	note_length 24
	rest
	note_length 9
	note_pitch A#, 2
	note_length 3
	note_pitch A_, 2
	note_length 6
	rest
	note_pitch F_, 2
	note_length 9
	note_pitch A#, 0
	note_length 3
	note_pitch A_, 0
	note_length 6
	rest
	note_length 3
	note_pitch F_, 0
	note_length 9
	rest
	note_length 3
	note_pitch C_, 1
	note_length 6
	rest
	note_pitch C_, 1
	note_length 3
	rest
	note_length 6
	note_pitch D_, 0
	note_length 3
	rest
	note_pitch C_, 0
	note_length 6
	rest
	note_pitch D_, 0
	note_length 24
	rest
	note_length 6
	note_pitch D_, 0
	note_length 3
	rest
	note_pitch C_, 0
	note_length 6
	rest
	note_pitch D_, 0
	note_length 24
	rest
	note_length 6
	note_pitch D_, 0
	note_length 3
	rest
	note_pitch C_, 0
	note_length 6
	rest
	note_pitch D_, 0
	note_length 24
	rest
	note_length 6
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch C_, 1
	note_length 6
	rest
	note_length 3
	note_pitch D_, 1
	note_length 9
	rest
	note_length 3
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch D_, 1
	note_length 6
	note_pitch C_, 1
	note_length 3
	rest
	note_length 6
	note_pitch C_, 0
	note_length 3
	note_pitch C_, 1
	note_length 3
	rest
	note_length 6
	note_pitch C_, 0
	note_length 3
	note_pitch C_, 1
	note_length 3
	rest
	note_length 6
	note_pitch C_, 0
	note_length 3
	note_pitch C_, 1
	note_length 3
	rest
	note_length 6
	note_pitch C_, 0
	note_length 3
	note_pitch C_, 1
	note_length 3
	rest
	note_length 6
	note_pitch C_, 0
	note_length 3
	note_pitch C_, 1
	note_length 3
	rest
	note_length 6
	note_pitch C_, 0
	note_length 3
	note_pitch C_, 1
	note_length 3
	rest
	note_length 6
	note_pitch C_, 0
	note_length 3
	note_pitch C_, 1
	note_length 9
	rest
	note_length 3
	note_pitch C_, 1
	note_length 3
	note_pitch C_, 0
	note_length 48
	rest
	note_length 6
	note_pitch C_, 0
	note_length 3
	rest
	note_length 6
	note_pitch C_, 0
	note_length 3
	rest
	note_length 6
	note_pitch D_, 0
	note_length 6
	note_pitch C_, 0
	note_length 3
	note_pitch C_, 1
	note_length 3
	rest
	note_length 6
	note_pitch C_, 0
	note_length 3
	note_pitch C_, 1
	note_length 3
	rest
	note_length 6
	note_pitch C#, 0
	note_length 3
	note_pitch C#, 1
	note_length 3
	rest
	note_length 6
	note_pitch C#, 0
	note_length 3
	note_pitch C#, 1
	note_length 3
	rest
	note_length 6
	note_pitch C#, 0
	note_length 3
	note_pitch C#, 1
	note_length 3
	rest
	note_length 6
	note_pitch C#, 0
	note_length 3
	note_pitch C#, 1
	note_length 3
	rest
	note_length 6
	note_pitch C#, 0
	note_length 3
	note_pitch C#, 1
	note_length 3
	rest
	note_length 6
	note_pitch C#, 0
	note_length 3
	note_pitch C#, 1
	note_length 3
	rest
	note_length 6
	note_pitch C#, 0
	note_length 3
	note_pitch C#, 1
	note_length 3
	rest
	note_length 6
	note_pitch C#, 0
	note_length 3
	note_pitch C#, 1
	note_length 3
	rest
	note_length 6
	note_pitch C#, 0
	note_length 3
	note_pitch C#, 1
	note_length 3
	rest
	note_length 6
	note_pitch C#, 0
	note_length 3
	note_pitch C#, 1
	note_length 3
	rest
	note_length 6
	note_pitch C#, 0
	note_length 3
	note_pitch C#, 1
	note_length 3
	rest
	note_length 6
	note_pitch C#, 0
	note_length 3
	note_pitch C#, 1
	note_length 3
	rest
	note_length 6
	note_pitch C#, 0
	note_length 3
	note_pitch C#, 1
	note_length 3
	rest
	note_length 6
	note_pitch C#, 0
	note_length 3
	note_pitch C#, 1
	note_length 3
	rest
	note_length 6
	note_pitch C#, 0
	note_length 3
	note_pitch C#, 1
	note_length 3
	rest
	note_pitch G#, 0
	note_length 3
	note_pitch F#, 0
	note_length 3
	note_pitch F_, 0
	note_length 3
	note_pitch C#, 0
	song_ret

Music_MahoganyGym_Ch4: ; 1886e6 (62:46e6)
	note_length 48
	rest
Music_MahoganyGym_branch_1886e8: ; 1886e8 (62:46e8)
	stereo_panning_both
	song_call Music_MahoganyGym_branch_1886ef
	song_jump Music_MahoganyGym_branch_1886e8

Music_MahoganyGym_branch_1886ef: ; 1886ef (62:46ef)
	note_length 3
	noise 15
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 18
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 16
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
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 18
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 18
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 3
	note_length 6
	continue_note
	note_length 3
	noise 3
	note_length 6
	continue_note
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 18
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
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
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 18
	note_length 3
	noise 18
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	note_pitch G#, 0
	note_length 3
	noise 16
	note_length 3
	noise 16
	note_length 3
	noise 3
	note_length 3
	note_pitch G#, 0
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
	noise 18
	note_length 3
	continue_note
	noise 18
	note_length 3
	noise 18
	note_length 3
	noise 3
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
	noise 16
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
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
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
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
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
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
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
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
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
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
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
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 18
	note_length 3
	continue_note
	noise 18
	note_length 3
	noise 18
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 16
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
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 18
	note_length 3
	continue_note
	noise 18
	note_length 3
	noise 18
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 16
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
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 18
	note_length 3
	noise 18
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 18
	song_ret
