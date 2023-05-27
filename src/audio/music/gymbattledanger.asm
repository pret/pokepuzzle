Music_GymBattleDanger: ; 18ed33 (63:6d33)
	dw Music_GymBattleDanger_Ch1
	dw Music_GymBattleDanger_Ch2
	dw Music_GymBattleDanger_Ch3
	dw Music_GymBattleDanger_Ch4

Music_GymBattleDanger_Ch1: ; 18ed3b (63:6d3b)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	musicd6 19
	musicd7 0
	duty_cycle_12_5
	musice3 2
	musicd8 221
	song_call Music_GymBattleDanger_branch_18ed5e
Music_GymBattleDanger_branch_18ed4c: ; 18ed4c (63:6d4c)
	song_call Music_GymBattleDanger_branch_18eda0
	song_call Music_GymBattleDanger_branch_18ee8f
	song_call Music_GymBattleDanger_branch_18eef9
	song_call Music_GymBattleDanger_branch_18ef85
	song_call Music_GymBattleDanger_branch_18efe1
	song_jump Music_GymBattleDanger_branch_18ed4c

Music_GymBattleDanger_branch_18ed5e: ; 18ed5e (63:6d5e)
	duty_cycle_12_5
	musicd8 205
	musicd4 55
	musicd8 36
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch A#, 2
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch F_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch F_, 2
	note_length 3
	note_pitch E_, 2
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch F_, 2
	note_length 3
	note_pitch E_, 2
	note_length 3
	note_pitch D#, 2
	note_length 3
	note_pitch F_, 2
	note_length 3
	note_pitch E_, 2
	note_length 3
	note_pitch D#, 2
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch E_, 2
	note_length 3
	note_pitch D#, 2
	note_length 6
	note_pitch G#, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch F#, 3
	song_ret

Music_GymBattleDanger_branch_18eda0: ; 18eda0 (63:6da0)
	musicd8 205
	duty_cycle_12_5
	musicd7 0
	musice3 3
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 6
	note_pitch E_, 1
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 6
	note_pitch E_, 1
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 6
	note_pitch E_, 1
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 6
	note_pitch E_, 1
	note_length 6
	note_pitch F_, 1
	note_length 6
	note_pitch F_, 1
	note_length 6
	note_pitch F_, 1
	note_length 6
	note_pitch F_, 1
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 6
	note_pitch E_, 1
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 6
	note_pitch E_, 1
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 6
	note_pitch E_, 1
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 6
	note_pitch E_, 1
	note_length 6
	note_pitch D#, 1
	note_length 6
	note_pitch D#, 1
	note_length 6
	note_pitch D#, 1
	note_length 6
	note_pitch D#, 1
	song_ret

; unreferenced ?
Music_GymBattleDanger_branch_18ee48: ; 18ee48 (63:6e48)
	musicd8 34
	musicd7 12
	note_length 6
	note_pitch B_, 1
	note_length 3
	rest
	note_pitch B_, 1
	note_length 3
	note_pitch F#, 2
	note_length 3
	rest
	note_length 12
	note_pitch B_, 1
	note_length 6
	note_pitch A_, 1
	note_length 6
	note_pitch A#, 1
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch B_, 1
	note_length 3
	rest
	note_pitch B_, 1
	note_length 3
	note_pitch F#, 2
	note_length 3
	rest
	note_length 12
	note_pitch B_, 1
	note_length 6
	note_pitch A#, 1
	note_length 12
	note_pitch B_, 1
	note_length 6
	note_pitch B_, 1
	note_length 3
	rest
	note_pitch B_, 1
	note_length 3
	note_pitch F#, 2
	note_length 3
	rest
	note_length 12
	note_pitch B_, 1
	note_length 6
	note_pitch A_, 1
	note_length 6
	note_pitch A#, 1
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch B_, 1
	note_length 3
	rest
	note_pitch B_, 1
	note_length 3
	note_pitch F#, 2
	note_length 3
	rest
	note_length 12
	note_pitch B_, 1
	note_length 6
	note_pitch A_, 1
	note_length 6
	note_pitch A#, 1
	note_length 6
	note_pitch B_, 1
	song_ret

