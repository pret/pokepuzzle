Music_CleffaAndIgglybuffsTheme: ; 18ca9f (63:4a9f)
	dw Music_CleffaAndIgglybuffsTheme_Ch1
	dw Music_CleffaAndIgglybuffsTheme_Ch2
	dw Music_CleffaAndIgglybuffsTheme_Ch3
	dw Music_CleffaAndIgglybuffsTheme_Ch4

Music_CleffaAndIgglybuffsTheme_Ch1: ; 18caa7 (63:4aa7)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	duty_cycle_12_5
	musicd4 55
	duty_cycle_12_5
	musicd4 55
	musicd8 36
	musicd6 19
	song_call Music_CleffaAndIgglybuffsTheme_branch_18cac8
Music_CleffaAndIgglybuffsTheme_branch_18cab9: ; 18cab9 (63:4ab9)
	song_call Music_CleffaAndIgglybuffsTheme_branch_18cad3
	song_call Music_CleffaAndIgglybuffsTheme_branch_18cb8e
	song_call Music_CleffaAndIgglybuffsTheme_branch_18cc0a
	song_call Music_CleffaAndIgglybuffsTheme_branch_18cc6a
	song_jump Music_CleffaAndIgglybuffsTheme_branch_18cab9

Music_CleffaAndIgglybuffsTheme_branch_18cac8: ; 18cac8 (63:4ac8)
	note_length 36
	rest
	note_length 3
	note_pitch A#, 2
	note_length 9
	continue_note
	note_length 12
	note_pitch A#, 2
	note_length 12
	continue_note
	song_ret

Music_CleffaAndIgglybuffsTheme_branch_18cad3: ; 18cad3 (63:4ad3)
	musicd8 113
	musice3 2
	note_length 12
	note_pitch B_, 3
	note_length 6
	continue_note
	note_length 3
	note_pitch A_, 3
	note_length 3
	continue_note
	note_length 12
	note_pitch B_, 3
	note_length 6
	continue_note
	note_length 3
	note_pitch A_, 3
	note_length 3
	continue_note
	note_length 12
	note_pitch B_, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch B_, 3
	note_length 3
	continue_note
	note_pitch C_, 4
	note_length 12
	note_pitch C#, 4
	note_length 6
	continue_note
	note_length 3
	note_pitch A_, 3
	note_length 3
	continue_note
	note_pitch A_, 3
	note_length 3
	continue_note
	note_pitch F#, 4
	note_length 3
	continue_note
	note_pitch A_, 4
	note_length 9
	rest
	note_length 3
	note_pitch A_, 3
	note_length 9
	continue_note
	note_length 3
	note_pitch D_, 4
	note_length 9
	continue_note
	musicd8 36
	note_length 12
	note_pitch G_, 3
	note_length 6
	rest
	note_length 3
	note_pitch F#, 3
	note_length 3
	rest
	note_length 12
	note_pitch G_, 3
	note_length 6
	rest
	note_length 3
	note_pitch F#, 3
	note_length 3
	rest
	note_length 12
	note_pitch G_, 3
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch F#, 3
	note_length 3
	rest
	note_pitch G_, 3
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
	note_length 45
	rest
	musice3 1
	note_length 12
	note_pitch B_, 4
	note_length 6
	continue_note
	note_length 3
	note_pitch A_, 4
	note_length 3
	continue_note
	note_length 12
	note_pitch B_, 4
	note_length 6
	continue_note
	note_length 3
	note_pitch A_, 4
	note_length 3
	continue_note
	note_length 12
	note_pitch B_, 4
	note_length 3
	note_pitch A_, 4
	note_length 3
	note_pitch B_, 4
	note_length 3
	continue_note
	note_pitch C_, 5
	note_length 12
	note_pitch C#, 5
	note_length 6
	continue_note
	note_length 3
	note_pitch A_, 4
	note_length 3
	continue_note
	note_pitch A_, 4
	note_length 3
	continue_note
	musicd7 255
	note_pitch G_, 5
	note_length 3
	continue_note
	musicd7 0
	note_pitch A_, 5
	note_length 9
	rest
	note_length 3
	note_pitch A_, 4
	note_length 9
	continue_note
	note_length 3
	note_pitch D_, 5
	note_length 9
	continue_note
	note_length 3
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch F#, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch F#, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch F#, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 9
	rest
	note_length 12
	rest
	note_length 3
	note_pitch A_, 1
	note_length 3
	note_pitch A_, 1
	note_length 3
	rest
	note_pitch A_, 1
	note_length 24
	rest
	note_length 48
	rest
	song_ret

