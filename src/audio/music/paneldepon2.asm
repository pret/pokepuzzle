Music_PanelDePon2: ; 180000 (60:4000)
	dw Music_PanelDePon2_Ch1
	dw Music_PanelDePon2_Ch2
	dw Music_PanelDePon2_Ch3
	dw Music_PanelDePon2_Ch4

Music_PanelDePon2_Ch1: ; 180008 (60:4008)
	musicd6 21
	musicd4 37
	duty_cycle_50
	musicd7 12
	musicd8 114
	note_length 6
	note_pitch F_, 1
	note_pitch F_, 1
	note_pitch D#, 1
	note_pitch D_, 1
	note_pitch C_, 1
	rest
	rest
	note_pitch D#, 1
	note_length 6
	continue_note
	note_pitch D#, 1
	note_pitch D_, 1
	note_pitch C_, 1
	note_pitch A#, 0
	rest
	note_pitch C_, 1
	note_pitch F_, 1
	note_length 6
	continue_note
	note_pitch F_, 1
	note_pitch D#, 1
	note_pitch D_, 1
	note_pitch C_, 1
	rest
	rest
	note_pitch D#, 1
	note_length 6
	continue_note
	note_pitch D#, 1
	note_pitch D_, 1
	note_pitch C_, 1
	note_pitch A#, 0
	musicd7 0
	note_length 2
	note_pitch A_, 2
	note_pitch B_, 2
	note_pitch C_, 3
	note_pitch D_, 3
	note_pitch E_, 3
	note_length 8
	rest
Music_PanelDePon2_branch_18003c: ; 18003c (60:403c)
	song_call Music_PanelDePon2_branch_18004b
	song_call Music_PanelDePon2_branch_18004b
	song_call Music_PanelDePon2_branch_180077
	song_call Music_PanelDePon2_branch_1800af
	song_jump Music_PanelDePon2_branch_18003c

Music_PanelDePon2_branch_18004b: ; 18004b (60:404b)
	musicd8 113
	musicd7 0
	musice3 0
	duty_cycle_50
	note_length 18
	note_pitch F_, 3
	note_length 24
	note_pitch C_, 3
	note_length 6
	note_pitch C_, 3
	note_length 18
	continue_note
	note_length 18
	note_pitch F_, 3
	note_length 12
	note_pitch C_, 4
	musicd7 12
	duty_cycle_12_5
	note_length 6
	note_pitch F_, 3
	note_pitch A_, 3
	note_pitch C_, 4
	note_pitch F_, 3
	note_pitch A_, 3
	note_pitch C_, 4
	note_pitch F_, 3
	note_pitch A_, 3
	note_length 6
	note_pitch C_, 4
	musicd7 0
	note_pitch A_, 3
	note_pitch G_, 3
	note_pitch F_, 3
	note_length 12
	note_pitch A_, 3
	note_length 6
	note_pitch G_, 3
	note_pitch F_, 3
	song_ret

Music_PanelDePon2_branch_180077: ; 180077 (60:4077)
	duty_cycle_50
	musicd8 118
	musice3 0
	note_length 18
	note_pitch A_, 2
	note_pitch A#, 2
	note_length 12
	note_pitch C_, 3
	note_length 24
	continue_note
	note_length 12
	note_pitch A#, 2
	note_pitch A_, 2
	note_length 18
	note_pitch A#, 2
	note_pitch A_, 2
	note_length 12
	note_pitch G_, 2
	note_length 48
	continue_note
	musicd7 12
	duty_cycle_12_5
	note_length 6
	note_pitch A_, 2
	note_length 12
	note_pitch G_, 2
	note_length 6
	note_pitch A_, 3
	note_length 12
	note_pitch G_, 3
	note_length 6
	note_pitch A_, 2
	note_pitch G_, 2
	note_length 6
	rest
	note_pitch A_, 1
	note_pitch G_, 1
	rest
	note_length 12
	note_pitch A#, 2
	note_pitch A_, 2
	note_length 18
	note_pitch G_, 2
	note_pitch F_, 2
	note_length 12
	note_pitch G_, 2
	note_length 24
	continue_note
	note_length 6
	note_pitch C_, 3
	note_length 18
	note_pitch C_, 3
	song_ret

