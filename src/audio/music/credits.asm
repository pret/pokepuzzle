Music_Credits: ; 1906ba (64:46ba)
	dw Music_Credits_Ch1
	dw Music_Credits_Ch2
	dw Music_Credits_Ch3
	dw Music_Credits_Ch4

Music_Credits_Ch1: ; 1906c2 (64:46c2)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	musicd6 8
	duty_cycle_50
	musice3 0
	musicd7 0
Music_Credits_branch_1906ce: ; 1906ce (64:46ce)
	song_call Music_Credits_branch_1906e0
	song_call Music_Credits_branch_190716
	song_call Music_Credits_branch_19074e
	song_call Music_Credits_branch_19079d
	song_call Music_Credits_branch_1907fe
	song_jump Music_Credits_branch_1906ce

Music_Credits_branch_1906e0: ; 1906e0 (64:46e0)
	duty_cycle_50
	musicd8 49
	note_length 45
	note_pitch G_, 0
	note_length 3
	continue_note
	musicd8 49
	note_length 9
	note_pitch C_, 1
	note_length 9
	note_pitch D_, 1
	note_length 30
	note_pitch G_, 1
	note_length 45
	note_pitch G_, 0
	note_length 3
	continue_note
	musicd8 49
	musicd7 0
	note_length 9
	note_pitch C_, 1
	note_length 9
	note_pitch D_, 1
	note_length 30
	note_pitch G_, 1
	note_length 45
	note_pitch G_, 0
	note_length 3
	continue_note
	musicd8 49
	note_length 9
	note_pitch C_, 1
	note_length 9
	note_pitch D_, 1
	note_length 30
	note_pitch G_, 1
	note_length 45
	note_pitch G_, 0
	note_length 3
	continue_note
	musicd8 49
	note_length 9
	note_pitch C_, 1
	note_length 9
	note_pitch D_, 1
	note_length 30
	note_pitch G_, 1
	song_ret

Music_Credits_branch_190716: ; 190716 (64:4716)
	musicd7 0
	duty_cycle_50
	musicd8 241
	note_length 42
	note_pitch G_, 0
	note_length 6
	note_pitch G_, 0
	note_length 42
	note_pitch D_, 1
	note_length 6
	note_pitch D_, 1
	note_length 42
	note_pitch G_, 0
	note_length 6
	note_pitch G_, 0
	note_length 42
	note_pitch D_, 1
	note_length 6
	note_pitch D_, 1
	note_length 42
	note_pitch C_, 1
	note_length 6
	note_pitch C_, 1
	note_length 48
	note_pitch D_, 1
	note_length 9
	note_pitch G_, 0
	note_length 18
	note_pitch D_, 1
	note_length 3
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 6
	note_pitch D_, 1
	note_length 9
	note_pitch G_, 0
	note_length 18
	note_pitch D_, 1
	note_length 3
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 3
	rest
	note_pitch G_, 0
	note_length 6
	note_pitch D_, 1
	song_ret

Music_Credits_branch_19074e: ; 19074e (64:474e)
	note_length 12
	note_pitch G_, 0
	note_length 12
	note_pitch D_, 1
	note_length 9
	note_pitch G_, 0
	note_length 6
	note_pitch G_, 0
	note_length 9
	note_pitch D_, 1
	note_length 9
	note_pitch G_, 0
	note_length 15
	note_pitch D_, 1
	note_length 9
	note_pitch G_, 0
	note_length 6
	note_pitch G_, 0
	note_length 9
	note_pitch D_, 1
	note_length 12
	note_pitch G_, 0
	note_length 12
	note_pitch D_, 1
	note_length 9
	note_pitch G_, 0
	note_length 6
	note_pitch G_, 0
	note_length 9
	note_pitch D_, 1
	note_length 9
	note_pitch G_, 0
	note_length 15
	note_pitch D_, 1
	note_length 9
	note_pitch G_, 0
	note_length 6
	note_pitch G_, 0
	note_length 9
	note_pitch D_, 1
	note_length 9
	note_pitch C_, 1
	note_length 12
	note_pitch C_, 1
	note_length 3
	rest
	note_length 6
	note_pitch C_, 1
	note_length 3
	rest
	note_length 12
	note_pitch C_, 1
	note_length 3
	rest
	note_length 9
	note_pitch D_, 1
	note_length 12
	note_pitch D_, 1
	note_length 3
	rest
	note_length 9
	note_pitch D_, 1
	note_length 15
	note_pitch D_, 1
	musicd8 49
	note_length 18
	note_pitch G_, 0
	note_length 24
	note_pitch D_, 1
	note_length 6
	note_pitch G_, 1
	note_length 9
	note_pitch D_, 2
	note_length 9
	note_pitch G_, 1
	note_length 30
	note_pitch D_, 2
	song_ret