Music_CleffaAndIgglybuffsTheme_branch_18cb8e: ; 18cb8e (63:4b8e)
	note_length 12
	rest
	note_length 3
	note_pitch B_, 1
	note_length 9
	rest
	note_length 3
	note_pitch B_, 1
	note_length 21
	rest
	note_length 3
	note_pitch B_, 1
	note_length 9
	rest
	note_length 3
	note_pitch B_, 1
	note_length 21
	rest
	note_length 3
	note_pitch B_, 1
	note_length 9
	rest
	note_length 3
	note_pitch B_, 1
	note_length 9
	rest
	note_length 3
	note_pitch C#, 2
	note_length 3
	note_pitch D_, 2
	note_length 3
	rest
	note_pitch D#, 2
	note_length 12
	note_pitch E_, 2
	note_length 3
	note_pitch D_, 2
	note_length 3
	rest
	note_pitch C#, 2
	note_length 3
	rest
	note_length 12
	rest
	note_length 3
	note_pitch A_, 2
	note_length 9
	rest
	note_length 3
	note_pitch A_, 2
	note_length 21
	rest
	note_length 3
	note_pitch A_, 2
	note_length 45
	rest
	note_length 48
	rest
	note_length 12
	rest
	note_length 3
	note_pitch B_, 1
	note_length 9
	rest
	note_length 3
	note_pitch B_, 1
	note_length 21
	rest
	note_length 3
	note_pitch B_, 1
	note_length 9
	rest
	note_length 3
	note_pitch B_, 1
	note_length 21
	rest
	note_length 3
	note_pitch B_, 1
	note_length 9
	rest
	note_length 3
	note_pitch B_, 1
	note_length 9
	rest
	note_length 3
	note_pitch C#, 2
	note_length 3
	note_pitch D_, 2
	note_length 3
	rest
	note_pitch D#, 2
	note_length 12
	note_pitch E_, 2
	note_length 3
	note_pitch D_, 2
	note_length 3
	rest
	note_pitch C#, 2
	note_length 3
	rest
	note_pitch F#, 2
	note_length 21
	rest
	note_length 3
	note_pitch F#, 2
	note_length 9
	rest
	note_length 3
	note_pitch F_, 2
	note_length 9
	rest
	note_length 12
	rest
	note_length 3
	note_pitch F_, 2
	note_length 9
	rest
	note_length 3
	note_pitch G_, 2
	note_length 21
	rest
	note_length 48
	rest
	song_ret

Music_CleffaAndIgglybuffsTheme_branch_18cc0a: ; 18cc0a (63:4c0a)
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
	musicd8 113
	note_length 12
	rest
	note_length 3
	note_pitch F#, 3
	note_length 9
	rest
	note_length 3
	note_pitch D_, 4
	note_length 9
	rest
	note_length 3
	note_pitch F#, 4
	note_length 9
	rest
	note_length 3
	note_pitch C_, 4
	note_length 3
	rest
	note_pitch C_, 5
	note_length 3
	rest
	note_pitch C_, 4
	note_length 3
	rest
	note_pitch A_, 2
	note_length 3
	rest
	note_pitch A#, 2
	note_length 3
	rest
	note_pitch C_, 5
	note_length 3
	rest
	note_pitch C_, 4
	note_length 3
	rest
	note_pitch C_, 3
	note_length 3
	rest
	note_pitch C_, 2
	note_length 3
	rest
	note_pitch A_, 2
	note_length 3
	rest
	note_pitch A#, 2
	note_length 3
	rest
	note_pitch C_, 2
	note_length 3
	rest
	note_pitch C_, 4
	note_length 3
	rest
	note_pitch C_, 5
	note_length 3
	rest
	note_pitch C_, 3
	note_length 3
	rest
	note_pitch A_, 2
	note_length 3
	rest
	note_pitch A#, 2
	note_length 3
	rest
	note_pitch C_, 2
	note_length 15
	rest
	note_length 3
	note_pitch A_, 2
	note_length 9
	rest
	note_length 3
	note_pitch C_, 3
	note_length 9
	rest
	note_length 48
	rest
	note_length 48
	rest
	note_length 48
	rest
	song_ret

Music_CleffaAndIgglybuffsTheme_branch_18cc6a: ; 18cc6a (63:4c6a)
	musice3 1
	musicd8 113
	note_length 3
	note_pitch C#, 4
	note_length 45
	continue_note
	note_length 3
	note_pitch B_, 3
	note_length 21
	continue_note
	note_length 3
	note_pitch D_, 4
	note_length 21
	continue_note
	note_length 12
	continue_note
	note_length 3
	note_pitch C#, 4
	note_length 9
	continue_note
	note_length 3
	note_pitch C_, 4
	note_length 21
	continue_note
	note_length 3
	note_pitch C#, 4
	note_length 45
	continue_note
	note_length 3
	note_pitch B_, 3
	note_length 39
	continue_note
	note_length 3
	note_pitch G_, 3
	note_length 3
	continue_note
	note_length 12
	rest
	note_length 3
	note_pitch A#, 2
	note_length 9
	rest
	note_length 3
	note_pitch A#, 2
	note_length 21
	rest
	song_ret

Music_CleffaAndIgglybuffsTheme_Ch2: ; 18cc9b (63:4c9b)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	duty_cycle_75
	musicd4 55
	musicd8 164
	musicd6 19
	song_call Music_CleffaAndIgglybuffsTheme_branch_18ccb9
