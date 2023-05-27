Music_EliteFour: ; 18961d (62:561d)
	dw Music_EliteFour_Ch1
	dw Music_EliteFour_Ch2
	dw Music_EliteFour_Ch3
	dw Music_EliteFour_Ch4

Music_EliteFour_Ch1: ; 189625 (62:5625)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	musicd6 15
	musicd7 3
	duty_cycle_75
	musice3 2
	musicd4 55
	musicd7 247
	song_call Music_EliteFour_branch_189645
Music_EliteFour_branch_189638: ; 189638 (62:5638)
	musicd7 0
	song_call Music_EliteFour_branch_189673
	musicd7 3
	song_call Music_EliteFour_branch_1896cc
	song_jump Music_EliteFour_branch_189638

Music_EliteFour_branch_189645: ; 189645 (62:5645)
	duty_cycle_12_5
	musicd4 55
	musice3 2
	musicd8 203
	note_length 3
	note_pitch F_, 2
	note_length 3
	rest
	musicd8 221
	note_length 6
	note_pitch A_, 1
	musicd8 205
	note_length 3
	note_pitch F_, 2
	note_length 3
	rest
	musicd8 221
	note_length 6
	note_pitch G#, 1
	musicd8 206
	note_length 3
	note_pitch F_, 2
	note_length 3
	rest
	musicd8 222
	note_length 6
	note_pitch G_, 1
	musicd8 208
	note_length 3
	note_pitch F_, 2
	note_length 3
	rest
	musicd8 223
	note_length 6
	note_pitch F#, 1
	song_ret

Music_EliteFour_branch_189673: ; 189673 (62:5673)
	duty_cycle_12_5
	musicd8 119
	note_length 48
	rest
	note_length 18
	note_pitch G#, 1
	note_length 18
	note_pitch B_, 1
	note_length 12
	note_pitch B_, 1
	note_length 18
	note_pitch B_, 1
	note_length 18
	note_pitch F_, 2
	note_length 12
	note_pitch G#, 2
	note_length 18
	note_pitch B_, 2
	note_length 18
	note_pitch B_, 2
	note_length 6
	note_pitch D_, 3
	note_length 6
	rest
	note_length 18
	rest
	note_length 18
	note_pitch G_, 1
	note_length 12
	note_pitch A#, 1
	note_length 18
	note_pitch C#, 2
	note_length 18
	note_pitch E_, 2
	note_length 12
	note_pitch G_, 2
	note_length 18
	note_pitch A#, 2
	note_length 18
	note_pitch C#, 3
	note_length 12
	note_pitch E_, 3
	note_length 18
	note_pitch G_, 3
	note_length 18
	note_pitch A#, 3
	note_length 6
	note_pitch C#, 4
	note_length 6
	rest
	song_ret

; unreferenced ?
Music_EliteFour_branch_1896a7: ; 1896a7 (62:56a7)
	note_length 18
	rest
	musicd8 119
	note_length 30
	note_pitch D_, 1
	note_length 36
	note_pitch G#, 1
	note_length 12
	note_pitch C#, 2
	note_length 18
	continue_note
	note_length 30
	note_pitch F_, 2
	note_length 36
	note_pitch B_, 2
	note_length 12
	note_pitch D_, 3
	note_length 18
	rest
	note_length 30
	note_pitch G_, 1
	note_length 36
	note_pitch C#, 2
	note_length 12
	note_pitch G_, 2
	note_length 18
	continue_note
	note_length 30
	note_pitch C#, 3
	note_length 36
	note_pitch G_, 3
	note_length 6
	note_pitch C#, 4
	note_length 6
	rest
	song_ret

