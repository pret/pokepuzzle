Music_LanceDanger: ; 1913f3 (64:53f3)
	dw Music_LanceDanger_Ch1
	dw Music_LanceDanger_Ch2
	dw Music_LanceDanger_Ch3
	dw Music_LanceDanger_Ch4

Music_LanceDanger_Ch1: ; 1913fb (64:53fb)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	musicd6 20
	musicd7 0
	duty_cycle_12_5
	musice3 2
	musicd8 221
	song_call Music_LanceDanger_branch_19141b
Music_LanceDanger_branch_19140c: ; 19140c (64:540c)
	song_call Music_LanceDanger_branch_191463
	song_call Music_LanceDanger_branch_1914e7
	song_call Music_LanceDanger_branch_191566
	song_call Music_LanceDanger_branch_19160b
	song_jump Music_LanceDanger_branch_19140c

Music_LanceDanger_branch_19141b: ; 19141b (64:541b)
	duty_cycle_12_5
	musicd8 38
	note_length 48
	rest
	note_length 48
	rest
	note_length 3
	note_pitch C#, 3
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch C#, 3
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch C#, 3
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch C#, 3
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch C#, 3
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch F_, 3
	note_length 3
	note_pitch E_, 3
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch C#, 3
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch F_, 2
	note_length 3
	note_pitch E_, 2
	note_length 3
	note_pitch D_, 2
	song_ret

Music_LanceDanger_branch_191463: ; 191463 (64:5463)
	note_length 6
	note_pitch F#, 2
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch F#, 2
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch G_, 2
	note_length 6
	note_pitch C_, 2
	note_length 6
	note_pitch F#, 2
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch F#, 2
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch F_, 2
	note_length 6
	note_pitch A#, 1
	note_length 6
	note_pitch F#, 2
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch F#, 2
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch G_, 2
	note_length 6
	note_pitch C_, 2
	musicd8 120
	note_length 2
	note_pitch C_, 1
	note_length 2
	continue_note
	note_pitch D_, 1
	note_length 2
	continue_note
	note_pitch F_, 1
	note_length 2
	continue_note
	note_pitch D_, 1
	note_length 2
	continue_note
	note_pitch C#, 1
	note_length 2
	continue_note
	note_pitch C_, 1
	note_length 2
	continue_note
	note_length 12
	note_pitch C_, 2
	note_length 12
	note_pitch A#, 1
	musicd8 38
	note_length 6
	note_pitch F#, 2
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch F#, 2
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch G_, 2
	note_length 6
	note_pitch C_, 2
	note_length 6
	note_pitch F#, 2
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch F#, 2
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch F_, 2
	note_length 6
	note_pitch A#, 1
	note_length 6
	note_pitch F#, 2
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch F#, 2
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch B_, 1
	note_length 6
	note_pitch G_, 2
	note_length 6
	note_pitch C_, 2
	note_length 6
	note_pitch G_, 1
	note_length 18
	note_pitch D_, 2
	note_length 12
	note_pitch C#, 2
	note_length 12
	note_pitch C_, 2
	song_ret

Music_LanceDanger_branch_1914e7: ; 1914e7 (64:54e7)
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch C_, 3
	note_length 6
	rest
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch A#, 2
	note_length 6
	rest
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch C_, 3
	note_length 6
	rest
	musicd8 120
	note_length 2
	note_pitch C_, 1
	note_length 2
	continue_note
	note_pitch D_, 1
	note_length 2
	continue_note
	note_pitch F_, 1
	note_length 2
	continue_note
	note_pitch D_, 1
	note_length 2
	continue_note
	note_pitch C#, 1
	note_length 2
	continue_note
	note_pitch C_, 1
	note_length 2
	continue_note
	note_length 12
	note_pitch C_, 2
	note_length 12
	note_pitch A#, 1
	musicd8 38
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch C_, 3
	note_length 6
	rest
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch A#, 2
	note_length 6
	rest
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch C_, 3
	note_length 6
	rest
	note_pitch G_, 1
	note_length 18
	note_pitch D_, 2
	note_length 12
	note_pitch C#, 2
	note_length 12
	note_pitch C_, 2
	song_ret

