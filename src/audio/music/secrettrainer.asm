Music_SecretTrainer: ; 18fae0 (63:7ae0)
	dw Music_SecretTrainer_Ch1
	dw Music_SecretTrainer_Ch2
	dw Music_SecretTrainer_Ch3
	dw Music_SecretTrainer_Ch4

Music_SecretTrainer_Ch1: ; 18fae8 (63:7ae8)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	musicd6 17
	musicd7 0
	duty_cycle_12_5
	musice3 2
	musicd8 221
	song_call Music_SecretTrainer_branch_18faff
Music_SecretTrainer_branch_18faf9: ; 18faf9 (63:7af9)
	song_call Music_SecretTrainer_branch_18fb11
	song_jump Music_SecretTrainer_branch_18faf9

Music_SecretTrainer_branch_18faff: ; 18faff (63:7aff)
	duty_cycle_12_5
	musicd8 205
	musicd4 55
	musicd8 39
	note_length 48
	rest
	note_length 3
	note_pitch B_, 0
	note_length 3
	note_pitch B_, 1
	note_length 3
	note_pitch B_, 0
	note_length 3
	note_pitch B_, 1
	song_ret

Music_SecretTrainer_branch_18fb11: ; 18fb11 (63:7b11)
	musicd8 39
	note_length 3
	note_pitch B_, 1
	note_length 9
	continue_note
	note_length 3
	note_pitch B_, 1
	note_length 3
	continue_note
	note_length 6
	rest
	note_length 3
	note_pitch B_, 1
	note_length 3
	continue_note
	note_length 6
	rest
	note_length 3
	note_pitch B_, 1
	note_length 3
	continue_note
	note_length 6
	rest
	note_length 3
	note_pitch C_, 2
	note_length 9
	continue_note
	note_length 3
	note_pitch C_, 2
	note_length 3
	continue_note
	note_length 6
	rest
	note_length 3
	note_pitch C_, 2
	note_length 9
	continue_note
	note_length 3
	note_pitch C_, 2
	note_length 3
	continue_note
	note_length 6
	rest
	note_length 3
	note_pitch D_, 2
	note_length 9
	continue_note
	note_length 3
	note_pitch D_, 2
	note_length 3
	continue_note
	note_length 6
	rest
	note_length 3
	note_pitch D_, 2
	note_length 3
	continue_note
	note_length 6
	rest
	note_length 3
	note_pitch D_, 2
	note_length 3
	continue_note
	note_length 6
	rest
	note_length 3
	note_pitch C_, 2
	note_length 9
	continue_note
	note_length 3
	note_pitch C_, 2
	note_length 3
	continue_note
	note_length 6
	rest
	note_length 3
	note_pitch C_, 2
	note_length 3
	continue_note
	note_length 6
	rest
	note_length 3
	note_pitch C_, 2
	note_length 9
	rest
	song_ret

Music_SecretTrainer_Ch2: ; 18fb68 (63:7b68)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	duty_cycle_50
	musicd4 55
	duty_cycle_50
	musicd8 179
	musicd4 55
	song_call Music_SecretTrainer_branch_18fb7e
Music_SecretTrainer_branch_18fb78: ; 18fb78 (63:7b78)
	song_call Music_SecretTrainer_branch_18fb94
	song_jump Music_SecretTrainer_branch_18fb78

Music_SecretTrainer_branch_18fb7e: ; 18fb7e (63:7b7e)
	duty_cycle_75
	musicd4 55
	musicd8 39
	note_length 3
	note_pitch B_, 2
	note_length 3
	rest
	note_length 24
	note_pitch B_, 3
	note_length 18
	rest
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch F_, 2
	note_length 3
	note_pitch D#, 2
	song_ret

Music_SecretTrainer_branch_18fb94: ; 18fb94 (63:7b94)
	duty_cycle_50
	musicd8 180
	note_length 3
	note_pitch E_, 3
	note_length 15
	rest
	note_length 3
	note_pitch B_, 2
	note_length 15
	rest
	musicd4 58
	note_length 3
	note_pitch E_, 3
	note_length 9
	rest
	musicd4 55
	note_length 3
	note_pitch F_, 3
	note_length 15
	rest
	note_length 3
	note_pitch C_, 3
	note_length 15
	rest
	note_length 3
	note_pitch F_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch C_, 4
	musicd4 58
	musicd8 181
	note_length 24
	note_pitch D_, 4
	musicd4 55
	note_length 12
	note_pitch B_, 3
	note_length 12
	continue_note
	note_length 24
	note_pitch A_, 3
	note_length 12
	note_pitch F_, 3
	note_length 6
	continue_note
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch D#, 3
	song_ret