Music_EliteFour_branch_1896cc: ; 1896cc (62:56cc)
	musicd8 221
	note_length 3
	note_pitch A#, 2
	note_length 15
	rest
	note_length 3
	note_pitch A#, 2
	note_length 15
	rest
	note_length 3
	note_pitch A#, 2
	note_length 9
	rest
	note_length 3
	note_pitch D_, 3
	note_length 15
	rest
	note_length 3
	note_pitch D_, 3
	note_length 15
	rest
	note_length 3
	note_pitch D_, 3
	note_length 9
	rest
	note_length 3
	note_pitch B_, 2
	note_length 15
	rest
	note_length 3
	note_pitch B_, 2
	note_length 15
	rest
	note_length 3
	note_pitch B_, 2
	note_length 9
	rest
	note_length 3
	note_pitch D_, 3
	note_length 15
	rest
	note_length 3
	note_pitch D_, 3
	note_length 15
	rest
	note_length 3
	note_pitch D_, 3
	note_length 9
	rest
	duty_cycle_75
	musicd8 199
	note_length 4
	note_pitch B_, 0
	musicd8 199
	note_length 3
	note_pitch G#, 0
	note_length 3
	note_pitch F_, 0
	musicd8 198
	note_length 3
	note_pitch G#, 0
	note_length 3
	note_pitch B_, 0
	musicd8 198
	note_length 3
	note_pitch D_, 1
	note_length 3
	note_pitch F_, 1
	musicd8 198
	note_length 3
	note_pitch G#, 1
	note_length 3
	note_pitch B_, 1
	musicd8 197
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch F_, 2
	musicd8 197
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch B_, 2
	musicd8 196
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch F_, 3
	musicd8 166
	note_length 2
	note_pitch G#, 3
	duty_cycle_50
	musicd8 119
	note_length 24
	rest
	note_length 9
	note_pitch F#, 2
	note_length 15
	rest
	note_length 48
	note_pitch F_, 2
	note_length 24
	rest
	note_length 9
	note_pitch C_, 2
	note_length 15
	rest
	note_length 48
	note_pitch B_, 1
	note_length 24
	rest
	note_length 9
	note_pitch F#, 2
	note_length 15
	rest
	note_length 48
	note_pitch G_, 2
	note_length 24
	rest
	note_length 9
	note_pitch G#, 2
	note_length 15
	rest
	note_length 48
	note_pitch A_, 2
	note_length 48
	note_pitch F#, 2
	note_length 48
	note_pitch F_, 2
	note_length 48
	note_pitch C_, 2
	note_length 36
	note_pitch B_, 1
	note_length 12
	rest
	song_ret

Music_EliteFour_Ch2: ; 18975f (62:575f)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	musicd6 15
	musicd4 55
	musicd7 247
	song_call Music_EliteFour_branch_189784
Music_EliteFour_branch_18976d: ; 18976d (62:576d)
	musicd7 0
	song_call Music_EliteFour_branch_1897ac
	musicd7 247
	song_call Music_EliteFour_branch_18980f
	musicd7 3
	song_call Music_EliteFour_branch_189899
	musicd7 247
	song_call Music_EliteFour_branch_1898cc
	song_jump Music_EliteFour_branch_18976d

Music_EliteFour_branch_189784: ; 189784 (62:5784)
	duty_cycle_50
	musicd4 55
	musicd8 35
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch F_, 3
	note_length 3
	note_pitch E_, 3
	note_length 3
	note_pitch A#, 3
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch F_, 3
	note_length 3
	note_pitch E_, 3
	note_length 3
	note_pitch A#, 3
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch F_, 3
	note_length 3
	note_pitch E_, 3
	note_length 3
	note_pitch A#, 3
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch F_, 3
	note_length 3
	note_pitch E_, 3
	note_length 3
	note_pitch A#, 3
	musicd7 3
	song_ret

Music_EliteFour_branch_1897ac: ; 1897ac (62:57ac)
	duty_cycle_12_5
	musicd8 48
	note_length 18
	note_pitch E_, 1
	note_length 18
	note_pitch F_, 1
	note_length 12
	note_pitch G#, 1
	note_length 18
	note_pitch B_, 1
	note_length 18
	note_pitch D_, 2
	note_length 12
	note_pitch E_, 2
	note_length 18
	note_pitch F_, 2
	note_length 18
	note_pitch G#, 2
	note_length 12
	note_pitch B_, 2
	note_length 18
	note_pitch D_, 3
	note_length 18
	note_pitch E_, 3
	note_length 6
	note_pitch F_, 3
	note_length 6
	rest
	note_length 18
	note_pitch G_, 1
	note_length 18
	note_pitch A#, 1
	note_length 12
	note_pitch C#, 2
	note_length 18
	note_pitch E_, 2
	note_length 18
	note_pitch G_, 2
	note_length 12
	note_pitch A#, 2
	note_length 18
	note_pitch C#, 3
	note_length 18
	note_pitch E_, 3
	note_length 12
	note_pitch G_, 3
	note_length 18
	note_pitch A#, 3
	note_length 18
	note_pitch C#, 4
	note_length 6
	note_pitch E_, 4
	note_length 6
	rest
	song_ret