Music_GymBattleDanger_branch_18ee8f: ; 18ee8f (63:6e8f)
	duty_cycle_12_5
	musice3 2
	musicd7 0
	musicd4 55
	musicd8 118
	note_length 18
	note_pitch B_, 2
	note_length 30
	note_pitch F#, 2
	note_length 9
	continue_note
	note_length 3
	rest
	note_length 12
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 2
	note_length 18
	note_pitch B_, 2
	note_length 6
	note_pitch G_, 3
	note_length 12
	note_pitch F#, 3
	note_length 12
	note_pitch G_, 3
	note_length 12
	note_pitch E_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	continue_note
	note_length 12
	note_pitch F#, 3
	note_length 12
	note_pitch G_, 3
	note_length 18
	note_pitch E_, 3
	note_length 18
	note_pitch B_, 2
	note_length 30
	note_pitch F#, 2
	note_length 9
	continue_note
	note_length 3
	rest
	note_length 12
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 2
	note_length 18
	note_pitch B_, 2
	note_length 6
	note_pitch D_, 2
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch E_, 2
	note_length 6
	note_pitch A_, 2
	note_length 6
	note_pitch E_, 2
	note_length 6
	note_pitch C#, 2
	note_length 6
	note_pitch A_, 2
	note_length 6
	note_pitch E_, 2
	note_length 6
	note_pitch C#, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch E_, 3
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch E_, 3
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch E_, 3
	note_length 3
	note_pitch C#, 3
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch E_, 2
	note_length 3
	note_pitch E_, 3
	note_length 3
	note_pitch C#, 3
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch E_, 2
	song_ret

Music_GymBattleDanger_branch_18eef9: ; 18eef9 (63:6ef9)
	duty_cycle_12_5
	musicd7 0
	musicd4 55
	musicd8 34
	note_length 6
	note_pitch B_, 3
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch G_, 2
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch G_, 2
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch F#, 2
	note_length 6
	note_pitch F#, 2
	note_length 3
	note_pitch E_, 2
	note_length 3
	note_pitch F_, 2
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch G_, 2
	note_length 6
	note_pitch F#, 2
	note_length 9
	note_pitch F#, 2
	note_length 9
	rest
	note_length 6
	note_pitch F#, 2
	note_length 6
	note_pitch F#, 2
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch G#, 2
	note_length 6
	note_pitch F#, 2
	note_length 9
	note_pitch F#, 2
	note_length 9
	rest
	note_length 6
	note_pitch B_, 3
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch G_, 2
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch G_, 2
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch C#, 3
	note_length 6
	note_pitch E_, 2
	note_length 6
	note_pitch C#, 2
	note_length 6
	note_pitch C#, 3
	note_length 6
	note_pitch E_, 2
	note_length 6
	note_pitch C#, 2
	note_length 6
	note_pitch C#, 3
	note_length 6
	note_pitch E_, 2
	note_length 6
	note_pitch C#, 3
	note_length 6
	note_pitch E_, 2
	note_length 6
	note_pitch C#, 2
	note_length 6
	note_pitch C#, 3
	note_length 6
	note_pitch C#, 3
	note_length 6
	note_pitch E_, 2
	note_length 6
	note_pitch C#, 2
	note_length 6
	note_pitch C#, 3
	song_ret

Music_GymBattleDanger_branch_18ef85: ; 18ef85 (63:6f85)
	duty_cycle_12_5
	musicd7 0
	musicd4 55
	musicd8 34
	note_length 3
	note_pitch F#, 3
	note_length 3
	rest
	note_pitch F#, 3
	note_length 27
	rest
	note_length 3
	note_pitch F#, 3
	note_length 3
	rest
	note_pitch F#, 3
	note_length 3
	rest
	note_length 18
	rest
	note_length 3
	note_pitch F#, 3
	note_length 9
	rest
	note_length 3
	note_pitch F#, 3
	note_length 3
	rest
	note_length 6
	note_pitch F#, 3
	note_length 6
	rest
	note_length 3
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 27
	rest
	note_length 3
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_length 18
	rest
	note_length 3
	note_pitch G_, 3
	note_length 9
	rest
	note_length 3
	note_pitch G_, 3
	note_length 3
	rest
	note_length 6
	note_pitch G_, 3
	note_length 6
	rest
	note_length 3
	note_pitch G#, 3
	note_length 3
	rest
	note_pitch G#, 3
	note_length 27
	rest
	note_length 3
	note_pitch G#, 3
	note_length 3
	rest
	note_pitch G#, 3
	note_length 3
	rest
	note_length 18
	rest
	note_length 3
	note_pitch G#, 3
	note_length 9
	rest
	note_length 3
	note_pitch G#, 3
	note_length 3
	rest
	note_length 6
	note_pitch G#, 3
	note_length 6
	rest
	song_ret

Music_GymBattleDanger_branch_18efe1: ; 18efe1 (63:6fe1)
	duty_cycle_12_5
	musicd7 0
	musicd4 55
	musicd8 34
	note_length 15
	note_pitch C_, 3
	note_length 3
	rest
	note_length 27
	note_pitch C_, 3
	note_length 3
	rest
	note_length 15
	note_pitch C_, 3
	note_length 3
	rest
	note_length 27
	note_pitch C_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_length 48
	rest
	song_ret