Music_LanceDanger_branch_191566: ; 191566 (64:5566)
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	rest
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch F_, 3
	note_length 6
	rest
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	rest
	note_length 1
	rest
	note_length 3
	note_pitch F#, 4
	note_length 3
	note_pitch B_, 3
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch B_, 3
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch B_, 1
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch B_, 1
	note_length 2
	note_pitch F#, 1
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	rest
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch F_, 3
	note_length 6
	rest
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	rest
	note_length 1
	rest
	note_length 3
	note_pitch B_, 1
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch B_, 3
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch B_, 3
	note_length 3
	note_pitch F#, 4
	note_length 3
	note_pitch B_, 3
	note_length 3
	note_pitch F#, 4
	note_length 3
	note_pitch B_, 4
	note_length 2
	note_pitch F_, 5
	song_ret

Music_LanceDanger_branch_19160b: ; 19160b (64:560b)
	musicd8 120
	note_length 15
	note_pitch B_, 1
	note_length 3
	rest
	note_pitch B_, 1
	note_length 15
	rest
	note_length 12
	note_pitch B_, 1
	note_length 33
	continue_note
	note_length 3
	rest
	note_pitch B_, 1
	note_length 9
	rest
	note_length 15
	note_pitch C_, 2
	note_length 3
	rest
	note_pitch C_, 2
	note_length 15
	rest
	note_length 12
	note_pitch C_, 2
	note_length 42
	continue_note
	note_length 6
	rest
	note_length 15
	note_pitch B_, 1
	note_length 3
	rest
	note_pitch B_, 1
	note_length 15
	rest
	note_length 12
	note_pitch B_, 1
	note_length 33
	continue_note
	note_length 3
	rest
	note_pitch B_, 1
	note_length 9
	rest
	note_length 15
	note_pitch C_, 2
	note_length 3
	rest
	note_length 24
	note_pitch C_, 2
	note_length 6
	rest
	note_length 15
	note_pitch D_, 2
	note_length 3
	rest
	note_length 27
	note_pitch D_, 2
	note_length 3
	rest
	note_length 48
	rest
	musicd8 38
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch E_, 3
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch E_, 3
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch C#, 3
	note_length 3
	note_pitch E_, 3
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch C#, 3
	note_length 3
	note_pitch A_, 2
	note_length 12
	note_pitch G_, 2
	song_ret

Music_LanceDanger_Ch2: ; 191669 (64:5669)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	musicd4 55
	musice3 2
	musicd4 55
	song_call Music_LanceDanger_branch_191686
Music_LanceDanger_branch_191677: ; 191677 (64:5677)
	song_call Music_LanceDanger_branch_19174d
	song_call Music_LanceDanger_branch_191924
	song_call Music_LanceDanger_branch_19198b
	song_call Music_LanceDanger_branch_1919fe
	song_jump Music_LanceDanger_branch_191677

Music_LanceDanger_branch_191686: ; 191686 (64:5686)
	duty_cycle_50
	musicd8 207
	musicd7 244
	duty_cycle_12_5
	musicd8 39
	note_length 3
	note_pitch A_, 3
	musicd8 36
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch F_, 3
	musicd8 39
	note_length 3
	note_pitch A_, 3
	musicd8 36
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch F_, 3
	musicd8 39
	note_length 3
	note_pitch A_, 3
	musicd8 36
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch F_, 3
	musicd8 39
	note_length 3
	note_pitch A_, 3
	musicd8 36
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch F_, 3
	musicd8 39
	note_length 3
	note_pitch A_, 3
	musicd8 36
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch F_, 3
	musicd8 39
	note_length 3
	note_pitch A_, 3
	musicd8 36
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch F_, 3
	musicd8 39
	note_length 3
	note_pitch A_, 3
	musicd8 36
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch F_, 3
	musicd8 39
	note_length 3
	note_pitch A_, 3
	musicd8 36
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch F_, 3
	musicd8 39
	note_length 3
	note_pitch A_, 3
	musicd8 36
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch F_, 3
	musicd8 39
	note_length 3
	note_pitch A_, 3
	musicd8 36
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch F_, 3
	musicd8 39
	note_length 3
	note_pitch A_, 3
	musicd8 36
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch F_, 3
	musicd8 39
	note_length 3
	note_pitch A_, 3
	musicd8 36
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch F_, 3
	musicd8 39
	note_length 3
	note_pitch A_, 3
	musicd8 36
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch F_, 3
	musicd8 39
	note_length 3
	note_pitch D_, 4
	musicd8 36
	note_length 3
	note_pitch C#, 4
	note_length 3
	note_pitch C_, 4
	note_length 3
	note_pitch A#, 3
	musicd8 39
	note_length 3
	note_pitch A_, 3
	musicd8 36
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch F_, 3
	musicd8 39
	note_length 3
	note_pitch D_, 3
	musicd8 36
	note_length 3
	note_pitch C#, 3
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch A#, 2
	song_ret

