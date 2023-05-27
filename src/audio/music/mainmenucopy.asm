Music_MainMenuCopy: ; 190000 (64:4000)
	dw Music_MainMenuCopy_Ch1
	dw Music_MainMenuCopy_Ch2
	dw Music_MainMenuCopy_Ch3
	dw Music_MainMenuCopy_Ch4

Music_MainMenuCopy_Ch1: ; 190008 (64:4008)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	musicd6 17
	musicd7 0
	duty_cycle_12_5
	musice3 2
	musicd4 55
	musicd8 221
	note_length 48
	rest
	note_length 24
	rest
	note_length 24
	rest
Music_MainMenuCopy_branch_19001e: ; 19001e (64:401e)
	song_call Music_MainMenuCopy_branch_190042
	song_call Music_MainMenuCopy_branch_190078
	song_call Music_MainMenuCopy_branch_190042
	song_call Music_MainMenuCopy_branch_1900b2
	song_call Music_MainMenuCopy_branch_1900f4
	song_call Music_MainMenuCopy_branch_190115
	song_call Music_MainMenuCopy_branch_1900f4
	song_call Music_MainMenuCopy_branch_190115
	song_call Music_MainMenuCopy_branch_1900f4
	song_call Music_MainMenuCopy_branch_190115
	song_call Music_MainMenuCopy_branch_190135
	song_jump Music_MainMenuCopy_branch_19001e

Music_MainMenuCopy_branch_190042: ; 190042 (64:4042)
	duty_cycle_12_5
	musicd7 0
	musicd4 55
	musicd8 222
	note_length 3
	note_pitch A_, 3
	note_length 3
	rest
	note_pitch F#, 3
	note_length 9
	rest
	note_length 3
	note_pitch D_, 4
	note_length 9
	rest
	note_length 3
	note_pitch D_, 4
	note_length 9
	rest
	note_length 3
	note_pitch D_, 4
	note_length 3
	rest
	note_pitch C#, 4
	note_length 3
	rest
	note_pitch A_, 3
	note_length 15
	rest
	duty_cycle_50
	musicd4 52
	musicd8 224
	musicd7 246
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_length 3
	note_pitch A_, 2
	note_length 6
	rest
	note_length 3
	rest
	song_ret

Music_MainMenuCopy_branch_190078: ; 190078 (64:4078)
	duty_cycle_12_5
	musicd7 0
	musicd4 55
	musicd8 223
	note_length 3
	note_pitch C#, 3
	note_length 3
	rest
	note_pitch A_, 2
	note_length 3
	rest
	note_length 3
	note_pitch C#, 3
	note_length 3
	rest
	note_length 3
	note_pitch F#, 3
	note_length 9
	rest
	note_length 3
	note_pitch E_, 3
	note_length 9
	rest
	note_length 3
	note_pitch C#, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch F#, 3
	note_length 15
	rest
	duty_cycle_50
	musicd4 52
	musicd8 224
	musicd7 246
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_length 6
	rest
	song_ret

Music_MainMenuCopy_branch_1900b2: ; 1900b2 (64:40b2)
	duty_cycle_50
	musicd7 244
	musicd4 55
	musicd8 182
	note_pitch C#, 4
	note_length 3
	rest
	note_pitch A_, 3
	note_length 3
	rest
	note_pitch C#, 4
	note_length 3
	rest
	note_pitch F#, 4
	note_length 9
	rest
	note_length 3
	note_pitch E_, 4
	note_length 9
	rest
	note_length 3
	note_pitch C#, 4
	note_length 3
	rest
	note_length 1
	note_pitch G#, 3
	note_length 11
	note_pitch A_, 3
	musicd8 234
	note_length 12
	note_pitch A_, 3
	musicd7 0
	duty_cycle_50
	musicd4 52
	musicd8 236
	musicd7 246
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_length 6
	rest
	song_ret

; unreferenced ?
Music_MainMenuCopy_branch_1900ed: ; 1900ed (64:40ed)
	duty_cycle_12_5
	musicd7 0
	musicd4 55
	musicd8 208