Music_GymBattleDanger_Ch2: ; 18f02b (63:702b)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	duty_cycle_50
	musicd4 55
	duty_cycle_50
	musicd8 179
	musicd4 55
	song_call Music_GymBattleDanger_branch_18f04d
Music_GymBattleDanger_branch_18f03b: ; 18f03b (63:703b)
	song_call Music_GymBattleDanger_branch_18f093
	song_call Music_GymBattleDanger_branch_18f181
	song_call Music_GymBattleDanger_branch_18f1e3
	song_call Music_GymBattleDanger_branch_18f223
	song_call Music_GymBattleDanger_branch_18f25b
	song_jump Music_GymBattleDanger_branch_18f03b

Music_GymBattleDanger_branch_18f04d: ; 18f04d (63:704d)
	duty_cycle_75
	musicd4 55
	musicd8 36
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch A#, 2
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch F_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch F_, 2
	note_length 3
	note_pitch E_, 2
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch F_, 2
	note_length 3
	note_pitch E_, 2
	note_length 3
	note_pitch D#, 2
	note_length 3
	note_pitch F_, 2
	note_length 3
	note_pitch E_, 2
	note_length 3
	note_pitch D#, 2
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch E_, 2
	note_length 3
	note_pitch D#, 2
	musicd8 179
	musicd4 58
	note_length 6
	note_pitch G#, 3
	musicd4 55
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch F#, 3
	song_ret

Music_GymBattleDanger_branch_18f093: ; 18f093 (63:7093)
	musicd8 224
	duty_cycle_50
	musicd7 0
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 6
	note_pitch E_, 1
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 6
	note_pitch E_, 1
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 6
	note_pitch E_, 1
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 6
	note_pitch E_, 1
	note_length 6
	note_pitch F_, 1
	note_length 6
	note_pitch F_, 1
	note_length 6
	note_pitch F_, 1
	note_length 6
	note_pitch F_, 1
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 6
	note_pitch E_, 1
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 6
	note_pitch E_, 1
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 6
	note_pitch E_, 1
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 6
	note_pitch E_, 1
	note_length 6
	note_pitch D#, 1
	note_length 6
	note_pitch D#, 1
	note_length 6
	note_pitch D#, 1
	note_length 6
	note_pitch D#, 1
	song_ret

; unreferenced ?
Music_GymBattleDanger_branch_18f139: ; 18f139 (63:7139)
	duty_cycle_12_5
	musicd8 36
	musicd7 24
	note_length 6
	note_pitch B_, 1
	note_length 3
	rest
	note_pitch B_, 1
	note_length 3
	note_pitch F#, 2
	note_length 3
	rest
	note_length 12
	note_pitch B_, 1
	note_length 6
	note_pitch A_, 1
	note_length 6
	note_pitch A#, 1
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch B_, 1
	note_length 3
	rest
	note_pitch B_, 1
	note_length 3
	note_pitch F#, 2
	note_length 3
	rest
	note_length 12
	note_pitch B_, 1
	note_length 6
	note_pitch A#, 1
	note_length 12
	note_pitch B_, 1
	note_length 6
	note_pitch B_, 1
	note_length 3
	rest
	note_pitch B_, 1
	note_length 3
	note_pitch F#, 2
	note_length 3
	rest
	note_length 12
	note_pitch B_, 1
	note_length 6
	note_pitch A_, 1
	note_length 6
	note_pitch A#, 1
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch B_, 1
	note_length 3
	rest
	note_pitch B_, 1
	note_length 3
	note_pitch F#, 2
	note_length 3
	rest
	note_length 12
	note_pitch B_, 1
	note_length 6
	note_pitch A_, 1
	note_length 6
	note_pitch A#, 1
	note_length 6
	note_pitch B_, 1
	song_ret