Music_PanelDePon2_branch_1800af: ; 1800af (60:40af)
	musicd7 0
	duty_cycle_50
	musice3 1
	note_length 6
	note_pitch F_, 2
	note_pitch C_, 3
	note_pitch F_, 3
	note_pitch F_, 2
	note_pitch C_, 3
	note_pitch F_, 3
	note_length 12
	note_pitch F_, 2
	note_length 24
	rest
	note_length 12
	note_pitch A#, 2
	note_pitch A_, 2
	note_length 6
	note_pitch F_, 2
	note_pitch C_, 3
	note_pitch F_, 3
	note_pitch F_, 2
	note_pitch C_, 3
	note_pitch F_, 3
	note_length 12
	note_pitch F_, 2
	note_length 24
	rest
	note_length 12
	note_pitch F_, 2
	note_pitch G_, 2
	note_length 48
	note_pitch A_, 2
	note_length 24
	note_pitch G_, 2
	note_length 6
	note_pitch G_, 2
	note_length 12
	note_pitch A_, 2
	note_length 6
	note_pitch G_, 2
	note_length 48
	note_pitch F_, 2
	note_length 48
	continue_note
	musice3 1
	note_length 18
	note_pitch A_, 2
	note_pitch A#, 2
	note_length 12
	note_pitch C_, 3
	note_length 24
	continue_note
	note_length 12
	note_pitch A#, 2
	note_length 12
	note_pitch A_, 2
	note_length 18
	note_pitch A#, 2
	note_length 18
	note_pitch A_, 2
	note_length 12
	note_pitch G_, 2
	note_length 48
	continue_note
	note_length 6
	note_pitch A_, 2
	note_length 12
	note_pitch G_, 2
	note_length 6
	note_pitch A_, 3
	note_length 12
	note_pitch G_, 3
	note_length 6
	note_pitch A_, 2
	note_pitch G_, 2
	note_length 6
	rest
	note_pitch A_, 1
	note_pitch G_, 1
	rest
	note_length 12
	note_pitch A#, 2
	note_pitch A_, 2
	note_length 18
	note_pitch G_, 2
	note_pitch F_, 2
	note_length 12
	note_pitch G_, 2
	note_length 24
	continue_note
	note_length 6
	note_pitch F_, 3
	note_length 18
	note_pitch F_, 3
	note_length 18
	note_pitch A_, 2
	note_pitch A#, 2
	note_length 12
	note_pitch C_, 3
	note_length 24
	continue_note
	note_length 12
	note_pitch A#, 2
	note_pitch A_, 2
	note_length 18
	note_pitch A#, 2
	note_length 18
	note_pitch C_, 3
	note_length 12
	note_pitch D_, 3
	note_length 24
	continue_note
	note_length 12
	note_pitch C_, 3
	note_pitch A#, 2
	note_length 18
	note_pitch A_, 2
	note_pitch A#, 2
	note_length 12
	note_pitch A_, 2
	note_length 18
	note_pitch G_, 2
	note_pitch A_, 2
	note_length 12
	note_pitch G_, 2
	note_length 5
	note_pitch F_, 2
	note_length 1
	rest
	note_length 5
	note_pitch F_, 2
	note_length 1
	rest
	note_length 5
	note_pitch F_, 2
	note_length 13
	rest
	note_length 12
	note_pitch F_, 2
	note_length 6
	note_pitch F_, 2
	note_length 18
	note_pitch F_, 2
	note_length 12
	note_pitch F_, 2
	note_length 6
	note_pitch F_, 2
	note_length 12
	note_pitch F_, 2
	note_length 5
	note_pitch F_, 2
	note_length 1
	rest
	note_length 5
	note_pitch F_, 2
	note_length 1
	rest
	note_length 5
	note_pitch F_, 2
	note_length 13
	rest
	note_length 12
	note_pitch F_, 2
	note_length 6
	note_pitch F_, 2
	note_length 18
	note_pitch F_, 2
	note_length 12
	note_pitch F_, 2
	note_length 6
	note_pitch F_, 2
	note_length 12
	note_pitch F_, 2
	note_length 5
	note_pitch F_, 2
	note_length 1
	rest
	note_length 5
	note_pitch F_, 2
	note_length 1
	rest
	note_length 5
	note_pitch F_, 2
	note_length 13
	rest
	note_length 12
	note_pitch F_, 2
	note_length 6
	note_pitch F_, 2
	note_length 18
	note_pitch F_, 2
	note_length 12
	note_pitch F_, 2
	note_length 6
	note_pitch F_, 2
	note_length 12
	note_pitch F_, 2
	note_length 5
	note_pitch F_, 2
	note_length 1
	rest
	note_length 5
	note_pitch F_, 2
	note_length 1
	rest
	note_length 5
	note_pitch F_, 2
	note_length 13
	rest
	note_length 12
	note_pitch F_, 2
	note_length 6
	note_pitch F_, 2
	note_length 18
	note_pitch F_, 2
	note_length 12
	note_pitch F_, 2
	note_length 6
	note_pitch F_, 2
	note_length 12
	note_pitch F_, 2
	song_ret