Music_CleffaAndIgglybuffsTheme_branch_18ccaa: ; 18ccaa (63:4caa)
	song_call Music_CleffaAndIgglybuffsTheme_branch_18ccd5
	song_call Music_CleffaAndIgglybuffsTheme_branch_18cda6
	song_call Music_CleffaAndIgglybuffsTheme_branch_18ce50
	song_call Music_CleffaAndIgglybuffsTheme_branch_18cf54
	song_jump Music_CleffaAndIgglybuffsTheme_branch_18ccaa

Music_CleffaAndIgglybuffsTheme_branch_18ccb9: ; 18ccb9 (63:4cb9)
	musicd8 133
	note_length 3
	note_pitch G_, 3
	note_length 15
	continue_note
	note_length 3
	note_pitch G_, 3
	note_length 3
	continue_note
	note_pitch B_, 3
	note_length 3
	continue_note
	note_pitch D_, 4
	note_length 3
	continue_note
	note_pitch F_, 4
	note_length 9
	continue_note
	note_length 18
	note_pitch G#, 4
	note_length 3
	note_pitch C_, 5
	musicd8 48
	note_length 3
	rest
	song_ret

Music_CleffaAndIgglybuffsTheme_branch_18ccd5: ; 18ccd5 (63:4cd5)
	musicd8 48
	note_length 12
	note_pitch B_, 3
	note_length 6
	continue_note
	note_length 3
	note_pitch A_, 3
	note_length 3
	continue_note
	note_length 12
	note_pitch B_, 3
	note_length 6
	continue_note
	note_length 3
	note_pitch A_, 3
	note_length 3
	continue_note
	note_length 12
	note_pitch B_, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch B_, 3
	note_length 3
	continue_note
	note_pitch C_, 4
	note_length 12
	note_pitch C#, 4
	note_length 6
	continue_note
	note_length 3
	note_pitch A_, 3
	note_length 3
	continue_note
	note_pitch A_, 3
	note_length 3
	continue_note
	note_pitch F#, 4
	note_length 3
	continue_note
	note_pitch A_, 4
	note_length 9
	rest
	note_length 3
	note_pitch A_, 3
	note_length 9
	continue_note
	note_length 3
	note_pitch D_, 4
	note_length 9
	continue_note
	note_length 12
	note_pitch B_, 3
	note_length 6
	continue_note
	note_length 3
	note_pitch A_, 3
	note_length 3
	continue_note
	note_length 12
	note_pitch B_, 3
	note_length 6
	continue_note
	note_length 3
	note_pitch A_, 3
	note_length 3
	continue_note
	note_length 12
	note_pitch B_, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch A#, 3
	note_length 3
	continue_note
	note_pitch B_, 3
	note_length 3
	note_pitch C#, 4
	note_length 9
	continue_note
	note_length 3
	note_pitch C#, 4
	note_length 3
	continue_note
	note_pitch C#, 4
	note_length 3
	continue_note
	note_pitch C#, 4
	note_length 45
	continue_note
	note_length 12
	note_pitch B_, 4
	note_length 6
	continue_note
	note_length 3
	note_pitch A_, 4
	note_length 3
	continue_note
	note_length 12
	note_pitch B_, 4
	note_length 6
	continue_note
	note_length 3
	note_pitch A_, 4
	note_length 3
	continue_note
	note_length 12
	note_pitch B_, 4
	note_length 3
	note_pitch A_, 4
	note_length 3
	note_pitch B_, 4
	note_length 3
	continue_note
	note_pitch C_, 5
	note_length 12
	note_pitch C#, 5
	note_length 6
	continue_note
	note_length 3
	note_pitch A_, 4
	note_length 3
	continue_note
	note_pitch A_, 4
	note_length 3
	continue_note
	musicd7 255
	musice3 1
	note_pitch G_, 5
	note_length 3
	continue_note
	musicd7 0
	note_pitch A_, 5
	note_length 9
	rest
	musice3 0
	note_length 3
	note_pitch A_, 4
	note_length 9
	continue_note
	note_length 3
	note_pitch D_, 5
	note_length 9
	continue_note
	musicd8 133
	note_length 3
	note_pitch B_, 3
	note_length 3
	continue_note
	note_pitch A_, 3
	note_length 3
	continue_note
	musicd8 136
	note_pitch B_, 3
	note_length 3
	continue_note
	note_pitch A_, 3
	note_length 3
	continue_note
	musicd8 135
	note_pitch B_, 3
	note_length 3
	continue_note
	note_pitch A_, 3
	note_length 3
	continue_note
	musicd8 134
	note_pitch B_, 3
	note_length 9
	continue_note
	note_length 12
	continue_note
	note_length 3
	note_pitch A_, 3
	musicd8 133
	note_length 3
	note_pitch B_, 3
	note_length 3
	continue_note
	musicd8 132
	note_pitch C_, 4
	note_length 3
	note_pitch C#, 4
	note_length 9
	continue_note
	musicd8 131
	note_length 3
	note_pitch C#, 4
	note_length 3
	continue_note
	note_pitch C#, 4
	note_length 3
	continue_note
	note_pitch C#, 4
	note_length 45
	continue_note
	song_ret