Music_GymBattleDanger_branch_18f181: ; 18f181 (63:7181)
	duty_cycle_50
	musicd7 0
	musicd8 179
	musicd4 58
	note_length 18
	note_pitch B_, 2
	musicd4 55
	note_length 30
	note_pitch F#, 2
	note_length 9
	continue_note
	note_length 3
	rest
	note_length 12
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 2
	note_length 18
	note_pitch B_, 2
	note_length 45
	note_pitch C_, 3
	musicd4 60
	note_length 3
	note_pitch C_, 3
	note_length 24
	rest
	musicd4 55
	note_length 12
	note_pitch G_, 2
	note_length 12
	note_pitch C_, 3
	musicd4 58
	note_length 18
	note_pitch B_, 2
	musicd4 55
	note_length 30
	note_pitch F#, 2
	note_length 9
	continue_note
	note_length 3
	rest
	note_length 12
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 2
	note_length 18
	note_pitch B_, 2
	note_length 45
	note_pitch A_, 2
	musicd4 60
	note_length 3
	note_pitch A_, 2
	musicd4 55
	duty_cycle_12_5
	musicd8 39
	note_pitch A_, 3
	note_length 3
	note_pitch E_, 3
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch E_, 3
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch E_, 3
	note_length 3
	note_pitch C#, 3
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch E_, 2
	note_length 3
	note_pitch E_, 3
	note_length 3
	note_pitch C#, 3
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch E_, 2
	song_ret

Music_GymBattleDanger_branch_18f1e3: ; 18f1e3 (63:71e3)
	musicd8 47
	note_length 45
	note_pitch G_, 2
	note_length 3
	continue_note
	note_length 21
	note_pitch D_, 3
	note_length 3
	continue_note
	note_length 18
	note_pitch G_, 2
	note_length 6
	continue_note
	note_length 45
	note_pitch A_, 2
	note_length 3
	continue_note
	note_length 6
	note_pitch C#, 3
	note_length 6
	note_pitch C#, 3
	note_length 3
	note_pitch E_, 3
	note_length 3
	note_pitch D#, 3
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch D#, 3
	note_length 6
	note_pitch C#, 3
	note_length 6
	note_pitch C#, 3
	note_length 12
	continue_note
	note_length 45
	note_pitch G_, 2
	note_length 3
	continue_note
	note_length 24
	note_pitch E_, 3
	note_length 24
	note_pitch F#, 3
	note_length 45
	note_pitch E_, 3
	note_length 3
	continue_note
	note_length 6
	note_pitch G_, 3
	note_length 6
	continue_note
	note_pitch A_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch E_, 3
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch E_, 3
	song_ret

Music_GymBattleDanger_branch_18f223: ; 18f223 (63:7223)
	duty_cycle_12_5
	musicd8 39
	note_length 6
	note_pitch F#, 3
	note_length 30
	note_pitch F#, 3
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch F#, 3
	note_length 18
	continue_note
	note_length 12
	note_pitch F#, 3
	note_length 6
	note_pitch F#, 3
	note_length 12
	note_pitch F#, 3
	note_length 6
	note_pitch G_, 3
	note_length 30
	note_pitch G_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch G_, 3
	note_length 18
	continue_note
	note_length 12
	note_pitch G_, 3
	note_length 6
	note_pitch G_, 3
	note_length 9
	note_pitch G_, 3
	note_length 3
	rest
	note_length 6
	note_pitch G#, 3
	note_length 30
	note_pitch G#, 3
	note_length 6
	note_pitch G#, 3
	note_length 6
	note_pitch G#, 3
	note_length 18
	continue_note
	note_length 12
	note_pitch G#, 3
	note_length 6
	note_pitch G#, 3
	note_length 9
	note_pitch G#, 3
	note_length 3
	rest
	song_ret

Music_GymBattleDanger_branch_18f25b: ; 18f25b (63:725b)
	duty_cycle_12_5
	musicd8 39
	musicd8 179
	musicd4 58
	note_length 15
	note_pitch A_, 3
	note_length 3
	rest
	musicd4 55
	note_length 27
	note_pitch G#, 3
	note_length 3
	rest
	musicd4 58
	note_length 15
	note_pitch G_, 3
	note_length 3
	rest
	musicd4 55
	note_length 27
	note_pitch F#, 3
	note_length 3
	rest
	duty_cycle_12_5
	musicd8 34
	duty_cycle_50
	note_pitch C_, 4
	note_length 3
	rest
	note_pitch C_, 4
	note_length 3
	rest
	note_pitch C_, 4
	note_length 3
	rest
	note_pitch C_, 4
	note_length 3
	rest
	musicd8 36
	note_pitch C#, 4
	note_length 3
	rest
	note_pitch C#, 4
	note_length 3
	rest
	note_pitch C#, 4
	note_length 3
	rest
	note_pitch C#, 4
	note_length 3
	rest
	musicd8 38
	note_pitch D_, 4
	note_length 3
	rest
	note_pitch D_, 4
	note_length 3
	rest
	note_pitch D_, 4
	note_length 3
	rest
	note_pitch D_, 4
	note_length 3
	rest
	musicd8 39
	note_pitch D#, 4
	note_length 3
	rest
	note_pitch D#, 4
	note_length 3
	rest
	note_pitch D#, 4
	note_length 3
	rest
	note_pitch D#, 4
	note_length 3
	rest
	musicd8 179
	note_length 12
	note_pitch D_, 1
	note_length 12
	note_pitch C#, 1
	note_length 12
	note_pitch D_, 1
	note_length 12
	note_pitch E_, 1
	song_ret

