Music_PanelDePon3: ; 8f689 (23:7689)
	dw Music_PanelDePon3_Ch1
	dw Music_PanelDePon3_Ch2
	dw Music_PanelDePon3_Ch3
	dw Music_PanelDePon3_Ch4

Music_PanelDePon3_Ch1: ; 8f691 (23:7691)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	musicd6 25
	musicd4 37
	duty_cycle_75
	musicd7 0
	musicd8 113
Music_PanelDePon3_branch_8f69f: ; 8f69f (23:769f)
	song_call Music_PanelDePon3_branch_8f6ba
	song_call Music_PanelDePon3_branch_8f6ba
	song_call Music_PanelDePon3_branch_8f6ba
	song_call Music_PanelDePon3_branch_8f6ba
	song_call Music_PanelDePon3_branch_8f6ba
	song_call Music_PanelDePon3_branch_8f6ba
	song_call Music_PanelDePon3_branch_8f6ba
	song_call Music_PanelDePon3_branch_8f6db
	song_jump Music_PanelDePon3_branch_8f69f

Music_PanelDePon3_branch_8f6ba: ; 8f6ba (23:76ba)
	note_length 2
	note_pitch C_, 3
	note_length 4
	rest
	note_length 2
	note_pitch F#, 2
	note_length 4
	rest
	note_length 2
	note_pitch B_, 2
	note_length 4
	rest
	note_length 2
	note_pitch F_, 2
	note_length 4
	rest
	note_length 2
	note_pitch B_, 2
	note_length 4
	rest
	note_length 2
	note_pitch D#, 3
	note_length 4
	rest
	note_length 2
	note_pitch D_, 3
	note_length 4
	rest
	note_length 2
	note_pitch C#, 3
	note_length 4
	rest
	song_ret

Music_PanelDePon3_branch_8f6db: ; 8f6db (23:76db)
	note_length 2
	note_pitch B_, 2
	note_length 4
	rest
	note_length 2
	note_pitch C_, 3
	note_length 4
	rest
	note_length 2
	note_pitch D#, 3
	note_length 4
	rest
	note_length 2
	note_pitch D_, 3
	note_length 4
	rest
	note_length 2
	note_pitch C#, 3
	note_length 4
	rest
	note_length 2
	note_pitch C_, 3
	note_length 4
	rest
	note_length 2
	note_pitch B_, 2
	note_length 4
	rest
	note_length 2
	note_pitch C_, 3
	note_length 4
	rest
	song_ret

Music_PanelDePon3_Ch2: ; 8f6fc (23:76fc)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	musicd6 25
	musicd4 37
	duty_cycle_50
	musicd7 0
	musicd8 118
Music_PanelDePon3_branch_8f70a: ; 8f70a (23:770a)
	musicd4 37
	song_call Music_PanelDePon3_branch_8f712
	song_jump Music_PanelDePon3_branch_8f70a

Music_PanelDePon3_branch_8f712: ; 8f712 (23:7712)
	note_length 15
	note_pitch C_, 4
	note_length 3
	rest
	note_length 6
	note_pitch C_, 4
	note_length 12
	rest
	musicd4 35
	note_length 12
	note_pitch B_, 3
	note_length 48
	continue_note
	note_length 48
	continue_note
	note_length 48
	continue_note
	song_ret

Music_PanelDePon3_Ch3: ; 8f725 (23:7725)
	stereo_panning_both
	musicd4 35
	musicd6 25
	musicd7 12
	wave 28
	musicd8 107
	note_length 6
	note_pitch F_, 1
	note_length 6
	note_pitch F_, 1
	note_length 6
	note_pitch D#, 1
	note_length 6
	note_pitch D_, 1
	note_length 6
	note_pitch C#, 1
	note_length 12
	rest
	note_length 6
	note_pitch D#, 1
	note_length 6
	continue_note
	note_length 6
	note_pitch D#, 1
	note_length 6
	note_pitch D_, 1
	note_length 6
	note_pitch C#, 1
	note_length 6
	note_pitch A#, 0
	note_length 6
	rest
	note_pitch C#, 1
	note_length 6
	note_pitch F_, 1
Music_PanelDePon3_branch_8f74d: ; 8f74d (23:774d)
	song_call Music_PanelDePon3_branch_8f753
	song_jump Music_PanelDePon3_branch_8f74d

Music_PanelDePon3_branch_8f753: ; 8f753 (23:7753)
	note_length 6
	continue_note
	note_length 6
	note_pitch F_, 1
	note_length 6
	note_pitch D#, 1
	note_length 6
	note_pitch D_, 1
	note_length 6
	note_pitch C#, 1
	note_length 12
	rest
	note_length 6
	note_pitch D#, 1
	note_length 6
	continue_note
	note_length 6
	note_pitch D#, 1
	note_length 6
	note_pitch D_, 1
	note_length 6
	note_pitch C#, 1
	note_length 6
	note_pitch A#, 0
	note_length 6
	rest
	note_pitch C#, 1
	note_length 6
	note_pitch F_, 1
	song_ret

Music_PanelDePon3_Ch4: ; 8f771 (23:7771)
	stereo_panning_both
Music_PanelDePon3_branch_8f772: ; 8f772 (23:7772)
	song_call Music_PanelDePon3_branch_8f78d
	song_call Music_PanelDePon3_branch_8f78d
	song_call Music_PanelDePon3_branch_8f78d
	song_call Music_PanelDePon3_branch_8f78d
	song_call Music_PanelDePon3_branch_8f78d
	song_call Music_PanelDePon3_branch_8f78d
	song_call Music_PanelDePon3_branch_8f78d
	song_call Music_PanelDePon3_branch_8f797
	song_jump Music_PanelDePon3_branch_8f772

Music_PanelDePon3_branch_8f78d: ; 8f78d (23:778d)
	note_length 6
	noise 10
	noise 11
	noise 17
	noise 10
	noise 10
	noise 11
	noise 17
	noise 10
	song_ret

Music_PanelDePon3_branch_8f797: ; 8f797 (23:7797)
	note_length 12
	noise 2
	noise 17
	note_length 3
	noise 17
	noise 17
	noise 17
	noise 2
	noise 18
	noise 18
	noise 17
	noise 18
	song_ret
