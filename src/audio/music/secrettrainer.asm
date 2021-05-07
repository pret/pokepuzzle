Music_SecretTrainer: ; 18fae0 (63:7ae0)
	dw Music_SecretTrainer_Ch1
	dw Music_SecretTrainer_Ch2
	dw Music_SecretTrainer_Ch3
	dw Music_SecretTrainer_Ch4

Music_SecretTrainer_Ch1: ; 18fae8 (63:7ae8)
	volume 119
	volume_envelope 115
	stereo_panning_both
	musicd6 17
	musicd7 0
	duty_cycle_12_5
	musice3 2
	musicd8 221
	song_call Music_SecretTrainer_branch_18faff
Music_SecretTrainer_branch_18faf9: ; 18faf9 (63:7af9)
	song_call Music_SecretTrainer_branch_18fb11
	song_jump Music_SecretTrainer_branch_18faf9

Music_SecretTrainer_branch_18faff: ; 18faff (63:7aff)
	duty_cycle_12_5
	musicd8 205
	musicd4 55
	musicd8 39
	music01 48
	musicd2
	music01 3
	music8a 149
	music01 3
	music8a 161
	music01 3
	music8a 149
	music01 3
	music8a 161
	song_ret

Music_SecretTrainer_branch_18fb11: ; 18fb11 (63:7b11)
	musicd8 39
	music01 3
	music8a 161
	music01 9
	musicd3
	music01 3
	music8a 161
	music01 3
	musicd3
	music01 6
	musicd2
	music01 3
	music8a 161
	music01 3
	musicd3
	music01 6
	musicd2
	music01 3
	music8a 161
	music01 3
	musicd3
	music01 6
	musicd2
	music01 3
	music8a 162
	music01 9
	musicd3
	music01 3
	music8a 162
	music01 3
	musicd3
	music01 6
	musicd2
	music01 3
	music8a 162
	music01 9
	musicd3
	music01 3
	music8a 162
	music01 3
	musicd3
	music01 6
	musicd2
	music01 3
	music8a 164
	music01 9
	musicd3
	music01 3
	music8a 164
	music01 3
	musicd3
	music01 6
	musicd2
	music01 3
	music8a 164
	music01 3
	musicd3
	music01 6
	musicd2
	music01 3
	music8a 164
	music01 3
	musicd3
	music01 6
	musicd2
	music01 3
	music8a 162
	music01 9
	musicd3
	music01 3
	music8a 162
	music01 3
	musicd3
	music01 6
	musicd2
	music01 3
	music8a 162
	music01 3
	musicd3
	music01 6
	musicd2
	music01 3
	music8a 162
	music01 9
	musicd2
	song_ret

Music_SecretTrainer_Ch2: ; 18fb68 (63:7b68)
	volume 119
	volume_envelope 115
	stereo_panning_both
	duty_cycle_50
	musicd4 55
	duty_cycle_50
	musicd8 179
	musicd4 55
	song_call Music_SecretTrainer_branch_18fb7e
Music_SecretTrainer_branch_18fb78: ; 18fb78 (63:7b78)
	song_call Music_SecretTrainer_branch_18fb94
	song_jump Music_SecretTrainer_branch_18fb78

Music_SecretTrainer_branch_18fb7e: ; 18fb7e (63:7b7e)
	duty_cycle_75
	musicd4 55
	musicd8 39
	music01 3
	music8a 173
	music01 3
	musicd2
	music01 24
	music8a 185
	music01 18
	musicd2
	music01 3
	music8a 173
	music01 3
	music8a 171
	music01 3
	music8a 167
	music01 3
	music8a 165
	song_ret

Music_SecretTrainer_branch_18fb94: ; 18fb94 (63:7b94)
	duty_cycle_50
	musicd8 180
	music01 3
	music8a 178
	music01 15
	musicd2
	music01 3
	music8a 173
	music01 15
	musicd2
	musicd4 58
	music01 3
	music8a 178
	music01 9
	musicd2
	musicd4 55
	music01 3
	music8a 179
	music01 15
	musicd2
	music01 3
	music8a 174
	music01 15
	musicd2
	music01 3
	music8a 179
	music01 3
	music8a 181
	music01 3
	music8a 183
	music01 3
	music8a 186
	musicd4 58
	musicd8 181
	music01 24
	music8a 188
	musicd4 55
	music01 12
	music8a 185
	music01 12
	musicd3
	music01 24
	music8a 183
	music01 12
	music8a 179
	music01 6
	musicd3
	music01 3
	music8a 176
	music01 3
	music8a 177
	song_ret