Music_Credits_branch_19079d: ; 19079d (64:479d)
	musicd8 241
	note_length 6
	note_pitch G_, 0
	note_length 3
	rest
	note_length 15
	note_pitch G_, 0
	note_length 6
	note_pitch G_, 0
	note_length 3
	rest
	note_length 15
	note_pitch G_, 0
	note_length 6
	note_pitch C_, 1
	note_length 3
	rest
	note_length 15
	note_pitch C_, 1
	note_length 9
	note_pitch C_, 1
	note_length 15
	note_pitch C_, 1
	note_length 6
	note_pitch D_, 1
	note_length 3
	rest
	note_length 12
	note_pitch D_, 1
	note_length 3
	rest
	note_length 9
	note_pitch D_, 1
	note_length 15
	note_pitch D_, 1
	note_length 6
	note_pitch G_, 0
	note_length 3
	rest
	note_length 15
	note_pitch G_, 0
	note_length 6
	note_pitch G_, 0
	note_length 3
	rest
	note_length 15
	note_pitch G_, 0
	note_length 6
	note_pitch G_, 0
	note_length 3
	rest
	note_length 15
	note_pitch G_, 0
	note_length 6
	note_pitch G_, 0
	note_length 3
	rest
	note_length 15
	note_pitch G_, 0
	note_length 6
	note_pitch C_, 1
	note_length 3
	rest
	note_length 15
	note_pitch C_, 1
	note_length 9
	note_pitch C_, 1
	note_length 15
	note_pitch C_, 1
	note_length 6
	note_pitch D_, 1
	note_length 3
	rest
	note_length 12
	note_pitch D_, 1
	note_length 3
	rest
	note_length 9
	note_pitch D_, 1
	note_length 15
	note_pitch D_, 1
	note_length 6
	note_pitch G_, 0
	note_length 3
	rest
	note_length 12
	note_pitch G_, 0
	note_length 3
	rest
	note_length 6
	note_pitch G_, 0
	note_length 3
	rest
	note_length 15
	note_pitch G_, 0
	song_ret

Music_Credits_branch_1907fe: ; 1907fe (64:47fe)
	note_length 6
	note_pitch G_, 0
	note_length 3
	rest
	note_length 15
	note_pitch G_, 0
	note_length 6
	note_pitch G_, 0
	note_length 3
	rest
	note_length 15
	note_pitch G_, 0
	note_length 6
	note_pitch C_, 1
	note_length 3
	rest
	note_length 15
	note_pitch C_, 1
	note_length 9
	note_pitch C_, 1
	note_length 15
	note_pitch C_, 1
	note_length 6
	note_pitch D_, 1
	note_length 3
	rest
	note_length 12
	note_pitch D_, 1
	note_length 3
	rest
	note_length 9
	note_pitch D_, 1
	note_length 15
	note_pitch D_, 1
	note_length 6
	note_pitch G_, 0
	note_length 3
	rest
	note_length 12
	note_pitch G_, 0
	note_length 3
	rest
	note_length 6
	note_pitch G_, 0
	note_length 3
	rest
	note_length 15
	note_pitch G_, 0
	note_length 6
	note_pitch G_, 0
	note_length 3
	rest
	note_length 15
	note_pitch G_, 0
	note_length 6
	note_pitch G_, 0
	note_length 3
	rest
	note_length 15
	note_pitch G_, 0
	note_length 6
	note_pitch C_, 1
	note_length 3
	rest
	note_length 15
	note_pitch C_, 1
	note_length 9
	note_pitch C_, 1
	note_length 15
	note_pitch C_, 1
	note_length 6
	note_pitch D_, 1
	note_length 3
	rest
	note_length 12
	note_pitch D_, 1
	note_length 3
	rest
	note_length 9
	note_pitch D_, 1
	note_length 15
	note_pitch D_, 1
	note_length 6
	note_pitch G_, 0
	note_length 3
	rest
	note_length 12
	note_pitch G_, 0
	note_length 3
	rest
	note_length 6
	note_pitch G_, 0
	note_length 3
	rest
	note_length 15
	note_pitch G_, 0
	song_ret

