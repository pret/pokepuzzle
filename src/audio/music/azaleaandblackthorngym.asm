Music_AzaleaAndBlackthornGym: ; 185d0a (61:5d0a)
	dw Music_AzaleaAndBlackthornGym_Ch1
	dw Music_AzaleaAndBlackthornGym_Ch2
	dw Music_AzaleaAndBlackthornGym_Ch3
	dw Music_AzaleaAndBlackthornGym_Ch4

Music_AzaleaAndBlackthornGym_Ch1: ; 185d12 (61:5d12)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	musicd6 14
	musicd7 0
	duty_cycle_12_5
	musice3 -2
	musicd4 55
	musicd8 221
	musice3 -1
	song_call Music_AzaleaAndBlackthornGym_branch_185d64
	musice3 -2
	song_call Music_AzaleaAndBlackthornGym_branch_185d64
	musice3 -3
	song_call Music_AzaleaAndBlackthornGym_branch_185d64
	musice3 -4
	song_call Music_AzaleaAndBlackthornGym_branch_185d64
	musice3 -3
	song_call Music_AzaleaAndBlackthornGym_branch_185d64
Music_AzaleaAndBlackthornGym_branch_185d3b: ; 185d3b (61:5d3b)
	musice3 -2
	song_call Music_AzaleaAndBlackthornGym_branch_185d64
	musice3 -1
	song_call Music_AzaleaAndBlackthornGym_branch_185d64
	song_call Music_AzaleaAndBlackthornGym_branch_185d64
	musice3 0
	song_call Music_AzaleaAndBlackthornGym_branch_185da7
	musice3 -2
	song_call Music_AzaleaAndBlackthornGym_branch_185d64
	song_call Music_AzaleaAndBlackthornGym_branch_185d64
	song_call Music_AzaleaAndBlackthornGym_branch_185d64
	song_call Music_AzaleaAndBlackthornGym_branch_185d64
	song_call Music_AzaleaAndBlackthornGym_branch_185d64
	song_call Music_AzaleaAndBlackthornGym_branch_185d64
	song_jump Music_AzaleaAndBlackthornGym_branch_185d3b

Music_AzaleaAndBlackthornGym_branch_185d64: ; 185d64 (61:5d64)
	duty_cycle_12_5
	musicd8 219
	note_length 3
	note_pitch C#, 2
	note_length 3
	rest
	musicd8 218
	note_pitch C#, 2
	note_length 9
	rest
	musicd8 220
	note_length 3
	note_pitch C#, 2
	note_length 3
	rest
	musicd8 219
	note_pitch D#, 2
	note_length 3
	rest
	musicd8 218
	note_pitch D#, 2
	note_length 9
	rest
	musicd8 220
	note_length 3
	note_pitch D#, 2
	note_length 3
	rest
	musicd8 219
	note_pitch F_, 2
	note_length 3
	rest
	musicd8 219
	note_pitch F_, 2
	note_length 9
	rest
	musicd8 221
	note_length 3
	note_pitch F_, 2
	note_length 3
	rest
	musicd8 220
	note_pitch D#, 2
	note_length 3
	rest
	musicd8 219
	note_pitch D#, 2
	note_length 9
	rest
	musicd8 221
	note_length 3
	note_pitch D#, 2
	note_length 3
	rest
	song_ret