; unreferenced ?
Music_EliteFour_branch_1897e4: ; 1897e4 (62:57e4)
	musicd8 119
	note_length 36
	note_pitch C#, 1
	note_length 12
	note_pitch F_, 1
	note_length 18
	continue_note
	note_length 30
	note_pitch B_, 1
	note_length 36
	note_pitch D_, 2
	note_length 12
	note_pitch G#, 2
	note_length 18
	continue_note
	musicd8 120
	note_length 30
	note_pitch C#, 3
	note_length 36
	note_pitch E_, 1
	musicd8 119
	note_length 12
	note_pitch A#, 1
	note_length 18
	continue_note
	note_length 30
	note_pitch E_, 2
	musicd8 120
	note_length 36
	note_pitch A#, 2
	note_length 12
	note_pitch E_, 3
	note_length 18
	continue_note
	note_length 24
	note_pitch A#, 3
	note_length 6
	rest
	song_ret

Music_EliteFour_branch_18980f: ; 18980f (62:580f)
	musicd8 196
	note_length 3
	note_pitch E_, 3
	note_length 9
	rest
	musicd8 194
	note_length 3
	note_pitch A#, 0
	note_length 3
	rest
	musicd8 196
	note_pitch F_, 3
	note_length 9
	rest
	musicd8 194
	note_length 3
	note_pitch A#, 0
	note_length 3
	rest
	musicd8 196
	note_pitch D_, 3
	note_length 3
	rest
	musicd8 194
	note_pitch A#, 0
	note_length 3
	rest
	musicd8 196
	note_pitch A_, 3
	note_length 9
	rest
	musicd8 194
	note_length 3
	note_pitch A#, 0
	note_length 3
	rest
	musicd8 196
	note_pitch E_, 3
	note_length 9
	rest
	musicd8 194
	note_length 3
	note_pitch A#, 0
	note_length 3
	rest
	musicd8 196
	note_pitch F_, 3
	note_length 3
	rest
	musicd8 194
	note_pitch A#, 0
	note_length 3
	rest
	musicd8 196
	note_pitch G#, 3
	note_length 9
	rest
	musicd8 194
	note_length 3
	note_pitch B_, 0
	note_length 3
	rest
	musicd8 196
	note_pitch A_, 3
	note_length 9
	rest
	musicd8 194
	note_length 3
	note_pitch B_, 0
	note_length 3
	rest
	musicd8 196
	note_pitch F_, 3
	note_length 3
	rest
	musicd8 194
	note_pitch B_, 0
	note_length 3
	rest
	musicd8 196
	note_pitch B_, 3
	note_length 3
	rest
	musicd8 194
	note_pitch B_, 0
	note_length 3
	rest
	musicd8 196
	note_pitch B_, 0
	note_length 3
	rest
	musicd8 194
	note_pitch D_, 4
	note_length 3
	rest
	musicd8 196
	note_pitch D_, 1
	note_length 3
	rest
	musicd8 194
	note_pitch D_, 1
	note_length 3
	rest
	musicd8 196
	note_pitch F_, 4
	note_length 3
	rest
	musicd8 194
	note_pitch F_, 1
	note_length 3
	rest
	song_ret