Music_MainMenuCopy_branch_1900f4: ; 1900f4 (64:40f4)
	duty_cycle_12_5
	musicd7 0
	musicd4 55
	musicd8 222
	note_length 3
	note_pitch A#, 5
	note_length 9
	rest
	note_length 6
	note_pitch A#, 5
	note_length 3
	note_pitch A#, 5
	note_length 9
	rest
	note_length 3
	note_pitch A#, 5
	note_length 3
	rest
	duty_cycle_50
	musicd4 52
	musicd8 239
	musicd7 246
	note_length 9
	note_pitch D_, 3
	note_length 3
	rest
	song_ret

Music_MainMenuCopy_branch_190115: ; 190115 (64:4115)
	duty_cycle_12_5
	musicd7 0
	musicd4 55
	musicd8 222
	note_pitch A#, 5
	note_length 9
	rest
	note_length 6
	note_pitch A#, 5
	note_length 3
	note_pitch A#, 5
	note_length 9
	rest
	note_length 3
	note_pitch A#, 5
	note_length 3
	rest
	duty_cycle_50
	musicd4 52
	musicd8 239
	musicd7 246
	note_length 9
	note_pitch A_, 2
	note_length 3
	rest
	song_ret

Music_MainMenuCopy_branch_190135: ; 190135 (64:4135)
	duty_cycle_12_5
	musicd7 0
	musicd4 55
	musicd8 222
	note_length 3
	note_pitch A#, 5
	note_length 9
	rest
	note_length 6
	note_pitch A#, 5
	note_length 2
	note_pitch A#, 5
	note_length 1
	note_pitch A#, 5
	note_length 9
	rest
	note_length 3
	note_pitch A#, 5
	note_length 3
	rest
	duty_cycle_50
	musicd4 52
	musicd8 239
	musicd7 246
	note_length 9
	note_pitch D_, 3
	note_length 3
	rest
	duty_cycle_75
	musicd7 244
	musicd4 55
	musicd8 222
	note_length 6
	note_pitch C#, 4
	note_length 6
	note_pitch B_, 3
	note_length 6
	note_pitch A_, 3
	note_length 6
	note_pitch G_, 3
	note_length 1
	rest
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch B_, 3
	note_length 3
	note_pitch C#, 4
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch E_, 4
	note_length 2
	note_pitch F#, 4
	song_ret

Music_MainMenuCopy_Ch2: ; 190179 (64:4179)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	musicd7 0
	duty_cycle_50
	musicd4 55
	musicd6 17
	note_length 48
	rest
	note_length 24
	rest
	note_length 24
	rest
Music_MainMenuCopy_branch_19018b: ; 19018b (64:418b)
	song_call Music_MainMenuCopy_branch_190194
	song_call Music_MainMenuCopy_branch_190385
	song_jump Music_MainMenuCopy_branch_19018b

