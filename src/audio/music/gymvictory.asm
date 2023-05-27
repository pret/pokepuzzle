Music_GymVictory: ; 188be2 (62:4be2)
	dw Music_GymVictory_Ch1
	dw Music_GymVictory_Ch2
	dw Music_GymVictory_Ch3
	dw $0000

Music_GymVictory_Ch1: ; 188bea (62:4bea)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	musicd6 14
	musicd7 0
	duty_cycle_50
	musicd4 55
	musicd8 132
	duty_cycle_50
	musicd4 55
	musicd8 209
	note_length 3
	note_pitch G_, 3
	musicd8 206
	note_length 3
	note_pitch D#, 3
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D#, 2
	note_length 3
	note_pitch D_, 2
	musicd8 207
	note_length 3
	note_pitch C_, 2
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch D#, 3
	musicd8 209
	note_length 3
	note_pitch C_, 3
	note_length 4
	note_pitch A#, 3
	note_length 4
	note_pitch G_, 3
	note_length 4
	note_pitch D#, 3
	musicd8 131
	note_length 4
	note_pitch C_, 3
	note_length 4
	note_pitch F_, 1
	note_length 4
	note_pitch C_, 2
	note_length 4
	note_pitch G_, 2
	note_length 4
	note_pitch A_, 2
	note_length 5
	note_pitch C_, 3
	note_length 4
	note_pitch D#, 3
	note_length 4
	note_pitch G_, 3
	note_length 4
	note_pitch A_, 3
	note_length 4
	note_pitch C_, 4
	note_length 4
	note_pitch D#, 4
	note_length 4
	note_pitch G_, 4
	musicd8 129
	note_length 12
	note_pitch A_, 4
	musicd8 233
	note_length 8
	note_pitch A_, 4
	song_end

Music_GymVictory_Ch2: ; 188c44 (62:4c44)
	volume 7, 7
	volume_envelope 7, 3
	stereo_panning_both
	musicd4 55
	musicd8 129
	musicd4 55
	duty_cycle_50
	musice3 2
	note_length 2
	note_pitch G_, 2
	note_length 3
	note_pitch D#, 2
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch C_, 2
	note_length 3
	note_pitch G_, 1
	note_length 3
	note_pitch D#, 1
	note_length 1
	rest
	note_length 3
	note_pitch D_, 1
	note_length 3
	note_pitch C#, 1
	note_length 3
	note_pitch A_, 2
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D#, 2
	note_length 3
	note_pitch C_, 2
	note_length 1
	rest
	note_length 4
	note_pitch A#, 2
	note_length 4
	note_pitch G_, 2
	note_length 4
	note_pitch D#, 2
	musicd8 226
	note_length 4
	note_pitch C_, 2
	note_length 4
	note_pitch F_, 0
	note_length 4
	note_pitch C#, 1
	note_length 4
	note_pitch G_, 1
	note_length 4
	note_pitch A_, 1
	note_length 4
	note_pitch C_, 2
	musicd8 227
	note_length 4
	note_pitch D#, 2
	note_length 4
	note_pitch G_, 2
	note_length 4
	note_pitch A_, 2
	note_length 4
	note_pitch C_, 3
	note_length 4
	note_pitch D#, 3
	note_length 4
	note_pitch G_, 3
	musicd8 242
	musice3 -1
	note_length 24
	note_pitch A_, 3
	song_end

Music_GymVictory_Ch3: ; 188c97 (62:4c97)
	stereo_panning_both
	musice3 1
	wave 60
	note_length 3
	rest
	musicd8 103
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch D#, 3
	note_length 3
	note_pitch D_, 3
	note_length 3
	note_pitch C_, 3
	note_length 3
	note_pitch G_, 2
	note_length 3
	note_pitch D#, 2
	note_length 3
	note_pitch D_, 2
	note_length 3
	note_pitch C_, 2
	note_length 3
	note_pitch A_, 3
	note_length 3
	note_pitch G_, 3
	note_length 3
	note_pitch D#, 3
	note_length 3
	note_pitch C_, 3
	musicd8 104
	note_length 4
	note_pitch A#, 3
	note_length 4
	note_pitch G_, 3
	note_length 4
	note_pitch D#, 3
	note_length 4
	note_pitch C_, 3
	note_length 4
	note_pitch F_, 1
	note_length 4
	note_pitch C_, 2
	note_length 4
	note_pitch G_, 2
	note_length 4
	note_pitch A_, 2
	note_length 4
	note_pitch C_, 3
	note_length 4
	note_pitch D#, 3
	note_length 4
	note_pitch G_, 3
	note_length 4
	note_pitch A_, 3
	note_length 4
	note_pitch C_, 4
	note_length 4
	note_pitch D#, 4
	note_length 4
	note_pitch G_, 4
	note_length 8
	note_pitch A_, 4
	note_length 1
	rest
	note_length 16
	rest
	song_end
	song_end
