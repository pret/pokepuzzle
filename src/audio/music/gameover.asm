Music_GameOver: ; 18a872 (62:6872)
	dw Music_GameOver_Ch1
	dw Music_GameOver_Ch2
	dw Music_GameOver_Ch3
	dw $0000

Music_GameOver_Ch1: ; 18a87a (62:687a)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	musicd6 6
	musicd4 35
	duty_cycle_50
	musicd8 40
	musicd7 0
	musicd4 55
	rest
	note_length 1
Music_GameOver_branch_18a88c: ; 18a88c (62:688c)
	song_call Music_GameOver_branch_18a892
	song_jump Music_GameOver_branch_18a88c

Music_GameOver_branch_18a892: ; 18a892 (62:6892)
	musice3 0
	note_length 6
	note_pitch G#, 4
	note_length 6
	note_pitch A#, 4
	note_length 6
	note_pitch B_, 4
	note_length 12
	note_pitch D#, 5
	note_length 6
	note_pitch C#, 5
	note_length 6
	note_pitch A#, 4
	note_length 6
	note_pitch G#, 4
	note_length 6
	note_pitch F#, 4
	note_length 6
	note_pitch G#, 4
	note_length 6
	note_pitch A#, 4
	note_length 12
	note_pitch C#, 5
	note_length 6
	note_pitch B_, 4
	note_length 6
	note_pitch A#, 4
	note_length 6
	note_pitch B_, 4
	note_length 6
	note_pitch G#, 4
	note_length 6
	note_pitch A#, 4
	note_length 6
	note_pitch B_, 4
	note_length 12
	note_pitch G#, 4
	note_length 6
	note_pitch A#, 4
	note_length 6
	note_pitch B_, 4
	note_length 6
	note_pitch C#, 5
	note_length 1
	note_pitch D_, 5
	note_length 5
	note_pitch D#, 5
	note_length 6
	note_pitch F#, 4
	note_length 6
	note_pitch D#, 5
	note_length 12
	note_pitch C#, 5
	note_length 6
	rest
	note_length 6
	rest
	note_length 6
	rest
	song_ret

Music_GameOver_Ch2: ; 18a8cf (62:68cf)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	musicd4 37
	duty_cycle_50
	musicd7 0
	musice3 0
Music_GameOver_branch_18a8db: ; 18a8db (62:68db)
	song_call Music_GameOver_branch_18a8e1
	song_jump Music_GameOver_branch_18a8db

Music_GameOver_branch_18a8e1: ; 18a8e1 (62:68e1)
	musicd8 43
	note_length 5
	note_pitch E_, 3
	note_length 1
	continue_note
	note_length 5
	note_pitch G#, 3
	note_length 1
	continue_note
	note_length 5
	note_pitch B_, 3
	note_length 1
	continue_note
	note_length 29
	note_pitch E_, 4
	note_length 1
	continue_note
	note_length 5
	note_pitch D#, 3
	note_length 1
	continue_note
	note_length 5
	note_pitch A#, 3
	note_length 1
	continue_note
	note_length 5
	note_pitch F#, 3
	note_length 1
	continue_note
	note_length 6
	note_pitch D#, 4
	musicd8 233
	note_length 6
	note_pitch D#, 4
	musicd8 43
	note_length 18
	note_pitch G#, 3
	note_length 5
	note_pitch C#, 3
	note_length 1
	continue_note
	note_length 5
	note_pitch E_, 3
	note_length 1
	continue_note
	note_length 5
	note_pitch G#, 3
	note_length 1
	continue_note
	note_length 5
	note_pitch B_, 3
	note_length 1
	continue_note
	note_length 5
	note_pitch C#, 4
	note_length 1
	continue_note
	note_length 5
	note_pitch E_, 4
	note_length 1
	continue_note
	note_length 12
	note_pitch G#, 4
	note_length 12
	note_pitch B_, 4
	note_length 18
	continue_note
	note_length 6
	rest
	note_length 6
	note_pitch B_, 3
	note_length 6
	note_pitch B_, 2
	song_ret

Music_GameOver_Ch3: ; 18a92e (62:692e)
	stereo_panning_both
	wave 7
	musicd8 101
	musicd7 0
	musicd4 35
	musice3 0
Music_GameOver_branch_18a939: ; 18a939 (62:6939)
	song_call Music_GameOver_branch_18a93f
	song_jump Music_GameOver_branch_18a939

Music_GameOver_branch_18a93f: ; 18a93f (62:693f)
	note_length 6
	note_pitch G#, 4
	note_length 6
	note_pitch A#, 4
	note_length 6
	note_pitch B_, 4
	note_length 12
	note_pitch D#, 5
	note_length 6
	note_pitch C#, 5
	note_length 6
	note_pitch A#, 4
	note_length 6
	note_pitch G#, 4
	note_length 6
	note_pitch F#, 4
	note_length 6
	note_pitch G#, 4
	note_length 6
	note_pitch A#, 4
	note_length 12
	note_pitch C#, 5
	note_length 6
	note_pitch B_, 4
	note_length 6
	note_pitch A#, 4
	note_length 6
	note_pitch B_, 4
	note_length 6
	note_pitch G#, 4
	note_length 6
	note_pitch A#, 4
	note_length 6
	note_pitch B_, 4
	note_length 12
	note_pitch G#, 4
	note_length 6
	note_pitch A#, 4
	note_length 6
	note_pitch B_, 4
	note_length 6
	note_pitch C#, 5
	note_length 1
	note_pitch D_, 5
	note_length 5
	note_pitch D#, 5
	note_length 6
	note_pitch F#, 4
	note_length 6
	note_pitch D#, 5
	note_length 12
	note_pitch C#, 5
	note_length 6
	rest
	note_length 6
	note_pitch B_, 3
	note_length 6
	note_pitch B_, 2
	song_ret

; unreferenced ?
Music_GameOver_branch_18a97a: ; 18a97a (62:697a)
	stereo_panning_both
Music_GameOver_branch_18a97b: ; 18a97b (62:697b)
	rest
	note_length 48
	song_jump Music_GameOver_branch_18a97b