Music_EliteFour_branch_189899: ; 189899 (62:5899)
	musicd8 196
	note_length 3
	note_pitch B_, 0
	musicd8 198
	note_length 3
	note_pitch G#, 0
	note_length 3
	note_pitch F_, 0
	musicd8 197
	note_length 3
	note_pitch G#, 0
	note_length 3
	note_pitch B_, 0
	musicd8 196
	note_length 3
	note_pitch D_, 1
	note_length 3
	note_pitch F_, 1
	musicd8 195
	note_length 3
	note_pitch G#, 1
	note_length 3
	note_pitch B_, 1
	musicd8 194
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch F_, 2
	musicd8 193
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch B_, 2
	musicd8 192
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch F_, 3
	musicd8 162
	note_length 3
	note_pitch G#, 3
	song_ret

Music_EliteFour_branch_1898cc: ; 1898cc (62:58cc)
	note_length 24
	rest
	musicd8 194
	note_length 9
	note_pitch A_, 2
	note_length 15
	rest
	musicd8 52
	note_length 48
	note_pitch G#, 2
	note_length 24
	rest
	musicd8 194
	note_length 9
	note_pitch E_, 2
	note_length 15
	rest
	note_length 45
	note_pitch D#, 2
	note_length 3
	rest
	note_length 24
	rest
	musicd8 194
	note_length 9
	note_pitch A_, 2
	note_length 15
	rest
	musicd8 52
	note_length 48
	note_pitch A#, 2
	note_length 24
	rest
	musicd8 194
	note_length 9
	note_pitch B_, 2
	note_length 15
	rest
	musicd8 52
	note_length 48
	note_pitch C_, 3
	note_length 48
	note_pitch A_, 2
	note_length 48
	note_pitch G#, 2
	note_length 48
	note_pitch E_, 2
	note_length 36
	note_pitch D#, 2
	note_length 12
	rest
	song_ret

Music_EliteFour_Ch3: ; 189907 (62:5907)
	stereo_panning_both
	musicd4 55
	musicd7 3
	song_call Music_EliteFour_branch_189919
Music_EliteFour_branch_18990f: ; 18990f (62:590f)
	musicd8 104
	musicd7 3
	song_call Music_EliteFour_branch_189946
	song_jump Music_EliteFour_branch_18990f

Music_EliteFour_branch_189919: ; 189919 (62:5919)
	wave 66
	musicd8 27
	wave 69
	note_length 3
	note_pitch A#, 2
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch A#, 2
	wave 68
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch A#, 2
	wave 67
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch A#, 2
	wave 66
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch A_, 2
	song_ret