Music_MainMenuCopy_branch_190194: ; 190194 (64:4194)
	duty_cycle_50
	musicd7 0
	musicd4 55
	musicd8 179
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch A_, 2
	note_length 3
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_length 3
	note_pitch A_, 3
	note_length 9
	rest
	note_length 3
	note_pitch G_, 3
	note_length 9
	rest
	note_length 3
	note_pitch F#, 3
	note_length 3
	rest
	note_pitch E_, 3
	note_length 3
	rest
	note_pitch C#, 3
	note_length 6
	rest
	note_length 3
	rest
	musicd8 36
	duty_cycle_50
	rest
	note_length 3
	rest
	note_pitch D_, 5
	note_length 3
	note_pitch A_, 4
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch A_, 4
	note_length 3
	note_pitch D_, 5
	note_length 3
	note_pitch A_, 4
	musicd8 179
	duty_cycle_50
	note_length 3
	note_pitch C#, 3
	note_length 3
	rest
	note_pitch A_, 2
	note_length 3
	rest
	note_length 3
	note_pitch C#, 3
	note_length 3
	rest
	note_length 3
	note_pitch F#, 3
	note_length 9
	rest
	note_length 3
	note_pitch E_, 3
	note_length 9
	rest
	note_length 3
	note_pitch C#, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch F#, 3
	note_length 6
	rest
	note_length 3
	rest
	musicd8 36
	duty_cycle_12_5
	rest
	note_length 3
	rest
	note_pitch D_, 5
	note_length 3
	note_pitch A_, 4
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch A_, 4
	note_length 3
	note_pitch D_, 5
	note_length 3
	note_pitch A_, 4
	note_length 3
	note_pitch D_, 5
	note_length 3
	note_pitch A_, 4
	duty_cycle_50
	musicd8 179
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch A_, 2
	note_length 3
	rest
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_length 3
	note_pitch A_, 3
	note_length 9
	rest
	note_length 3
	note_pitch G_, 3
	note_length 9
	rest
	note_length 3
	note_pitch F#, 3
	note_length 3
	rest
	note_pitch E_, 3
	note_length 3
	rest
	note_length 3
	note_pitch C#, 3
	note_length 6
	rest
	musicd8 36
	duty_cycle_50
	rest
	note_length 3
	rest
	note_pitch D_, 5
	note_length 3
	note_pitch A_, 4
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch A_, 4
	note_length 3
	note_pitch D_, 5
	note_length 3
	note_pitch A_, 4
	duty_cycle_50
	musicd8 179
	note_length 3
	note_pitch C#, 3
	note_length 3
	rest
	note_pitch A_, 2
	note_length 3
	rest
	note_pitch C#, 3
	note_length 3
	rest
	note_pitch F#, 3
	note_length 9
	rest
	note_length 3
	note_pitch E_, 3
	note_length 9
	rest
	note_length 3
	note_pitch C#, 3
	note_length 3
	rest
	musicd8 179
	note_length 1
	note_pitch C#, 3
	note_length 23
	note_pitch D_, 3
	musicd8 237
	musicd4 56
	note_length 24
	note_pitch D_, 3
	song_ret

; unreferenced ?
Music_MainMenuCopy_branch_190261: ; 190261 (64:4261)
	duty_cycle_50
	musicd7 0
	musicd4 55
	musicd8 179
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch A_, 2
	note_length 9
	rest
	note_length 3
	note_pitch A_, 3
	note_length 9
	rest
	note_length 3
	note_pitch G_, 3
	note_length 9
	rest
	note_length 3
	note_pitch F#, 3
	note_length 3
	rest
	note_pitch E_, 3
	note_length 3
	rest
	note_length 6
	note_pitch C#, 3
	musicd8 222
	duty_cycle_75
	note_length 3
	note_pitch C#, 3
	note_length 3
	rest
	note_pitch E_, 3
	note_length 3
	rest
	note_pitch D_, 5
	musicd8 207
	note_length 1
	note_pitch A_, 4
	musicd8 204
	note_length 1
	note_pitch A_, 4
	musicd8 202
	note_length 1
	note_pitch A_, 4
	musicd8 207
	note_length 1
	note_pitch D_, 4
	musicd8 204
	note_length 1
	note_pitch D_, 4
	musicd8 202
	note_length 1
	note_pitch D_, 4
	musicd8 207
	note_length 1
	note_pitch A_, 3
	musicd8 204
	note_length 1
	note_pitch A_, 3
	musicd8 202
	note_length 1
	note_pitch A_, 3
	musicd8 207
	note_length 1
	note_pitch D_, 4
	musicd8 204
	note_length 1
	note_pitch D_, 4
	musicd8 202
	note_length 1
	note_pitch D_, 4
	musicd8 207
	note_length 1
	note_pitch A_, 4
	musicd8 204
	note_length 1
	note_pitch A_, 4
	musicd8 202
	note_length 1
	note_pitch A_, 4
	musicd8 207
	note_length 1
	note_pitch D_, 5
	musicd8 204
	note_length 1
	note_pitch D_, 5
	musicd8 202
	note_length 1
	note_pitch D_, 5
	musicd8 207
	note_length 1
	note_pitch A_, 4
	musicd8 204
	note_length 1
	note_pitch A_, 4
	musicd8 202
	note_length 1
	note_pitch A_, 4
	song_ret

