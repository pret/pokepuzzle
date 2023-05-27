Music_ElekidAndMagbysTheme: ; 18d4d9 (63:54d9)
	dw Music_ElekidAndMagbysTheme_Ch1
	dw Music_ElekidAndMagbysTheme_Ch2
	dw Music_ElekidAndMagbysTheme_Ch3
	dw Music_ElekidAndMagbysTheme_Ch4

Music_ElekidAndMagbysTheme_Ch1: ; 18d4e1 (63:54e1)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	duty_cycle_75
	musicd4 55
	duty_cycle_12_5
	musicd4 55
	musicd6 15
	note_length 12
	rest
Music_ElekidAndMagbysTheme_branch_18d4f0: ; 18d4f0 (63:54f0)
	song_call Music_ElekidAndMagbysTheme_branch_18d4fc
	song_call Music_ElekidAndMagbysTheme_branch_18d564
	song_call Music_ElekidAndMagbysTheme_branch_18d5b7
	song_jump Music_ElekidAndMagbysTheme_branch_18d4f0

Music_ElekidAndMagbysTheme_branch_18d4fc: ; 18d4fc (63:54fc)
	note_length 48
	rest
	musicd8 167
	note_length 3
	note_pitch D_, 2
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
	note_pitch D#, 2
	note_length 3
	rest
	note_pitch D_, 2
	note_length 3
	rest
	note_length 6
	rest
	note_length 3
	note_pitch C_, 2
	note_length 9
	rest
	note_length 3
	note_pitch A#, 1
	note_length 9
	rest
	note_length 3
	note_pitch D_, 2
	note_length 9
	rest
	note_length 6
	note_pitch C_, 2
	note_length 24
	continue_note
	note_length 24
	rest
	note_length 48
	rest
	note_length 48
	rest
	note_length 48
	rest
	musicd8 204
	musice3 3
	note_length 14
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 3
	note_length 24
	rest
	note_length 12
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 3
	note_length 22
	rest
	musicd8 36
	musice3 0
	note_length 12
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 3
	note_length 24
	rest
	note_length 12
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 3
	note_length 24
	rest
	song_ret

Music_ElekidAndMagbysTheme_branch_18d564: ; 18d564 (63:5564)
	musice3 2
	note_length 3
	note_pitch D_, 2
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
	note_pitch D#, 2
	note_length 3
	rest
	note_pitch D_, 2
	note_length 3
	rest
	note_length 6
	rest
	note_length 3
	note_pitch C_, 2
	note_length 9
	rest
	note_length 3
	note_pitch A#, 1
	note_length 9
	rest
	note_length 3
	note_pitch D_, 2
	note_length 9
	rest
	note_length 6
	note_pitch C_, 2
	note_length 48
	rest
	note_length 48
	rest
	note_length 48
	rest
	note_length 48
	rest
	note_length 12
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 3
	note_length 24
	rest
	note_length 12
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 3
	note_length 24
	rest
	note_length 12
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 3
	note_length 24
	rest
	note_length 48
	rest
	song_ret