Music_LanceDanger_branch_19174d: ; 19174d (64:574d)
	musicd8 236
	musicd7 0
	note_length 6
	note_pitch F#, 3
	musicd7 12
	musicd8 211
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
	musicd7 0
	musicd8 236
	note_length 6
	note_pitch F#, 3
	musicd7 12
	musicd8 211
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
	musicd7 0
	musicd8 236
	note_length 6
	note_pitch G_, 3
	musicd7 12
	musicd8 211
	note_length 2
	note_pitch C_, 1
	note_length 1
	rest
	note_length 2
	note_pitch C_, 1
	note_length 1
	rest
	musicd7 0
	musicd8 236
	note_length 6
	note_pitch F#, 3
	musicd7 12
	musicd8 211
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
	musicd7 0
	musicd8 236
	note_length 6
	note_pitch F#, 3
	musicd7 12
	musicd8 211
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
	musicd7 0
	musicd8 236
	note_length 6
	note_pitch F_, 3
	musicd7 12
	musicd8 211
	note_length 2
	note_pitch A#, 0
	note_length 1
	rest
	note_length 2
	note_pitch A#, 0
	note_length 1
	rest
	musicd7 0
	musicd8 236
	note_length 6
	note_pitch F#, 3
	musicd7 12
	musicd8 211
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
	musicd7 0
	musicd8 236
	note_length 6
	note_pitch F#, 3
	musicd7 12
	musicd8 211
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
	musicd7 0
	musicd8 236
	note_length 6
	note_pitch G_, 3
	musicd7 12
	musicd8 211
	note_length 2
	note_pitch C_, 1
	note_length 1
	rest
	note_length 2
	note_pitch C_, 1
	note_length 1
	rest
	duty_cycle_50
	musicd7 0
	musicd8 176
	note_length 2
	note_pitch C_, 1
	note_length 2
	continue_note
	note_pitch D_, 1
	note_length 2
	continue_note
	note_pitch F_, 1
	note_length 2
	continue_note
	note_pitch D_, 1
	note_length 2
	continue_note
	note_pitch C#, 1
	note_length 2
	continue_note
	note_pitch C_, 1
	note_length 2
	continue_note
	musicd4 58
	note_length 12
	note_pitch C_, 2
	musicd4 55
	note_length 12
	note_pitch A#, 1
	duty_cycle_12_5
	musicd7 0
	musicd8 236
	note_length 6
	note_pitch F#, 3
	musicd7 12
	musicd8 211
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
	musicd7 0
	musicd8 236
	note_length 6
	note_pitch F#, 3
	musicd7 12
	musicd8 211
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
	musicd7 0
	musicd8 236
	note_length 6
	note_pitch G_, 3
	musicd7 12
	musicd8 211
	note_length 2
	note_pitch C_, 1
	note_length 1
	rest
	note_length 2
	note_pitch C_, 1
	note_length 1
	rest
	musicd7 0
	musicd8 236
	note_length 6
	note_pitch F#, 3
	musicd7 12
	musicd8 211
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
	musicd7 0
	musicd8 236
	note_length 6
	note_pitch F#, 3
	musicd7 12
	musicd8 211
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
	musicd7 0
	musicd8 236
	note_length 6
	note_pitch F_, 3
	musicd7 12
	musicd8 211
	note_length 2
	note_pitch A#, 0
	note_length 1
	rest
	note_length 2
	note_pitch A#, 0
	note_length 1
	rest
	musicd7 0
	musicd8 236
	note_length 6
	note_pitch F#, 3
	musicd7 12
	musicd8 211
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
	musicd7 0
	musicd8 236
	note_length 6
	note_pitch F#, 3
	musicd7 12
	musicd8 211
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
	musicd7 0
	musicd8 236
	note_length 6
	note_pitch G_, 3
	musicd7 12
	musicd8 211
	note_length 2
	note_pitch C_, 1
	note_length 1
	rest
	note_length 2
	note_pitch C_, 1
	note_length 1
	rest
	musicd7 0
	duty_cycle_50
	musicd8 180
	note_length 6
	note_pitch G_, 1
	musicd4 58
	note_length 18
	note_pitch D_, 2
	musicd4 55
	note_length 12
	note_pitch C#, 2
	note_length 12
	note_pitch C_, 2
	song_ret