Music_PanelDePon2_Ch2: ; 180191 (60:4191)
	volume_envelope 7, 7
	stereo_panning_both
	musicd4 37
	musicd6 21
	duty_cycle_50
	musicd8 114
	musicd7 0
	note_length 48
	rest
	musicd8 118
	musice3 -1
	note_length 24
	rest
	note_length 23
	note_pitch C_, 3
	note_length 1
	rest
	note_length 48
	note_pitch F_, 3
	note_length 24
	continue_note
	duty_cycle_50
	musicd7 0
	note_length 6
	note_pitch F_, 3
	note_length 2
	note_pitch A_, 2
	note_pitch B_, 2
	note_pitch C_, 3
	note_pitch D_, 3
	note_pitch E_, 3
	note_length 8
	rest
Music_PanelDePon2_branch_1801ba: ; 1801ba (60:41ba)
	duty_cycle_50
	musicd7 12
	musicd8 118
	note_length 6
	note_pitch A_, 2
	note_length 12
	rest
	note_length 6
	note_pitch A_, 2
	note_length 18
	rest
	note_length 6
	note_pitch G_, 2
	note_length 18
	rest
	note_length 6
	note_pitch F_, 2
	note_length 12
	rest
	note_length 6
	note_pitch F_, 2
	rest
	note_length 18
	note_pitch G_, 2
	note_pitch F_, 2
	note_length 12
	note_pitch E_, 2
	note_length 18
	note_pitch F_, 2
	note_pitch E_, 2
	note_length 12
	note_pitch F_, 2
	note_length 6
	note_pitch A_, 2
	note_length 12
	rest
	note_length 6
	note_pitch A_, 2
	note_length 18
	rest
	note_length 6
	note_pitch G_, 2
	note_length 18
	rest
	note_length 6
	note_pitch C_, 3
	note_length 12
	rest
	note_length 12
	note_pitch F_, 2
	note_length 18
	note_pitch G_, 2
	note_length 18
	note_pitch F_, 2
	note_length 12
	note_pitch E_, 2
	note_length 18
	note_pitch F_, 2
	note_pitch E_, 2
	note_length 12
	note_pitch F_, 2
	duty_cycle_12_5
	note_length 18
	note_pitch A_, 1
	note_length 18
	note_pitch A#, 1
	note_length 12
	note_pitch C_, 2
	note_length 24
	continue_note
	note_length 12
	note_pitch A#, 1
	note_pitch A_, 1
	note_length 18
	note_pitch A#, 1
	note_pitch A_, 1
	note_length 12
	note_pitch G_, 1
	note_length 48
	continue_note
	note_length 6
	note_pitch A_, 1
	note_pitch G_, 1
	rest
	note_pitch A_, 2
	note_pitch G_, 2
	rest
	note_pitch A_, 1
	note_pitch G_, 1
	note_length 6
	rest
	note_pitch A_, 0
	note_pitch G_, 0
	rest
	note_length 12
	note_pitch A#, 1
	note_length 12
	note_pitch A_, 1
	note_length 18
	note_pitch G_, 1
	note_pitch F_, 1
	note_length 12
	note_pitch G_, 1
	note_length 24
	continue_note
	duty_cycle_25
	musicd7 24
	note_length 6
	note_pitch F_, 2
	note_length 18
	note_pitch F_, 2
	musicd7 12
	duty_cycle_50
	musicd8 118
	note_length 18
	note_pitch A_, 1
	note_pitch A#, 1
	note_length 12
	note_pitch C_, 2
	note_length 24
	continue_note
	note_length 12
	note_pitch A#, 1
	note_pitch A_, 1
	note_length 18
	note_pitch A#, 1
	note_length 18
	note_pitch A_, 1
	note_length 36
	note_pitch G_, 1
	note_length 12
	note_pitch F_, 1
	note_length 12
	note_pitch G_, 1
	note_length 48
	note_pitch A_, 1
	note_length 6
	note_pitch G_, 1
	note_length 18
	rest
	note_length 6
	note_pitch G_, 1
	note_length 12
	note_pitch A_, 1
	note_length 6
	note_pitch G_, 1
	note_length 24
	note_pitch F_, 1
	duty_cycle_12_5
	note_length 6
	note_pitch A#, 2
	note_length 12
	note_pitch C_, 3
	note_length 6
	note_pitch A#, 2
	note_length 48
	note_pitch A_, 2
	duty_cycle_50
	note_length 18
	note_pitch F_, 1
	note_length 18
	note_pitch G_, 1
	note_length 36
	note_pitch A_, 1
	note_length 12
	note_pitch A#, 1
	note_length 12
	note_pitch A_, 1
	note_length 18
	note_pitch A#, 1
	note_length 18
	note_pitch A_, 1
	note_length 36
	note_pitch G_, 1
	note_length 24
	rest
	duty_cycle_25
	musicd7 12
	note_length 6
	note_pitch A_, 1
	note_length 6
	note_pitch G_, 1
	note_length 6
	rest
	note_length 6
	note_pitch A_, 2
	note_length 6
	note_pitch G_, 2
	note_length 6
	rest
	note_length 6
	note_pitch A_, 1
	note_length 6
	note_pitch G_, 1
	note_length 6
	rest
	note_length 6
	note_pitch A_, 0
	note_length 6
	note_pitch G_, 0
	note_length 6
	rest
	note_length 12
	note_pitch A#, 1
	note_length 12
	note_pitch A_, 1
	note_length 18
	note_pitch G_, 1
	note_length 18
	note_pitch F_, 1
	note_length 36
	note_pitch G_, 1
	note_length 6
	note_pitch C_, 2
	note_length 18
	note_pitch C_, 2
	musicd8 114
	duty_cycle_50
	musicd7 12
	note_length 18
	note_pitch F_, 1
	note_length 18
	note_pitch G_, 1
	note_length 36
	note_pitch A_, 1
	note_length 12
	note_pitch A#, 1
	note_length 12
	note_pitch A_, 1
	note_length 18
	note_pitch G_, 1
	note_length 18
	note_pitch A_, 1
	note_length 36
	note_pitch A#, 1
	note_length 12
	note_pitch C_, 2
	note_length 12
	note_pitch A#, 1
	note_length 18
	note_pitch A_, 1
	note_length 18
	note_pitch A#, 1
	note_length 12
	note_pitch A_, 1
	note_length 18
	note_pitch G_, 1
	note_length 18
	note_pitch A_, 1
	note_length 12
	note_pitch G_, 1
	duty_cycle_12_5
	note_length 6
	note_pitch F_, 1
	note_pitch F_, 1
	note_length 18
	note_pitch F_, 1
	note_length 12
	note_pitch F_, 1
	note_length 6
	note_pitch F_, 1
	note_length 18
	note_pitch F_, 1
	note_length 12
	note_pitch F_, 1
	note_length 6
	note_pitch F_, 1
	note_length 12
	note_pitch F_, 1
	note_length 6
	note_pitch C_, 2
	note_pitch C_, 2
	note_length 18
	note_pitch C_, 2
	note_length 12
	note_pitch C_, 2
	note_length 6
	note_pitch C_, 2
	note_length 18
	note_pitch C_, 2
	note_length 12
	note_pitch C_, 2
	note_length 6
	note_pitch C_, 2
	note_length 12
	note_pitch C_, 2
	note_length 6
	note_pitch F_, 2
	note_pitch F_, 2
	note_length 18
	note_pitch F_, 2
	note_length 12
	note_pitch F_, 2
	note_length 6
	note_pitch F_, 2
	note_length 18
	note_pitch F_, 2
	note_length 12
	note_pitch F_, 2
	note_length 6
	note_pitch F_, 2
	note_length 12
	note_pitch F_, 2
	musicd8 115
	note_length 6
	note_pitch A_, 2
	note_pitch A_, 2
	note_length 18
	note_pitch A_, 2
	note_length 12
	note_pitch A_, 2
	note_length 6
	note_pitch A_, 2
	note_length 18
	note_pitch A_, 2
	note_length 12
	note_pitch A_, 2
	note_length 6
	note_pitch A_, 2
	note_length 12
	note_pitch A_, 2
	song_jump Music_PanelDePon2_branch_1801ba