Music_ElekidAndMagbysTheme_branch_18d5b7: ; 18d5b7 (63:55b7)
	note_length 3
	note_pitch F_, 4
	note_length 9
	rest
	note_length 3
	note_pitch D_, 4
	note_length 9
	rest
	note_length 3
	note_pitch D#, 4
	note_length 9
	rest
	note_length 3
	note_pitch C_, 4
	note_length 9
	rest
	note_length 3
	note_pitch D_, 4
	note_length 3
	rest
	note_pitch C_, 4
	note_length 3
	rest
	note_pitch A#, 3
	note_length 9
	rest
	note_length 18
	note_pitch C_, 4
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch D#, 4
	note_length 3
	note_pitch F_, 4
	note_length 9
	rest
	note_length 3
	note_pitch D_, 4
	note_length 9
	rest
	note_length 3
	note_pitch D#, 4
	note_length 9
	rest
	note_length 3
	note_pitch C_, 4
	note_length 9
	rest
	note_length 3
	note_pitch D_, 4
	note_length 3
	rest
	note_pitch C_, 4
	note_length 3
	rest
	note_pitch A#, 3
	note_length 3
	rest
	note_pitch C_, 4
	note_length 3
	rest
	note_length 18
	note_pitch A#, 3
	note_length 3
	note_pitch F_, 4
	note_length 3
	note_pitch F#, 4
	note_length 3
	note_pitch G#, 0
	note_length 3
	rest
	note_pitch G#, 1
	note_length 9
	rest
	note_length 3
	note_pitch G#, 1
	note_length 3
	rest
	note_pitch G#, 0
	note_length 3
	rest
	note_pitch G#, 1
	note_length 9
	rest
	note_length 3
	note_pitch G#, 1
	note_length 3
	rest
	note_pitch G#, 0
	note_length 3
	rest
	note_pitch G#, 1
	note_length 3
	rest
	note_pitch G#, 0
	note_length 3
	rest
	note_pitch G#, 1
	note_length 3
	rest
	note_pitch G#, 0
	note_length 3
	rest
	note_pitch G#, 1
	note_length 3
	rest
	note_pitch G#, 0
	note_length 3
	rest
	note_pitch G#, 1
	note_length 3
	rest
	note_length 48
	rest
	note_length 48
	rest
	note_length 12
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 3
	note_length 24
	rest
	note_length 12
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 3
	note_length 24
	rest
	note_length 12
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 3
	note_length 24
	rest
	note_length 12
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 3
	note_length 24
	rest
	song_ret

Music_ElekidAndMagbysTheme_Ch2: ; 18d658 (63:5658)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	duty_cycle_50
	musicd4 55
	musicd8 164
	note_length 12
	rest
Music_ElekidAndMagbysTheme_branch_18d664: ; 18d664 (63:5664)
	song_call Music_ElekidAndMagbysTheme_branch_18d670
	song_call Music_ElekidAndMagbysTheme_branch_18d748
	song_call Music_ElekidAndMagbysTheme_branch_18d7e6
	song_jump Music_ElekidAndMagbysTheme_branch_18d664

Music_ElekidAndMagbysTheme_branch_18d670: ; 18d670 (63:5670)
	musicd8 211
	duty_cycle_12_5
	note_length 12
	rest
	note_length 3
	note_pitch D_, 2
	note_length 3
	rest
	note_pitch D_, 2
	note_length 3
	note_pitch D_, 2
	note_length 24
	rest
	musicd8 162
	duty_cycle_50
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
	rest
	note_pitch F_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch F_, 2
	note_length 3
	rest
	note_length 6
	rest
	note_length 3
	note_pitch D#, 2
	note_length 9
	rest
	note_length 3
	note_pitch D_, 2
	note_length 9
	rest
	musicd4 59
	note_length 3
	note_pitch F_, 2
	note_length 9
	rest
	musicd4 55
	note_length 6
	note_pitch D#, 2
	note_length 22
	continue_note
	musicd4 60
	note_length 2
	note_pitch D#, 2
	note_length 24
	rest
	musicd4 55
	musicd8 210
	duty_cycle_12_5
	note_length 3
	note_pitch D#, 3
	note_length 3
	rest
	note_pitch C_, 3
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch D#, 2
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch G#, 2
	note_length 3
	rest
	note_pitch D#, 2
	note_length 3
	rest
	note_pitch G#, 2
	note_length 3
	rest
	note_pitch C_, 3
	note_length 3
	rest
	musicd8 164
	musicd4 59
	duty_cycle_12_5
	note_pitch D#, 3
	note_length 3
	rest
	musicd4 55
	note_pitch G#, 2
	note_length 9
	rest
	musicd8 163
	musicd8 39
	note_length 30
	note_pitch G#, 3
	note_length 48
	rest
	musicd8 39
	note_length 12
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 3
	note_length 24
	rest
	note_length 12
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 3
	note_length 24
	rest
	musicd8 162
	musicd4 55
	duty_cycle_50
	note_length 6
	note_pitch D_, 1
	note_length 3
	note_pitch A#, 0
	note_length 9
	rest
	note_length 3
	note_pitch G#, 0
	note_length 9
	rest
	note_length 3
	note_pitch G#, 0
	note_length 3
	rest
	note_pitch A#, 0
	note_length 9
	rest
	musicd4 59
	musicd8 164
	note_length 3
	note_pitch G#, 3
	note_length 3
	continue_note
	musicd4 55
	note_pitch A_, 3
	note_length 3
	continue_note
	note_pitch A#, 3
	note_length 3
	continue_note
	note_pitch C_, 4
	note_length 3
	continue_note
	musicd8 209
	duty_cycle_12_5
	note_pitch C#, 4
	musicd8 206
	note_length 3
	note_pitch D_, 4
	musicd8 209
	note_length 3
	note_pitch A#, 3
	musicd8 206
	note_length 3
	note_pitch F_, 3
	musicd8 209
	note_length 3
	note_pitch C#, 1
	musicd8 206
	note_length 3
	note_pitch D_, 1
	musicd8 211
	note_length 3
	note_pitch A#, 0
	note_length 3
	note_pitch F_, 0
	song_ret