Music_LanceDanger_branch_191924: ; 191924 (64:5924)
	duty_cycle_50
	musicd7 0
	musice3 0
	musicd8 165
	musicd4 58
	note_length 6
	note_pitch B_, 3
	musicd4 55
	note_length 12
	note_pitch F#, 3
	note_length 30
	note_pitch B_, 3
	note_length 6
	continue_note
	note_length 6
	rest
	note_pitch A_, 3
	note_length 6
	note_pitch B_, 3
	note_length 12
	note_pitch C_, 4
	note_length 12
	note_pitch A_, 3
	note_length 45
	note_pitch B_, 3
	note_length 3
	rest
	musicd8 176
	note_length 2
	note_pitch C_, 1
	note_length 2
	continue_note
	note_pitch D_, 1
	note_length 2
	continue_note
	note_pitch F_, 1
	note_length 2
	continue_note
	note_pitch D_, 1
	note_length 2
	continue_note
	note_pitch C#, 1
	note_length 2
	continue_note
	note_pitch C_, 1
	note_length 2
	continue_note
	musicd4 58
	note_length 12
	note_pitch C_, 2
	musicd4 55
	note_length 12
	note_pitch A#, 1
	musicd8 165
	musicd4 58
	note_length 6
	note_pitch B_, 3
	musicd4 55
	note_length 12
	note_pitch F#, 3
	note_length 30
	note_pitch B_, 3
	note_length 6
	continue_note
	note_length 6
	rest
	note_pitch A_, 3
	note_length 6
	note_pitch B_, 3
	note_length 12
	note_pitch C_, 4
	note_length 12
	note_pitch D_, 4
	note_length 18
	note_pitch C_, 4
	note_length 30
	note_pitch B_, 3
	musicd8 176
	note_length 6
	note_pitch G_, 1
	note_length 18
	note_pitch D_, 2
	musicd4 58
	note_length 12
	note_pitch C#, 2
	musicd4 55
	note_length 12
	note_pitch C_, 2
	song_ret

Music_LanceDanger_branch_19198b: ; 19198b (64:598b)
	duty_cycle_12_5
	musicd7 0
	musice3 0
	musicd8 48
	musicd4 58
	note_length 18
	note_pitch F#, 3
	musicd4 55
	note_length 30
	note_pitch G_, 3
	note_length 24
	note_pitch A_, 3
	note_length 24
	note_pitch G_, 3
	note_length 45
	note_pitch F#, 3
	note_length 3
	rest
	note_pitch F#, 4
	duty_cycle_12_5
	musicd8 240
	note_length 3
	note_pitch B_, 3
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch B_, 3
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch B_, 1
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch B_, 1
	note_length 3
	note_pitch F#, 1
	duty_cycle_12_5
	musicd7 0
	musice3 0
	musicd8 165
	musicd4 58
	note_length 18
	note_pitch F#, 3
	musicd4 55
	note_length 30
	note_pitch G_, 3
	note_length 24
	note_pitch A_, 3
	note_length 24
	note_pitch G_, 3
	note_length 45
	note_pitch F#, 3
	note_length 3
	rest
	note_pitch B_, 1
	duty_cycle_12_5
	musicd8 240
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch B_, 3
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch B_, 3
	note_length 3
	note_pitch F#, 4
	note_length 3
	note_pitch B_, 3
	note_length 3
	note_pitch F#, 4
	note_length 3
	note_pitch B_, 4
	note_length 3
	note_pitch F_, 5
	song_ret