; unreferenced ?
Music_MainMenuCopy_branch_1902e0: ; 1902e0 (64:42e0)
	musicd7 0
	duty_cycle_50
	musicd8 179
	note_length 3
	note_pitch E_, 3
	note_length 3
	rest
	note_pitch C#, 3
	note_length 9
	rest
	note_length 3
	note_pitch G_, 3
	note_length 9
	rest
	note_length 3
	note_pitch F#, 3
	note_length 9
	rest
	note_length 3
	note_pitch E_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	rest
	note_length 6
	note_pitch F#, 3
	musicd8 222
	duty_cycle_75
	note_length 3
	note_pitch F#, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch D_, 5
	musicd8 207
	note_length 1
	note_pitch A_, 4
	musicd8 204
	note_length 1
	note_pitch A_, 4
	musicd8 202
	note_length 1
	note_pitch A_, 4
	musicd8 207
	note_length 1
	note_pitch D_, 4
	musicd8 204
	note_length 1
	note_pitch D_, 4
	musicd8 202
	note_length 1
	note_pitch D_, 4
	musicd8 207
	note_length 1
	note_pitch A_, 4
	musicd8 204
	note_length 1
	note_pitch A_, 4
	musicd8 202
	note_length 1
	note_pitch A_, 4
	musicd8 207
	note_length 1
	note_pitch D_, 5
	musicd8 204
	note_length 1
	note_pitch D_, 5
	musicd8 202
	note_length 1
	note_pitch D_, 5
	musicd8 207
	note_length 1
	note_pitch A_, 4
	musicd8 204
	note_length 1
	note_pitch A_, 4
	musicd8 202
	note_length 1
	note_pitch A_, 4
	musicd8 207
	note_length 1
	note_pitch D_, 5
	musicd8 204
	note_length 1
	note_pitch D_, 5
	musicd8 202
	note_length 1
	note_pitch D_, 5
	musicd8 207
	note_length 1
	note_pitch A_, 4
	musicd8 204
	note_length 1
	note_pitch A_, 4
	musicd8 202
	note_length 1
	note_pitch A_, 4
	song_ret

; unreferenced ?
Music_MainMenuCopy_branch_19035d: ; 19035d (64:435d)
	duty_cycle_50
	musicd4 55
	musicd7 244
	musicd8 11
	note_length 3
	note_pitch E_, 4
	note_length 3
	rest
	note_pitch C#, 4
	note_length 3
	rest
	note_pitch E_, 4
	note_length 3
	rest
	note_length 1
	note_pitch F#, 4
	note_length 11
	note_pitch G_, 4
	note_length 12
	note_pitch F#, 4
	note_length 3
	note_pitch C#, 4
	note_length 3
	rest
	musicd8 179
	note_length 1
	note_pitch C#, 4
	note_length 23
	note_pitch D_, 4
	musicd8 237
	musicd4 56
	note_length 24
	note_pitch D_, 4
	song_ret

