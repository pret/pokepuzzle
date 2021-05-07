Music_PanelDePon3: ; 8f689 (23:7689)
	dw Music_PanelDePon3_Ch1
	dw Music_PanelDePon3_Ch2
	dw Music_PanelDePon3_Ch3
	dw Music_PanelDePon3_Ch4

Music_PanelDePon3_Ch1: ; 8f691 (23:7691)
	volume 119
	volume_envelope 115
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
	music01 2
	music8a 174
	music01 4
	musicd2
	music01 2
	music8a 168
	music01 4
	musicd2
	music01 2
	music8a 173
	music01 4
	musicd2
	music01 2
	music8a 167
	music01 4
	musicd2
	music01 2
	music8a 173
	music01 4
	musicd2
	music01 2
	music8a 177
	music01 4
	musicd2
	music01 2
	music8a 176
	music01 4
	musicd2
	music01 2
	music8a 175
	music01 4
	musicd2
	song_ret

Music_PanelDePon3_branch_8f6db: ; 8f6db (23:76db)
	music01 2
	music8a 173
	music01 4
	musicd2
	music01 2
	music8a 174
	music01 4
	musicd2
	music01 2
	music8a 177
	music01 4
	musicd2
	music01 2
	music8a 176
	music01 4
	musicd2
	music01 2
	music8a 175
	music01 4
	musicd2
	music01 2
	music8a 174
	music01 4
	musicd2
	music01 2
	music8a 173
	music01 4
	musicd2
	music01 2
	music8a 174
	music01 4
	musicd2
	song_ret

Music_PanelDePon3_Ch2: ; 8f6fc (23:76fc)
	volume 119
	volume_envelope 115
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
	music01 15
	music8a 186
	music01 3
	musicd2
	music01 6
	music8a 186
	music01 12
	musicd2
	musicd4 35
	music01 12
	music8a 185
	music01 48
	musicd3
	music01 48
	musicd3
	music01 48
	musicd3
	song_ret

Music_PanelDePon3_Ch3: ; 8f725 (23:7725)
	stereo_panning_both
	musicd4 35
	musicd6 25
	musicd7 12
	wave 28
	musicd8 107
	music01 6
	music8a 155
	music01 6
	music8a 155
	music01 6
	music8a 153
	music01 6
	music8a 152
	music01 6
	music8a 151
	music01 12
	musicd2
	music01 6
	music8a 153
	music01 6
	musicd3
	music01 6
	music8a 153
	music01 6
	music8a 152
	music01 6
	music8a 151
	music01 6
	music8a 148
	music01 6
	musicd2
	music8a 151
	music01 6
	music8a 155
Music_PanelDePon3_branch_8f74d: ; 8f74d (23:774d)
	song_call Music_PanelDePon3_branch_8f753
	song_jump Music_PanelDePon3_branch_8f74d

Music_PanelDePon3_branch_8f753: ; 8f753 (23:7753)
	music01 6
	musicd3
	music01 6
	music8a 155
	music01 6
	music8a 153
	music01 6
	music8a 152
	music01 6
	music8a 151
	music01 12
	musicd2
	music01 6
	music8a 153
	music01 6
	musicd3
	music01 6
	music8a 153
	music01 6
	music8a 152
	music01 6
	music8a 151
	music01 6
	music8a 148
	music01 6
	musicd2
	music8a 151
	music01 6
	music8a 155
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
	music01 6
	music6d 119
	music6d 120
	music6d 126
	music6d 119
	music6d 119
	music6d 120
	music6d 126
	music6d 119
	song_ret

Music_PanelDePon3_branch_8f797: ; 8f797 (23:7797)
	music01 12
	music6d 111
	music6d 126
	music01 3
	music6d 126
	music6d 126
	music6d 126
	music6d 111
	music6d 127
	music6d 127
	music6d 126
	music6d 127
	song_ret