Music_LanceDanger_branch_1919fe: ; 1919fe (64:59fe)
	duty_cycle_50
	musicd8 165
	note_length 18
	note_pitch B_, 3
	note_length 18
	note_pitch F#, 3
	note_length 12
	note_pitch A_, 3
	note_length 12
	continue_note
	note_length 12
	note_pitch F#, 3
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch A_, 3
	note_length 6
	note_pitch B_, 3
	note_length 18
	note_pitch A_, 3
	note_length 18
	note_pitch G_, 3
	note_length 12
	note_pitch F#, 3
	note_length 24
	continue_note
	musicd4 58
	note_length 6
	note_pitch D_, 4
	musicd4 55
	note_length 6
	note_pitch C_, 4
	note_length 6
	note_pitch B_, 3
	note_length 6
	note_pitch A_, 3
	note_length 18
	note_pitch G_, 3
	note_length 30
	note_pitch F#, 3
	note_length 24
	continue_note
	note_length 3
	note_pitch B_, 2
	note_length 3
	rest
	note_pitch C_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch E_, 3
	note_length 3
	rest
	note_length 48
	note_pitch C_, 3
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch A_, 3
	note_length 6
	note_pitch B_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch B_, 3
	note_length 3
	note_pitch C_, 4
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch E_, 4
	note_length 6
	note_pitch F#, 4
	duty_cycle_12_5
	musicd8 209
	note_length 3
	note_pitch D_, 4
	musicd8 207
	note_length 3
	note_pitch C_, 4
	note_length 3
	note_pitch B_, 3
	note_length 3
	note_pitch A_, 3
	musicd8 209
	note_length 3
	note_pitch B_, 3
	musicd8 207
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch F#, 3
	musicd8 209
	note_length 3
	note_pitch A_, 3
	musicd8 207
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch D_, 3
	musicd8 209
	note_length 3
	note_pitch G_, 3
	musicd8 207
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch C_, 3
	musicd8 209
	note_length 3
	note_pitch D_, 4
	musicd8 207
	note_length 3
	note_pitch C_, 4
	note_length 3
	note_pitch B_, 3
	note_length 3
	note_pitch A_, 3
	musicd8 209
	note_length 3
	note_pitch B_, 3
	musicd8 207
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch F#, 3
	musicd8 209
	note_length 3
	note_pitch A_, 3
	musicd8 207
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch D_, 3
	musicd8 165
	note_length 12
	note_pitch C_, 3
	song_ret

Music_LanceDanger_Ch3: ; 191aac (64:5aac)
	stereo_panning_both
	musicd8 27
	musicd7 12
	musicd4 55
	song_call Music_LanceDanger_branch_191ac5
Music_LanceDanger_branch_191ab6: ; 191ab6 (64:5ab6)
	song_call Music_LanceDanger_branch_191b16
	song_call Music_LanceDanger_branch_191c40
	song_call Music_LanceDanger_branch_191db2
	song_call Music_LanceDanger_branch_191f83
	song_jump Music_LanceDanger_branch_191ab6

Music_LanceDanger_branch_191ac5: ; 191ac5 (64:5ac5)
	wave 61
	musicd8 27
	note_length 6
	note_pitch E_, 0
	note_length 3
	rest
	note_pitch E_, 0
	note_length 6
	rest
	musicd4 58
	note_length 12
	note_pitch A#, 0
	musicd4 55
	note_length 6
	note_pitch A_, 0
	note_length 6
	note_pitch G_, 0
	note_length 6
	note_pitch A_, 0
	note_length 6
	note_pitch E_, 0
	note_length 3
	rest
	note_pitch E_, 0
	note_length 6
	rest
	musicd4 58
	note_length 12
	note_pitch A#, 0
	musicd4 55
	note_length 6
	note_pitch A_, 0
	note_length 6
	note_pitch G_, 0
	note_length 6
	note_pitch A_, 0
	note_length 6
	note_pitch E_, 0
	note_length 3
	rest
	note_pitch E_, 0
	note_length 6
	rest
	musicd4 58
	note_length 12
	note_pitch A#, 0
	musicd4 55
	note_length 6
	note_pitch A_, 0
	note_length 6
	note_pitch G_, 0
	note_length 6
	note_pitch A_, 0
	note_length 6
	note_pitch E_, 0
	note_length 3
	rest
	note_pitch E_, 0
	note_length 6
	rest
	musicd4 58
	note_length 12
	note_pitch A#, 0
	musicd4 55
	note_length 6
	note_pitch A_, 0
	note_length 6
	note_pitch G_, 0
	note_length 6
	note_pitch A_, 0
	song_ret

Music_LanceDanger_branch_191b16: ; 191b16 (64:5b16)
	wave 63
	note_length 6
	note_pitch B_, 1
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
	note_pitch B_, 1
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
	note_pitch C_, 2
	note_length 2
	note_pitch C_, 1
	note_length 1
	rest
	note_length 2
	note_pitch C_, 1
	note_length 1
	rest
	note_length 6
	note_pitch B_, 1
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
	note_pitch B_, 1
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
	note_pitch A#, 1
	note_length 3
	note_pitch A#, 0
	note_length 3
	note_pitch A#, 0
	note_length 6
	note_pitch B_, 1
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
	note_pitch B_, 1
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
	note_pitch C_, 2
	note_length 3
	note_pitch C_, 1
	note_length 3
	note_pitch C_, 1
	note_length 2
	note_pitch F_, 1
	note_length 2
	continue_note
	note_pitch G_, 1
	note_length 2
	continue_note
	note_pitch A#, 1
	note_length 2
	continue_note
	note_pitch G_, 1
	note_length 2
	continue_note
	note_pitch F#, 1
	note_length 2
	continue_note
	note_pitch F_, 1
	note_length 2
	continue_note
	note_length 12
	note_pitch G_, 1
	note_length 12
	note_pitch F_, 1
	note_length 6
	note_pitch B_, 1
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
	note_pitch B_, 1
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
	note_pitch C_, 2
	note_length 2
	note_pitch C_, 1
	note_length 1
	rest
	note_length 2
	note_pitch C_, 1
	note_length 1
	rest
	note_length 6
	note_pitch B_, 1
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
	note_pitch B_, 1
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
	note_pitch A#, 1
	note_length 2
	note_pitch A#, 0
	note_length 1
	rest
	note_length 2
	note_pitch A#, 0
	note_length 1
	rest
	note_length 6
	note_pitch B_, 1
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
	note_pitch B_, 1
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
	note_pitch C_, 2
	note_length 3
	note_pitch C_, 1
	note_length 3
	note_pitch C_, 1
	note_length 6
	note_pitch C_, 1
	note_length 18
	note_pitch A_, 1
	note_length 12
	note_pitch G#, 1
	note_length 12
	note_pitch G_, 1
	song_ret

