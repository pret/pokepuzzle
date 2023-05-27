Music_TravellingToTheGyms: ; 1875fd (61:75fd)
	dw Music_TravellingToTheGyms_Ch1
	dw Music_TravellingToTheGyms_Ch2
	dw Music_TravellingToTheGyms_Ch3
	dw $0000

Music_TravellingToTheGyms_Ch1: ; 187605 (61:7605)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	musicd6 19
	musicd7 0
	duty_cycle_75
	musice3 2
	musicd4 55
	musicd8 221
	note_length 12
	rest
Music_TravellingToTheGyms_branch_187617: ; 187617 (61:7617)
	song_call Music_TravellingToTheGyms_branch_18761d
	song_jump Music_TravellingToTheGyms_branch_187617

Music_TravellingToTheGyms_branch_18761d: ; 18761d (61:761d)
	duty_cycle_12_5
	musicd4 55
	musicd8 35
	note_length 12
	rest
	note_length 3
	note_pitch A_, 1
	note_length 15
	rest
	note_length 1
	note_pitch G#, 1
	note_length 8
	note_pitch A_, 1
	note_length 9
	rest
	note_length 12
	rest
	note_length 3
	note_pitch G_, 1
	note_length 15
	rest
	note_length 9
	note_pitch G_, 1
	note_length 9
	rest
	note_length 12
	rest
	note_length 3
	note_pitch A_, 1
	note_length 15
	rest
	note_length 1
	note_pitch F#, 1
	note_length 8
	note_pitch G_, 1
	note_length 9
	rest
	note_length 12
	rest
	note_length 3
	note_pitch G_, 1
	note_length 15
	rest
	note_length 9
	note_pitch G_, 1
	note_length 9
	rest
	note_pitch D#, 2
	note_length 3
	rest
	note_pitch G_, 1
	note_length 15
	rest
	note_length 3
	note_pitch G_, 1
	note_length 3
	rest
	note_length 6
	note_pitch G_, 1
	note_length 6
	rest
	note_pitch D#, 2
	note_length 6
	rest
	note_length 3
	note_pitch G_, 1
	note_length 15
	rest
	note_length 9
	note_pitch G_, 1
	note_length 9
	rest
	note_length 12
	rest
	note_length 3
	note_pitch G_, 1
	note_length 15
	rest
	note_length 9
	note_pitch G_, 1
	note_length 9
	rest
	note_length 12
	rest
	note_length 3
	note_pitch A_, 1
	note_length 15
	rest
	note_length 9
	note_pitch A_, 1
	note_length 3
	rest
	note_length 6
	note_pitch F#, 2
	note_length 12
	rest
	note_length 6
	note_pitch A_, 1
	note_length 12
	rest
	note_length 6
	note_pitch A_, 1
	note_length 12
	rest
	note_length 12
	rest
	note_length 12
	note_pitch D_, 2
	note_length 24
	rest
	note_length 12
	rest
	note_length 3
	note_pitch A_, 1
	note_length 15
	rest
	note_length 1
	note_pitch G#, 1
	note_length 8
	note_pitch A_, 1
	note_length 9
	rest
	note_length 12
	rest
	note_length 3
	note_pitch G_, 1
	note_length 15
	rest
	note_length 9
	note_pitch G_, 1
	note_length 9
	rest
	note_length 12
	rest
	note_length 3
	note_pitch G_, 1
	note_length 15
	rest
	note_length 9
	note_pitch G_, 1
	note_length 9
	rest
	note_length 12
	rest
	note_length 3
	note_pitch G_, 1
	note_length 15
	rest
	note_length 9
	note_pitch G_, 1
	note_length 9
	rest
	note_length 12
	rest
	note_length 3
	note_pitch C_, 2
	note_length 15
	rest
	note_length 9
	note_pitch C_, 2
	note_length 9
	rest
	note_length 12
	rest
	note_length 3
	note_pitch C_, 2
	note_length 15
	rest
	note_length 9
	note_pitch C_, 2
	note_length 9
	rest
	note_length 12
	rest
	note_length 3
	note_pitch A#, 1
	note_length 15
	rest
	note_length 9
	note_pitch A#, 1
	note_length 9
	rest
	note_length 3
	note_pitch D_, 3
	note_length 9
	rest
	note_length 12
	note_pitch D_, 3
	note_length 24
	rest
	song_ret