Music_ElekidAndMagbysTheme_branch_18d748: ; 18d748 (63:5748)
	musicd8 163
	duty_cycle_50
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
	rest
	note_pitch F_, 2
	note_length 3
	rest
	note_pitch G_, 2
	note_length 3
	rest
	note_pitch F_, 2
	note_length 3
	rest
	note_length 6
	rest
	note_length 3
	note_pitch D#, 2
	note_length 9
	rest
	note_length 3
	note_pitch D_, 2
	note_length 9
	rest
	musicd4 59
	note_length 3
	note_pitch A#, 2
	note_length 9
	rest
	musicd4 55
	note_length 6
	note_pitch G#, 2
	note_length 20
	continue_note
	musicd4 60
	note_length 2
	note_pitch G#, 2
	musicd4 55
	note_length 26
	rest
	musicd4 55
	musicd8 209
	duty_cycle_12_5
	note_length 3
	note_pitch D#, 3
	note_length 3
	rest
	note_pitch C_, 3
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch D#, 2
	note_length 3
	note_pitch F#, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch G#, 2
	note_length 3
	rest
	note_pitch D#, 2
	note_length 3
	rest
	note_pitch G#, 2
	note_length 3
	rest
	note_pitch C_, 3
	note_length 3
	rest
	musicd8 164
	musicd4 59
	duty_cycle_12_5
	note_pitch D#, 3
	note_length 3
	rest
	musicd4 55
	note_pitch G#, 2
	note_length 9
	rest
	musicd8 39
	note_length 30
	note_pitch G#, 3
	note_length 48
	rest
	musicd8 36
	note_length 12
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 3
	note_length 24
	rest
	note_length 12
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 3
	note_length 24
	rest
	note_length 6
	note_pitch D_, 1
	note_length 3
	note_pitch A#, 0
	note_length 9
	rest
	note_length 3
	note_pitch G#, 0
	note_length 9
	rest
	note_length 3
	note_pitch G#, 0
	note_length 3
	rest
	note_pitch A#, 0
	note_length 9
	rest
	note_length 3
	note_pitch G#, 3
	note_length 3
	rest
	note_pitch A_, 3
	note_length 3
	rest
	note_pitch A#, 3
	note_length 33
	rest
	song_ret