Music_Credits_Ch2: ; 19085f (64:485f)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	duty_cycle_50
	musice3 0
	duty_cycle_12_5
	musicd5
Music_Credits_branch_190869: ; 190869 (64:4869)
	song_call Music_Credits_branch_19087d
	musicd4 55
	song_call Music_Credits_branch_1908b8
	song_call Music_Credits_branch_1909ae
	song_call Music_Credits_branch_190aa3
	song_call Music_Credits_branch_190baf
	song_jump Music_Credits_branch_190869

Music_Credits_branch_19087d: ; 19087d (64:487d)
	musicd7 0
	musicd8 50
	note_length 45
	note_pitch G_, 3
	note_length 3
	continue_note
	note_length 45
	note_pitch A_, 3
	note_length 3
	continue_note
	note_length 45
	note_pitch G_, 3
	note_length 3
	continue_note
	note_length 36
	note_pitch A_, 3
	musicd8 37
	note_length 3
	note_pitch C_, 5
	musicd5
	note_length 3
	note_pitch B_, 4
	note_length 3
	note_pitch A_, 4
	note_length 3
	note_pitch G_, 4
	musicd8 50
	note_length 18
	note_pitch F#, 4
	note_length 30
	note_pitch G_, 4
	note_length 36
	note_pitch A_, 3
	musicd8 37
	note_length 3
	note_pitch C_, 5
	musicd5
	note_length 3
	note_pitch B_, 4
	note_length 3
	note_pitch A_, 4
	note_length 3
	note_pitch G_, 4
	musicd8 50
	note_length 18
	note_pitch F#, 4
	note_length 30
	note_pitch G_, 4
	note_length 45
	note_pitch A_, 3
	note_length 3
	continue_note
	song_ret

Music_Credits_branch_1908b8: ; 1908b8 (64:48b8)
	duty_cycle_12_5
	musicd8 38
	note_length 6
	note_pitch D_, 2
	note_length 3
	note_pitch G_, 2
	note_length 6
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch D_, 3
	note_length 6
	note_pitch D_, 2
	note_length 3
	note_pitch G_, 2
	note_length 6
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch D_, 3
	note_length 6
	note_pitch D_, 2
	note_length 3
	note_pitch F_, 2
	note_length 6
	note_pitch C_, 3
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch C_, 3
	note_length 6
	note_pitch D_, 2
	note_length 3
	note_pitch F_, 2
	note_length 6
	note_pitch C_, 3
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch C_, 3
	note_length 6
	note_pitch D_, 2
	note_length 3
	note_pitch G_, 2
	note_length 6
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch D_, 3
	note_length 6
	note_pitch D_, 2
	note_length 3
	note_pitch G_, 2
	note_length 6
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch D_, 3
	note_length 6
	note_pitch D_, 2
	note_length 3
	note_pitch F_, 2
	note_length 6
	note_pitch C_, 3
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch F_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch F_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch D_, 2
	note_length 6
	note_pitch C_, 2
	note_length 3
	note_pitch G_, 2
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch E_, 3
	note_length 6
	note_pitch G_, 3
	note_length 9
	note_pitch C_, 4
	note_length 3
	note_pitch C_, 4
	note_length 3
	note_pitch B_, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch G_, 3
	note_length 6
	note_pitch D_, 2
	note_length 3
	note_pitch A_, 2
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch A_, 3
	note_length 9
	note_pitch D_, 4
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch C_, 4
	note_length 3
	note_pitch B_, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	musicd8 207
	note_length 1
	note_pitch F#, 5
	note_length 1
	note_pitch F_, 5
	note_length 1
	note_pitch E_, 5
	note_length 1
	note_pitch D_, 5
	note_length 1
	note_pitch E_, 5
	musicd8 206
	note_length 1
	note_pitch D_, 5
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
	note_pitch A_, 4
	note_length 1
	note_pitch G_, 4
	note_length 1
	note_pitch C_, 5
	note_length 1
	note_pitch B_, 4
	musicd8 204
	note_length 1
	note_pitch A_, 4
	note_length 1
	note_pitch B_, 4
	note_length 1
	note_pitch A_, 4
	note_length 1
	note_pitch G_, 4
	musicd8 203
	note_length 1
	note_pitch A_, 4
	note_length 1
	note_pitch G_, 4
	note_length 1
	note_pitch F#, 4
	note_length 3
	note_pitch G_, 4
	song_ret