Music_TravellingToTheGyms_Ch2: ; 1876de (61:76de)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	musicd7 0
	duty_cycle_50
	musicd6 19
	musicd4 55
	musicd8 31
	musicd4 55
	note_length 6
	note_pitch A#, 2
	note_length 6
	note_pitch C_, 3
Music_TravellingToTheGyms_branch_1876f2: ; 1876f2 (61:76f2)
	song_call Music_TravellingToTheGyms_branch_1876f8
	song_jump Music_TravellingToTheGyms_branch_1876f2

Music_TravellingToTheGyms_branch_1876f8: ; 1876f8 (61:76f8)
	note_length 6
	note_pitch D_, 3
	note_length 6
	rest
	note_pitch D_, 3
	note_length 6
	rest
	note_pitch D_, 3
	note_length 6
	continue_note
	musicd8 31
	note_pitch A#, 2
	note_length 6
	note_pitch C_, 3
	note_length 6
	note_pitch D_, 3
	note_length 6
	rest
	note_pitch D_, 3
	note_length 6
	rest
	note_pitch D_, 3
	note_length 6
	continue_note
	musicd8 31
	note_pitch A#, 2
	note_length 6
	note_pitch C_, 3
	note_length 6
	note_pitch D_, 3
	note_length 6
	rest
	note_pitch D_, 3
	note_length 6
	rest
	musicd4 59
	note_length 9
	note_pitch D#, 3
	note_length 9
	continue_note
	musicd4 55
	note_length 3
	note_pitch D_, 3
	note_length 3
	rest
	note_length 24
	note_pitch C_, 3
	note_length 6
	continue_note
	musicd8 31
	note_length 2
	note_pitch C_, 3
	note_length 4
	rest
	note_length 2
	note_pitch D#, 3
	note_length 4
	rest
	note_length 2
	note_pitch G_, 3
	note_length 4
	rest
	musicd4 59
	note_length 12
	note_pitch C_, 4
	note_length 6
	rest
	musicd4 55
	note_length 12
	note_pitch G_, 3
	note_length 6
	continue_note
	musicd8 31
	note_pitch A_, 2
	note_length 6
	note_pitch A#, 2
	note_length 6
	note_pitch C_, 3
	note_length 6
	rest
	note_pitch C_, 3
	note_length 6
	rest
	note_pitch C_, 3
	note_length 6
	rest
	note_pitch A_, 2
	note_length 6
	note_pitch A#, 2
	note_length 6
	note_pitch C_, 3
	note_length 6
	rest
	note_pitch C_, 3
	note_length 6
	rest
	note_pitch C_, 3
	note_length 6
	rest
	note_pitch A_, 2
	note_length 6
	note_pitch A#, 2
	note_length 6
	note_pitch C_, 3
	note_length 6
	rest
	note_pitch C_, 3
	note_length 6
	rest
	note_length 2
	note_pitch D_, 3
	note_length 4
	rest
	note_length 2
	note_pitch C_, 3
	note_length 4
	rest
	note_length 2
	note_pitch C_, 3
	note_length 4
	rest
	note_length 2
	note_pitch D_, 3
	note_length 4
	rest
	note_length 24
	note_pitch A#, 2
	note_length 9
	note_pitch D_, 3
	note_length 15
	rest
	note_length 3
	note_pitch G_, 3
	note_length 9
	rest
	note_length 24
	note_pitch G_, 3
	note_length 12
	note_pitch F#, 3
	note_length 18
	note_pitch F_, 3
	note_length 6
	rest
	duty_cycle_12_5
	musicd8 206
	duty_cycle_75
	musicd8 31
	note_length 12
	note_pitch F_, 5
	note_length 12
	continue_note
	musicd4 55
	note_pitch D_, 5
	note_length 12
	continue_note
	duty_cycle_12_5
	musicd8 206
	duty_cycle_75
	musicd8 31
	note_length 12
	note_pitch A#, 4
	note_length 12
	continue_note
	note_length 2
	note_pitch C_, 5
	note_length 10
	rest
	note_length 2
	note_pitch C_, 5
	note_length 4
	rest
	note_length 6
	note_pitch G_, 4
	note_length 6
	continue_note
	duty_cycle_50
	musicd8 31
	note_pitch C_, 3
	note_length 3
	note_pitch D#, 3
	note_length 3
	rest
	note_pitch G_, 3
	note_length 3
	rest
	note_length 3
	note_pitch C_, 4
	note_length 3
	rest
	note_length 6
	note_pitch C_, 4
	note_length 6
	rest
	note_length 18
	note_pitch C_, 4
	note_length 12
	rest
	note_length 30
	rest
	note_length 6
	note_pitch G_, 3
	note_length 3
	note_pitch C_, 4
	note_length 3
	rest
	note_pitch D_, 4
	note_length 3
	rest
	note_pitch D#, 4
	note_length 3
	rest
	note_length 6
	note_pitch G_, 4
	note_length 6
	rest
	note_length 3
	note_pitch F_, 4
	note_length 3
	rest
	note_length 6
	rest
	note_length 3
	note_pitch A_, 3
	note_length 3
	rest
	note_length 6
	rest
	musicd8 31
	note_length 6
	note_pitch A#, 3
	musicd8 5
	note_length 6
	note_pitch A#, 3
	musicd8 196
	note_length 18
	note_pitch A#, 3
	musicd8 235
	note_length 24
	note_pitch A#, 3
	note_length 36
	rest
	musicd8 31
	note_length 6
	note_pitch A#, 2
	note_length 6
	note_pitch C_, 3
	song_ret