Music_ElekidAndMagbysTheme_branch_18d7e6: ; 18d7e6 (63:57e6)
	note_length 3
	note_pitch F_, 4
	note_length 9
	rest
	note_length 3
	note_pitch D_, 4
	note_length 9
	rest
	note_length 3
	note_pitch D#, 4
	note_length 9
	rest
	note_length 3
	note_pitch C_, 4
	note_length 9
	rest
	note_length 3
	note_pitch D_, 4
	note_length 3
	rest
	note_pitch C_, 4
	note_length 3
	rest
	note_pitch A#, 3
	note_length 9
	rest
	note_length 18
	note_pitch C_, 4
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch D#, 4
	note_length 3
	note_pitch F_, 4
	note_length 9
	rest
	note_length 3
	note_pitch D_, 4
	note_length 9
	rest
	note_length 3
	note_pitch D#, 4
	note_length 9
	rest
	note_length 3
	note_pitch C_, 4
	note_length 9
	rest
	note_length 3
	note_pitch D_, 4
	note_length 3
	rest
	note_pitch C_, 4
	note_length 3
	rest
	note_pitch A#, 3
	note_length 3
	rest
	note_pitch C_, 4
	note_length 3
	rest
	note_length 18
	note_pitch A#, 3
	duty_cycle_50
	musicd8 177
	note_length 3
	note_pitch F_, 4
	note_length 3
	note_pitch F#, 4
	musicd4 59
	note_length 3
	note_pitch G#, 4
	note_length 9
	rest
	musicd4 55
	note_length 3
	note_pitch C#, 5
	note_length 9
	rest
	note_length 3
	note_pitch A#, 4
	note_length 9
	rest
	note_length 3
	note_pitch F#, 4
	note_length 9
	rest
	note_length 3
	note_pitch G#, 4
	note_length 9
	rest
	note_length 3
	note_pitch F_, 4
	note_length 9
	rest
	note_length 3
	note_pitch F#, 4
	note_length 9
	rest
	note_length 3
	note_pitch D#, 4
	note_length 9
	rest
	note_length 3
	note_pitch F_, 2
	note_length 9
	rest
	note_length 3
	note_pitch D_, 2
	note_length 9
	rest
	note_length 3
	note_pitch D#, 2
	note_length 9
	rest
	note_length 3
	note_pitch C_, 2
	note_length 9
	rest
	note_length 12
	rest
	note_length 3
	note_pitch F_, 0
	note_length 9
	rest
	note_length 3
	note_pitch A_, 0
	note_length 3
	rest
	note_pitch C#, 1
	note_length 3
	rest
	note_pitch F_, 1
	note_length 3
	rest
	note_pitch F_, 0
	note_length 3
	rest
	musicd8 39
	note_length 12
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 3
	note_length 24
	rest
	note_length 12
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 3
	note_length 24
	rest
	note_length 12
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 3
	note_length 24
	rest
	musicd8 39
	note_length 3
	note_pitch G#, 3
	note_length 3
	rest
	note_pitch A_, 3
	note_length 3
	rest
	note_pitch A#, 3
	note_length 3
	rest
	note_pitch C_, 4
	note_length 3
	rest
	note_pitch D_, 4
	note_length 15
	continue_note
	note_length 6
	rest
	song_ret

Music_ElekidAndMagbysTheme_Ch3: ; 18d8ab (63:58ab)
	stereo_panning_both
	musicd8 27
	musicd7 0
	wave 61
	note_length 12
	rest
Music_ElekidAndMagbysTheme_branch_18d8b4: ; 18d8b4 (63:58b4)
	song_call Music_ElekidAndMagbysTheme_branch_18d8c0
	song_call Music_ElekidAndMagbysTheme_branch_18d96c
	song_call Music_ElekidAndMagbysTheme_branch_18d9ff
	song_jump Music_ElekidAndMagbysTheme_branch_18d8b4

Music_ElekidAndMagbysTheme_branch_18d8c0: ; 18d8c0 (63:58c0)
	musicd4 59
	note_length 4
	note_pitch A#, 1
	musicd4 60
	note_length 2
	note_pitch A#, 1
	note_length 24
	rest
	musicd4 55
	note_length 3
	note_pitch F_, 1
	note_length 3
	rest
	note_pitch G#, 1
	note_length 3
	rest
	note_pitch A_, 1
	note_length 3
	rest
	note_pitch A#, 1
	note_length 27
	rest
	note_length 3
	note_pitch F_, 1
	note_length 3
	rest
	note_pitch G#, 1
	note_length 3
	rest
	note_pitch A_, 1
	note_length 3
	rest
	note_pitch A#, 1
	note_length 27
	rest
	note_length 6
	note_pitch F_, 1
	note_length 3
	note_pitch D#, 1
	note_length 3
	rest
	note_pitch D_, 1
	note_length 3
	rest
	note_length 6
	note_pitch G#, 0
	note_length 3
	rest
	note_pitch G#, 0
	note_length 18
	rest
	note_length 3
	note_pitch D#, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	rest
	note_length 6
	note_pitch G#, 0
	note_length 3
	rest
	note_pitch G#, 0
	note_length 18
	rest
	note_length 3
	note_pitch D#, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	rest
	note_length 6
	note_pitch G#, 0
	note_length 3
	rest
	note_pitch D#, 1
	note_length 6
	rest
	note_length 3
	note_pitch G#, 0
	note_length 9
	rest
	note_length 3
	note_pitch D#, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	rest
	note_length 6
	note_pitch G#, 0
	note_length 3
	rest
	note_pitch G#, 0
	note_length 18
	rest
	note_length 3
	note_pitch G#, 1
	note_length 3
	rest
	note_pitch G#, 1
	note_length 3
	rest
	note_pitch A_, 1
	note_length 3
	rest
	note_pitch A#, 1
	note_length 27
	rest
	note_length 3
	note_pitch F_, 1
	note_length 3
	rest
	note_pitch G#, 1
	note_length 3
	rest
	note_pitch A_, 1
	note_length 3
	rest
	note_pitch A#, 1
	note_length 27
	rest
	note_length 3
	note_pitch F_, 1
	note_length 3
	rest
	note_pitch G#, 1
	note_length 3
	rest
	note_pitch A_, 1
	note_length 3
	rest
	note_pitch A#, 1
	note_length 27
	rest
	note_length 3
	note_pitch F_, 1
	note_length 3
	rest
	note_pitch G#, 1
	note_length 3
	rest
	note_pitch F_, 1
	note_length 3
	rest
	note_pitch A#, 1
	note_length 27
	rest
	note_length 3
	note_pitch F_, 1
	note_length 3
	rest
	note_pitch G#, 1
	note_length 3
	rest
	note_pitch F_, 1
	note_length 3
	rest
	song_ret