Music_LanceDanger_branch_191c40: ; 191c40 (64:5c40)
	wave 64
	note_length 6
	note_pitch B_, 1
	wave 62
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
	note_pitch B_, 1
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
	wave 64
	note_length 6
	note_pitch C_, 2
	wave 62
	note_length 2
	note_pitch C_, 1
	note_length 1
	rest
	note_length 2
	note_pitch C_, 1
	note_length 1
	rest
	wave 64
	note_length 6
	note_pitch B_, 1
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
	note_pitch B_, 1
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
	wave 64
	note_length 6
	note_pitch A#, 1
	wave 62
	note_length 2
	note_pitch A#, 0
	note_length 1
	rest
	note_length 2
	note_pitch A#, 0
	note_length 1
	rest
	wave 64
	note_length 6
	note_pitch B_, 1
	wave 62
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
	wave 64
	note_length 6
	note_pitch B_, 1
	wave 62
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
	wave 64
	note_length 6
	note_pitch C_, 2
	wave 62
	note_length 2
	note_pitch C_, 1
	note_length 1
	rest
	note_length 2
	note_pitch C_, 1
	note_length 1
	rest
	note_length 2
	note_pitch F_, 1
	note_length 2
	continue_note
	note_pitch G_, 1
	note_length 2
	continue_note
	note_pitch A#, 1
	note_length 2
	continue_note
	note_pitch G_, 1
	note_length 2
	continue_note
	note_pitch F#, 1
	note_length 2
	continue_note
	note_pitch F_, 1
	note_length 2
	continue_note
	note_length 12
	note_pitch G_, 1
	note_length 12
	note_pitch F_, 1
	wave 64
	note_length 6
	note_pitch B_, 1
	wave 62
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
	wave 64
	note_length 6
	note_pitch B_, 1
	wave 62
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
	wave 64
	note_length 6
	note_pitch C_, 2
	wave 62
	note_length 2
	note_pitch C_, 1
	note_length 1
	rest
	note_length 2
	note_pitch C_, 1
	note_length 1
	rest
	wave 64
	note_length 6
	note_pitch B_, 1
	wave 62
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
	wave 64
	note_length 6
	note_pitch B_, 1
	wave 62
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
	wave 64
	note_length 6
	note_pitch A#, 1
	wave 62
	note_length 2
	note_pitch A#, 0
	note_length 1
	rest
	note_length 2
	note_pitch A#, 0
	note_length 1
	rest
	wave 64
	note_length 6
	note_pitch B_, 1
	wave 62
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
	wave 64
	note_length 6
	note_pitch B_, 1
	wave 62
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
	wave 64
	note_length 6
	note_pitch C_, 2
	wave 62
	note_length 2
	note_pitch C_, 1
	note_length 1
	rest
	note_length 2
	note_pitch C_, 1
	note_length 1
	rest
	note_length 6
	note_pitch C_, 1
	note_length 18
	note_pitch A_, 1
	note_length 12
	note_pitch G#, 1
	note_length 12
	note_pitch G_, 1
	song_ret