Music_AzaleaAndBlackthornGym_branch_185da7: ; 185da7 (61:5da7)
	note_pitch C#, 2
	note_length 3
	rest
	note_pitch C#, 2
	note_length 9
	rest
	note_length 3
	note_pitch C#, 2
	note_length 3
	rest
	note_pitch D#, 2
	note_length 3
	rest
	note_pitch D#, 2
	note_length 9
	rest
	note_length 3
	note_pitch D#, 2
	note_length 3
	rest
	note_pitch F_, 2
	note_length 21
	rest
	note_length 3
	note_pitch C#, 2
	note_length 3
	note_pitch D#, 2
	note_length 3
	note_pitch F_, 2
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch C#, 3
	note_length 3
	note_pitch D#, 3
	note_length 3
	note_pitch F_, 3
	note_length 3
	note_pitch G#, 3
	note_length 12
	note_pitch F#, 0
	note_length 6
	rest
	note_length 30
	note_pitch F#, 0
	note_length 24
	continue_note
	note_length 24
	rest
	note_length 12
	note_pitch F_, 0
	note_length 6
	rest
	note_length 30
	note_pitch F_, 0
	note_length 9
	continue_note
	note_length 6
	rest
	note_length 3
	note_pitch G#, 1
	note_length 3
	note_pitch A#, 1
	note_length 3
	note_pitch C#, 2
	note_length 3
	note_pitch D#, 2
	note_length 2
	note_pitch G#, 2
	note_length 3
	note_pitch A#, 2
	note_length 3
	note_pitch C#, 3
	note_length 4
	note_pitch D#, 3
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch C#, 4
	note_length 3
	note_pitch G#, 4
	note_length 3
	rest
	musicd8 221
	note_length 3
	rest
	note_pitch D#, 0
	note_length 3
	rest
	note_pitch D#, 0
	note_length 3
	rest
	note_pitch D#, 0
	note_length 3
	rest
	note_pitch D#, 0
	note_length 3
	rest
	note_pitch D#, 0
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
	note_length 6
	rest
	note_length 12
	note_pitch A#, 0
	note_length 6
	rest
	note_length 24
	note_pitch A_, 0
	note_length 6
	rest
	note_length 9
	note_pitch G#, 0
	note_length 3
	rest
	note_length 6
	note_pitch G#, 0
	note_length 12
	note_pitch G_, 0
	note_length 6
	rest
	note_pitch G_, 0
	note_length 6
	rest
	note_pitch F#, 0
	note_length 6
	note_pitch C#, 1
	note_length 6
	note_pitch A#, 1
	note_length 24
	note_pitch A#, 2
	note_length 6
	rest
	note_pitch G_, 0
	note_length 6
	note_pitch C#, 1
	note_length 6
	note_pitch A#, 1
	note_length 24
	note_pitch A#, 2
	note_length 6
	note_pitch G#, 3
	note_length 6
	note_pitch G#, 0
	note_length 6
	note_pitch C#, 1
	note_length 6
	note_pitch D#, 1
	note_length 6
	note_pitch G#, 1
	note_length 6
	note_pitch C#, 2
	note_length 6
	note_pitch D#, 2
	note_length 6
	note_pitch G#, 2
	note_length 6
	note_pitch G#, 0
	note_length 9
	note_pitch G#, 2
	note_length 9
	rest
	note_length 6
	note_pitch F#, 2
	note_length 6
	rest
	note_length 12
	note_pitch G#, 2
	note_length 6
	rest
	song_ret

Music_AzaleaAndBlackthornGym_Ch2: ; 185e6a (61:5e6a)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	musicd6 14
	musicd7 0
	duty_cycle_50
	musicd4 55
	musicd8 209
	note_length 48
	rest
	note_length 48
	rest
	duty_cycle_50
	musicd8 211
	note_length 3
	note_pitch C#, 3
	note_length 3
	rest
	note_pitch G#, 2
	note_length 3
	rest
	note_pitch C_, 3
	note_length 3
	rest
	note_pitch C#, 3
	note_length 9
	rest
	note_length 3
	note_pitch D#, 3
	note_length 9
	rest
	note_length 3
	note_pitch F_, 3
	note_length 3
	rest
	musicd8 57
	note_length 1
	note_pitch G_, 3
	note_length 17
	note_pitch G#, 3
	musicd8 226
	note_length 3
	note_pitch F_, 3
	note_length 9
	rest
	note_length 3
	note_pitch D#, 3
	note_length 9
	rest
	note_length 3
	note_pitch F_, 3
	note_length 3
	rest
	note_length 6
	note_pitch C#, 3
	duty_cycle_12_5
	musicd8 224
	note_length 3
	note_pitch C#, 4
	note_length 3
	rest
	musicd8 221
	note_pitch G#, 4
	note_length 3
	rest
	note_pitch C#, 5
	note_length 3
	rest
	note_pitch C_, 5
	note_length 9
	rest
	musicd8 224
	note_length 3
	note_pitch G#, 4
	note_length 9
	rest
	note_length 1
	note_pitch A_, 4
	note_length 3
	note_pitch A#, 4
	note_length 8
	rest
	note_length 3
	note_pitch F#, 4
	note_length 9
	rest
	note_length 18
	note_pitch G#, 4
	duty_cycle_50
	musicd8 227
	note_length 3
	note_pitch F_, 4
	note_length 3
	note_pitch F#, 4
	musicd8 56
	note_length 18
	note_pitch G#, 4
	note_length 30
	continue_note
	note_length 12
	rest
	musicd8 221
	note_length 3
	note_pitch C#, 4
	note_length 3
	note_pitch C#, 4
	musicd8 224
	note_length 3
	note_pitch C#, 5
	note_length 3
	rest
	musicd8 221
	note_pitch C#, 4
	note_length 3
	note_pitch C#, 4
	musicd8 224
	note_length 3
	note_pitch C#, 5
	note_length 3
	rest
	musicd8 224
	note_pitch C#, 4
	note_length 3
	note_pitch C#, 4
	musicd8 228
	note_length 3
	note_pitch C#, 5
	note_length 3
	rest
	note_length 48
	rest
	musicd8 56
	note_length 12
	rest
	musicd8 221
	note_length 3
	note_pitch C#, 1
	note_length 3
	note_pitch C#, 1
	musicd8 224
	note_length 3
	note_pitch C#, 2
	note_length 3
	rest
	musicd8 221
	note_pitch C#, 1
	note_length 3
	note_pitch C#, 1
	musicd8 225
	note_length 3
	note_pitch C#, 2
	note_length 3
	rest
	musicd8 224
	note_pitch C#, 1
	note_length 3
	note_pitch C#, 1
	musicd8 227
	note_length 3
	note_pitch C#, 2
	note_length 3
	rest