Music_GymBattleDanger_Ch3: ; 18f2bd (63:72bd)
	stereo_panning_both
	musice3 0
	musicd8 27
	musicd7 12
	musicd4 55
	song_call Music_GymBattleDanger_branch_18f2db
Music_GymBattleDanger_branch_18f2c9: ; 18f2c9 (63:72c9)
	song_call Music_GymBattleDanger_branch_18f31e
	song_call Music_GymBattleDanger_branch_18f416
	song_call Music_GymBattleDanger_branch_18f4a3
	song_call Music_GymBattleDanger_branch_18f523
	song_call Music_GymBattleDanger_branch_18f5ba
	song_jump Music_GymBattleDanger_branch_18f2c9

Music_GymBattleDanger_branch_18f2db: ; 18f2db (63:72db)
	wave 63
	note_length 3
	note_pitch D_, 2
	note_length 3
	rest
	note_pitch D_, 2
	note_length 3
	note_pitch D_, 2
	wave 67
	note_length 6
	note_pitch D_, 3
	wave 63
	note_length 3
	note_pitch D_, 2
	note_length 3
	rest
	note_pitch D_, 2
	note_length 3
	note_pitch D_, 2
	wave 67
	note_length 6
	note_pitch D#, 3
	wave 63
	note_length 3
	note_pitch D_, 2
	note_length 3
	rest
	note_pitch D_, 2
	note_length 3
	note_pitch D_, 2
	wave 67
	note_length 6
	note_pitch E_, 3
	wave 63
	note_length 3
	note_pitch D_, 2
	note_length 3
	rest
	note_pitch D_, 2
	note_length 3
	note_pitch D_, 2
	wave 67
	note_length 6
	note_pitch F_, 3
	wave 63
	note_length 3
	note_pitch D_, 2
	note_length 3
	rest
	wave 67
	note_length 6
	note_pitch G#, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch F#, 3
	song_ret

Music_GymBattleDanger_branch_18f31e: ; 18f31e (63:731e)
	musicd7 12
	wave 63
	note_length 3
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 6
	note_pitch B_, 0
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 6
	note_pitch B_, 0
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 6
	note_pitch B_, 0
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 6
	note_pitch B_, 0
	note_length 6
	note_pitch C_, 1
	note_length 6
	note_pitch C_, 1
	note_length 6
	note_pitch C_, 1
	note_length 6
	note_pitch C_, 1
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 6
	note_pitch B_, 0
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 6
	note_pitch B_, 0
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 6
	note_pitch B_, 0
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 2
	note_pitch B_, 0
	note_length 1
	rest
	note_length 6
	note_pitch B_, 0
	note_length 6
	note_pitch A#, 0
	note_length 6
	note_pitch A#, 0
	note_length 6
	note_pitch A#, 0
	note_length 5
	note_pitch A#, 0
	song_ret

; unreferenced ?
Music_GymBattleDanger_branch_18f3c3: ; 18f3c3 (63:73c3)
	wave 64
	note_length 6
	note_pitch B_, 0
	note_length 3
	rest
	note_pitch B_, 0
	note_length 3
	note_pitch F#, 1
	note_length 3
	rest
	note_length 12
	note_pitch B_, 0
	note_length 6
	note_pitch A_, 0
	note_length 3
	note_pitch A#, 0
	note_length 3
	rest
	note_length 3
	note_pitch B_, 0
	note_length 3
	rest
	note_length 6
	note_pitch B_, 0
	note_length 3
	rest
	note_pitch B_, 0
	note_length 3
	note_pitch F#, 1
	note_length 3
	rest
	note_length 12
	note_pitch B_, 0
	note_length 3
	note_pitch A#, 0
	note_length 3
	rest
	note_length 12
	note_pitch B_, 0
	note_length 6
	note_pitch B_, 0
	note_length 3
	rest
	note_pitch B_, 0
	note_length 3
	note_pitch F#, 1
	note_length 3
	rest
	note_length 12
	note_pitch B_, 0
	note_length 6
	note_pitch A_, 0
	note_length 3
	note_pitch A#, 0
	note_length 3
	rest
	note_length 3
	note_pitch B_, 0
	note_length 3
	rest
	note_length 6
	note_pitch B_, 0
	note_length 3
	rest
	note_pitch B_, 0
	note_length 3
	note_pitch F#, 1
	note_length 3
	rest
	note_length 12
	note_pitch B_, 0
	note_length 6
	note_pitch A_, 0
	note_length 3
	note_pitch A#, 0
	note_length 3
	rest
	note_length 3
	note_pitch B_, 0
	note_length 3
	rest
	song_ret