Music_TravellingToTheGyms_Ch3: ; 187802 (61:7802)
	stereo_panning_both
	musice3 0
	musicd8 104
	musicd4 56
	note_length 12
	rest
Music_TravellingToTheGyms_branch_18780b: ; 18780b (61:780b)
	musicd7 12
	wave 59
	song_call Music_TravellingToTheGyms_branch_187817
	song_jump Music_TravellingToTheGyms_branch_18780b

; unreferenced ?
Music_TravellingToTheGyms_branch_187815: ; 187815 (61:7815)
	note_length 12
	rest
Music_TravellingToTheGyms_branch_187817: ; 187817 (61:7817)
	note_length 12
	note_pitch A#, 0
	note_length 3
	note_pitch D_, 2
	note_length 3
	rest
	note_length 6
	note_pitch A#, 0
	note_length 6
	note_pitch F_, 0
	note_length 9
	note_pitch D_, 2
	note_length 3
	rest
	note_length 6
	note_pitch F_, 0
	note_length 12
	note_pitch A#, 0
	note_length 3
	note_pitch D_, 2
	note_length 3
	rest
	note_length 6
	note_pitch A#, 0
	note_length 6
	note_pitch F_, 0
	note_length 9
	note_pitch D_, 2
	note_length 3
	rest
	note_length 6
	note_pitch F_, 0
	note_length 12
	note_pitch A#, 0
	note_length 3
	note_pitch D_, 2
	note_length 3
	rest
	note_length 6
	note_pitch A#, 0
	note_length 6
	note_pitch F_, 0
	note_length 6
	note_pitch D_, 2
	note_length 9
	note_pitch F_, 0
	note_length 3
	rest
	note_length 12
	note_pitch C_, 1
	note_length 3
	note_pitch C_, 2
	note_length 3
	rest
	note_length 6
	note_pitch C_, 1
	note_length 6
	note_pitch G_, 0
	note_length 9
	note_pitch D#, 2
	note_length 3
	rest
	note_length 6
	note_pitch G_, 0
	note_length 12
	note_pitch C_, 1
	note_length 3
	note_pitch D#, 2
	note_length 3
	rest
	note_length 6
	note_pitch C_, 1
	note_length 6
	note_pitch G_, 0
	note_length 3
	note_pitch D#, 2
	note_length 3
	rest
	note_length 6
	note_pitch C_, 2
	note_length 6
	note_pitch D_, 2
	note_length 12
	note_pitch C_, 1
	note_length 3
	note_pitch D#, 2
	note_length 3
	rest
	note_length 6
	note_pitch C_, 1
	note_length 6
	note_pitch G_, 0
	note_length 9
	note_pitch D#, 2
	note_length 3
	rest
	note_length 6
	note_pitch G_, 0
	note_length 12
	note_pitch F_, 0
	note_length 3
	note_pitch D#, 2
	note_length 3
	rest
	note_length 6
	note_pitch F_, 0
	note_length 6
	note_pitch C_, 1
	note_length 9
	note_pitch D#, 2
	note_length 3
	rest
	note_length 6
	note_pitch F_, 0
	note_length 12
	note_pitch F_, 0
	note_length 3
	note_pitch D#, 2
	note_length 3
	rest
	note_length 6
	note_pitch F_, 0
	note_length 6
	note_pitch F_, 0
	note_length 9
	note_pitch G_, 2
	note_length 3
	rest
	note_length 6
	note_pitch F_, 0
	note_length 12
	note_pitch A#, 0
	note_length 6
	note_pitch F_, 2
	note_length 6
	note_pitch A#, 0
	note_length 6
	note_pitch F_, 0
	note_length 6
	note_pitch F_, 2
	note_length 3
	note_pitch F_, 0
	note_length 3
	rest
	note_length 6
	note_pitch A_, 0
	note_length 6
	note_pitch A#, 0
	note_length 6
	rest
	note_length 12
	note_pitch A#, 0
	note_length 6
	rest
	note_length 3
	note_pitch A#, 0
	note_length 3
	rest
	note_length 12
	note_pitch F_, 0
	note_length 12
	note_pitch A#, 0
	note_length 3
	note_pitch D_, 2
	note_length 3
	rest
	note_length 6
	note_pitch A#, 0
	note_length 6
	note_pitch F_, 0
	note_length 9
	note_pitch D_, 2
	note_length 3
	rest
	note_length 6
	note_pitch F_, 0
	note_length 12
	note_pitch A#, 0
	note_length 3
	note_pitch D_, 2
	note_length 3
	rest
	note_length 6
	note_pitch A#, 0
	note_length 6
	note_pitch F_, 0
	note_length 9
	note_pitch D_, 2
	note_length 3
	rest
	note_length 6
	note_pitch F_, 0
	note_length 12
	note_pitch C_, 1
	note_length 3
	note_pitch C_, 2
	note_length 3
	rest
	note_length 6
	note_pitch C_, 1
	note_length 6
	note_pitch G_, 0
	note_length 9
	note_pitch D#, 2
	note_length 3
	rest
	note_length 6
	note_pitch G_, 0
	note_length 12
	note_pitch C_, 1
	note_length 3
	note_pitch C_, 2
	note_length 3
	rest
	note_length 6
	note_pitch C_, 1
	note_length 6
	note_pitch G_, 0
	note_length 9
	note_pitch D#, 2
	note_length 3
	rest
	note_length 6
	note_pitch G_, 0
	note_length 12
	note_pitch F_, 0
	note_length 3
	note_pitch D#, 2
	note_length 3
	rest
	note_length 6
	note_pitch F_, 0
	note_length 6
	note_pitch C_, 1
	note_length 9
	note_pitch D#, 2
	note_length 3
	rest
	note_length 6
	note_pitch G_, 0
	note_length 12
	note_pitch F_, 0
	note_length 3
	note_pitch D#, 2
	note_length 3
	rest
	note_length 6
	note_pitch F_, 0
	note_length 6
	note_pitch C_, 1
	note_length 9
	note_pitch D#, 2
	note_length 3
	rest
	note_length 6
	note_pitch C_, 1
	note_length 12
	note_pitch A#, 0
	note_length 3
	note_pitch D_, 2
	note_length 3
	rest
	note_length 6
	note_pitch A#, 0
	note_length 6
	note_pitch F_, 0
	note_length 9
	note_pitch D_, 2
	note_length 3
	rest
	note_pitch F_, 0
	note_length 3
	rest
	note_pitch A#, 0
	note_length 9
	rest
	note_length 12
	note_pitch A#, 0
	note_length 6
	rest
	note_length 3
	note_pitch G_, 0
	note_length 3
	rest
	note_length 12
	note_pitch F_, 0
	song_ret

; unreferenced ?
Music_TravellingToTheGyms_branch_187936: ; 187936 (61:7936)
	stereo_panning_both
	note_length 12
	rest
Music_TravellingToTheGyms_branch_187939: ; 187939 (61:7939)
	note_length 6
	noise 11
	note_length 6
	noise 13
	song_jump Music_TravellingToTheGyms_branch_187939