Music_AzaleaAndBlackthornGym_branch_185f27: ; 185f27 (61:5f27)
	musicd4 55
	song_call Music_AzaleaAndBlackthornGym_branch_185f2f
	song_jump Music_AzaleaAndBlackthornGym_branch_185f27

Music_AzaleaAndBlackthornGym_branch_185f2f: ; 185f2f (61:5f2f)
	duty_cycle_50
	musicd8 225
	note_pitch C#, 3
	note_length 3
	rest
	note_pitch G#, 2
	note_length 3
	rest
	note_pitch C_, 3
	note_length 3
	rest
	note_pitch C#, 3
	note_length 9
	rest
	note_length 3
	note_pitch D#, 3
	note_length 9
	rest
	note_length 3
	note_pitch F_, 3
	note_length 3
	rest
	musicd8 57
	note_length 1
	note_pitch G_, 3
	note_length 17
	note_pitch G#, 3
	musicd8 226
	note_length 3
	note_pitch F_, 3
	note_length 9
	rest
	note_length 3
	note_pitch D#, 3
	note_length 9
	rest
	note_length 3
	note_pitch F_, 3
	note_length 3
	rest
	duty_cycle_50
	musicd8 212
	note_length 6
	note_pitch C#, 3
	note_length 3
	note_pitch C#, 4
	note_length 3
	rest
	note_pitch G#, 4
	note_length 3
	rest
	note_pitch C#, 5
	note_length 3
	rest
	note_pitch C_, 5
	note_length 9
	rest
	note_length 3
	note_pitch G#, 4
	note_length 9
	rest
	duty_cycle_50
	note_length 3
	note_pitch A#, 4
	note_length 9
	rest
	note_length 3
	note_pitch F_, 5
	note_length 9
	rest
	note_length 3
	note_pitch F_, 4
	note_length 9
	rest
	note_length 3
	note_pitch C_, 5
	note_length 9
	rest
	musicd8 57
	note_length 24
	note_pitch G#, 4
	duty_cycle_12_5
	musicd8 212
	note_length 3
	note_pitch C#, 4
	note_length 3
	note_pitch C#, 4
	note_length 3
	note_pitch C#, 5
	note_length 3
	rest
	note_pitch C#, 4
	note_length 3
	note_pitch C#, 4
	note_length 3
	note_pitch C#, 5
	note_length 3
	rest
	note_pitch C#, 1
	note_length 3
	note_pitch C#, 1
	note_length 3
	note_pitch C#, 2
	note_length 3
	rest
	note_pitch C#, 1
	note_length 3
	note_pitch C#, 1
	note_length 3
	note_pitch C#, 2
	note_length 3
	rest
	note_pitch C#, 4
	note_length 3
	note_pitch D#, 4
	note_length 3
	note_pitch C#, 4
	note_length 3
	note_pitch D#, 4
	note_length 3
	note_pitch C#, 4
	note_length 3
	note_pitch D#, 4
	note_length 3
	note_pitch C#, 4
	note_length 3
	note_pitch D#, 4
	musicd8 250
	note_length 3
	note_pitch F_, 4
	note_length 3
	note_pitch C#, 4
	note_length 3
	note_pitch A#, 3
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch F_, 3
	note_length 3
	note_pitch C#, 3
	note_length 3
	note_pitch A#, 2
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch F_, 2
	note_length 3
	note_pitch C#, 2
	note_length 3
	note_pitch A#, 1
	note_length 3
	note_pitch G#, 1
	note_length 3
	note_pitch F_, 1
	note_length 3
	note_pitch C#, 1
	note_length 3
	note_pitch A#, 0
	note_length 3
	note_pitch G#, 0
	duty_cycle_50
	note_length 24
	rest
	musicd8 247
	note_length 3
	note_pitch C#, 2
	note_length 3
	note_pitch D#, 2
	note_length 3
	note_pitch F_, 2
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch C#, 3
	note_length 3
	note_pitch D#, 3
	note_length 3
	note_pitch F_, 3
	note_length 3
	note_pitch G#, 3
	musicd8 57
	duty_cycle_50
	note_length 24
	note_pitch C#, 3
	note_length 24
	rest
	note_length 6
	note_pitch D#, 3
	note_length 6
	note_pitch C#, 3
	note_length 6
	note_pitch C_, 3
	note_length 6
	note_pitch G#, 3
	note_length 6
	rest
	note_pitch F#, 3
	note_length 6
	rest
	note_pitch F_, 3
	note_length 12
	note_pitch D#, 3
	note_length 6
	rest
	note_length 24
	note_pitch D#, 3
	note_length 6
	rest
	note_pitch D#, 3
	note_length 3
	note_pitch F_, 3
	note_length 3
	rest
	note_pitch D#, 3
	note_length 3
	rest
	note_length 12
	note_pitch C#, 3
	note_length 18
	rest
	note_length 12
	note_pitch C#, 3
	note_length 6
	rest
	note_length 12
	note_pitch C#, 3
	note_length 6
	rest
	note_length 9
	note_pitch C#, 3
	note_length 3
	rest
	note_length 6
	note_pitch D#, 3
	note_length 6
	note_pitch C#, 3
	note_length 6
	note_pitch C_, 3
	note_length 6
	note_pitch G#, 3
	note_length 6
	rest
	note_pitch A_, 3
	note_length 6
	rest
	note_length 3
	note_pitch C_, 4
	note_length 3
	rest
	note_length 6
	note_pitch C_, 4
	note_length 6
	note_pitch C#, 4
	note_length 6
	note_pitch C_, 4
	note_length 6
	note_pitch F_, 3
	note_length 6
	rest
	note_pitch D#, 3
	note_length 6
	rest
	note_length 6
	note_pitch C#, 3
	note_length 6
	continue_note
	note_length 12
	rest
	note_length 18
	note_pitch C#, 2
	note_length 12
	rest
	note_length 6
	note_pitch F_, 3
	note_length 6
	note_pitch D#, 3
	note_length 6
	note_pitch C#, 3
	note_length 6
	note_pitch F_, 3
	note_length 6
	rest
	note_pitch D#, 3
	note_length 6
	rest
	note_pitch C#, 3
	note_length 6
	note_pitch F_, 3
	note_length 6
	note_pitch D#, 3
	note_length 6
	note_pitch C#, 3
	note_length 6
	note_pitch F_, 3
	note_length 6
	rest
	note_pitch A#, 3
	note_length 6
	rest
	note_pitch C_, 4
	note_length 24
	note_pitch G#, 3
	note_length 12
	rest
	note_pitch D#, 3
	note_length 9
	note_pitch C_, 3
	note_length 9
	rest
	note_length 6
	note_pitch A#, 2
	note_length 6
	rest
	note_length 12
	note_pitch C_, 3
	note_length 6
	rest
	note_length 48
	rest
	note_length 48
	rest
	note_length 12
	rest
	note_length 3
	note_pitch C#, 4
	note_length 3
	note_pitch D#, 4
	note_length 3
	note_pitch C#, 4
	note_length 3
	note_pitch D#, 4
	note_length 3
	note_pitch C#, 4
	note_length 3
	note_pitch D#, 4
	note_length 3
	note_pitch C#, 4
	note_length 3
	note_pitch D#, 4
	note_length 3
	note_pitch C#, 4
	note_length 3
	note_pitch D#, 4
	note_length 3
	note_pitch C#, 4
	note_length 3
	note_pitch D#, 4
	musicd8 250
	note_length 3
	note_pitch F_, 4
	note_length 3
	note_pitch C#, 4
	note_length 3
	note_pitch A#, 3
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch F_, 3
	note_length 3
	note_pitch C#, 3
	note_length 3
	note_pitch A#, 2
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch F_, 2
	note_length 3
	note_pitch C#, 2
	note_length 3
	note_pitch A#, 1
	note_length 3
	note_pitch G#, 1
	note_length 3
	note_pitch F_, 1
	note_length 3
	note_pitch C#, 1
	note_length 3
	note_pitch A#, 0
	note_length 3
	note_pitch G#, 0
	musicd8 247
	duty_cycle_75
	note_length 3
	note_pitch C#, 3
	note_length 3
	rest
	note_pitch G#, 2
	note_length 3
	rest
	note_pitch C_, 3
	note_length 3
	rest
	note_pitch C#, 3
	note_length 9
	rest
	note_length 3
	note_pitch D#, 3
	note_length 9
	rest
	note_length 3
	note_pitch F_, 3
	note_length 3
	rest
	musicd8 247
	note_length 6
	note_pitch G#, 3
	musicd8 241
	note_length 12
	note_pitch G#, 3
	musicd8 247
	note_length 3
	note_pitch F_, 3
	note_length 9
	rest
	note_length 3
	note_pitch D#, 3
	note_length 9
	rest
	note_length 3
	note_pitch F_, 3
	note_length 3
	rest
	duty_cycle_50
	musicd8 57
	note_length 6
	note_pitch C#, 3
	note_length 3
	note_pitch C#, 4
	note_length 3
	rest
	note_pitch G#, 4
	note_length 3
	rest
	note_pitch C#, 5
	note_length 3
	rest
	note_pitch C_, 5
	note_length 9
	rest
	note_length 3
	note_pitch G#, 4
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
	note_length 18
	note_pitch G#, 4
	note_length 3
	note_pitch F_, 4
	note_length 3
	note_pitch F#, 4
	note_length 18
	note_pitch G#, 4
	note_length 30
	rest
	note_length 12
	rest
	musicd8 221
	note_length 3
	note_pitch C#, 4
	note_length 3
	note_pitch C#, 4
	musicd8 224
	note_length 3
	note_pitch C#, 5
	note_length 3
	rest
	musicd8 221
	note_pitch C#, 4
	note_length 3
	note_pitch C#, 4
	musicd8 224
	note_length 3
	note_pitch C#, 5
	note_length 3
	rest
	musicd8 224
	note_pitch C#, 4
	note_length 3
	note_pitch C#, 4
	musicd8 227
	note_length 3
	note_pitch C#, 5
	note_length 3
	rest
	note_length 48
	rest
	musicd8 56
	note_length 12
	rest
	musicd8 221
	note_length 3
	note_pitch C#, 1
	note_length 3
	note_pitch C#, 1
	musicd8 224
	note_length 3
	note_pitch C#, 2
	note_length 3
	rest
	musicd8 221
	note_pitch C#, 1
	note_length 3
	note_pitch C#, 1
	musicd8 225
	note_length 3
	note_pitch C#, 2
	note_length 3
	rest
	musicd8 224
	note_pitch C#, 1
	note_length 3
	note_pitch C#, 1
	musicd8 226
	note_length 3
	note_pitch C#, 2
	note_length 3
	rest
	song_ret

