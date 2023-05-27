Music_UnusedSong3: ; 192339 (64:6339)
	dw Music_UnusedSong3_Ch1
	dw Music_UnusedSong3_Ch2
	dw Music_UnusedSong3_Ch3
	dw $0000

Music_UnusedSong3_Ch1: ; 192341 (64:6341)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	musicd6 9
	duty_cycle_12_5
	musicd7 0
	musicd4 55
Music_UnusedSong3_branch_19234d: ; 19234d (64:634d)
	song_call Music_UnusedSong3_branch_192358
	song_jump Music_UnusedSong3_branch_19234d

; unreferenced ?
Music_UnusedSong3_branch_192353: ; 192353 (64:6353)
	note_length 24
	rest
	note_length 48
	rest
	song_ret

Music_UnusedSong3_branch_192358: ; 192358 (64:6358)
	musice3 1
	musicd8 36
	note_length 13
	rest
	note_length 12
	note_pitch C_, 4
	note_length 12
	note_pitch B_, 3
	note_length 12
	note_pitch B_, 3
	note_length 12
	continue_note
	note_length 6
	note_pitch E_, 4
	note_length 6
	note_pitch G_, 3
	note_length 12
	rest
	note_pitch C_, 4
	note_length 12
	note_pitch B_, 3
	note_length 18
	note_pitch B_, 3
	note_length 18
	note_pitch C_, 4
	note_length 12
	continue_note
	note_length 12
	note_pitch C_, 4
	note_length 12
	note_pitch B_, 3
	note_length 12
	note_pitch B_, 3
	note_length 24
	continue_note
	musicd8 43
	note_length 24
	note_pitch B_, 3
	note_length 12
	continue_note
	note_length 24
	note_pitch C_, 4
	note_length 11
	note_pitch B_, 3
	musicd8 208
	note_length 1
	note_pitch B_, 4
	musicd8 203
	note_length 1
	note_pitch C_, 5
	note_length 1
	note_pitch B_, 4
	note_length 1
	note_pitch C_, 5
	note_length 1
	note_pitch B_, 4
	musicd8 204
	note_length 1
	note_pitch C_, 5
	note_length 1
	note_pitch B_, 4
	note_length 1
	note_pitch C_, 5
	note_length 1
	note_pitch B_, 4
	note_length 1
	note_pitch C_, 5
	musicd8 205
	note_length 1
	note_pitch B_, 4
	note_length 1
	note_pitch C_, 5
	note_length 1
	note_pitch B_, 4
	note_length 1
	note_pitch C_, 5
	musicd8 206
	note_length 1
	note_pitch B_, 4
	note_length 1
	note_pitch C_, 5
	note_length 1
	note_pitch B_, 4
	note_length 1
	note_pitch C_, 5
	note_length 3
	note_pitch B_, 4
	note_length 3
	note_pitch C_, 5
	note_length 3
	note_pitch B_, 4
	note_length 3
	note_pitch C_, 5
	musicd8 205
	note_length 1
	note_pitch B_, 4
	note_length 1
	note_pitch A_, 4
	note_length 1
	note_pitch B_, 4
	note_length 1
	note_pitch A_, 4
	note_length 1
	note_pitch B_, 4
	note_length 1
	note_pitch A_, 4
	musicd8 203
	note_length 1
	note_pitch B_, 4
	note_length 1
	note_pitch A_, 4
	note_length 1
	note_pitch B_, 4
	note_length 1
	note_pitch A_, 4
	musicd8 204
	note_length 1
	note_pitch B_, 4
	note_length 1
	note_pitch A_, 4
	note_length 1
	note_pitch B_, 4
	musicd8 205
	note_length 1
	note_pitch A_, 4
	note_length 1
	note_pitch B_, 4
	note_length 1
	note_pitch A_, 4
	musicd8 206
	note_length 1
	note_pitch B_, 4
	note_length 1
	note_pitch A_, 4
	musicd8 36
	note_length 3
	note_pitch B_, 4
	note_length 3
	note_pitch A_, 4
	note_length 3
	note_pitch B_, 4
	note_length 3
	note_pitch A_, 4
	note_length 3
	note_pitch B_, 4
	note_length 3
	note_pitch A_, 4
	note_length 3
	note_pitch B_, 4
	musicd8 206
	note_length 1
	note_pitch G_, 4
	note_length 1
	note_pitch A_, 4
	musicd8 203
	note_length 1
	note_pitch G_, 4
	note_length 1
	note_pitch A_, 4
	note_length 1
	note_pitch A_, 4
	musicd8 204
	note_length 1
	note_pitch G_, 4
	note_length 1
	note_pitch A_, 4
	note_length 1
	note_pitch G_, 4
	note_length 1
	note_pitch A_, 4
	musicd8 205
	note_length 1
	note_pitch A_, 4
	note_length 1
	note_pitch G_, 4
	note_length 1
	note_pitch A_, 4
	musicd8 206
	note_length 1
	note_pitch G_, 4
	note_length 1
	note_pitch A_, 4
	note_length 1
	note_pitch A_, 4
	musicd8 36
	note_length 3
	note_pitch G_, 4
	note_length 3
	note_pitch A_, 4
	note_length 3
	note_pitch G_, 4
	note_length 3
	note_pitch A_, 4
	note_length 12
	note_pitch G_, 4
	song_ret