Music_PanelDePon2_Ch3: ; 180307 (60:4307)
	wave 25
	musicd8 20
	musicd7 24
	musice3 3
	note_length 6
	note_pitch F_, 1
	note_pitch F_, 1
	note_pitch D#, 1
	note_pitch D_, 1
	note_pitch C_, 1
	rest
	rest
	note_pitch D#, 1
	note_length 6
	continue_note
	note_pitch D#, 1
	note_pitch D_, 1
	note_pitch C_, 1
	note_pitch A#, 0
	rest
	note_pitch C_, 1
	note_pitch F_, 1
	note_length 6
	continue_note
	note_pitch F_, 1
	note_pitch D#, 1
	note_pitch D_, 1
	note_pitch C_, 1
	rest
	rest
	note_pitch D#, 1
	note_length 6
	continue_note
	note_pitch D#, 1
	note_pitch D_, 1
	note_pitch C_, 1
	note_pitch A#, 0
	rest
	rest
	rest
Music_PanelDePon2_branch_180333: ; 180333 (60:4333)
	musice3 0
	musicd7 12
	wave 15
	note_length 6
	note_pitch F_, 1
	rest
	rest
	note_pitch A_, 0
	rest
	rest
	rest
	note_pitch G_, 0
	note_length 18
	rest
	note_pitch C_, 1
	note_length 12
	note_pitch A#, 1
	note_length 18
	note_pitch A_, 0
	note_pitch D_, 1
	note_length 12
	note_pitch C_, 1
	note_length 18
	note_pitch A#, 0
	note_pitch A_, 0
	note_length 12
	note_pitch G_, 0
	note_length 6
	note_pitch F_, 1
	rest
	rest
	note_pitch A_, 0
	rest
	rest
	rest
	note_pitch G_, 0
	note_length 18
	rest
	note_pitch C_, 1
	note_length 12
	note_pitch A#, 0
	note_length 18
	note_pitch A_, 0
	note_pitch D_, 0
	note_length 12
	note_pitch C_, 1
	note_length 18
	note_pitch A#, 0
	note_pitch A_, 0
	note_length 12
	note_pitch G_, 0
	note_length 6
	note_pitch F_, 0
	rest
	note_pitch F_, 0
	note_pitch G_, 0
	rest
	note_pitch G_, 0
	note_length 12
	note_pitch A_, 0
	note_length 6
	rest
	note_pitch A_, 0
	note_length 12
	note_pitch A_, 0
	note_pitch G_, 0
	note_pitch F_, 0
	note_length 6
	note_pitch F_, 0
	rest
	note_pitch G_, 0
	note_pitch F_, 0
	rest
	note_pitch F_, 0
	note_length 12
	note_pitch G_, 0
	note_length 6
	rest
	note_pitch G_, 0
	note_length 12
	note_pitch G_, 0
	note_pitch F_, 0
	note_pitch G_, 0
	note_length 6
	note_pitch F_, 0
	rest
	note_pitch F_, 0
	note_pitch F_, 0
	rest
	note_pitch F_, 0
	note_length 12
	note_pitch F_, 0
	note_length 6
	rest
	note_pitch F_, 0
	note_length 12
	note_pitch F_, 0
	note_pitch E_, 0
	note_pitch F_, 0
	note_length 6
	note_pitch G_, 0
	rest
	note_pitch G_, 0
	note_pitch A_, 0
	rest
	note_pitch A_, 0
	note_length 12
	note_pitch G_, 0
	note_length 6
	continue_note
	rest
	note_pitch G_, 0
	note_pitch G_, 0
	rest
	note_pitch G_, 0
	note_pitch G_, 0
	note_pitch G_, 0
	note_length 6
	note_pitch F_, 0
	rest
	note_pitch F_, 0
	note_pitch G_, 0
	rest
	note_pitch G_, 0
	note_length 12
	note_pitch A_, 0
	note_length 6
	rest
	note_pitch A_, 0
	note_length 12
	note_pitch A_, 0
	note_pitch G_, 0
	note_pitch F_, 0
	note_length 6
	note_pitch F_, 0
	rest
	note_pitch G_, 0
	note_pitch F_, 0
	rest
	note_pitch F_, 0
	note_length 12
	note_pitch G_, 0
	note_length 6
	rest
	note_pitch G_, 0
	note_length 12
	note_pitch G_, 0
	note_pitch F_, 0
	note_pitch G_, 0
	note_length 6
	note_pitch F_, 0
	rest
	note_pitch F_, 0
	note_pitch E_, 0
	rest
	note_pitch E_, 0
	note_length 12
	note_pitch F_, 0
	note_length 6
	rest
	note_pitch F_, 0
	note_length 12
	note_pitch F_, 0
	note_pitch E_, 0
	note_pitch E_, 0
	note_length 6
	note_pitch F_, 0
	rest
	note_pitch F_, 0
	note_pitch G_, 0
	rest
	note_pitch E_, 0
	note_length 12
	note_pitch F_, 0
	note_length 6
	continue_note
	rest
	note_pitch F_, 0
	note_pitch F_, 0
	rest
	note_pitch G_, 0
	note_pitch F_, 0
	note_pitch F_, 0
	note_length 6
	note_pitch F_, 0
	rest
	note_pitch F_, 0
	note_pitch G_, 0
	rest
	note_pitch G_, 0
	note_length 12
	note_pitch A_, 0
	note_length 6
	rest
	note_pitch A_, 0
	note_length 12
	note_pitch A_, 0
	note_pitch G_, 0
	note_pitch F_, 0
	note_length 6
	note_pitch G_, 0
	rest
	note_pitch G_, 0
	note_pitch F_, 0
	rest
	note_pitch F_, 0
	note_length 12
	note_pitch G_, 0
	note_length 6
	rest
	note_pitch G_, 0
	note_length 18
	note_pitch F_, 0
	note_pitch G_, 0
	note_length 6
	note_pitch F_, 0
	rest
	note_pitch F_, 0
	note_pitch F_, 0
	rest
	note_pitch F_, 0
	note_length 12
	note_pitch F_, 0
	note_length 6
	rest
	note_pitch F_, 0
	note_length 12
	note_pitch F_, 0
	note_pitch E_, 0
	note_pitch F_, 0
	note_length 6
	note_pitch G_, 0
	rest
	note_pitch G_, 0
	note_pitch A_, 0
	rest
	note_pitch A_, 0
	note_length 12
	note_pitch G_, 0
	note_length 6
	continue_note
	rest
	note_pitch G_, 0
	note_pitch G_, 0
	rest
	note_pitch G_, 0
	note_pitch G_, 0
	note_pitch G_, 0
	note_length 6
	note_pitch F_, 0
	rest
	note_pitch F_, 0
	note_pitch G_, 0
	rest
	note_pitch G_, 0
	note_length 12
	note_pitch A_, 0
	note_length 6
	rest
	note_pitch A_, 0
	note_length 12
	note_pitch A_, 0
	note_pitch G_, 0
	note_pitch F_, 0
	note_length 6
	note_pitch G_, 0
	rest
	note_pitch G_, 0
	note_pitch A_, 0
	rest
	note_pitch A_, 0
	note_length 12
	note_pitch A#, 0
	note_length 6
	rest
	note_pitch A#, 0
	note_length 18
	note_pitch A#, 0
	note_length 6
	note_pitch A_, 0
	note_length 12
	note_pitch G_, 0
	note_length 6
	note_pitch F_, 0
	rest
	note_pitch F_, 0
	note_pitch G_, 0
	rest
	note_pitch G_, 0
	note_length 12
	note_pitch A_, 0
	note_length 6
	note_pitch F_, 0
	rest
	note_pitch F_, 0
	note_pitch E_, 0
	rest
	note_pitch E_, 0
	note_length 12
	note_pitch E_, 0
	note_length 6
	note_pitch F_, 0
	note_pitch F_, 0
	note_pitch F_, 0
	note_length 12
	rest
	note_length 6
	note_pitch F_, 0
	rest
	note_pitch F_, 0
	note_length 6
	note_pitch F_, 0
	note_length 12
	rest
	note_length 6
	note_pitch F_, 0
	rest
	note_pitch F_, 0
	note_pitch F_, 0
	rest
	note_length 6
	note_pitch F_, 0
	note_pitch F_, 0
	note_pitch F_, 0
	note_length 12
	rest
	note_length 6
	note_pitch F_, 0
	rest
	note_pitch F_, 0
	note_length 6
	note_pitch F_, 0
	note_length 12
	rest
	note_length 6
	note_pitch F_, 0
	rest
	note_pitch F_, 0
	note_pitch F_, 0
	rest
	note_length 6
	note_pitch F_, 0
	note_pitch F_, 0
	note_pitch F_, 0
	note_length 12
	rest
	note_length 6
	note_pitch F_, 0
	rest
	note_pitch F_, 0
	note_length 6
	note_pitch F_, 0
	note_length 12
	rest
	note_length 6
	note_pitch F_, 0
	rest
	note_pitch F_, 0
	note_pitch F_, 0
	rest
	note_length 6
	note_pitch F_, 0
	note_pitch F_, 0
	note_pitch F_, 0
	note_length 12
	rest
	note_length 6
	note_pitch F_, 0
	rest
	note_pitch F_, 0
	note_length 6
	note_pitch F_, 0
	note_length 12
	rest
	note_length 6
	note_pitch F_, 0
	rest
	note_pitch F_, 0
	note_pitch F_, 0
	rest
	song_jump Music_PanelDePon2_branch_180333