Music_SecretTrainer_Ch3: ; 18fbce (63:7bce)
	stereo_panning_both
	musice3 0
	musicd8 27
	musicd7 12
	wave 61
	musicd4 55
	song_call Music_SecretTrainer_branch_18fbe2
Music_SecretTrainer_branch_18fbdc: ; 18fbdc (63:7bdc)
	song_call Music_SecretTrainer_branch_18fbe7
	song_jump Music_SecretTrainer_branch_18fbdc

Music_SecretTrainer_branch_18fbe2: ; 18fbe2 (63:7be2)
	note_length 48
	rest
	note_length 12
	rest
	song_ret

Music_SecretTrainer_branch_18fbe7: ; 18fbe7 (63:7be7)
	wave 61
	note_length 3
	note_pitch E_, 2
	note_length 9
	rest
	wave 63
	note_length 3
	note_pitch E_, 2
	note_length 9
	rest
	note_length 3
	note_pitch E_, 2
	note_length 9
	rest
	note_length 3
	note_pitch E_, 2
	note_length 9
	rest
	wave 61
	note_length 3
	note_pitch F_, 2
	note_length 9
	rest
	wave 63
	note_length 3
	note_pitch F_, 2
	note_length 9
	rest
	note_length 3
	note_pitch F_, 2
	note_length 9
	rest
	note_length 3
	note_pitch F_, 2
	note_length 9
	rest
	wave 61
	note_length 3
	note_pitch G_, 2
	note_length 9
	rest
	wave 63
	note_length 3
	note_pitch G_, 2
	note_length 9
	rest
	note_length 3
	note_pitch G_, 2
	note_length 9
	rest
	note_length 3
	note_pitch G_, 2
	note_length 9
	rest
	wave 61
	note_length 3
	note_pitch F_, 2
	note_length 9
	rest
	wave 63
	note_length 3
	note_pitch F_, 2
	note_length 9
	rest
	note_length 3
	note_pitch F_, 2
	note_length 9
	rest
	note_length 3
	note_pitch F_, 2
	note_length 3
	continue_note
	note_length 6
	rest
	song_ret

Music_SecretTrainer_Ch4: ; 18fc3a (63:7c3a)
	stereo_panning_both
	song_call Music_SecretTrainer_branch_18fc44
Music_SecretTrainer_branch_18fc3e: ; 18fc3e (63:7c3e)
	song_call Music_SecretTrainer_branch_18fc49
	song_jump Music_SecretTrainer_branch_18fc3e

Music_SecretTrainer_branch_18fc44: ; 18fc44 (63:7c44)
	note_length 48
	rest
	note_length 12
	rest
	song_ret

Music_SecretTrainer_branch_18fc49: ; 18fc49 (63:7c49)
	note_length 3
	noise 17
	note_length 9
	rest
	note_length 3
	noise 19
	note_length 9
	rest
	note_length 3
	noise 19
	note_length 9
	rest
	note_length 3
	noise 17
	note_length 3
	noise 19
	note_length 3
	noise 19
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 9
	rest
	note_length 3
	noise 17
	note_length 9
	rest
	note_length 3
	noise 19
	note_length 9
	rest
	note_length 3
	noise 17
	note_length 3
	noise 19
	note_length 3
	noise 19
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 9
	rest
	note_length 3
	noise 17
	note_length 9
	rest
	note_length 3
	noise 19
	note_length 9
	rest
	note_length 3
	noise 17
	note_length 3
	noise 19
	note_length 3
	noise 19
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 9
	rest
	note_length 3
	noise 17
	note_length 9
	rest
	note_length 3
	noise 19
	note_length 9
	rest
	note_length 3
	noise 19
	note_length 3
	noise 19
	note_length 3
	noise 17
	note_length 3
	noise 18
	song_ret