Music_EliteFour_branch_189946: ; 189946 (62:5946)
	wave 9
	musicd8 104
	note_length 3
	note_pitch C#, 1
	note_length 3
	rest
	note_pitch G#, 1
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	rest
	note_pitch C#, 1
	note_length 3
	rest
	note_pitch G#, 1
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	rest
	note_pitch C#, 1
	note_length 3
	rest
	note_pitch G#, 1
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	rest
	note_pitch C#, 1
	note_length 3
	rest
	note_pitch G#, 1
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	rest
	note_pitch C#, 1
	note_length 3
	rest
	note_pitch G#, 1
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	rest
	note_pitch C#, 1
	note_length 3
	rest
	note_pitch C#, 1
	note_length 3
	rest
	note_pitch G#, 1
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	rest
	note_pitch C#, 1
	note_length 3
	rest
	note_pitch G#, 1
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	rest
	note_pitch C#, 1
	note_length 3
	rest
	note_pitch G#, 1
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	rest
	note_pitch C#, 1
	note_length 3
	rest
	note_pitch G#, 1
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	rest
	note_pitch C#, 1
	note_length 3
	rest
	note_pitch G#, 1
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	rest
	note_pitch C#, 1
	note_length 3
	rest
	note_pitch E_, 1
	note_length 3
	rest
	note_pitch B_, 1
	note_length 3
	rest
	note_pitch A#, 1
	note_length 3
	rest
	note_pitch E_, 1
	note_length 3
	rest
	note_pitch B_, 1
	note_length 3
	rest
	note_pitch A#, 1
	note_length 3
	rest
	note_pitch E_, 1
	note_length 3
	rest
	note_pitch B_, 1
	note_length 3
	rest
	note_pitch A#, 1
	note_length 3
	rest
	note_pitch E_, 1
	note_length 3
	rest
	note_pitch B_, 1
	note_length 3
	rest
	note_pitch A#, 1
	note_length 3
	rest
	note_pitch E_, 1
	note_length 3
	rest
	note_pitch B_, 1
	note_length 3
	rest
	note_pitch A#, 1
	note_length 3
	rest
	note_pitch E_, 1
	note_length 3
	rest
	note_pitch E_, 1
	note_length 3
	rest
	note_pitch B_, 1
	note_length 3
	rest
	note_pitch A#, 1
	note_length 3
	rest
	note_pitch E_, 1
	note_length 3
	rest
	note_pitch B_, 1
	note_length 3
	rest
	note_pitch A#, 1
	note_length 3
	rest
	note_pitch E_, 1
	note_length 3
	rest
	note_pitch B_, 1
	note_length 3
	rest
	note_pitch A#, 1
	note_length 3
	rest
	note_pitch E_, 1
	note_length 3
	rest
	note_pitch B_, 1
	note_length 3
	rest
	note_pitch A#, 1
	note_length 3
	rest
	note_pitch E_, 1
	note_length 3
	rest
	note_pitch B_, 1
	note_length 3
	rest
	note_pitch A#, 1
	note_length 3
	rest
	note_pitch E_, 1
	note_length 3
	rest
	musicd8 27
	wave 66
	musicd7 15
	note_length 3
	note_pitch E_, 2
	note_length 15
	rest
	note_length 3
	note_pitch E_, 2
	note_length 15
	rest
	note_length 3
	note_pitch E_, 2
	note_length 9
	rest
	note_length 3
	note_pitch A#, 2
	note_length 15
	rest
	note_length 3
	note_pitch A#, 2
	note_length 15
	rest
	note_length 3
	note_pitch A#, 2
	note_length 9
	rest
	note_length 3
	note_pitch F_, 2
	note_length 15
	rest
	note_length 3
	note_pitch F_, 2
	note_length 15
	rest
	note_length 3
	note_pitch F_, 2
	note_length 9
	rest
	note_length 3
	note_pitch B_, 2
	note_length 15
	rest
	note_length 3
	note_pitch B_, 2
	note_length 15
	rest
	note_length 3
	note_pitch B_, 2
	note_length 9
	rest
	note_length 48
	rest
	musicd8 109
	wave 67
	note_length 48
	note_pitch C#, 1
	note_length 12
	continue_note
	note_length 3
	note_pitch C#, 1
	wave 68
	note_length 3
	note_pitch C#, 1
	wave 69
	note_length 3
	note_pitch C#, 1
	wave 70
	note_length 3
	note_pitch C#, 1
	wave 66
	musicd8 27
	note_length 12
	note_pitch G#, 1
	note_length 12
	rest
	musicd8 109
	wave 67
	note_length 48
	note_pitch C#, 1
	note_length 12
	continue_note
	note_length 3
	note_pitch C#, 1
	wave 68
	note_length 3
	note_pitch C#, 1
	wave 69
	note_length 3
	note_pitch C#, 1
	wave 70
	note_length 3
	note_pitch C#, 1
	musicd8 27
	wave 67
	note_length 12
	note_pitch G#, 1
	note_length 12
	rest
	musicd8 109
	wave 68
	note_length 48
	note_pitch C#, 1
	note_length 12
	continue_note
	wave 67
	note_length 3
	note_pitch C#, 1
	wave 68
	note_length 3
	note_pitch C#, 1
	wave 69
	note_length 3
	note_pitch C#, 1
	wave 70
	note_length 3
	note_pitch C#, 1
	musicd8 27
	wave 66
	note_length 12
	note_pitch G#, 1
	note_length 12
	rest
	wave 67
	musicd8 109
	note_length 48
	note_pitch C#, 1
	note_length 12
	continue_note
	note_length 3
	note_pitch C#, 1
	wave 68
	note_length 3
	note_pitch C#, 1
	wave 69
	note_length 3
	note_pitch C#, 1
	wave 70
	note_length 3
	note_pitch C#, 1
	musicd8 27
	wave 67
	note_length 12
	note_pitch G#, 1
	note_length 3
	note_pitch C#, 3
	note_length 3
	note_pitch C#, 2
	note_length 3
	note_pitch C#, 1
	note_length 3
	note_pitch G#, 0
	wave 62
	note_length 6
	note_pitch C#, 0
	note_length 6
	rest
	note_pitch C#, 0
	note_length 18
	rest
	note_length 6
	note_pitch C#, 0
	note_length 6
	rest
	note_pitch C#, 0
	note_length 6
	rest
	note_pitch C#, 0
	note_length 18
	rest
	note_length 6
	note_pitch C#, 0
	note_length 6
	rest
	note_pitch C#, 0
	note_length 6
	rest
	note_pitch C#, 0
	note_length 18
	rest
	note_length 6
	note_pitch C#, 0
	note_length 6
	rest
	note_pitch C#, 0
	note_length 6
	rest
	note_pitch C#, 0
	note_length 18
	rest
	note_length 6
	note_pitch C#, 0
	note_length 6
	rest
	song_ret