Music_PanelDePon2_Ch4: ; 1804b5 (60:44b5)
	stereo_panning_both
	note_length 6
	noise 10
	noise 14
	noise 10
	noise 14
	noise 10
	noise 17
	noise 17
	noise 10
	note_length 6
	noise 10
	noise 14
	noise 10
	noise 14
	noise 10
	noise 14
	noise 17
	noise 10
	note_length 6
	noise 10
	noise 14
	noise 10
	noise 14
	noise 10
	noise 17
	noise 17
	noise 10
	note_length 6
	noise 10
	noise 14
	noise 10
	noise 14
	noise 10
	noise 14
	noise 17
	noise 18
Music_PanelDePon2_branch_1804da: ; 1804da (60:44da)
	song_call Music_PanelDePon2_branch_1804ef
	song_call Music_PanelDePon2_branch_1804ef
	song_call Music_PanelDePon2_branch_1804ef
	song_call Music_PanelDePon2_branch_1804ef
	song_call Music_PanelDePon2_branch_1804ef
	song_call Music_PanelDePon2_branch_18053b
	song_jump Music_PanelDePon2_branch_1804da

Music_PanelDePon2_branch_1804ef: ; 1804ef (60:44ef)
	note_length 6
	noise 10
	noise 11
	noise 17
	noise 10
	noise 10
	noise 11
	noise 17
	noise 10
	note_length 6
	noise 10
	noise 11
	noise 17
	noise 10
	noise 10
	noise 11
	noise 17
	noise 10
	note_length 6
	noise 10
	noise 11
	noise 17
	noise 10
	noise 10
	noise 11
	noise 17
	noise 10
	note_length 6
	noise 10
	noise 11
	noise 17
	noise 10
	noise 10
	noise 11
	noise 17
	noise 17
	note_length 6
	noise 10
	noise 11
	noise 17
	noise 10
	noise 10
	noise 11
	noise 17
	noise 10
	note_length 6
	noise 10
	noise 11
	noise 17
	noise 10
	noise 10
	noise 11
	noise 17
	noise 10
	note_length 6
	noise 10
	noise 11
	noise 17
	noise 10
	noise 10
	noise 11
	noise 17
	noise 10
	note_length 6
	noise 10
	noise 14
	noise 17
	noise 14
	noise 10
	noise 14
	note_length 3
	noise 17
	noise 18
	noise 17
	noise 18
	song_ret

Music_PanelDePon2_branch_18053b: ; 18053b (60:453b)
	note_length 6
	noise 17
	noise 17
	noise 17
	noise 10
	noise 10
	noise 17
	noise 10
	noise 10
	note_length 6
	noise 10
	noise 14
	noise 17
	noise 14
	noise 10
	noise 14
	noise 17
	noise 18
	note_length 6
	noise 17
	noise 17
	noise 17
	noise 10
	noise 10
	noise 17
	noise 10
	noise 10
	note_length 6
	noise 10
	noise 14
	noise 17
	noise 14
	noise 10
	noise 14
	noise 17
	noise 18
	note_length 6
	noise 17
	noise 17
	noise 17
	noise 10
	noise 10
	noise 17
	noise 10
	noise 10
	note_length 6
	noise 10
	noise 14
	noise 17
	noise 14
	noise 10
	noise 14
	note_length 3
	noise 17
	noise 18
	noise 17
	noise 18
	song_ret