Music_LanceDanger_branch_191db2: ; 191db2 (64:5db2)
	wave 62
	note_length 6
	note_pitch F#, 2
	wave 62
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	wave 62
	note_length 6
	note_pitch F#, 2
	wave 62
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	wave 62
	note_length 6
	note_pitch G_, 2
	wave 62
	note_length 2
	note_pitch G_, 1
	note_length 1
	rest
	note_length 2
	note_pitch G_, 1
	note_length 1
	rest
	wave 62
	note_length 6
	note_pitch F#, 2
	wave 62
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	wave 62
	note_length 6
	note_pitch F#, 2
	wave 62
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	wave 62
	note_length 6
	note_pitch F_, 2
	wave 62
	note_length 2
	note_pitch F_, 1
	note_length 1
	rest
	note_length 2
	note_pitch F_, 1
	note_length 1
	rest
	wave 62
	note_length 6
	note_pitch F#, 2
	wave 62
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	wave 62
	note_length 6
	note_pitch F#, 2
	wave 62
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	wave 62
	note_length 6
	note_pitch G_, 2
	wave 62
	note_length 2
	note_pitch G_, 1
	note_length 1
	rest
	note_length 2
	note_pitch G_, 1
	note_length 1
	rest
	wave 62
	note_length 6
	note_pitch F#, 2
	wave 62
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	wave 62
	note_length 6
	note_pitch F#, 2
	wave 62
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	wave 62
	note_length 6
	note_pitch F_, 2
	wave 62
	note_length 2
	note_pitch F_, 1
	note_length 1
	rest
	note_length 2
	note_pitch F_, 1
	note_length 1
	rest
	wave 62
	note_length 6
	note_pitch F#, 2
	wave 62
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	wave 62
	note_length 6
	note_pitch F#, 2
	wave 62
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	wave 62
	note_length 6
	note_pitch G_, 2
	wave 62
	note_length 2
	note_pitch G_, 1
	note_length 1
	rest
	note_length 2
	note_pitch G_, 1
	note_length 1
	rest
	wave 62
	note_length 6
	note_pitch F#, 2
	wave 62
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	wave 62
	note_length 6
	note_pitch F#, 2
	wave 62
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	wave 62
	note_length 6
	note_pitch F_, 2
	wave 62
	note_length 2
	note_pitch F_, 1
	note_length 1
	rest
	note_length 2
	note_pitch F_, 1
	note_length 1
	rest
	wave 62
	note_length 6
	note_pitch F#, 2
	wave 62
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	wave 62
	note_length 6
	note_pitch F#, 2
	wave 62
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	wave 62
	note_length 6
	note_pitch G_, 2
	wave 62
	note_length 2
	note_pitch G_, 1
	note_length 1
	rest
	note_length 2
	note_pitch G_, 1
	note_length 1
	rest
	wave 62
	note_length 6
	note_pitch F#, 2
	wave 62
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	wave 62
	note_length 6
	note_pitch F#, 2
	wave 62
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	note_length 2
	note_pitch F#, 1
	note_length 1
	rest
	wave 62
	note_length 6
	note_pitch F_, 2
	wave 62
	note_length 2
	note_pitch F_, 1
	note_length 1
	rest
	note_length 2
	note_pitch F_, 1
	note_length 1
	rest
	song_ret

Music_LanceDanger_branch_191f83: ; 191f83 (64:5f83)
	note_length 3
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_length 6
	note_pitch F_, 1
	note_length 3
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_length 12
	note_pitch F#, 1
	note_length 3
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
	note_pitch G_, 1
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	rest
	note_length 6
	note_pitch F#, 1
	note_length 3
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
	note_pitch G_, 1
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	rest
	note_length 12
	note_pitch G_, 1
	note_length 3
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_length 6
	note_pitch F_, 1
	note_length 3
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_length 12
	note_pitch F#, 1
	note_length 6
	note_pitch G_, 1
	note_length 6
	note_pitch G_, 2
	note_length 6
	note_pitch G_, 1
	note_length 6
	note_pitch G_, 2
	note_length 6
	note_pitch G_, 1
	note_length 6
	note_pitch G_, 2
	note_length 6
	note_pitch G_, 1
	note_length 6
	note_pitch G_, 2
	note_length 6
	note_pitch A_, 1
	note_length 6
	note_pitch A_, 2
	note_length 6
	note_pitch A_, 1
	note_length 6
	note_pitch A_, 2
	note_length 6
	note_pitch A_, 1
	note_length 6
	note_pitch A_, 2
	note_length 6
	note_pitch A_, 1
	note_length 6
	note_pitch A_, 2
	wave 64
	musicd8 104
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch C_, 2
	note_length 4
	note_pitch D_, 3
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch B_, 2
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch D_, 2
	musicd8 27
	note_length 11
	note_pitch C_, 2
	song_ret

Music_LanceDanger_Ch4: ; 19206b (64:606b)
	stereo_panning_both
	musicd6 20
	song_call Music_LanceDanger_branch_192080