Music_ElekidAndMagbysTheme_branch_18d96c: ; 18d96c (63:596c)
	note_length 3
	note_pitch A#, 1
	note_length 27
	rest
	note_length 3
	note_pitch F_, 1
	note_length 3
	rest
	note_pitch G#, 1
	note_length 3
	rest
	note_pitch F_, 1
	note_length 3
	rest
	note_pitch A#, 1
	note_length 27
	rest
	note_length 6
	note_pitch F_, 1
	note_length 3
	note_pitch D#, 1
	note_length 3
	rest
	note_pitch D_, 1
	note_length 3
	rest
	note_length 6
	note_pitch G#, 0
	note_length 3
	rest
	note_pitch G#, 0
	note_length 18
	rest
	note_length 3
	note_pitch D#, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	rest
	note_length 6
	note_pitch G#, 0
	note_length 3
	rest
	note_pitch G#, 0
	note_length 18
	rest
	note_length 3
	note_pitch D#, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	rest
	note_pitch G#, 0
	note_length 6
	rest
	note_length 3
	note_pitch D#, 1
	note_length 6
	rest
	note_length 3
	note_pitch G#, 0
	note_length 9
	rest
	note_length 3
	note_pitch D#, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	rest
	note_length 6
	note_pitch G#, 0
	note_length 3
	rest
	note_pitch G#, 0
	note_length 18
	rest
	note_length 3
	note_pitch G#, 1
	note_length 3
	rest
	note_pitch G#, 1
	note_length 3
	rest
	note_pitch A_, 1
	note_length 3
	rest
	note_pitch A#, 1
	note_length 27
	rest
	note_length 3
	note_pitch F_, 1
	note_length 3
	rest
	note_pitch G#, 1
	note_length 3
	rest
	note_pitch A_, 1
	note_length 3
	rest
	note_pitch A#, 1
	note_length 27
	rest
	note_length 3
	note_pitch F_, 1
	note_length 3
	rest
	note_pitch G#, 1
	note_length 3
	rest
	note_pitch A_, 1
	note_length 3
	rest
	note_pitch A#, 1
	note_length 27
	rest
	note_length 3
	note_pitch F_, 1
	note_length 3
	rest
	note_pitch G#, 1
	note_length 3
	rest
	note_pitch F_, 1
	note_length 3
	rest
	note_pitch G#, 1
	note_length 3
	rest
	note_pitch A_, 1
	note_length 3
	rest
	note_pitch A#, 1
	note_length 33
	rest
	song_ret