Music_AzaleaAndBlackthornGym_Ch3: ; 186158 (61:6158)
	stereo_panning_both
	musicd7 0
	musicd4 57
	wave 63
	musicd4 55
	song_call Music_AzaleaAndBlackthornGym_branch_186193
	song_call Music_AzaleaAndBlackthornGym_branch_186193
	song_call Music_AzaleaAndBlackthornGym_branch_186193
	song_call Music_AzaleaAndBlackthornGym_branch_186193
	song_call Music_AzaleaAndBlackthornGym_branch_186193
Music_AzaleaAndBlackthornGym_branch_186170: ; 186170 (61:6170)
	song_call Music_AzaleaAndBlackthornGym_branch_186193
	song_call Music_AzaleaAndBlackthornGym_branch_186193
	song_call Music_AzaleaAndBlackthornGym_branch_186193
	wave 17
	song_call Music_AzaleaAndBlackthornGym_branch_1861da
	song_call Music_AzaleaAndBlackthornGym_branch_186193
	song_call Music_AzaleaAndBlackthornGym_branch_186193
	song_call Music_AzaleaAndBlackthornGym_branch_186193
	song_call Music_AzaleaAndBlackthornGym_branch_186193
	song_call Music_AzaleaAndBlackthornGym_branch_186193
	song_call Music_AzaleaAndBlackthornGym_branch_186193
	song_jump Music_AzaleaAndBlackthornGym_branch_186170