Music_CleffaAndIgglybuffsTheme_branch_18cda6: ; 18cda6 (63:4da6)
	musicd8 48
	note_length 6
	note_pitch A_, 2
	note_length 3
	note_pitch A_, 3
	note_length 3
	rest
	note_pitch F#, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch A_, 2
	note_length 3
	rest
	note_pitch B_, 2
	note_length 3
	rest
	note_length 12
	note_pitch A_, 2
	note_length 48
	rest
	note_length 12
	rest
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch B_, 2
	note_length 3
	rest
	note_pitch C_, 3
	note_length 12
	note_pitch C#, 3
	note_length 3
	note_pitch B_, 2
	note_length 3
	rest
	note_pitch A_, 2
	note_length 3
	rest
	note_pitch F#, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch F#, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch F#, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch A_, 3
	note_length 9
	rest
	note_length 3
	note_pitch D_, 4
	note_length 21
	rest
	note_length 3
	note_pitch F#, 2
	note_length 21
	rest
	note_length 3
	note_pitch F#, 2
	note_length 45
	rest
	note_length 6
	note_pitch A_, 2
	note_length 3
	note_pitch A_, 3
	note_length 3
	rest
	note_pitch F#, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch A_, 2
	note_length 3
	rest
	note_pitch B_, 2
	note_length 3
	rest
	note_length 12
	note_pitch A_, 2
	note_length 48
	rest
	note_length 12
	rest
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch B_, 2
	note_length 3
	rest
	note_pitch C_, 3
	note_length 12
	note_pitch C#, 3
	note_length 3
	note_pitch B_, 2
	note_length 3
	rest
	note_pitch A_, 2
	note_length 3
	rest
	note_pitch B_, 3
	note_length 3
	rest
	note_pitch A_, 3
	note_length 3
	rest
	note_pitch B_, 3
	note_length 3
	rest
	note_pitch A_, 3
	note_length 3
	rest
	note_pitch B_, 3
	note_length 3
	rest
	note_pitch A_, 3
	note_length 3
	rest
	note_pitch B_, 3
	note_length 3
	rest
	note_pitch A_, 3
	note_length 3
	rest
	note_pitch B_, 3
	note_length 3
	rest
	note_pitch A_, 3
	note_length 3
	rest
	note_pitch B_, 3
	note_length 3
	rest
	note_pitch A_, 3
	note_length 3
	rest
	note_pitch C#, 4
	note_length 21
	rest
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch B_, 3
	note_length 3
	rest
	note_pitch C_, 4
	note_length 3
	note_pitch C#, 4
	note_length 9
	rest
	note_length 3
	note_pitch A_, 4
	note_length 21
	rest
	song_ret