Music_GymBattleDanger_branch_18f416: ; 18f416 (63:7416)
	wave 62
	musicd7 12
	note_length 6
	note_pitch B_, 0
	note_length 3
	rest
	note_pitch B_, 0
	note_length 3
	note_pitch F#, 1
	note_length 3
	rest
	note_length 12
	note_pitch B_, 0
	note_length 6
	note_pitch A_, 0
	note_length 6
	note_pitch A#, 0
	note_length 6
	note_pitch B_, 0
	note_length 6
	note_pitch B_, 0
	note_length 3
	rest
	note_pitch B_, 0
	note_length 3
	note_pitch F#, 1
	note_length 3
	rest
	note_length 12
	note_pitch B_, 0
	note_length 6
	note_pitch F#, 1
	note_length 6
	note_pitch F_, 1
	note_length 6
	note_pitch F#, 1
	note_length 6
	note_pitch G_, 1
	note_length 3
	rest
	note_pitch C_, 1
	note_length 3
	note_pitch C_, 1
	note_length 3
	rest
	note_length 12
	note_pitch G_, 1
	note_length 6
	note_pitch A#, 0
	note_length 6
	note_pitch B_, 0
	note_length 6
	note_pitch C_, 1
	note_length 6
	note_pitch G_, 1
	note_length 3
	rest
	note_pitch C_, 1
	note_length 3
	note_pitch C_, 1
	note_length 3
	rest
	note_length 12
	note_pitch G_, 1
	note_length 6
	note_pitch G_, 1
	note_length 6
	note_pitch F#, 1
	note_length 6
	note_pitch F_, 1
	note_length 6
	note_pitch B_, 0
	note_length 3
	rest
	note_pitch B_, 0
	note_length 3
	note_pitch F#, 1
	note_length 3
	rest
	note_length 12
	note_pitch B_, 0
	note_length 6
	note_pitch A_, 0
	note_length 6
	note_pitch A#, 0
	note_length 6
	note_pitch B_, 0
	note_length 6
	note_pitch B_, 0
	note_length 3
	rest
	note_pitch B_, 0
	note_length 3
	note_pitch F#, 1
	note_length 3
	rest
	note_length 12
	note_pitch B_, 0
	note_length 6
	note_pitch F#, 1
	note_length 6
	note_pitch F_, 1
	note_length 6
	note_pitch F#, 1
	note_length 6
	note_pitch D_, 1
	note_length 3
	note_pitch D_, 1
	note_length 3
	note_pitch E_, 1
	note_length 6
	note_pitch A_, 1
	note_length 6
	note_pitch E_, 1
	note_length 6
	note_pitch C#, 1
	note_length 6
	note_pitch A_, 1
	note_length 6
	note_pitch E_, 1
	note_length 6
	note_pitch C#, 2
	note_length 6
	note_pitch G_, 1
	note_length 6
	note_pitch G_, 1
	note_length 6
	note_pitch F#, 1
	note_length 6
	note_pitch F#, 1
	note_length 6
	note_pitch F_, 1
	note_length 6
	note_pitch F_, 1
	note_length 6
	note_pitch E_, 1
	note_length 6
	note_pitch E_, 1
	song_ret

Music_GymBattleDanger_branch_18f4a3: ; 18f4a3 (63:74a3)
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch D_, 2
	note_length 6
	rest
	note_pitch D_, 2
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch D_, 2
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch D_, 2
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch D_, 2
	note_length 12
	note_pitch B_, 1
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch D_, 2
	note_length 6
	note_pitch C#, 2
	note_length 6
	note_pitch C#, 2
	note_length 3
	note_pitch B_, 1
	note_length 3
	note_pitch C_, 2
	note_length 3
	note_pitch C#, 2
	note_length 3
	note_pitch D_, 2
	note_length 6
	note_pitch C#, 2
	note_length 9
	note_pitch C#, 2
	note_length 9
	rest
	note_length 6
	note_pitch C#, 2
	note_length 6
	note_pitch C#, 2
	note_length 3
	note_pitch E_, 2
	note_length 3
	note_pitch D#, 2
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch D#, 2
	note_length 6
	note_pitch C#, 2
	note_length 9
	note_pitch C#, 2
	note_length 9
	rest
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch D_, 2
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch D_, 2
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch D_, 2
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch D_, 2
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch D_, 2
	note_length 12
	note_pitch B_, 1
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch D_, 2
	note_length 6
	note_pitch C#, 3
	note_length 6
	note_pitch E_, 2
	note_length 6
	note_pitch C#, 2
	note_length 6
	note_pitch C#, 3
	note_length 6
	note_pitch E_, 2
	note_length 6
	note_pitch C#, 2
	note_length 6
	note_pitch C#, 3
	note_length 6
	note_pitch E_, 2
	note_length 6
	note_pitch C#, 3
	note_length 6
	note_pitch E_, 2
	note_length 6
	note_pitch C#, 2
	note_length 6
	note_pitch C#, 3
	note_length 6
	note_pitch C#, 3
	note_length 6
	note_pitch E_, 2
	note_length 6
	note_pitch C#, 2
	note_length 6
	note_pitch C#, 3
	song_ret