Music_Credits_branch_1909ae: ; 1909ae (64:49ae)
	musicd8 39
	note_length 6
	note_pitch D_, 2
	note_length 3
	note_pitch G_, 2
	note_length 6
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch D_, 3
	note_length 6
	note_pitch D_, 2
	note_length 3
	note_pitch G_, 2
	note_length 6
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch D_, 3
	note_length 6
	note_pitch G_, 3
	note_length 3
	note_pitch F_, 2
	note_length 6
	note_pitch C_, 3
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch C_, 3
	note_length 6
	note_pitch G_, 3
	note_length 3
	note_pitch F_, 2
	note_length 6
	note_pitch C_, 3
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch C_, 3
	note_length 6
	note_pitch D_, 2
	note_length 3
	note_pitch G_, 2
	note_length 6
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch D_, 3
	note_length 6
	note_pitch D_, 2
	note_length 3
	note_pitch G_, 2
	note_length 6
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch D_, 3
	note_length 6
	note_pitch G_, 3
	note_length 3
	note_pitch F_, 2
	note_length 6
	note_pitch C_, 3
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch F_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch F_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch D_, 2
	note_length 6
	note_pitch C_, 2
	note_length 3
	note_pitch G_, 2
	note_length 6
	note_pitch B_, 2
	note_length 6
	note_pitch E_, 3
	note_length 6
	note_pitch G_, 3
	note_length 9
	note_pitch C_, 4
	note_length 3
	note_pitch C_, 4
	note_length 3
	note_pitch B_, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch G_, 3
	note_length 6
	note_pitch D_, 2
	note_length 3
	note_pitch A_, 2
	note_length 6
	note_pitch D_, 3
	note_length 6
	note_pitch F#, 3
	note_length 6
	note_pitch A_, 3
	note_length 9
	note_pitch D_, 4
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch C_, 4
	note_length 3
	note_pitch B_, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	musicd8 207
	note_length 1
	note_pitch F#, 5
	note_length 1
	note_pitch F_, 5
	note_length 1
	note_pitch E_, 5
	note_length 1
	note_pitch D_, 5
	note_length 1
	note_pitch E_, 5
	musicd8 206
	note_length 1
	note_pitch D_, 5
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
	note_pitch A_, 4
	note_length 1
	note_pitch G_, 4
	note_length 1
	note_pitch C_, 5
	note_length 1
	note_pitch B_, 4
	musicd8 204
	note_length 1
	note_pitch A_, 4
	note_length 1
	note_pitch B_, 4
	note_length 1
	note_pitch A_, 4
	note_length 1
	note_pitch G_, 4
	musicd8 203
	note_length 1
	note_pitch A_, 4
	note_length 1
	note_pitch G_, 4
	note_length 1
	note_pitch F#, 4
	note_length 3
	note_pitch G_, 4
	song_ret

Music_Credits_branch_190aa3: ; 190aa3 (64:4aa3)
	duty_cycle_12_5
	musicd8 39
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 15
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch D_, 3
	note_length 15
	note_pitch A_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	musicd8 207
	note_length 1
	note_pitch F#, 5
	note_length 1
	note_pitch F_, 5
	note_length 1
	note_pitch E_, 5
	note_length 1
	note_pitch D_, 5
	note_length 1
	note_pitch E_, 5
	musicd8 206
	note_length 1
	note_pitch D_, 5
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
	note_pitch A_, 4
	note_length 1
	note_pitch G_, 4
	note_length 1
	note_pitch C_, 5
	note_length 1
	note_pitch B_, 4
	musicd8 204
	note_length 1
	note_pitch A_, 4
	note_length 1
	note_pitch B_, 4
	note_length 1
	note_pitch A_, 4
	note_length 1
	note_pitch G_, 4
	musicd8 203
	note_length 1
	note_pitch A_, 4
	note_length 1
	note_pitch G_, 4
	note_length 1
	note_pitch F#, 4
	note_length 3
	note_pitch G_, 4
	musicd8 39
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 15
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch D_, 3
	note_length 15
	note_pitch A_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 4
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch C_, 4
	note_length 3
	note_pitch G_, 4
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch C_, 4
	note_length 3
	note_pitch G_, 4
	note_length 3
	note_pitch C_, 4
	song_ret

