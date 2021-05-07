Music_HereComesLance: ; 18ebd0 (63:6bd0)
	dw Music_HereComesLance_Ch1
	dw Music_HereComesLance_Ch2
	dw Music_HereComesLance_Ch3
	dw Music_HereComesLance_Ch4

Music_HereComesLance_Ch1: ; 18ebd8 (63:6bd8)
	volume 119
	volume_envelope 115
	stereo_panning_both
	musicd6 13
	duty_cycle_12_5
	musice3 0
	musicd4 55
Music_HereComesLance_branch_18ebe4: ; 18ebe4 (63:6be4)
	song_call Music_HereComesLance_branch_18ebea
	song_jump Music_HereComesLance_branch_18ebe4

Music_HereComesLance_branch_18ebea: ; 18ebea (63:6bea)
	musicd8 36
	music01 3
	music8a 138
	music01 3
	music8a 141
	music01 3
	music8a 144
	music01 3
	music8a 147
	music01 3
	music8a 151
	music01 3
	music8a 153
	music01 3
	music8a 156
	music01 3
	music8a 159
	music01 3
	music8a 162
	music01 3
	music8a 165
	music01 3
	music8a 168
	music01 3
	music8a 171
	music01 3
	music8a 174
	music01 3
	music8a 171
	music01 3
	music8a 168
	music01 3
	music8a 165
	musicd8 39
	music01 3
	music8a 141
	music01 3
	music8a 144
	music01 3
	music8a 147
	music01 3
	music8a 151
	music01 3
	music8a 153
	music01 3
	music8a 156
	music01 3
	music8a 159
	music01 3
	music8a 162
	music01 3
	music8a 165
	music01 3
	music8a 168
	music01 3
	music8a 171
	music01 3
	music8a 174
	music01 3
	music8a 177
	music01 3
	music8a 174
	music01 3
	music8a 171
	music01 3
	music8a 168
	musicd8 36
	music01 3
	music8a 139
	music01 3
	music8a 142
	music01 3
	music8a 145
	music01 3
	music8a 148
	music01 3
	music8a 151
	music01 3
	music8a 154
	music01 3
	music8a 157
	music01 3
	music8a 160
	music01 3
	music8a 163
	music01 3
	music8a 166
	music01 3
	music8a 169
	music01 3
	music8a 172
	music01 3
	music8a 175
	music01 3
	music8a 172
	music01 3
	music8a 169
	music01 3
	music8a 166
	musicd8 131
	music01 3
	music8a 142
	music01 3
	music8a 145
	music01 3
	music8a 148
	music01 3
	music8a 151
	music01 3
	music8a 154
	music01 3
	music8a 157
	musicd8 130
	music01 3
	music8a 160
	music01 3
	music8a 163
	music01 3
	music8a 166
	music01 3
	music8a 169
	musicd8 129
	music01 3
	music8a 172
	music01 3
	music8a 175
	music01 3
	music8a 178
	music01 3
	music8a 175
	music01 3
	music8a 172
	music01 3
	music8a 169
	song_ret

Music_HereComesLance_Ch2: ; 18ec77 (63:6c77)
	volume 119
	volume_envelope 115
	stereo_panning_both
	musicd4 55
Music_HereComesLance_branch_18ec7e: ; 18ec7e (63:6c7e)
	song_call Music_HereComesLance_branch_18ec84
	song_jump Music_HereComesLance_branch_18ec7e

Music_HereComesLance_branch_18ec84: ; 18ec84 (63:6c84)
	duty_cycle_50
	musicd8 123
	music01 45
	music8a 188
	music01 3
	musicd3
	music01 45
	music8a 183
	music01 3
	musicd3
	music01 45
	music8a 190
	music01 3
	musicd3
	music01 36
	music8a 184
	music01 12
	musicd3
	song_ret

Music_HereComesLance_Ch3: ; 18ec98 (63:6c98)
	stereo_panning_both
	musicd4 35
	wave 65
	musicd8 27
Music_HereComesLance_branch_18ec9f: ; 18ec9f (63:6c9f)
	song_call Music_HereComesLance_branch_18eca5
	song_jump Music_HereComesLance_branch_18ec9f

Music_HereComesLance_branch_18eca5: ; 18eca5 (63:6ca5)
	wave 66
	musicd4 59
	music01 45
	music8a 180
	music01 3
	musicd3
	wave 67
	musicd4 56
	music01 45
	music8a 174
	music01 3
	musicd3
	wave 66
	musicd4 59
	music01 45
	music8a 181
	music01 3
	musicd3
	wave 63
	musicd4 56
	music01 36
	music8a 178
	music01 12
	musicd3
	song_ret

Music_HereComesLance_Ch4: ; 18ecc6 (63:6cc6)
	stereo_panning_both
Music_HereComesLance_branch_18ecc7: ; 18ecc7 (63:6cc7)
	song_call Music_HereComesLance_branch_18eccd
	song_jump Music_HereComesLance_branch_18ecc7

Music_HereComesLance_branch_18eccd: ; 18eccd (63:6ccd)
	music01 3
	music6d 125
	music01 6
	musicd2
	music01 3
	music6d 125
	music01 6
	musicd2
	music01 3
	music6d 125
	music01 3
	musicd2
	music6d 120
	music01 3
	musicd2
	music6d 120
	music01 3
	music6d 112
	music01 3
	music6d 121
	music01 3
	musicd2
	music6d 120
	music01 3
	music6d 112
	music01 3
	music6d 125
	music01 6
	musicd2
	music01 3
	music6d 125
	music01 6
	musicd2
	music01 3
	music6d 125
	music01 6
	musicd2
	music01 3
	music6d 125
	music01 6
	musicd2
	music01 3
	music6d 121
	music01 3
	music6d 121
	music01 3
	music6d 121
	music01 3
	music6d 121
	music01 3
	music6d 125
	music01 6
	musicd2
	music01 3
	music6d 125
	music01 6
	musicd2
	music01 3
	music6d 125
	music01 3
	musicd2
	music6d 126
	music01 3
	music6d 112
	music01 3
	music6d 121
	music01 3
	music6d 126
	music01 3
	music6d 121
	music01 3
	music6d 127
	music01 3
	music6d 125
	music01 3
	musicd2
	music6d 125
	music01 6
	musicd2
	music01 3
	music6d 125
	music01 6
	musicd2
	music01 3
	music6d 125
	music01 3
	musicd2
	music6d 126
	music01 3
	music6d 126
	music01 3
	music6d 121
	music01 3
	music6d 126
	music01 3
	music6d 127
	music01 3
	musicd2
	music6d 127
	music01 3
	music6d 127
	song_ret