Music_CleffaAndIgglybuffsTheme_branch_18ce50: ; 18ce50 (63:4e50)
	musicd8 39
	duty_cycle_12_5
	note_length 3
	note_pitch F#, 3
	note_length 3
	continue_note
	note_pitch A_, 3
	note_length 3
	continue_note
	note_pitch C#, 4
	note_length 3
	continue_note
	note_pitch A_, 3
	note_length 3
	continue_note
	note_pitch B_, 3
	note_length 9
	continue_note
	note_length 3
	note_pitch F#, 3
	note_length 3
	continue_note
	note_pitch A_, 3
	note_length 3
	continue_note
	note_pitch C#, 4
	note_length 3
	continue_note
	note_pitch A_, 3
	note_length 3
	continue_note
	note_pitch B_, 3
	note_length 3
	continue_note
	note_pitch F#, 4
	note_length 3
	continue_note
	note_pitch F#, 3
	note_length 3
	continue_note
	note_pitch A_, 3
	note_length 3
	continue_note
	note_pitch C#, 4
	note_length 3
	continue_note
	note_pitch A_, 3
	note_length 3
	continue_note
	note_pitch B_, 3
	note_length 3
	continue_note
	note_pitch F#, 4
	note_length 3
	continue_note
	note_pitch F#, 3
	note_length 9
	continue_note
	note_length 3
	note_pitch C#, 4
	note_length 9
	continue_note
	note_length 3
	note_pitch D_, 3
	note_length 9
	continue_note
	note_length 3
	note_pitch F#, 4
	note_length 3
	continue_note
	note_pitch A_, 4
	note_length 3
	continue_note
	note_pitch C#, 5
	note_length 3
	continue_note
	note_pitch A_, 4
	note_length 3
	continue_note
	note_pitch B_, 4
	note_length 9
	continue_note
	note_length 3
	note_pitch F#, 4
	note_length 3
	continue_note
	note_pitch A_, 4
	note_length 3
	continue_note
	note_pitch C#, 5
	note_length 3
	continue_note
	note_pitch A_, 4
	note_length 3
	continue_note
	note_pitch B_, 4
	note_length 3
	continue_note
	musicd7 1
	note_pitch F_, 5
	note_length 3
	continue_note
	musicd7 0
	musice3 1
	note_pitch F#, 4
	note_length 3
	continue_note
	musice3 0
	note_pitch A_, 4
	note_length 3
	continue_note
	note_pitch C#, 5
	note_length 3
	continue_note
	note_pitch A_, 4
	note_length 3
	continue_note
	note_pitch B_, 4
	note_length 3
	continue_note
	musicd7 1
	musice3 1
	note_pitch F_, 5
	note_length 3
	continue_note
	musicd7 0
	note_pitch A_, 5
	note_length 9
	continue_note
	musice3 0
	note_length 3
	note_pitch A_, 4
	note_length 9
	continue_note
	note_length 3
	note_pitch D_, 5
	note_length 9
	continue_note
	note_length 3
	note_pitch A_, 2
	note_length 3
	continue_note
	note_pitch C_, 3
	note_length 3
	continue_note
	note_pitch E_, 3
	note_length 3
	continue_note
	note_pitch C_, 3
	note_length 3
	continue_note
	note_pitch D_, 3
	note_length 9
	continue_note
	note_length 3
	note_pitch A_, 2
	note_length 3
	continue_note
	note_pitch C_, 3
	note_length 3
	continue_note
	note_pitch E_, 3
	note_length 3
	continue_note
	note_pitch C_, 3
	note_length 3
	continue_note
	note_pitch D_, 3
	note_length 9
	continue_note
	note_length 3
	note_pitch A_, 2
	note_length 3
	continue_note
	note_pitch C_, 3
	note_length 3
	continue_note
	note_pitch E_, 3
	note_length 3
	continue_note
	note_pitch C_, 3
	note_length 3
	continue_note
	note_pitch D_, 3
	note_length 3
	continue_note
	note_pitch A_, 3
	note_length 3
	continue_note
	note_pitch C_, 4
	note_length 9
	continue_note
	note_length 3
	note_pitch C_, 3
	note_length 9
	continue_note
	note_length 3
	note_pitch F_, 3
	note_length 9
	continue_note
	note_length 3
	note_pitch F#, 2
	note_length 3
	continue_note
	note_pitch A_, 2
	note_length 3
	continue_note
	note_pitch C#, 3
	note_length 3
	continue_note
	note_pitch A_, 2
	note_length 3
	continue_note
	note_pitch B_, 2
	note_length 3
	continue_note
	note_pitch D_, 3
	note_length 3
	continue_note
	note_pitch A_, 3
	note_length 9
	continue_note
	note_length 3
	note_pitch A_, 2
	note_length 9
	continue_note
	note_length 3
	note_pitch E_, 3
	note_length 9
	continue_note
	note_length 3
	note_pitch F#, 2
	note_length 9
	continue_note
	note_length 3
	note_pitch D_, 3
	note_length 9
	continue_note
	note_length 3
	note_pitch D_, 2
	note_length 9
	continue_note
	note_length 3
	note_pitch A_, 2
	note_length 9
	continue_note
	note_length 3
	note_pitch A_, 1
	note_length 21
	continue_note
	song_ret

Music_CleffaAndIgglybuffsTheme_branch_18cf54: ; 18cf54 (63:4f54)
	duty_cycle_12_5
	musicd8 39
	note_length 3
	note_pitch C#, 4
	note_length 45
	continue_note
	musicd8 48
	note_length 3
	note_pitch B_, 3
	note_length 21
	continue_note
	note_length 3
	note_pitch D_, 4
	note_length 21
	continue_note
	note_length 12
	continue_note
	musicd8 39
	note_length 3
	note_pitch C#, 4
	note_length 9
	continue_note
	musicd8 48
	note_length 3
	note_pitch C_, 4
	note_length 21
	continue_note
	musicd8 39
	note_length 3
	note_pitch C#, 4
	note_length 45
	continue_note
	musicd8 48
	note_length 3
	note_pitch B_, 3
	note_length 39
	continue_note
	note_length 3
	note_pitch G_, 3
	note_length 3
	continue_note
	note_pitch B_, 3
	note_length 3
	continue_note
	note_pitch D_, 4
	note_length 3
	continue_note
	musicd8 39
	note_pitch F_, 4
	note_length 9
	rest
	note_length 3
	note_pitch F_, 4
	note_length 21
	continue_note
	song_ret

Music_CleffaAndIgglybuffsTheme_Ch3: ; 18cf93 (63:4f93)
	stereo_panning_both
	musicd8 104
	wave 62
	musicd4 56
	song_call Music_CleffaAndIgglybuffsTheme_branch_18cfac
Music_CleffaAndIgglybuffsTheme_branch_18cf9d: ; 18cf9d (63:4f9d)
	song_call Music_CleffaAndIgglybuffsTheme_branch_18cfb9
	song_call Music_CleffaAndIgglybuffsTheme_branch_18d068
	song_call Music_CleffaAndIgglybuffsTheme_branch_18d151
	song_call Music_CleffaAndIgglybuffsTheme_branch_18d24c
	song_jump Music_CleffaAndIgglybuffsTheme_branch_18cf9d