Music_ElekidAndMagbysTheme_branch_18d9ff: ; 18d9ff (63:59ff)
	wave 7
	musicd8 104
	musicd7 12
	note_length 3
	note_pitch A#, 1
	note_length 3
	continue_note
	note_pitch D_, 2
	note_length 3
	continue_note
	note_pitch F_, 2
	note_length 3
	continue_note
	note_pitch D_, 2
	note_length 3
	continue_note
	note_pitch C_, 2
	note_length 3
	continue_note
	note_pitch D#, 2
	note_length 3
	continue_note
	note_pitch G_, 2
	note_length 3
	continue_note
	note_pitch D#, 2
	note_length 3
	continue_note
	note_pitch D_, 2
	note_length 3
	continue_note
	note_pitch F_, 2
	note_length 3
	continue_note
	note_pitch A_, 2
	note_length 3
	continue_note
	note_pitch F_, 2
	note_length 3
	continue_note
	note_pitch C_, 2
	note_length 3
	continue_note
	note_pitch D#, 2
	note_length 3
	continue_note
	note_pitch G_, 2
	note_length 3
	continue_note
	note_pitch D#, 2
	note_length 3
	continue_note
	note_pitch A#, 1
	note_length 3
	continue_note
	note_pitch D_, 2
	note_length 3
	continue_note
	note_pitch F_, 2
	note_length 3
	continue_note
	note_pitch D_, 2
	note_length 3
	continue_note
	note_pitch C_, 2
	note_length 3
	continue_note
	note_pitch D#, 2
	note_length 3
	continue_note
	note_pitch G_, 2
	note_length 3
	continue_note
	note_pitch D#, 2
	note_length 3
	continue_note
	note_pitch D_, 2
	note_length 3
	continue_note
	note_pitch F_, 2
	note_length 3
	continue_note
	note_pitch A_, 2
	note_length 3
	continue_note
	note_pitch F_, 2
	note_length 3
	continue_note
	note_pitch C_, 2
	note_length 3
	continue_note
	note_pitch D#, 2
	note_length 3
	continue_note
	note_pitch G_, 2
	note_length 3
	continue_note
	note_pitch D#, 2
	note_length 3
	continue_note
	note_pitch C#, 2
	note_length 3
	continue_note
	note_pitch F_, 2
	note_length 3
	continue_note
	note_pitch G#, 2
	note_length 3
	continue_note
	note_pitch F_, 2
	note_length 3
	continue_note
	note_pitch D#, 2
	note_length 3
	continue_note
	note_pitch F#, 2
	note_length 3
	continue_note
	note_pitch A#, 2
	note_length 3
	continue_note
	note_pitch F#, 2
	note_length 3
	continue_note
	note_pitch F_, 2
	note_length 3
	continue_note
	note_pitch G#, 2
	note_length 3
	continue_note
	note_pitch C_, 3
	note_length 3
	continue_note
	note_pitch G#, 2
	note_length 3
	continue_note
	note_pitch D#, 2
	note_length 3
	continue_note
	note_pitch F#, 2
	note_length 3
	continue_note
	note_pitch A#, 2
	note_length 3
	continue_note
	note_pitch F#, 2
	note_length 3
	continue_note
	note_pitch F_, 1
	note_length 9
	continue_note
	note_length 3
	note_pitch D_, 1
	note_length 9
	continue_note
	note_length 3
	note_pitch D#, 1
	note_length 9
	continue_note
	note_length 3
	note_pitch C_, 1
	note_length 9
	continue_note
	note_length 48
	rest
	musicd8 27
	wave 61
	musicd7 0
	note_length 3
	note_pitch A#, 1
	note_length 27
	rest
	note_length 3
	note_pitch F_, 1
	note_length 3
	rest
	note_pitch G#, 1
	note_length 3
	rest
	note_pitch A_, 1
	note_length 3
	rest
	note_pitch A#, 1
	note_length 27
	rest
	note_length 3
	note_pitch F_, 1
	note_length 3
	rest
	note_pitch G#, 1
	note_length 3
	rest
	note_pitch A_, 1
	note_length 3
	rest
	note_pitch A#, 1
	note_length 27
	rest
	note_length 3
	note_pitch F_, 1
	note_length 3
	rest
	note_pitch G#, 1
	note_length 3
	rest
	note_pitch F_, 1
	note_length 3
	rest
	note_pitch A#, 1
	note_length 45
	rest
	song_ret