Music_AzaleaAndBlackthornGym_branch_186193: ; 186193 (61:6193)
	wave 61
	musicd8 104
	note_length 5
	note_pitch F_, 2
	note_length 1
	rest
	note_length 3
	note_pitch F_, 2
	note_length 9
	rest
	note_length 5
	note_pitch F_, 2
	note_length 1
	rest
	note_length 5
	note_pitch F#, 2
	note_length 1
	rest
	wave 65
	note_length 3
	note_pitch F#, 2
	note_length 9
	rest
	wave 61
	note_length 5
	note_pitch F#, 2
	note_length 1
	rest
	wave 61
	note_length 5
	note_pitch G#, 2
	note_length 1
	rest
	wave 63
	musicd8 103
	note_length 3
	note_pitch G#, 2
	note_length 9
	rest
	musicd8 103
	note_length 5
	note_pitch G#, 2
	note_length 1
	rest
	wave 61
	musicd8 104
	note_length 5
	note_pitch F#, 2
	note_length 1
	rest
	wave 60
	note_length 3
	note_pitch F#, 2
	note_length 9
	rest
	note_length 5
	note_pitch F#, 2
	note_length 1
	rest
	song_ret

Music_AzaleaAndBlackthornGym_branch_1861da: ; 1861da (61:61da)
	wave 62
	note_length 3
	note_pitch F_, 2
	note_length 2
	continue_note
	note_length 1
	rest
	note_length 3
	note_pitch F_, 2
	note_length 9
	rest
	note_length 3
	note_pitch F_, 2
	note_length 2
	continue_note
	note_length 1
	rest
	note_length 3
	note_pitch F#, 2
	note_length 2
	continue_note
	note_length 1
	rest
	note_length 3
	note_pitch F#, 2
	note_length 9
	rest
	note_length 3
	note_pitch F#, 2
	note_length 2
	continue_note
	note_length 1
	rest
	note_length 3
	note_pitch G#, 2
	note_length 45
	rest
	musicd8 27
	wave 66
	musicd7 0
	wave 66
	note_length 24
	note_pitch A#, 2
	note_length 3
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch C#, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	wave 64
	note_pitch A#, 1
	note_length 3
	rest
	note_pitch C#, 2
	wave 66
	note_length 3
	note_pitch D#, 2
	note_length 3
	note_pitch C#, 2
	note_length 3
	note_pitch D#, 2
	note_length 3
	note_pitch C#, 2
	note_length 3
	note_pitch D#, 2
	note_length 6
	note_pitch C#, 2
	note_length 6
	rest
	note_pitch A#, 2
	note_length 6
	rest
	note_length 3
	note_pitch G#, 2
	note_length 3
	rest
	note_length 12
	note_pitch G#, 2
	note_length 6
	rest
	note_length 12
	note_pitch G#, 2
	note_length 3
	note_pitch C#, 2
	note_length 3
	rest
	note_pitch G#, 2
	note_length 3
	rest
	note_pitch C#, 3
	note_length 3
	rest
	note_length 6
	note_pitch C_, 3
	note_length 3
	note_pitch C#, 3
	note_length 3
	rest
	note_pitch C_, 3
	note_length 3
	rest
	note_length 12
	note_pitch F_, 2
	wave 64
	note_length 3
	note_pitch F_, 0
	note_length 3
	rest
	note_length 12
	note_pitch F_, 1
	wave 66
	note_length 12
	note_pitch A#, 2
	note_length 6
	rest
	note_length 12
	note_pitch A#, 2
	note_length 6
	rest
	note_length 9
	note_pitch A#, 2
	note_length 3
	rest
	wave 65
	note_length 6
	note_pitch C_, 3
	note_length 6
	note_pitch A#, 2
	note_length 6
	note_pitch G#, 2
	note_length 6
	note_pitch C_, 3
	note_length 6
	rest
	note_pitch F_, 3
	note_length 6
	rest
	note_length 3
	note_pitch A_, 3
	note_length 3
	rest
	wave 66
	note_length 12
	note_pitch D#, 2
	note_length 6
	rest
	note_length 24
	note_pitch C#, 2
	note_length 6
	rest
	note_length 9
	note_pitch C_, 2
	note_length 3
	rest
	note_length 6
	note_pitch C_, 2
	note_length 24
	note_pitch C#, 2
	note_length 6
	rest
	wave 65
	note_length 18
	rest
	note_length 6
	note_pitch F#, 2
	note_length 6
	rest
	note_pitch C#, 2
	note_length 6
	rest
	note_pitch F#, 1
	note_length 18
	rest
	note_length 6
	note_pitch G_, 2
	note_length 6
	rest
	note_pitch C#, 2
	note_length 6
	rest
	wave 66
	note_pitch C#, 3
	note_length 24
	note_pitch D#, 3
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch C#, 3
	note_length 3
	note_pitch D#, 3
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch C#, 4
	note_length 3
	note_pitch D#, 4
	note_length 1
	note_pitch G#, 4
	note_length 2
	rest
	note_length 48
	rest
	song_ret