Music_Credits_branch_190baf: ; 190baf (64:4baf)
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 15
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch D_, 3
	note_length 15
	note_pitch A_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	rest
	note_pitch C_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 15
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch D_, 3
	note_length 15
	note_pitch A_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch C_, 3
	song_ret

Music_Credits_Ch3: ; 190c8f (64:4c8f)
	musice3 0
Music_Credits_branch_190c91: ; 190c91 (64:4c91)
	musicd7 12
	musicd8 101
	wave 30
	song_call Music_Credits_branch_190cb3
	musicd7 12
	wave 29
	musicd8 27
	song_call Music_Credits_branch_190d74
	song_call Music_Credits_branch_190df4
	musicd7 244
	wave 9
	song_call Music_Credits_branch_190e74
	song_call Music_Credits_branch_190ee2
	song_jump Music_Credits_branch_190c91

Music_Credits_branch_190cb3: ; 190cb3 (64:4cb3)
	note_length 6
	note_pitch D_, 2
	note_length 3
	note_pitch G_, 2
	note_length 6
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch D_, 3
	note_length 6
	note_pitch D_, 2
	note_length 3
	note_pitch G_, 2
	note_length 6
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch D_, 3
	note_length 6
	note_pitch D_, 2
	note_length 3
	note_pitch F_, 2
	note_length 6
	note_pitch A_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch A_, 2
	note_length 6
	note_pitch D_, 2
	note_length 3
	note_pitch F_, 2
	note_length 6
	note_pitch A_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch A_, 2
	note_length 6
	note_pitch D_, 2
	note_length 3
	note_pitch G_, 2
	note_length 6
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch D_, 3
	note_length 6
	note_pitch D_, 2
	note_length 3
	note_pitch G_, 2
	note_length 6
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch D_, 3
	note_length 6
	note_pitch D_, 2
	note_length 3
	note_pitch F_, 2
	note_length 6
	note_pitch A_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch A_, 2
	note_length 6
	note_pitch D_, 2
	note_length 3
	note_pitch F_, 2
	note_length 6
	note_pitch A_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch A_, 2
	note_length 6
	note_pitch D_, 2
	note_length 3
	note_pitch G_, 2
	note_length 6
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch D_, 3
	note_length 6
	note_pitch D_, 2
	note_length 3
	note_pitch G_, 2
	note_length 6
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch D_, 3
	note_length 6
	note_pitch D_, 2
	note_length 3
	note_pitch F_, 2
	note_length 6
	note_pitch A_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch A_, 2
	note_length 6
	note_pitch D_, 2
	note_length 3
	note_pitch F_, 2
	note_length 6
	note_pitch A_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch A_, 2
	note_length 6
	note_pitch D_, 2
	note_length 3
	note_pitch G_, 2
	note_length 6
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch D_, 3
	note_length 6
	note_pitch D_, 2
	note_length 3
	note_pitch G_, 2
	note_length 6
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch D_, 3
	note_length 6
	note_pitch D_, 2
	note_length 3
	note_pitch F_, 2
	note_length 6
	note_pitch A_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch A_, 2
	note_length 6
	note_pitch D_, 2
	note_length 3
	note_pitch F_, 2
	note_length 6
	note_pitch A_, 2
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch A_, 2
	song_ret