Music_MainMenuCopy_branch_190385: ; 190385 (64:4385)
	musicd7 244
	musicd4 55
	musicd8 11
	note_length 3
	note_pitch F#, 3
	note_length 3
	rest
	note_pitch E_, 3
	note_length 3
	rest
	note_length 12
	note_pitch D_, 3
	note_length 3
	note_pitch E_, 3
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch B_, 3
	note_length 9
	rest
	note_length 3
	note_pitch B_, 3
	note_length 3
	rest
	note_pitch A_, 3
	note_length 3
	rest
	note_length 12
	note_pitch G_, 3
	note_length 3
	note_pitch E_, 3
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch G_, 3
	note_length 9
	rest
	note_length 3
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch F#, 3
	note_length 3
	rest
	note_length 12
	note_pitch E_, 3
	note_length 3
	note_pitch C#, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	rest
	note_pitch E_, 3
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
	note_length 3
	rest
	note_pitch B_, 3
	note_length 3
	rest
	note_length 24
	note_pitch A_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	rest
	note_pitch C#, 4
	note_length 3
	rest
	note_length 9
	note_pitch B_, 3
	note_length 3
	rest
	note_pitch A_, 3
	note_length 3
	rest
	note_pitch B_, 3
	note_length 3
	rest
	note_pitch C#, 4
	note_length 3
	rest
	note_pitch D_, 4
	note_length 3
	rest
	note_pitch E_, 4
	note_length 3
	rest
	note_pitch D_, 4
	note_length 3
	rest
	note_length 9
	note_pitch C#, 4
	note_length 3
	rest
	note_pitch B_, 3
	note_length 3
	rest
	note_pitch C#, 4
	note_length 3
	rest
	note_pitch D_, 4
	note_length 3
	rest
	note_pitch E_, 4
	note_length 3
	rest
	note_pitch C#, 4
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
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch A_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	duty_cycle_50
	musicd8 11
	note_pitch A_, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_pitch F#, 3
	note_length 3
	rest
	note_pitch E_, 3
	note_length 3
	rest
	note_pitch D_, 3
	note_length 3
	note_pitch E_, 3
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch B_, 3
	note_length 3
	note_pitch C#, 4
	note_length 3
	note_pitch D_, 4
	song_ret

Music_MainMenuCopy_Ch3: ; 19043d (64:443d)
	stereo_panning_both
	musice3 0
	musicd8 104
	musicd4 56
	note_length 48
	rest
	note_length 24
	rest
	note_length 24
	rest
Music_MainMenuCopy_branch_19044a: ; 19044a (64:444a)
	musicd7 12
	wave 60
	song_call Music_MainMenuCopy_branch_190454
	song_jump Music_MainMenuCopy_branch_19044a