; unreferenced ?
Music_AzaleaAndBlackthornGym_branch_1862b8: ; 1862b8 (61:62b8)
	wave 62
	note_length 3
	note_pitch F_, 2
	note_length 2
	continue_note
	note_length 1
	rest
	note_length 3
	note_pitch F_, 2
	note_length 9
	rest
	note_length 3
	note_pitch F_, 2
	note_length 2
	continue_note
	note_length 1
	rest
	note_length 3
	note_pitch F#, 2
	note_length 2
	continue_note
	note_length 1
	rest
	note_length 3
	note_pitch F#, 2
	note_length 9
	rest
	note_length 3
	note_pitch F#, 2
	note_length 2
	continue_note
	note_length 1
	rest
	note_length 3
	note_pitch G#, 2
	note_length 45
	rest
	note_length 24
	note_pitch A#, 2
	note_length 3
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch C#, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch A#, 1
	note_length 3
	rest
	note_pitch C#, 2
	note_length 3
	note_pitch D#, 2
	note_length 3
	note_pitch C#, 2
	note_length 3
	note_pitch D#, 2
	note_length 3
	note_pitch C#, 2
	note_length 3
	note_pitch D#, 2
	note_length 6
	note_pitch C#, 2
	note_length 6
	rest
	note_pitch A#, 2
	note_length 6
	rest
	note_length 3
	note_pitch G#, 2
	note_length 3
	rest
	note_length 12
	note_pitch G#, 2
	note_length 6
	rest
	note_length 12
	note_pitch G#, 2
	note_length 3
	note_pitch C#, 2
	note_length 3
	rest
	note_pitch G#, 2
	note_length 3
	rest
	note_pitch C#, 3
	note_length 3
	rest
	note_length 6
	note_pitch C_, 3
	note_length 3
	note_pitch C#, 3
	note_length 3
	rest
	note_pitch C_, 3
	note_length 3
	rest
	note_length 12
	note_pitch F_, 2
	note_length 3
	note_pitch F_, 0
	note_length 3
	rest
	note_length 12
	note_pitch F_, 1
	note_length 12
	note_pitch A#, 2
	note_length 6
	rest
	note_length 12
	note_pitch A#, 2
	note_length 6
	rest
	note_length 9
	note_pitch A#, 2
	note_length 3
	rest
	note_length 6
	note_pitch C_, 3
	note_length 6
	note_pitch A#, 2
	note_length 6
	note_pitch G#, 2
	note_length 6
	note_pitch C_, 3
	note_length 6
	rest
	note_pitch F_, 3
	note_length 6
	rest
	note_length 3
	note_pitch A_, 3
	note_length 3
	rest
	note_length 12
	note_pitch D#, 2
	note_length 6
	rest
	note_length 24
	note_pitch C#, 2
	note_length 6
	rest
	note_length 9
	note_pitch C_, 2
	note_length 3
	rest
	note_length 6
	note_pitch C_, 2
	note_length 24
	note_pitch C#, 2
	note_length 6
	rest
	note_length 18
	rest
	note_length 6
	note_pitch F#, 2
	note_length 6
	rest
	note_pitch C#, 2
	note_length 6
	rest
	note_pitch F#, 1
	note_length 18
	rest
	note_length 6
	note_pitch G_, 2
	note_length 6
	rest
	note_pitch C#, 2
	note_length 6
	rest
	note_pitch C#, 3
	note_length 24
	note_pitch D#, 3
	note_length 3
	note_pitch G#, 2
	note_length 3
	note_pitch C#, 3
	note_length 3
	note_pitch D#, 3
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch G#, 3
	note_length 3
	note_pitch C#, 4
	note_length 3
	note_pitch D#, 4
	note_length 3
	note_pitch G#, 4
	note_length 48
	rest
	song_ret