Music_Credits_branch_190d74: ; 190d74 (64:4d74)
	note_length 12
	rest
	note_length 6
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 12
	note_pitch D_, 4
	note_length 6
	rest
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch C_, 4
	note_length 3
	note_pitch B_, 3
	note_length 6
	note_pitch C_, 4
	note_length 3
	note_pitch D_, 4
	note_length 6
	note_pitch C_, 4
	note_length 3
	note_pitch B_, 3
	note_length 21
	note_pitch G_, 3
	note_length 9
	rest
	note_length 12
	rest
	note_length 6
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 12
	note_pitch D_, 4
	note_length 6
	rest
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch C_, 4
	note_length 3
	note_pitch B_, 3
	note_length 6
	note_pitch C_, 4
	note_length 3
	note_pitch D_, 4
	note_length 6
	note_pitch C_, 4
	note_length 3
	note_pitch B_, 3
	note_length 12
	note_pitch G_, 4
	note_length 6
	rest
	note_length 3
	note_pitch B_, 3
	note_length 3
	note_pitch A_, 3
	note_length 6
	note_pitch G_, 3
	note_length 18
	note_pitch A_, 3
	note_length 6
	note_pitch B_, 3
	note_length 24
	rest
	note_length 18
	rest
	note_length 12
	note_pitch A_, 3
	note_length 6
	note_pitch B_, 3
	note_length 12
	note_pitch C_, 4
	note_length 3
	note_pitch C_, 4
	note_length 3
	note_pitch D_, 4
	note_length 3
	rest
	note_pitch G_, 4
	note_length 3
	rest
	note_pitch C_, 4
	note_length 3
	rest
	note_length 6
	note_pitch D_, 4
	note_length 3
	note_pitch G_, 4
	note_length 3
	rest
	note_pitch B_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	rest
	note_pitch G_, 4
	note_length 3
	rest
	note_pitch C_, 4
	note_length 3
	note_pitch D_, 4
	note_length 3
	rest
	note_pitch G_, 4
	note_length 3
	rest
	note_pitch C_, 4
	note_length 3
	rest
	note_length 6
	note_pitch G_, 4
	note_length 3
	note_pitch D_, 4
	note_length 3
	rest
	note_pitch B_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	rest
	note_pitch G_, 4
	note_length 3
	rest
	song_ret

Music_Credits_branch_190df4: ; 190df4 (64:4df4)
	note_length 12
	rest
	note_length 6
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 15
	note_pitch D_, 4
	note_length 3
	rest
	note_pitch D_, 4
	note_length 3
	note_pitch C_, 4
	note_length 3
	note_pitch B_, 3
	note_length 6
	note_pitch C_, 4
	note_length 3
	note_pitch D_, 4
	note_length 6
	note_pitch C_, 4
	note_length 3
	note_pitch B_, 3
	note_length 6
	note_pitch G_, 3
	note_length 24
	rest
	note_length 12
	rest
	note_length 6
	note_pitch D_, 3
	note_length 3
	note_pitch G_, 3
	note_length 15
	note_pitch D_, 4
	note_length 3
	rest
	note_pitch D_, 4
	note_length 3
	note_pitch C_, 4
	note_length 3
	note_pitch B_, 3
	note_length 6
	note_pitch C_, 4
	note_length 3
	note_pitch D_, 4
	note_length 6
	note_pitch C_, 4
	note_length 3
	note_pitch B_, 3
	note_length 12
	note_pitch G_, 4
	note_length 6
	rest
	note_length 3
	note_pitch B_, 3
	note_length 3
	note_pitch A_, 3
	note_length 6
	note_pitch G_, 3
	note_length 18
	note_pitch A_, 3
	note_length 6
	note_pitch B_, 3
	note_length 24
	rest
	note_length 18
	rest
	note_length 12
	note_pitch A_, 3
	note_length 6
	note_pitch B_, 3
	note_length 6
	note_pitch C_, 4
	note_length 6
	rest
	note_length 3
	note_pitch C_, 4
	note_length 3
	note_pitch D_, 4
	note_length 3
	rest
	note_pitch G_, 4
	note_length 3
	rest
	note_pitch C_, 4
	note_length 3
	rest
	note_length 6
	note_pitch D_, 4
	note_length 3
	note_pitch G_, 4
	note_length 3
	rest
	note_pitch B_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	rest
	note_pitch G_, 4
	note_length 3
	rest
	note_pitch C_, 4
	note_length 3
	note_pitch D_, 4
	note_length 3
	rest
	note_pitch G_, 4
	note_length 3
	rest
	note_pitch C_, 4
	note_length 3
	rest
	note_length 6
	note_pitch D_, 4
	note_length 3
	note_pitch G_, 4
	note_length 3
	rest
	note_pitch B_, 3
	note_length 3
	note_pitch D_, 4
	note_length 3
	rest
	note_pitch G_, 4
	note_length 3
	rest
	song_ret