Music_CleffaAndIgglybuffsTheme_branch_18cfac: ; 18cfac (63:4fac)
	note_length 3
	note_pitch E_, 2
	note_length 33
	rest
	note_length 3
	note_pitch D#, 2
	note_length 9
	rest
	note_length 12
	note_pitch D#, 2
	note_length 12
	rest
	song_ret

Music_CleffaAndIgglybuffsTheme_branch_18cfb9: ; 18cfb9 (63:4fb9)
	musicd8 104
	note_length 12
	note_pitch E_, 2
	note_length 3
	note_pitch A_, 2
	note_length 9
	rest
	note_length 3
	note_pitch A_, 2
	note_length 9
	rest
	note_length 12
	note_pitch A_, 1
	note_length 3
	note_pitch A_, 2
	note_length 9
	rest
	note_length 3
	note_pitch A_, 2
	note_length 9
	rest
	note_length 12
	note_pitch F#, 2
	note_length 3
	note_pitch C#, 3
	note_length 9
	rest
	note_length 3
	note_pitch C#, 3
	note_length 9
	rest
	note_length 12
	note_pitch B_, 1
	note_length 3
	note_pitch A_, 2
	note_length 9
	rest
	note_length 3
	note_pitch A_, 2
	note_length 9
	rest
	note_length 12
	note_pitch E_, 2
	note_length 3
	note_pitch A_, 2
	note_length 9
	rest
	note_length 3
	note_pitch A_, 2
	note_length 9
	rest
	note_length 12
	note_pitch A_, 1
	note_length 3
	note_pitch A_, 2
	note_length 9
	rest
	note_length 3
	note_pitch A_, 2
	note_length 9
	rest
	note_length 3
	note_pitch D_, 2
	note_length 9
	rest
	note_length 3
	note_pitch D_, 2
	note_length 3
	rest
	note_pitch D_, 2
	note_length 3
	rest
	musicd8 27
	note_pitch D_, 2
	note_length 9
	rest
	note_length 3
	note_pitch D_, 1
	note_length 9
	rest
	note_length 12
	note_pitch F#, 1
	note_length 3
	note_pitch A_, 1
	note_length 9
	rest
	musicd8 104
	wave 62
	note_length 12
	note_pitch E_, 2
	note_length 3
	note_pitch A_, 2
	note_length 9
	rest
	note_length 3
	note_pitch A_, 2
	note_length 9
	rest
	note_length 12
	note_pitch A_, 1
	note_length 3
	note_pitch A_, 2
	note_length 9
	rest
	note_length 3
	note_pitch A_, 2
	note_length 9
	rest
	note_length 12
	note_pitch F#, 2
	note_length 3
	note_pitch C#, 3
	note_length 9
	rest
	note_length 3
	note_pitch C#, 3
	note_length 9
	rest
	note_length 12
	note_pitch B_, 1
	note_length 3
	note_pitch A_, 2
	note_length 9
	rest
	note_length 3
	note_pitch A_, 2
	note_length 9
	rest
	note_length 48
	rest
	note_length 24
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
	note_length 3
	rest
	note_pitch D_, 1
	note_length 9
	rest
	musicd8 27
	musicd4 59
	note_length 6
	note_pitch D_, 1
	musicd4 55
	note_length 3
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch B_, 1
	note_length 3
	rest
	note_pitch A_, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch D_, 1
	note_length 3
	rest
	song_ret