Music_AzaleaAndBlackthornGym_Ch4: ; 18637c (61:637c)
	stereo_panning_both
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
	note_length 48
	rest
	note_length 48
	rest
	note_length 36
	rest
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
Music_AzaleaAndBlackthornGym_branch_186397: ; 186397 (61:6397)
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	note_length 3
	noise 11
	note_length 3
	continue_note
	note_length 6
	noise 11
	note_length 3
	noise 11
	note_length 3
	continue_note
	note_length 6
	noise 11
	note_length 3
	noise 11
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
	noise 11
	note_length 3
	continue_note
	note_length 6
	noise 11
	note_length 3
	noise 11
	note_length 3
	continue_note
	note_length 6
	noise 11
	note_length 3
	noise 11
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
	noise 11
	note_length 3
	continue_note
	note_length 6
	noise 11
	note_length 3
	noise 11
	note_length 3
	continue_note
	note_length 6
	noise 11
	note_length 3
	noise 11
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
	noise 11
	note_length 3
	continue_note
	note_length 6
	noise 11
	note_length 3
	noise 11
	note_length 3
	continue_note
	note_length 6
	noise 11
	note_length 3
	noise 11
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
	noise 11
	note_length 3
	continue_note
	note_length 6
	noise 11
	note_length 3
	noise 11
	note_length 3
	continue_note
	note_length 6
	noise 11
	note_length 3
	noise 11
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
	noise 11
	note_length 3
	continue_note
	note_length 6
	noise 11
	note_length 3
	noise 11
	note_length 3
	continue_note
	note_length 6
	noise 11
	note_length 3
	noise 11
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
	noise 11
	note_length 3
	continue_note
	note_length 6
	noise 11
	note_length 3
	noise 11
	note_length 3
	continue_note
	note_length 6
	noise 11
	note_length 3
	noise 11
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
	note_length 36
	continue_note
	note_length 3
	noise 3
	note_length 3
	continue_note
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	continue_note
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	continue_note
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
	continue_note
	noise 17
	note_length 3
	continue_note
	note_length 6
	noise 16
	note_length 3
	noise 3
	note_length 3
	continue_note
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	continue_note
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	continue_note
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
	noise 3
	note_length 3
	noise 17
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	note_length 6
	noise 16
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	continue_note
	note_length 6
	noise 16
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 3
	note_length 3
	continue_note
	note_length 6
	noise 16
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 9
	continue_note
	note_length 3
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	note_length 6
	noise 16
	note_length 3
	noise 3
	note_length 3
	continue_note
	noise 11
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	note_length 6
	noise 16
	note_length 3
	noise 17
	note_length 3
	continue_note
	noise 3
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	note_length 6
	noise 16
	note_length 3
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
	noise 17
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
	noise 17
	note_length 3
	note_pitch G#, 0
	note_length 3
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
	noise 11
	note_length 3
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
	noise 17
	note_length 3
	noise 3
	note_length 3
	noise 3
	note_length 3
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
	noise 11
	note_length 3
	noise 17
	note_length 3
	noise 11
	note_length 3
	noise 17
	note_length 3
	continue_note
	noise 17
	note_length 3
	continue_note
	note_length 48
	continue_note
	note_length 36
	continue_note
	note_length 3
	noise 11
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
	noise 11
	note_length 3
	continue_note
	note_length 6
	noise 11
	note_length 3
	noise 11
	note_length 3
	continue_note
	note_length 6
	noise 11
	note_length 3
	noise 11
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
	noise 11
	note_length 3
	continue_note
	note_length 6
	noise 11
	note_length 3
	noise 11
	note_length 3
	continue_note
	note_length 6
	noise 11
	note_length 3
	noise 11
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
	noise 11
	note_length 3
	continue_note
	note_length 6
	noise 11
	note_length 3
	noise 11
	note_length 3
	continue_note
	note_length 6
	noise 11
	note_length 3
	noise 11
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
	noise 11
	note_length 3
	continue_note
	note_length 6
	noise 11
	note_length 3
	noise 11
	note_length 3
	continue_note
	note_length 6
	noise 11
	note_length 3
	noise 11
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
	noise 11
	note_length 3
	continue_note
	note_length 6
	noise 11
	note_length 3
	noise 11
	note_length 3
	continue_note
	note_length 6
	noise 11
	note_length 3
	noise 11
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
	noise 11
	note_length 3
	continue_note
	note_length 6
	noise 11
	note_length 3
	noise 11
	note_length 3
	continue_note
	note_length 6
	noise 11
	note_length 3
	noise 11
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
	noise 11
	note_length 3
	continue_note
	note_length 6
	noise 11
	note_length 3
	noise 11
	note_length 3
	continue_note
	note_length 6
	noise 11
	note_length 3
	noise 11
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
	noise 11
	note_length 3
	continue_note
	note_length 6
	noise 11
	note_length 3
	noise 11
	note_length 3
	continue_note
	note_length 6
	noise 11
	note_length 3
	noise 11
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
	noise 11
	note_length 3
	continue_note
	note_length 6
	noise 11
	note_length 3
	noise 11
	note_length 3
	continue_note
	note_length 6
	noise 11
	note_length 3
	noise 11
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
	noise 11
	note_length 3
	continue_note
	note_length 6
	noise 11
	note_length 3
	noise 11
	note_length 3
	continue_note
	note_length 6
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 6
	noise 16
	song_jump Music_AzaleaAndBlackthornGym_branch_186397