Music_Credits_branch_190e74: ; 190e74 (64:4e74)
	note_length 36
	note_pitch D_, 4
	note_length 6
	rest
	note_pitch G_, 3
	note_length 18
	note_pitch D_, 4
	note_length 1
	note_pitch F#, 4
	note_length 2
	note_pitch G_, 4
	note_length 15
	note_pitch D_, 4
	note_length 12
	rest
	note_length 9
	note_pitch B_, 3
	note_length 3
	note_pitch C_, 4
	note_length 6
	rest
	note_length 18
	note_pitch G_, 4
	note_length 6
	note_pitch F#, 4
	note_length 6
	note_pitch G_, 4
	note_length 9
	note_pitch F#, 4
	note_length 9
	note_pitch G_, 4
	note_length 27
	rest
	note_length 3
	note_pitch B_, 3
	note_length 9
	note_pitch C_, 4
	note_length 6
	note_pitch G_, 4
	note_length 6
	rest
	note_length 3
	note_pitch B_, 3
	note_length 9
	note_pitch C_, 4
	note_length 6
	note_pitch G_, 4
	note_length 6
	rest
	note_length 3
	note_pitch F#, 4
	note_length 9
	note_pitch G_, 4
	note_length 3
	note_pitch A_, 4
	note_length 6
	rest
	note_length 3
	note_pitch B_, 4
	note_length 3
	rest
	note_length 1
	note_pitch G#, 4
	note_length 8
	note_pitch A_, 4
	note_length 3
	note_pitch G_, 4
	note_length 12
	rest
	note_length 3
	note_pitch C_, 5
	note_length 3
	note_pitch B_, 4
	note_length 3
	rest
	note_pitch A_, 4
	note_length 3
	rest
	note_pitch G_, 4
	note_length 3
	rest
	note_pitch F#, 4
	note_length 3
	rest
	note_pitch E_, 4
	note_length 3
	rest
	note_pitch D_, 4
	note_length 3
	rest
	note_pitch C_, 4
	note_length 3
	rest
	note_pitch B_, 3
	note_length 9
	note_pitch C_, 4
	note_length 3
	note_pitch G_, 4
	note_length 6
	rest
	note_pitch G_, 3
	note_length 9
	note_pitch A_, 3
	note_length 9
	note_pitch B_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	rest
	song_ret

Music_Credits_branch_190ee2: ; 190ee2 (64:4ee2)
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch F#, 3
	note_length 3
	note_pitch G_, 3
	note_length 6
	note_pitch A_, 3
	note_length 9
	rest
	note_length 3
	note_pitch B_, 3
	note_length 3
	note_pitch C_, 4
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch B_, 3
	note_length 3
	note_pitch C_, 4
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch B_, 3
	note_length 3
	note_pitch C_, 4
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch B_, 3
	note_length 3
	note_pitch C_, 4
	note_length 6
	note_pitch D_, 4
	note_length 9
	rest
	note_length 3
	note_pitch G_, 4
	note_length 3
	note_pitch F#, 4
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch G_, 4
	note_length 3
	note_pitch F#, 4
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch G_, 4
	note_length 3
	note_pitch F#, 4
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch G_, 4
	note_length 3
	note_pitch F#, 4
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch G_, 4
	note_length 3
	note_pitch F#, 4
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch C_, 4
	note_length 3
	note_pitch B_, 3
	note_length 3
	note_pitch C_, 4
	note_length 3
	note_pitch G_, 4
	note_length 3
	note_pitch B_, 3
	note_length 3
	note_pitch C_, 4
	note_length 3
	note_pitch G_, 4
	note_length 3
	note_pitch C_, 4
	note_length 3
	note_pitch D_, 4
	note_length 3
	note_pitch G_, 4
	note_length 3
	note_pitch C_, 4
	note_length 3
	note_pitch D_, 4
	note_length 6
	note_pitch G_, 4
	note_length 9
	rest
	note_pitch G_, 4
	note_length 9
	note_pitch F#, 4
	note_length 3
	note_pitch G_, 4
	note_length 3
	rest
	note_length 9
	note_pitch A_, 4
	note_length 3
	note_pitch G_, 4
	note_length 6
	rest
	note_length 3
	note_pitch F#, 4
	note_length 3
	rest
	note_length 9
	note_pitch G_, 4
	note_length 9
	note_pitch F#, 4
	note_length 3
	note_pitch G_, 4
	note_length 3
	rest
	note_length 9
	note_pitch A_, 4
	note_length 3
	note_pitch G_, 4
	note_length 6
	rest
	note_length 3
	note_pitch F#, 4
	note_length 3
	rest
	note_length 18
	note_pitch B_, 4
	note_length 3
	note_pitch C_, 5
	note_length 3
	note_pitch B_, 4
	note_length 3
	rest
	note_pitch C_, 5
	note_length 3
	note_pitch B_, 4
	note_length 3
	rest
	note_length 6
	note_pitch A_, 4
	note_length 6
	note_pitch G_, 4
	note_length 6
	note_pitch F#, 4
	note_length 3
	note_pitch F#, 4
	note_length 36
	note_pitch G_, 4
	note_length 3
	rest
	song_ret