Music_CleffaAndIgglybuffsTheme_branch_18d068: ; 18d068 (63:5068)
	musicd8 27
	musicd5
	wave 62
	musicd8 109
	note_length 12
	note_pitch E_, 1
	wave 65
	note_length 3
	note_pitch E_, 1
	wave 67
	note_length 3
	note_pitch E_, 1
	wave 69
	note_length 3
	note_pitch E_, 1
	wave 71
	note_length 3
	note_pitch E_, 1
	note_length 12
	rest
	wave 62
	musicd8 27
	note_length 12
	note_pitch A_, 0
	note_length 12
	continue_note
	musicd4 59
	note_length 12
	note_pitch G_, 1
	musicd5
	musicd8 109
	note_length 3
	note_pitch F#, 1
	wave 62
	note_length 3
	note_pitch F#, 1
	wave 66
	note_length 3
	note_pitch F#, 1
	wave 68
	note_length 3
	note_pitch F#, 1
	note_length 12
	rest
	musicd8 27
	wave 62
	note_pitch E_, 1
	note_length 36
	rest
	musicd8 109
	note_length 12
	note_pitch D_, 2
	wave 65
	note_length 3
	note_pitch D_, 2
	wave 67
	note_length 3
	note_pitch D_, 2
	wave 69
	note_length 3
	note_pitch D_, 2
	wave 71
	note_length 3
	note_pitch D_, 2
	note_length 12
	rest
	musicd8 27
	wave 62
	note_length 12
	note_pitch A_, 1
	note_length 12
	continue_note
	note_length 3
	note_pitch D_, 1
	note_length 9
	rest
	note_length 3
	note_pitch D_, 1
	note_length 21
	rest
	note_length 3
	note_pitch D_, 1
	note_length 9
	rest
	wave 65
	musicd4 59
	note_length 6
	note_pitch D_, 2
	musicd4 55
	note_length 3
	note_pitch F#, 2
	note_length 3
	rest
	note_pitch B_, 2
	note_length 3
	rest
	wave 63
	note_pitch A_, 2
	note_length 3
	rest
	note_pitch F#, 2
	note_length 3
	rest
	wave 65
	note_pitch D_, 2
	note_length 3
	rest
	musicd8 27
	musicd5
	wave 62
	musicd8 109
	note_length 12
	note_pitch E_, 1
	wave 65
	note_length 3
	note_pitch E_, 1
	wave 67
	note_length 3
	note_pitch E_, 1
	wave 69
	note_length 3
	note_pitch E_, 1
	wave 71
	note_length 3
	note_pitch E_, 1
	note_length 12
	rest
	wave 62
	musicd8 27
	note_length 12
	note_pitch A_, 0
	note_length 12
	continue_note
	musicd4 59
	note_length 12
	note_pitch G_, 1
	musicd5
	musicd8 109
	note_length 3
	note_pitch F#, 1
	wave 62
	note_length 3
	note_pitch F#, 1
	wave 66
	note_length 3
	note_pitch F#, 1
	wave 68
	note_length 3
	note_pitch F#, 1
	note_length 12
	rest
	musicd8 27
	wave 62
	note_pitch E_, 1
	note_length 36
	rest
	note_length 3
	note_pitch A_, 2
	note_length 21
	rest
	note_length 3
	note_pitch A_, 2
	note_length 9
	rest
	note_length 3
	note_pitch G#, 2
	note_length 9
	rest
	note_length 12
	rest
	note_length 3
	note_pitch G#, 2
	note_length 9
	rest
	note_length 3
	note_pitch E_, 2
	note_length 21
	rest
	note_length 12
	rest
	note_length 3
	note_pitch A_, 2
	note_length 9
	rest
	note_length 3
	note_pitch A_, 1
	note_length 21
	rest
	song_ret

Music_CleffaAndIgglybuffsTheme_branch_18d151: ; 18d151 (63:5151)
	musicd7 0
	musicd8 27
	wave 62
	note_length 3
	note_pitch E_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch B_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch D_, 3
	note_length 9
	rest
	note_length 3
	note_pitch E_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch B_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch D_, 3
	note_length 9
	rest
	note_length 3
	note_pitch D_, 2
	note_length 3
	rest
	note_pitch F#, 2
	note_length 3
	rest
	note_pitch A_, 2
	note_length 3
	rest
	note_pitch F#, 2
	note_length 3
	rest
	note_pitch A_, 2
	note_length 3
	rest
	note_pitch A_, 1
	note_length 3
	rest
	note_pitch D_, 2
	note_length 3
	rest
	note_pitch F#, 2
	note_length 3
	rest
	note_pitch A_, 2
	note_length 3
	rest
	note_pitch A_, 1
	note_length 3
	rest
	note_pitch B_, 1
	note_length 3
	rest
	note_pitch D_, 2
	note_length 3
	rest
	note_pitch E_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch B_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch B_, 2
	note_length 3
	rest
	note_pitch E_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch B_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch B_, 2
	note_length 3
	rest
	note_pitch D_, 2
	note_length 3
	rest
	note_pitch F#, 2
	note_length 3
	rest
	note_pitch A_, 2
	note_length 3
	rest
	note_pitch F#, 2
	note_length 3
	rest
	note_pitch A_, 2
	note_length 3
	rest
	note_pitch A_, 1
	note_length 3
	rest
	note_pitch D_, 2
	note_length 3
	rest
	note_pitch F#, 2
	note_length 3
	rest
	note_pitch A_, 2
	note_length 3
	rest
	note_pitch D_, 2
	note_length 3
	rest
	note_pitch F#, 2
	note_length 3
	rest
	note_pitch A_, 1
	note_length 3
	rest
	musicd4 59
	note_length 12
	note_pitch G_, 1
	musicd4 55
	note_length 3
	note_pitch F_, 2
	note_length 9
	rest
	note_length 3
	note_pitch F_, 2
	note_length 9
	rest
	note_length 12
	note_pitch C_, 1
	note_length 3
	note_pitch E_, 2
	note_length 9
	rest
	note_length 3
	note_pitch E_, 2
	note_length 9
	rest
	note_length 12
	note_pitch A_, 1
	note_length 3
	note_pitch G_, 2
	note_length 9
	rest
	musicd4 59
	note_length 3
	note_pitch G_, 2
	note_length 9
	rest
	musicd4 55
	note_length 12
	note_pitch D_, 1
	note_length 3
	note_pitch F_, 2
	note_length 9
	rest
	note_length 3
	note_pitch A_, 2
	note_length 9
	rest
	note_length 3
	note_pitch E_, 1
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	rest
	note_pitch B_, 1
	note_length 3
	rest
	note_pitch D_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch B_, 1
	note_length 3
	rest
	note_pitch E_, 1
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	rest
	note_pitch C#, 2
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	rest
	note_pitch C#, 2
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	rest
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch A_, 1
	note_length 3
	rest
	note_pitch A_, 0
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch A_, 1
	note_length 39
	rest
	song_ret