Music_ElekidAndMagbysTheme_Ch4: ; 18dad9 (63:5ad9)
	stereo_panning_both
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 18
Music_ElekidAndMagbysTheme_branch_18dae2: ; 18dae2 (63:5ae2)
	song_call Music_ElekidAndMagbysTheme_branch_18daee
	song_call Music_ElekidAndMagbysTheme_branch_18dc0d
	song_call Music_ElekidAndMagbysTheme_branch_18dd0b
	song_jump Music_ElekidAndMagbysTheme_branch_18dae2

Music_ElekidAndMagbysTheme_branch_18daee: ; 18daee (63:5aee)
	note_length 3
	noise 15
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
	noise 17
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 17
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
	noise 17
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 11
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
	noise 17
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 17
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
	noise 17
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 12
	note_length 3
	continue_note
	noise 17
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
	noise 17
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 12
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
	noise 17
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 17
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
	noise 17
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 12
	note_length 3
	continue_note
	noise 17
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
	noise 17
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 17
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
	noise 17
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 12
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 12
	note_length 3
	continue_note
	song_ret

Music_ElekidAndMagbysTheme_branch_18dc0d: ; 18dc0d (63:5c0d)
	note_length 3
	noise 17
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
	noise 17
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
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
	noise 17
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 17
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
	noise 17
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	continue_note
	noise 17
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
	noise 17
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
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
	noise 17
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 17
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
	noise 17
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	continue_note
	noise 17
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
	noise 17
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 17
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
	noise 17
	note_length 21
	continue_note
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 18
	note_length 3
	noise 18
	song_ret

Music_ElekidAndMagbysTheme_branch_18dd0b: ; 18dd0b (63:5d0b)
	note_length 12
	rest
	note_length 3
	noise 12
	note_length 21
	rest
	note_length 3
	noise 12
	note_length 9
	rest
	note_length 12
	rest
	note_length 3
	noise 12
	note_length 3
	rest
	noise 12
	note_length 15
	rest
	note_length 3
	noise 12
	note_length 9
	rest
	note_length 12
	rest
	note_length 3
	noise 12
	note_length 21
	rest
	note_length 3
	noise 12
	note_length 9
	rest
	note_length 12
	rest
	note_length 3
	noise 12
	note_length 3
	rest
	noise 12
	note_length 15
	rest
	note_length 3
	noise 12
	note_length 9
	rest
	note_length 3
	noise 12
	note_length 3
	rest
	noise 12
	note_length 9
	rest
	note_length 3
	noise 12
	note_length 3
	rest
	noise 12
	note_length 3
	rest
	noise 11
	note_length 9
	rest
	note_length 3
	noise 11
	note_length 3
	rest
	noise 11
	note_length 3
	rest
	noise 11
	note_length 3
	rest
	noise 17
	note_length 3
	rest
	noise 11
	note_length 3
	rest
	noise 11
	note_length 3
	rest
	noise 11
	note_length 3
	rest
	noise 17
	note_length 3
	rest
	noise 11
	note_length 3
	rest
	note_length 48
	rest
	note_length 3
	noise 11
	note_length 9
	rest
	note_length 3
	noise 11
	note_length 9
	rest
	note_length 3
	noise 17
	note_length 3
	rest
	noise 11
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
	noise 17
	note_length 3
	rest
	noise 11
	note_length 3
	rest
	noise 17
	note_length 3
	rest
	noise 11
	note_length 3
	rest
	noise 17
	note_length 3
	rest
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	rest
	noise 11
	note_length 3
	rest
	noise 17
	note_length 3
	rest
	noise 11
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
	noise 11
	note_length 3
	noise 11
	note_length 3
	rest
	noise 17
	note_length 3
	rest
	noise 11
	note_length 3
	rest
	noise 17
	note_length 3
	rest
	noise 11
	note_length 3
	rest
	noise 17
	note_length 3
	rest
	noise 11
	note_length 3
	rest
	noise 17
	note_length 3
	rest
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	rest
	noise 11
	note_length 3
	rest
	noise 17
	note_length 3
	rest
	noise 11
	note_length 3
	rest
	noise 17
	note_length 3
	rest
	noise 17
	note_length 3
	rest
	noise 17
	note_length 21
	rest
	song_ret