Music_SecretTrainer_Ch3: ; 18fbce (63:7bce)
	stereo_panning_both
	musice3 0
	musicd8 27
	musicd7 12
	wave 61
	musicd4 55
	song_call Music_SecretTrainer_branch_18fbe2
Music_SecretTrainer_branch_18fbdc: ; 18fbdc (63:7bdc)
	song_call Music_SecretTrainer_branch_18fbe7
	song_jump Music_SecretTrainer_branch_18fbdc

Music_SecretTrainer_branch_18fbe2: ; 18fbe2 (63:7be2)
	music01 48
	musicd2
	music01 12
	musicd2
	song_ret

Music_SecretTrainer_branch_18fbe7: ; 18fbe7 (63:7be7)
	wave 61
	music01 3
	music8a 166
	music01 9
	musicd2
	wave 63
	music01 3
	music8a 166
	music01 9
	musicd2
	music01 3
	music8a 166
	music01 9
	musicd2
	music01 3
	music8a 166
	music01 9
	musicd2
	wave 61
	music01 3
	music8a 167
	music01 9
	musicd2
	wave 63
	music01 3
	music8a 167
	music01 9
	musicd2
	music01 3
	music8a 167
	music01 9
	musicd2
	music01 3
	music8a 167
	music01 9
	musicd2
	wave 61
	music01 3
	music8a 169
	music01 9
	musicd2
	wave 63
	music01 3
	music8a 169
	music01 9
	musicd2
	music01 3
	music8a 169
	music01 9
	musicd2
	music01 3
	music8a 169
	music01 9
	musicd2
	wave 61
	music01 3
	music8a 167
	music01 9
	musicd2
	wave 63
	music01 3
	music8a 167
	music01 9
	musicd2
	music01 3
	music8a 167
	music01 9
	musicd2
	music01 3
	music8a 167
	music01 3
	musicd3
	music01 6
	musicd2
	song_ret

Music_SecretTrainer_Ch4: ; 18fc3a (63:7c3a)
	stereo_panning_both
	song_call Music_SecretTrainer_branch_18fc44
Music_SecretTrainer_branch_18fc3e: ; 18fc3e (63:7c3e)
	song_call Music_SecretTrainer_branch_18fc49
	song_jump Music_SecretTrainer_branch_18fc3e

Music_SecretTrainer_branch_18fc44: ; 18fc44 (63:7c44)
	music01 48
	musicd2
	music01 12
	musicd2
	song_ret

Music_SecretTrainer_branch_18fc49: ; 18fc49 (63:7c49)
	music01 3
	music6d 126
	music01 9
	musicd2
	music01 3
	music6d 128
	music01 9
	musicd2
	music01 3
	music6d 128
	music01 9
	musicd2
	music01 3
	music6d 126
	music01 3
	music6d 128
	music01 3
	music6d 128
	music01 3
	music6d 126
	music01 3
	music6d 126
	music01 9
	musicd2
	music01 3
	music6d 126
	music01 9
	musicd2
	music01 3
	music6d 128
	music01 9
	musicd2
	music01 3
	music6d 126
	music01 3
	music6d 128
	music01 3
	music6d 128
	music01 3
	music6d 126
	music01 3
	music6d 126
	music01 9
	musicd2
	music01 3
	music6d 126
	music01 9
	musicd2
	music01 3
	music6d 128
	music01 9
	musicd2
	music01 3
	music6d 126
	music01 3
	music6d 128
	music01 3
	music6d 128
	music01 3
	music6d 126
	music01 3
	music6d 126
	music01 9
	musicd2
	music01 3
	music6d 126
	music01 9
	musicd2
	music01 3
	music6d 128
	music01 9
	musicd2
	music01 3
	music6d 128
	music01 3
	music6d 128
	music01 3
	music6d 126
	music01 3
	music6d 127
	song_ret