Music_CleffaAndIgglybuffsTheme_branch_18d24c: ; 18d24c (63:524c)
	musicd8 27
	wave 62
	note_length 12
	note_pitch D_, 2
	note_length 3
	note_pitch A_, 2
	note_length 9
	rest
	note_length 3
	note_pitch A_, 2
	note_length 9
	rest
	note_length 12
	note_pitch A_, 1
	note_length 3
	note_pitch A_, 2
	note_length 9
	rest
	note_length 3
	note_pitch A_, 2
	note_length 9
	rest
	note_length 12
	note_pitch E_, 2
	note_length 3
	note_pitch B_, 2
	note_length 9
	rest
	note_length 3
	note_pitch B_, 2
	note_length 9
	rest
	note_length 3
	note_pitch A_, 1
	note_length 9
	rest
	note_length 3
	note_pitch A_, 1
	note_length 9
	rest
	note_length 3
	note_pitch A_, 0
	note_length 9
	rest
	note_length 12
	note_pitch D_, 2
	note_length 3
	note_pitch A_, 2
	note_length 9
	rest
	note_length 3
	note_pitch A_, 2
	note_length 9
	rest
	note_length 12
	note_pitch A_, 1
	note_length 3
	note_pitch A_, 2
	note_length 9
	rest
	note_length 3
	note_pitch A_, 2
	note_length 9
	rest
	note_length 3
	note_pitch E_, 2
	note_length 9
	rest
	note_length 3
	note_pitch E_, 1
	note_length 3
	rest
	note_pitch B_, 2
	note_length 3
	rest
	note_pitch D_, 3
	note_length 9
	rest
	note_length 3
	note_pitch D#, 2
	note_length 9
	rest
	note_length 3
	note_pitch D#, 2
	note_length 21
	rest
	song_ret

Music_CleffaAndIgglybuffsTheme_Ch4: ; 18d2a5 (63:52a5)
	stereo_panning_both
	song_call Music_CleffaAndIgglybuffsTheme_branch_18d2b8
Music_CleffaAndIgglybuffsTheme_branch_18d2a9: ; 18d2a9 (63:52a9)
	song_call Music_CleffaAndIgglybuffsTheme_branch_18d2bf
	song_call Music_CleffaAndIgglybuffsTheme_branch_18d355
	song_call Music_CleffaAndIgglybuffsTheme_branch_18d3ef
	song_call Music_CleffaAndIgglybuffsTheme_branch_18d494
	song_jump Music_CleffaAndIgglybuffsTheme_branch_18d2a9

Music_CleffaAndIgglybuffsTheme_branch_18d2b8: ; 18d2b8 (63:52b8)
	note_length 3
	noise 11
	note_length 45
	rest
	note_length 24
	rest
	song_ret

Music_CleffaAndIgglybuffsTheme_branch_18d2bf: ; 18d2bf (63:52bf)
	note_length 12
	noise 16
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 21
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 21
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 21
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 12
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 21
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
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 11
	note_length 33
	continue_note
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
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 21
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 21
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 21
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
	note_length 21
	continue_note
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
	note_length 9
	continue_note
	note_length 12
	continue_note
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	continue_note
	noise 11
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 11
	note_length 45
	continue_note
	song_ret

Music_CleffaAndIgglybuffsTheme_branch_18d355: ; 18d355 (63:5355)
	note_length 12
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 21
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 12
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 45
	continue_note
	note_length 12
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 21
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
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
	note_length 21
	continue_note
	note_length 24
	continue_note
	note_length 3
	noise 11
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
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
	note_length 21
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 12
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 45
	continue_note
	note_length 3
	noise 11
	note_length 21
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 12
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 21
	continue_note
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	continue_note
	noise 11
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
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	song_ret

Music_CleffaAndIgglybuffsTheme_branch_18d3ef: ; 18d3ef (63:53ef)
	note_length 3
	noise 11
	note_length 21
	continue_note
	note_length 3
	noise 11
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
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
	note_length 21
	continue_note
	note_length 3
	noise 11
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
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
	note_length 21
	continue_note
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
	note_length 21
	continue_note
	note_length 3
	noise 11
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
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
	note_length 12
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 21
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 21
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 21
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
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
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 21
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 21
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 21
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
	song_ret

Music_CleffaAndIgglybuffsTheme_branch_18d494: ; 18d494 (63:5494)
	note_length 12
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 21
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 21
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 21
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 12
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 21
	continue_note
	note_length 3
	noise 11
	note_length 9
	continue_note
	note_length 3
	noise 11
	note_length 21
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
	note_length 21
	continue_note
	song_ret