Music_MainMenuCopy_branch_190454: ; 190454 (64:4454)
	note_length 3
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch D_, 1
	note_length 9
	rest
	note_length 3
	note_pitch A_, 0
	note_length 3
	rest
	note_pitch A_, 0
	note_length 9
	rest
	note_length 3
	note_pitch D_, 0
	note_length 3
	rest
	note_pitch D_, 0
	note_length 3
	rest
	note_pitch D_, 0
	note_length 3
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_pitch D_, 0
	note_length 3
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_length 12
	note_pitch A_, 0
	note_length 12
	note_pitch G_, 0
	note_length 3
	note_pitch E_, 0
	note_length 3
	rest
	note_pitch E_, 0
	note_length 9
	rest
	note_length 3
	note_pitch A_, 0
	note_length 3
	rest
	note_pitch A_, 0
	note_length 9
	rest
	note_length 3
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch D_, 0
	note_length 3
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_pitch D_, 0
	note_length 3
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_length 12
	note_pitch A_, 0
	note_length 12
	note_pitch D_, 1
	note_length 3
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch D_, 1
	note_length 9
	rest
	note_length 3
	note_pitch A_, 0
	note_length 3
	rest
	note_pitch A_, 0
	note_length 9
	rest
	note_length 3
	note_pitch D_, 0
	note_length 3
	rest
	note_pitch D_, 0
	note_length 3
	rest
	note_pitch D_, 0
	note_length 3
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_pitch D_, 0
	note_length 3
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_length 12
	note_pitch A_, 0
	note_length 12
	note_pitch G_, 0
	note_length 3
	note_pitch E_, 0
	note_length 3
	rest
	note_pitch E_, 0
	note_length 9
	rest
	note_length 3
	note_pitch A_, 0
	note_length 3
	rest
	note_pitch A_, 0
	note_length 9
	rest
	note_length 3
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch D_, 0
	note_length 3
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_pitch D_, 0
	note_length 3
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_length 12
	note_pitch A_, 0
	note_length 12
	note_pitch D_, 1
	note_length 3
	note_pitch F#, 0
	note_length 3
	rest
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch A_, 0
	note_length 9
	rest
	note_length 3
	note_pitch D_, 1
	note_length 9
	rest
	note_length 3
	note_pitch A_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch D_, 1
	note_length 9
	rest
	note_length 3
	note_pitch B_, 0
	note_length 9
	rest
	note_length 3
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch B_, 0
	note_length 3
	rest
	note_pitch G_, 1
	note_length 3
	rest
	note_pitch E_, 0
	note_length 3
	rest
	note_pitch B_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch B_, 0
	note_length 3
	rest
	note_pitch E_, 1
	note_length 3
	rest
	note_pitch B_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch E_, 1
	note_length 3
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_pitch A_, 0
	note_length 3
	rest
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch A_, 0
	note_length 3
	rest
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch F#, 1
	note_length 3
	rest
	note_length 6
	note_pitch F#, 0
	note_length 3
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_pitch A_, 0
	note_length 3
	rest
	note_pitch A_, 0
	note_length 3
	note_pitch A_, 0
	note_length 6
	note_pitch D_, 1
	note_length 3
	note_pitch A_, 0
	note_length 3
	note_pitch A_, 0
	note_length 6
	note_pitch D_, 1
	note_length 6
	note_pitch G_, 0
	note_length 3
	note_pitch E_, 1
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch B_, 0
	note_length 3
	rest
	note_pitch B_, 0
	note_length 3
	note_pitch B_, 0
	note_length 6
	note_pitch E_, 1
	note_length 3
	note_pitch B_, 0
	note_length 3
	note_pitch B_, 0
	note_length 6
	note_pitch E_, 1
	note_length 6
	note_pitch E_, 0
	note_length 3
	note_pitch B_, 0
	note_length 3
	rest
	note_pitch E_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	note_pitch G_, 0
	note_length 6
	note_pitch B_, 0
	note_length 3
	note_pitch G_, 0
	note_length 3
	note_pitch G_, 0
	note_length 6
	note_pitch B_, 0
	note_length 6
	note_pitch F#, 0
	note_length 3
	note_pitch D_, 1
	note_length 3
	rest
	note_pitch F#, 0
	note_length 3
	rest
	note_pitch A_, 0
	note_length 3
	rest
	note_pitch A_, 0
	note_length 3
	note_pitch A_, 0
	note_length 6
	note_pitch D_, 1
	note_length 3
	note_pitch A_, 0
	note_length 3
	note_pitch A_, 0
	note_length 6
	note_pitch D_, 1
	song_ret

Music_MainMenuCopy_Ch4: ; 19059e (64:459e)
	note_length 48
	rest
	note_length 24
	rest
	stereo_panning_both
	note_length 6
	noise 17
	note_length 6
	noise 17
	note_length 3
	noise 17
	note_length 1
	noise 17
	note_length 1
	noise 17
	note_length 1
	noise 18
	note_length 3
	noise 18
	note_length 3
	noise 18
Music_MainMenuCopy_branch_1905b3: ; 1905b3 (64:45b3)
	note_length 6
	noise 15
	note_length 6
	noise 12
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 17
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 17
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 17
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 17
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 3
	note_length 6
	noise 15
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 3
	note_length 6
	noise 12
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 3
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 3
	note_length 6
	noise 12
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 3
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 3
	note_length 6
	noise 12
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 3
	note_length 6
	noise 12
	note_length 6
	noise 12
	note_length 6
	noise 3
	note_length 6
	noise 12
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 3
	note_length 6
	noise 12
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 3
	note_length 6
	noise 12
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 3
	note_length 6
	noise 3
	note_length 6
	noise 17
	note_length 6
	noise 12
	note_length 6
	noise 3
	note_length 6
	noise 12
	note_length 6
	noise 17
	note_length 6
	noise 12
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
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 18
	note_length 3
	noise 18
	note_length 3
	noise 18
	song_jump Music_MainMenuCopy_branch_1905b3