Music_EliteFour_Ch4: ; 189aef (62:5aef)
	stereo_panning_both
	song_call Music_EliteFour_branch_189af9
Music_EliteFour_branch_189af3: ; 189af3 (62:5af3)
	song_call Music_EliteFour_branch_189b15
	song_jump Music_EliteFour_branch_189af3

Music_EliteFour_branch_189af9: ; 189af9 (62:5af9)
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
	continue_note
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 18
	note_length 3
	noise 18
	note_length 3
	note_pitch E_, 0
	note_length 3
	continue_note
	song_ret

Music_EliteFour_branch_189b15: ; 189b15 (62:5b15)
	note_length 3
	noise 16
	note_length 3
	continue_note
	noise 16
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 16
	note_length 3
	noise 11
	note_length 3
	continue_note
	noise 11
	note_length 3
	noise 16
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 16
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 16
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 16
	note_length 3
	noise 11
	note_length 3
	continue_note
	noise 11
	note_length 3
	noise 16
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 16
	note_length 3
	continue_note
	noise 16
	note_length 3
	continue_note
	noise 16
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 16
	note_length 3
	noise 11
	note_length 3
	continue_note
	noise 11
	note_length 3
	noise 16
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 16
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
	noise 3
	note_length 3
	continue_note
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
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 18
	note_length 3
	noise 18
	note_length 3
	noise 16
	note_length 3
	continue_note
	noise 16
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 16
	note_length 3
	noise 11
	note_length 3
	continue_note
	noise 11
	note_length 3
	noise 16
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 16
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 16
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 16
	note_length 3
	noise 11
	note_length 3
	continue_note
	noise 11
	note_length 3
	noise 16
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 16
	note_length 3
	continue_note
	noise 16
	note_length 3
	continue_note
	noise 16
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 16
	note_length 3
	noise 11
	note_length 3
	continue_note
	noise 11
	note_length 3
	noise 16
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 16
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
	continue_note
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 12
	note_length 3
	noise 11
	note_length 3
	noise 12
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
	note_length 3
	noise 17
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
	noise 11
	note_length 3
	noise 3
	note_length 3
	noise 17
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
	continue_note
	noise 18
	note_length 3
	noise 18
	note_length 3
	noise 3
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 9
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
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 3
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 9
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
	continue_note
	noise 3
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
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 3
	note_length 9
	continue_note
	note_length 3
	noise 17
	note_length 9
	continue_note
	note_length 3
	noise 3
	note_length 3
	continue_note
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
	note_length 9
	continue_note
	note_length 3
	noise 17
	note_length 9
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
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 3
	note_length 9
	continue_note
	note_length 3
	noise 17
	note_length 9
	continue_note
	note_length 3
	noise 3
	note_length 3
	continue_note
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
	note_length 9
	continue_note
	note_length 3
	noise 17
	note_length 9
	continue_note
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
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
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
	noise 11
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
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
	noise 11
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
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
	continue_note
	noise 18
	note_length 3
	noise 18
	song_ret