Music_LanceDanger_branch_192071: ; 192071 (64:6071)
	song_call Music_LanceDanger_branch_1920d1
	song_call Music_LanceDanger_branch_192162
	song_call Music_LanceDanger_branch_1921fb
	song_call Music_LanceDanger_branch_19228c
	song_jump Music_LanceDanger_branch_192071

Music_LanceDanger_branch_192080: ; 192080 (64:6080)
	note_length 6
	noise 16
	note_length 6
	noise 11
	note_length 6
	noise 11
	note_length 6
	noise 11
	note_length 6
	noise 11
	note_length 6
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 18
	note_length 3
	noise 18
	note_length 6
	noise 16
	note_length 6
	noise 11
	note_length 6
	noise 11
	note_length 6
	noise 11
	note_length 6
	noise 11
	note_length 6
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 18
	note_length 3
	noise 18
	note_length 6
	noise 16
	note_length 6
	noise 11
	note_length 6
	noise 11
	note_length 6
	noise 11
	note_length 6
	noise 11
	note_length 6
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 18
	note_length 3
	noise 18
	note_length 6
	noise 17
	note_length 6
	noise 15
	note_length 6
	noise 17
	note_length 6
	noise 15
	note_length 6
	noise 17
	note_length 6
	noise 15
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 18
	note_length 3
	noise 18
	song_ret

Music_LanceDanger_branch_1920d1: ; 1920d1 (64:60d1)
	note_length 6
	noise 16
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 4
	noise 18
	note_length 4
	noise 17
	note_length 4
	noise 17
	note_length 4
	noise 18
	note_length 4
	noise 17
	note_length 4
	noise 17
	note_length 6
	noise 16
	note_length 6
	noise 3
	note_length 2
	noise 17
	note_length 2
	noise 17
	note_length 2
	noise 17
	note_length 3
	noise 18
	note_length 3
	noise 18
	note_length 6
	noise 16
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 19
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 19
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 19
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 16
	note_length 6
	noise 17
	note_length 6
	noise 17
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 2
	noise 17
	note_length 2
	noise 17
	note_length 2
	noise 17
	note_length 3
	noise 18
	note_length 3
	noise 18
	song_ret

Music_LanceDanger_branch_192162: ; 192162 (64:6162)
	note_length 6
	noise 16
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 11
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 11
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 11
	note_length 4
	noise 18
	note_length 4
	noise 17
	note_length 4
	noise 17
	note_length 4
	noise 18
	note_length 4
	noise 17
	note_length 4
	noise 17
	note_length 6
	noise 16
	note_length 6
	noise 3
	note_length 2
	noise 19
	note_length 2
	noise 17
	note_length 2
	noise 17
	note_length 3
	noise 18
	note_length 3
	noise 18
	note_length 6
	noise 16
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 11
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 11
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 3
	noise 3
	note_length 3
	noise 19
	note_length 6
	noise 3
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
	noise 17
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 2
	noise 19
	note_length 2
	noise 17
	note_length 2
	noise 17
	note_length 3
	noise 18
	note_length 3
	noise 18
	song_ret

Music_LanceDanger_branch_1921fb: ; 1921fb (64:61fb)
	note_length 6
	noise 16
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 11
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 11
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 3
	noise 3
	note_length 3
	noise 19
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 11
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
	noise 3
	note_length 2
	noise 19
	note_length 2
	noise 17
	note_length 2
	noise 17
	note_length 3
	noise 18
	note_length 3
	noise 18
	note_length 6
	noise 16
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 11
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 11
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 11
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
	noise 3
	note_length 2
	noise 19
	note_length 2
	noise 17
	note_length 2
	noise 17
	note_length 3
	noise 18
	note_length 3
	noise 18
	song_ret

Music_LanceDanger_branch_19228c: ; 19228c (64:628c)
	note_length 6
	noise 16
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 11
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 11
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 11
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
	noise 3
	note_length 2
	noise 19
	note_length 2
	noise 17
	note_length 2
	noise 17
	note_length 3
	noise 18
	note_length 3
	noise 18
	note_length 6
	noise 16
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 11
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 11
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 3
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
	noise 17
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 2
	noise 19
	note_length 2
	noise 17
	note_length 2
	noise 17
	note_length 3
	noise 18
	note_length 3
	noise 18
	note_length 12
	noise 3
	note_length 12
	noise 3
	note_length 12
	noise 3
	note_length 12
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 3
	noise 16
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
	noise 18
	note_length 3
	noise 18
	song_ret