Music_UnusedSong3_Ch2: ; 192430 (64:6430)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	musicd6 9
	musicd7 244
	musice3 0
Music_UnusedSong3_branch_19243b: ; 19243b (64:643b)
	song_call Music_UnusedSong3_branch_19245d
	song_jump Music_UnusedSong3_branch_19243b

; unreferenced ?
Music_UnusedSong3_branch_192441: ; 192441 (64:6441)
	note_length 1
	rest
	duty_cycle_12_5
	note_length 1
	note_pitch B_, 4
	note_length 5
	note_pitch C_, 5
	note_length 6
	note_pitch A_, 4
	note_length 6
	note_pitch B_, 4
	note_length 6
	note_pitch G_, 4
	note_length 6
	note_pitch A_, 4
	note_length 6
	note_pitch F_, 4
	note_length 1
	note_pitch C_, 3
	note_length 1
	note_pitch G_, 3
	note_length 1
	note_pitch C_, 4
	note_length 30
	note_pitch C_, 5
	note_length 3
	rest
	song_ret

Music_UnusedSong3_branch_19245d: ; 19245d (64:645d)
	musicd8 43
	musicd4 55
	duty_cycle_12_5
	musicd7 0
	note_length 12
	rest
	note_length 12
	note_pitch C_, 4
	note_length 12
	note_pitch B_, 3
	note_length 2
	note_pitch G_, 3
	note_length 2
	note_pitch A_, 3
	note_length 8
	note_pitch B_, 3
	note_length 36
	continue_note
	note_length 12
	note_pitch C_, 4
	note_length 12
	note_pitch B_, 3
	note_length 2
	note_pitch G_, 3
	note_length 2
	note_pitch A_, 3
	note_length 14
	note_pitch B_, 3
	note_length 18
	note_pitch C_, 4
	note_length 12
	continue_note
	note_length 12
	note_pitch C_, 4
	note_length 12
	note_pitch B_, 3
	note_length 2
	note_pitch G_, 3
	note_length 2
	note_pitch A_, 3
	note_length 8
	note_pitch B_, 3
	note_length 24
	continue_note
	note_length 24
	note_pitch D_, 4
	note_length 12
	continue_note
	note_length 1
	note_pitch C_, 4
	note_length 2
	note_pitch D_, 4
	note_length 21
	note_pitch E_, 4
	note_length 12
	note_pitch D_, 4
	note_length 1
	note_pitch A_, 3
	note_length 2
	note_pitch B_, 3
	note_length 15
	note_pitch C_, 4
	note_length 18
	note_pitch B_, 3
	note_length 12
	note_pitch A_, 3
	note_length 6
	continue_note
	note_length 18
	note_pitch G_, 3
	note_length 1
	note_pitch E_, 4
	note_length 2
	note_pitch F_, 4
	note_length 21
	note_pitch G_, 4
	note_length 12
	note_pitch G_, 4
	song_ret

Music_UnusedSong3_Ch3: ; 1924af (64:64af)
	stereo_panning_both
Music_UnusedSong3_branch_1924b0: ; 1924b0 (64:64b0)
	song_call Music_UnusedSong3_branch_1924d1
	song_jump Music_UnusedSong3_branch_1924b0

; unreferenced ?
Music_UnusedSong3_branch_1924b6: ; 1924b6 (64:64b6)
	musice3 0
	note_length 2
	note_pitch B_, 4
	note_length 4
	note_pitch C_, 5
	note_length 6
	note_pitch A_, 4
	note_length 6
	note_pitch B_, 4
	note_length 6
	note_pitch G_, 4
	note_length 6
	note_pitch A_, 4
	note_length 6
	note_pitch F_, 4
	note_length 1
	note_pitch C_, 3
	note_length 1
	note_pitch G_, 3
	note_length 1
	note_pitch C_, 4
	note_length 30
	note_pitch C_, 5
	note_length 3
	rest
	song_ret

Music_UnusedSong3_branch_1924d1: ; 1924d1 (64:64d1)
	musicd7 0
	wave 8
	musicd8 102
	note_length 2
	note_pitch B_, 2
	note_length 4
	note_pitch C_, 3
	note_length 6
	note_pitch E_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch E_, 4
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch E_, 3
	note_length 6
	note_pitch F_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch F_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch F_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch C_, 3
	note_length 6
	note_pitch E_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch E_, 4
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch E_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch F_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch F_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch F_, 3
	note_length 6
	note_pitch C_, 3
	note_length 6
	note_pitch E_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch E_, 3
	note_length 6
	note_pitch C_, 4
	note_length 6
	note_pitch E_, 3
	note_length 6
	note_pitch F_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch F_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch F_, 3
	note_length 6
	note_pitch C_, 3
	note_length 6
	note_pitch F_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch C_, 4
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch F_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch F_, 3
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch B_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch B_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch B_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch G_, 3
	note_length 6
	note_pitch D_, 3
	song_ret

; unreferenced ?
Music_UnusedSong3_branch_19255e: ; 19255e (64:655e)
	stereo_panning_both
Music_UnusedSong3_branch_19255f: ; 19255f (64:655f)
	rest
	note_length 48
	song_jump Music_UnusedSong3_branch_19255f