Music_GymBattleDanger_branch_18f523: ; 18f523 (63:7523)
	note_length 3
	note_pitch F#, 0
	note_length 3
	rest
	note_pitch C_, 3
	note_length 3
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_pitch C_, 3
	note_length 3
	rest
	note_pitch C_, 3
	note_length 3
	note_pitch F#, 1
	note_length 3
	note_pitch F#, 0
	note_length 3
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_pitch C_, 3
	note_length 3
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_pitch C_, 3
	note_length 3
	rest
	note_length 6
	note_pitch C_, 3
	note_length 3
	note_pitch F#, 0
	note_length 3
	note_pitch F#, 1
	note_length 3
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch C_, 3
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
	note_pitch C_, 3
	note_length 3
	rest
	note_pitch C_, 3
	note_length 3
	note_pitch G_, 1
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
	note_pitch C_, 3
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch C_, 3
	note_length 3
	rest
	note_length 6
	note_pitch C_, 3
	note_length 3
	note_pitch G_, 0
	note_length 3
	note_pitch G_, 1
	note_length 3
	note_pitch G#, 0
	note_length 3
	rest
	note_pitch C_, 3
	note_length 3
	rest
	note_pitch G#, 0
	note_length 3
	rest
	note_pitch G#, 0
	note_length 3
	rest
	note_pitch G#, 0
	note_length 3
	rest
	note_pitch G#, 0
	note_length 3
	rest
	note_pitch C_, 3
	note_length 3
	rest
	note_pitch C_, 3
	note_length 3
	note_pitch G#, 1
	note_length 3
	note_pitch G#, 0
	note_length 3
	rest
	note_pitch G#, 0
	note_length 3
	rest
	note_pitch G#, 0
	note_length 3
	rest
	note_pitch C_, 3
	note_length 3
	rest
	note_pitch G#, 0
	note_length 3
	rest
	note_pitch C_, 3
	note_length 3
	rest
	note_length 6
	note_pitch C_, 3
	note_length 3
	note_pitch G#, 0
	note_length 3
	note_pitch G#, 1
	song_ret

Music_GymBattleDanger_branch_18f5ba: ; 18f5ba (63:75ba)
	note_length 18
	note_pitch A_, 0
	note_length 30
	note_pitch G#, 0
	note_length 18
	note_pitch G_, 0
	note_length 30
	note_pitch F#, 0
	note_length 3
	note_pitch F_, 0
	note_length 3
	rest
	note_pitch F_, 0
	note_length 3
	rest
	note_pitch F_, 0
	note_length 3
	rest
	note_pitch F_, 0
	note_length 3
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_pitch F#, 0
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
	note_pitch G#, 0
	note_length 3
	rest
	note_pitch G#, 0
	note_length 3
	rest
	note_pitch G#, 0
	note_length 3
	rest
	note_pitch G#, 0
	note_length 3
	rest
	note_length 12
	note_pitch A_, 0
	note_length 12
	note_pitch G#, 0
	note_length 12
	note_pitch A_, 0
	note_length 12
	note_pitch B_, 0
	song_ret

Music_GymBattleDanger_Ch4: ; 18f5fc (63:75fc)
	stereo_panning_both
	song_call Music_GymBattleDanger_branch_18f612
Music_GymBattleDanger_branch_18f600: ; 18f600 (63:7600)
	song_call Music_GymBattleDanger_branch_18f64d
	song_call Music_GymBattleDanger_branch_18f6c8
	song_call Music_GymBattleDanger_branch_18f7c8
	song_call Music_GymBattleDanger_branch_18f849
	song_call Music_GymBattleDanger_branch_18f909
	song_jump Music_GymBattleDanger_branch_18f600