Music_Credits_Ch4: ; 190f8d (64:4f8d)
	stereo_panning_both
	musicd6 8
Music_Credits_branch_190f90: ; 190f90 (64:4f90)
	song_call Music_Credits_branch_190fb7
	song_call Music_Credits_branch_190fb7
	song_call Music_Credits_branch_190fb7
	song_call Music_Credits_branch_190fb7
	song_call Music_Credits_branch_190fb7
	song_call Music_Credits_branch_190fb7
	song_call Music_Credits_branch_190fb7
	song_call Music_Credits_branch_190fb7
	song_call Music_Credits_branch_19105b
	song_call Music_Credits_branch_1910ee
	song_call Music_Credits_branch_1911ed
	song_call Music_Credits_branch_1912ee
	song_jump Music_Credits_branch_190f90

Music_Credits_branch_190fb7: ; 190fb7 (64:4fb7)
	note_length 48
	rest
	song_ret

; unreferenced ?
Music_Credits_branch_190fba: ; 190fba (64:4fba)
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 12
	rest
	note_length 3
	noise 3
	note_length 12
	rest
	note_length 3
	noise 12
	note_length 3
	noise 10
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 12
	rest
	note_length 3
	noise 3
	note_length 12
	rest
	note_length 3
	noise 12
	note_length 3
	noise 10
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 12
	rest
	note_length 3
	noise 3
	note_length 12
	rest
	note_length 3
	noise 12
	note_length 3
	noise 10
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 12
	rest
	note_length 3
	noise 3
	note_length 12
	rest
	note_length 3
	noise 12
	note_length 3
	noise 10
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 12
	rest
	note_length 3
	noise 3
	note_length 12
	rest
	note_length 3
	noise 12
	note_length 3
	noise 10
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 12
	rest
	note_length 3
	noise 3
	note_length 12
	rest
	note_length 3
	noise 12
	note_length 3
	noise 10
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 12
	rest
	note_length 3
	noise 3
	note_length 12
	rest
	note_length 3
	noise 12
	note_length 3
	noise 10
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 12
	rest
	note_length 3
	noise 3
	note_length 12
	rest
	note_length 3
	noise 12
	note_length 3
	noise 10
	note_length 3
	noise 12
	song_ret

Music_Credits_branch_19105b: ; 19105b (64:505b)
	note_length 3
	noise 12
	note_length 21
	rest
	note_length 3
	noise 12
	note_length 12
	rest
	note_length 3
	noise 12
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 12
	note_length 21
	rest
	note_length 3
	noise 12
	note_length 12
	rest
	note_length 3
	noise 12
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 12
	note_length 21
	rest
	note_length 3
	noise 12
	note_length 12
	rest
	note_length 3
	noise 12
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 12
	note_length 21
	rest
	note_length 3
	noise 12
	note_length 12
	rest
	note_length 3
	noise 12
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 12
	note_length 21
	rest
	note_length 3
	noise 12
	note_length 12
	rest
	note_length 3
	noise 12
	note_length 3
	noise 11
	note_length 3
	noise 11
	note_length 3
	noise 12
	note_length 21
	rest
	note_length 3
	noise 12
	note_length 12
	rest
	note_length 3
	noise 11
	note_length 3
	noise 10
	note_length 3
	noise 11
	note_length 3
	noise 16
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	rest
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
	noise 12
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 16
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	rest
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
	noise 12
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 17
	note_length 3
	noise 18
	song_ret

Music_Credits_branch_1910ee: ; 1910ee (64:50ee)
	note_length 3
	noise 16
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 16
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	rest
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 16
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	rest
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 17
	note_length 3
	noise 17
	song_ret

Music_Credits_branch_1911ed: ; 1911ed (64:51ed)
	note_length 3
	noise 16
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 15
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 15
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 15
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 15
	note_length 3
	noise 16
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 15
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 15
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 15
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 15
	song_ret

Music_Credits_branch_1912ee: ; 1912ee (64:52ee)
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 15
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 15
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 15
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 15
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 15
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 15
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 15
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 12
	note_length 3
	noise 17
	note_length 3
	noise 12
	note_length 3
	noise 3
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 1
	noise 17
	note_length 1
	noise 17
	note_length 1
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 17
	note_length 3
	noise 17
	song_ret