Music_GymBattleDanger_branch_18f612: ; 18f612 (63:7612)
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 18
	note_length 3
	noise 18
	note_length 6
	noise 15
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 6
	noise 17
	note_length 6
	noise 15
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
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

Music_GymBattleDanger_branch_18f64d: ; 18f64d (63:764d)
	note_length 3
	noise 15
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
	noise 11
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
	noise 17
	note_length 3
	rest
	note_length 9
	noise 17
	note_length 3
	rest
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
	noise 11
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
	noise 17
	note_length 3
	rest
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 18
	note_length 3
	noise 18
	song_ret

Music_GymBattleDanger_branch_18f6c8: ; 18f6c8 (63:76c8)
	note_length 3
	noise 15
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
	noise 11
	note_length 3
	noise 11
	note_length 3
	note_pitch A#, 0
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
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	rest
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	note_pitch A#, 0
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
	noise 11
	note_length 3
	noise 11
	note_length 3
	note_pitch A#, 0
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
	noise 11
	note_length 3
	noise 17
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
	noise 11
	note_length 3
	noise 11
	note_length 3
	note_pitch A#, 0
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
	noise 11
	note_length 3
	noise 11
	note_length 3
	note_pitch A#, 0
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
	noise 11
	note_length 3
	noise 11
	note_length 3
	note_pitch A#, 0
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
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 11
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

Music_GymBattleDanger_branch_18f7c8: ; 18f7c8 (63:77c8)
	note_length 6
	noise 3
	note_length 6
	noise 16
	note_length 6
	noise 17
	note_length 6
	noise 11
	note_length 6
	noise 3
	note_length 6
	noise 11
	note_length 6
	noise 17
	note_length 6
	noise 16
	note_length 6
	noise 3
	note_length 6
	noise 11
	note_length 6
	noise 17
	note_length 6
	noise 11
	note_length 6
	noise 3
	note_length 6
	noise 11
	note_length 6
	noise 17
	note_length 6
	noise 11
	note_length 6
	noise 3
	note_length 6
	noise 16
	note_length 6
	noise 17
	note_length 6
	noise 11
	note_length 6
	noise 3
	note_length 6
	noise 11
	note_length 6
	noise 17
	note_length 6
	noise 16
	note_length 6
	noise 3
	note_length 6
	noise 11
	note_length 6
	noise 17
	note_length 6
	noise 11
	note_length 6
	noise 3
	note_length 6
	noise 11
	note_length 6
	noise 17
	note_length 6
	noise 11
	note_length 6
	noise 3
	note_length 6
	noise 16
	note_length 6
	noise 17
	note_length 6
	noise 11
	note_length 6
	noise 3
	note_length 6
	noise 11
	note_length 6
	noise 17
	note_length 6
	noise 16
	note_length 6
	noise 3
	note_length 6
	noise 11
	note_length 6
	noise 17
	note_length 6
	noise 11
	note_length 6
	noise 3
	note_length 6
	noise 11
	note_length 6
	noise 17
	note_length 6
	noise 11
	note_length 6
	noise 3
	note_length 6
	noise 16
	note_length 6
	noise 17
	note_length 6
	noise 11
	note_length 6
	noise 3
	note_length 6
	noise 11
	note_length 6
	noise 17
	note_length 6
	noise 16
	note_length 6
	noise 3
	note_length 6
	noise 11
	note_length 6
	noise 17
	note_length 6
	noise 11
	note_length 6
	noise 3
	note_length 6
	noise 11
	note_length 6
	noise 17
	note_length 6
	noise 11
	song_ret

Music_GymBattleDanger_branch_18f849: ; 18f849 (63:7849)
	note_length 3
	noise 15
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
	noise 11
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
	rest
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
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
	noise 11
	note_length 3
	noise 11
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
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 11
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
	noise 11
	note_length 3
	noise 11
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
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	song_ret

Music_GymBattleDanger_branch_18f909: ; 18f909 (63:7909)
	note_length 3
	noise 16
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
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 11
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
	noise 17
	note_length 3
	rest
	noise 17
	note_length 3
	rest
	noise 17
	note_length 3
	rest
	noise 17
	note_length 3
	rest
	noise 17
	note_length 3
	rest
	noise 17
	note_length 3
	rest
	noise 17
	note_length 3
	rest
	noise 17
	note_length 3
	rest
	noise 17
	note_length 3
	rest
	noise 17
	note_length 3
	rest
	noise 17
	note_length 3
	rest
	noise 17
	note_length 3
	rest
	noise 17
	note_length 3
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
	note_length 3
	noise 18
	note_length 12
	noise 16
	note_length 12
	noise 16
	note_length 12
	noise 16
	note_length 12
	noise 16
	song_ret
