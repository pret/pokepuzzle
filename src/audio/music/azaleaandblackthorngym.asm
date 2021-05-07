Music_AzaleaAndBlackthornGym: ; 185d0a (61:5d0a)
	dw Music_AzaleaAndBlackthornGym_Ch1
	dw Music_AzaleaAndBlackthornGym_Ch2
	dw Music_AzaleaAndBlackthornGym_Ch3
	dw Music_AzaleaAndBlackthornGym_Ch4

Music_AzaleaAndBlackthornGym_Ch1: ; 185d12 (61:5d12)
	volume 119
	volume_envelope 115
	stereo_panning_both
	musicd6 14
	musicd7 0
	duty_cycle_12_5
	musice3 254
	musicd4 55
	musicd8 221
	musice3 255
	song_call Music_AzaleaAndBlackthornGym_branch_185d64
	musice3 254
	song_call Music_AzaleaAndBlackthornGym_branch_185d64
	musice3 253
	song_call Music_AzaleaAndBlackthornGym_branch_185d64
	musice3 252
	song_call Music_AzaleaAndBlackthornGym_branch_185d64
	musice3 253
	song_call Music_AzaleaAndBlackthornGym_branch_185d64
Music_AzaleaAndBlackthornGym_branch_185d3b: ; 185d3b (61:5d3b)
	musice3 254
	song_call Music_AzaleaAndBlackthornGym_branch_185d64
	musice3 255
	song_call Music_AzaleaAndBlackthornGym_branch_185d64
	song_call Music_AzaleaAndBlackthornGym_branch_185d64
	musice3 0
	song_call Music_AzaleaAndBlackthornGym_branch_185da7
	musice3 254
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
	music01 3
	music8a 163
	music01 3
	musicd2
	musicd8 218
	music8a 163
	music01 9
	musicd2
	musicd8 220
	music01 3
	music8a 163
	music01 3
	musicd2
	musicd8 219
	music8a 165
	music01 3
	musicd2
	musicd8 218
	music8a 165
	music01 9
	musicd2
	musicd8 220
	music01 3
	music8a 165
	music01 3
	musicd2
	musicd8 219
	music8a 167
	music01 3
	musicd2
	musicd8 219
	music8a 167
	music01 9
	musicd2
	musicd8 221
	music01 3
	music8a 167
	music01 3
	musicd2
	musicd8 220
	music8a 165
	music01 3
	musicd2
	musicd8 219
	music8a 165
	music01 9
	musicd2
	musicd8 221
	music01 3
	music8a 165
	music01 3
	musicd2
	song_ret

Music_AzaleaAndBlackthornGym_branch_185da7: ; 185da7 (61:5da7)
	music8a 163
	music01 3
	musicd2
	music8a 163
	music01 9
	musicd2
	music01 3
	music8a 163
	music01 3
	musicd2
	music8a 165
	music01 3
	musicd2
	music8a 165
	music01 9
	musicd2
	music01 3
	music8a 165
	music01 3
	musicd2
	music8a 167
	music01 21
	musicd2
	music01 3
	music8a 163
	music01 3
	music8a 165
	music01 3
	music8a 167
	music01 3
	music8a 170
	music01 3
	music8a 175
	music01 3
	music8a 177
	music01 3
	music8a 179
	music01 3
	music8a 182
	music01 12
	music8a 144
	music01 6
	musicd2
	music01 30
	music8a 144
	music01 24
	musicd3
	music01 24
	musicd2
	music01 12
	music8a 143
	music01 6
	musicd2
	music01 30
	music8a 143
	music01 9
	musicd3
	music01 6
	musicd2
	music01 3
	music8a 158
	music01 3
	music8a 160
	music01 3
	music8a 163
	music01 3
	music8a 165
	music01 2
	music8a 170
	music01 3
	music8a 172
	music01 3
	music8a 175
	music01 4
	music8a 177
	music01 3
	music8a 182
	music01 3
	music8a 187
	music01 3
	music8a 194
	music01 3
	musicd2
	musicd8 221
	music01 3
	musicd2
	music8a 141
	music01 3
	musicd2
	music8a 141
	music01 3
	musicd2
	music8a 141
	music01 3
	musicd2
	music8a 141
	music01 3
	musicd2
	music8a 141
	music01 3
	musicd2
	music8a 146
	music01 3
	musicd2
	music8a 146
	music01 3
	musicd2
	music8a 146
	music01 3
	musicd2
	music8a 146
	music01 3
	musicd2
	music8a 146
	music01 3
	musicd2
	music8a 146
	music01 3
	musicd2
	music8a 146
	music01 3
	musicd2
	music01 12
	music8a 147
	music01 6
	musicd2
	music01 12
	music8a 148
	music01 6
	musicd2
	music01 24
	music8a 147
	music01 6
	musicd2
	music01 9
	music8a 146
	music01 3
	musicd2
	music01 6
	music8a 146
	music01 12
	music8a 145
	music01 6
	musicd2
	music8a 145
	music01 6
	musicd2
	music8a 144
	music01 6
	music8a 151
	music01 6
	music8a 160
	music01 24
	music8a 172
	music01 6
	musicd2
	music8a 145
	music01 6
	music8a 151
	music01 6
	music8a 160
	music01 24
	music8a 172
	music01 6
	music8a 182
	music01 6
	music8a 146
	music01 6
	music8a 151
	music01 6
	music8a 153
	music01 6
	music8a 158
	music01 6
	music8a 163
	music01 6
	music8a 165
	music01 6
	music8a 170
	music01 6
	music8a 146
	music01 9
	music8a 170
	music01 9
	musicd2
	music01 6
	music8a 168
	music01 6
	musicd2
	music01 12
	music8a 170
	music01 6
	musicd2
	song_ret

Music_AzaleaAndBlackthornGym_Ch2: ; 185e6a (61:5e6a)
	volume 119
	volume_envelope 115
	stereo_panning_both
	musicd6 14
	musicd7 0
	duty_cycle_50
	musicd4 55
	musicd8 209
	music01 48
	musicd2
	music01 48
	musicd2
	duty_cycle_50
	musicd8 211
	music01 3
	music8a 175
	music01 3
	musicd2
	music8a 170
	music01 3
	musicd2
	music8a 174
	music01 3
	musicd2
	music8a 175
	music01 9
	musicd2
	music01 3
	music8a 177
	music01 9
	musicd2
	music01 3
	music8a 179
	music01 3
	musicd2
	musicd8 57
	music01 1
	music8a 181
	music01 17
	music8a 182
	musicd8 226
	music01 3
	music8a 179
	music01 9
	musicd2
	music01 3
	music8a 177
	music01 9
	musicd2
	music01 3
	music8a 179
	music01 3
	musicd2
	music01 6
	music8a 175
	duty_cycle_12_5
	musicd8 224
	music01 3
	music8a 187
	music01 3
	musicd2
	musicd8 221
	music8a 194
	music01 3
	musicd2
	music8a 199
	music01 3
	musicd2
	music8a 198
	music01 9
	musicd2
	musicd8 224
	music01 3
	music8a 194
	music01 9
	musicd2
	music01 1
	music8a 195
	music01 3
	music8a 196
	music01 8
	musicd2
	music01 3
	music8a 192
	music01 9
	musicd2
	music01 18
	music8a 194
	duty_cycle_50
	musicd8 227
	music01 3
	music8a 191
	music01 3
	music8a 192
	musicd8 56
	music01 18
	music8a 194
	music01 30
	musicd3
	music01 12
	musicd2
	musicd8 221
	music01 3
	music8a 187
	music01 3
	music8a 187
	musicd8 224
	music01 3
	music8a 199
	music01 3
	musicd2
	musicd8 221
	music8a 187
	music01 3
	music8a 187
	musicd8 224
	music01 3
	music8a 199
	music01 3
	musicd2
	musicd8 224
	music8a 187
	music01 3
	music8a 187
	musicd8 228
	music01 3
	music8a 199
	music01 3
	musicd2
	music01 48
	musicd2
	musicd8 56
	music01 12
	musicd2
	musicd8 221
	music01 3
	music8a 151
	music01 3
	music8a 151
	musicd8 224
	music01 3
	music8a 163
	music01 3
	musicd2
	musicd8 221
	music8a 151
	music01 3
	music8a 151
	musicd8 225
	music01 3
	music8a 163
	music01 3
	musicd2
	musicd8 224
	music8a 151
	music01 3
	music8a 151
	musicd8 227
	music01 3
	music8a 163
	music01 3
	musicd2
Music_AzaleaAndBlackthornGym_branch_185f27: ; 185f27 (61:5f27)
	musicd4 55
	song_call Music_AzaleaAndBlackthornGym_branch_185f2f
	song_jump Music_AzaleaAndBlackthornGym_branch_185f27

Music_AzaleaAndBlackthornGym_branch_185f2f: ; 185f2f (61:5f2f)
	duty_cycle_50
	musicd8 225
	music8a 175
	music01 3
	musicd2
	music8a 170
	music01 3
	musicd2
	music8a 174
	music01 3
	musicd2
	music8a 175
	music01 9
	musicd2
	music01 3
	music8a 177
	music01 9
	musicd2
	music01 3
	music8a 179
	music01 3
	musicd2
	musicd8 57
	music01 1
	music8a 181
	music01 17
	music8a 182
	musicd8 226
	music01 3
	music8a 179
	music01 9
	musicd2
	music01 3
	music8a 177
	music01 9
	musicd2
	music01 3
	music8a 179
	music01 3
	musicd2
	duty_cycle_50
	musicd8 212
	music01 6
	music8a 175
	music01 3
	music8a 187
	music01 3
	musicd2
	music8a 194
	music01 3
	musicd2
	music8a 199
	music01 3
	musicd2
	music8a 198
	music01 9
	musicd2
	music01 3
	music8a 194
	music01 9
	musicd2
	duty_cycle_50
	music01 3
	music8a 196
	music01 9
	musicd2
	music01 3
	music8a 203
	music01 9
	musicd2
	music01 3
	music8a 191
	music01 9
	musicd2
	music01 3
	music8a 198
	music01 9
	musicd2
	musicd8 57
	music01 24
	music8a 194
	duty_cycle_12_5
	musicd8 212
	music01 3
	music8a 187
	music01 3
	music8a 187
	music01 3
	music8a 199
	music01 3
	musicd2
	music8a 187
	music01 3
	music8a 187
	music01 3
	music8a 199
	music01 3
	musicd2
	music8a 151
	music01 3
	music8a 151
	music01 3
	music8a 163
	music01 3
	musicd2
	music8a 151
	music01 3
	music8a 151
	music01 3
	music8a 163
	music01 3
	musicd2
	music8a 187
	music01 3
	music8a 189
	music01 3
	music8a 187
	music01 3
	music8a 189
	music01 3
	music8a 187
	music01 3
	music8a 189
	music01 3
	music8a 187
	music01 3
	music8a 189
	musicd8 250
	music01 3
	music8a 191
	music01 3
	music8a 187
	music01 3
	music8a 184
	music01 3
	music8a 182
	music01 3
	music8a 179
	music01 3
	music8a 175
	music01 3
	music8a 172
	music01 3
	music8a 170
	music01 3
	music8a 167
	music01 3
	music8a 163
	music01 3
	music8a 160
	music01 3
	music8a 158
	music01 3
	music8a 155
	music01 3
	music8a 151
	music01 3
	music8a 148
	music01 3
	music8a 146
	duty_cycle_50
	music01 24
	musicd2
	musicd8 247
	music01 3
	music8a 163
	music01 3
	music8a 165
	music01 3
	music8a 167
	music01 3
	music8a 170
	music01 3
	music8a 175
	music01 3
	music8a 177
	music01 3
	music8a 179
	music01 3
	music8a 182
	musicd8 57
	duty_cycle_50
	music01 24
	music8a 175
	music01 24
	musicd2
	music01 6
	music8a 177
	music01 6
	music8a 175
	music01 6
	music8a 174
	music01 6
	music8a 182
	music01 6
	musicd2
	music8a 180
	music01 6
	musicd2
	music8a 179
	music01 12
	music8a 177
	music01 6
	musicd2
	music01 24
	music8a 177
	music01 6
	musicd2
	music8a 177
	music01 3
	music8a 179
	music01 3
	musicd2
	music8a 177
	music01 3
	musicd2
	music01 12
	music8a 175
	music01 18
	musicd2
	music01 12
	music8a 175
	music01 6
	musicd2
	music01 12
	music8a 175
	music01 6
	musicd2
	music01 9
	music8a 175
	music01 3
	musicd2
	music01 6
	music8a 177
	music01 6
	music8a 175
	music01 6
	music8a 174
	music01 6
	music8a 182
	music01 6
	musicd2
	music8a 183
	music01 6
	musicd2
	music01 3
	music8a 186
	music01 3
	musicd2
	music01 6
	music8a 186
	music01 6
	music8a 187
	music01 6
	music8a 186
	music01 6
	music8a 179
	music01 6
	musicd2
	music8a 177
	music01 6
	musicd2
	music01 6
	music8a 175
	music01 6
	musicd3
	music01 12
	musicd2
	music01 18
	music8a 163
	music01 12
	musicd2
	music01 6
	music8a 179
	music01 6
	music8a 177
	music01 6
	music8a 175
	music01 6
	music8a 179
	music01 6
	musicd2
	music8a 177
	music01 6
	musicd2
	music8a 175
	music01 6
	music8a 179
	music01 6
	music8a 177
	music01 6
	music8a 175
	music01 6
	music8a 179
	music01 6
	musicd2
	music8a 184
	music01 6
	musicd2
	music8a 186
	music01 24
	music8a 182
	music01 12
	musicd2
	music8a 177
	music01 9
	music8a 174
	music01 9
	musicd2
	music01 6
	music8a 172
	music01 6
	musicd2
	music01 12
	music8a 174
	music01 6
	musicd2
	music01 48
	musicd2
	music01 48
	musicd2
	music01 12
	musicd2
	music01 3
	music8a 187
	music01 3
	music8a 189
	music01 3
	music8a 187
	music01 3
	music8a 189
	music01 3
	music8a 187
	music01 3
	music8a 189
	music01 3
	music8a 187
	music01 3
	music8a 189
	music01 3
	music8a 187
	music01 3
	music8a 189
	music01 3
	music8a 187
	music01 3
	music8a 189
	musicd8 250
	music01 3
	music8a 191
	music01 3
	music8a 187
	music01 3
	music8a 184
	music01 3
	music8a 182
	music01 3
	music8a 179
	music01 3
	music8a 175
	music01 3
	music8a 172
	music01 3
	music8a 170
	music01 3
	music8a 167
	music01 3
	music8a 163
	music01 3
	music8a 160
	music01 3
	music8a 158
	music01 3
	music8a 155
	music01 3
	music8a 151
	music01 3
	music8a 148
	music01 3
	music8a 146
	musicd8 247
	duty_cycle_75
	music01 3
	music8a 175
	music01 3
	musicd2
	music8a 170
	music01 3
	musicd2
	music8a 174
	music01 3
	musicd2
	music8a 175
	music01 9
	musicd2
	music01 3
	music8a 177
	music01 9
	musicd2
	music01 3
	music8a 179
	music01 3
	musicd2
	musicd8 247
	music01 6
	music8a 182
	musicd8 241
	music01 12
	music8a 182
	musicd8 247
	music01 3
	music8a 179
	music01 9
	musicd2
	music01 3
	music8a 177
	music01 9
	musicd2
	music01 3
	music8a 179
	music01 3
	musicd2
	duty_cycle_50
	musicd8 57
	music01 6
	music8a 175
	music01 3
	music8a 187
	music01 3
	musicd2
	music8a 194
	music01 3
	musicd2
	music8a 199
	music01 3
	musicd2
	music8a 198
	music01 9
	musicd2
	music01 3
	music8a 194
	music01 9
	musicd2
	music01 3
	music8a 196
	music01 9
	musicd2
	music01 3
	music8a 192
	music01 9
	musicd2
	music01 18
	music8a 194
	music01 3
	music8a 191
	music01 3
	music8a 192
	music01 18
	music8a 194
	music01 30
	musicd2
	music01 12
	musicd2
	musicd8 221
	music01 3
	music8a 187
	music01 3
	music8a 187
	musicd8 224
	music01 3
	music8a 199
	music01 3
	musicd2
	musicd8 221
	music8a 187
	music01 3
	music8a 187
	musicd8 224
	music01 3
	music8a 199
	music01 3
	musicd2
	musicd8 224
	music8a 187
	music01 3
	music8a 187
	musicd8 227
	music01 3
	music8a 199
	music01 3
	musicd2
	music01 48
	musicd2
	musicd8 56
	music01 12
	musicd2
	musicd8 221
	music01 3
	music8a 151
	music01 3
	music8a 151
	musicd8 224
	music01 3
	music8a 163
	music01 3
	musicd2
	musicd8 221
	music8a 151
	music01 3
	music8a 151
	musicd8 225
	music01 3
	music8a 163
	music01 3
	musicd2
	musicd8 224
	music8a 151
	music01 3
	music8a 151
	musicd8 226
	music01 3
	music8a 163
	music01 3
	musicd2
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
	music01 5
	music8a 167
	music01 1
	musicd2
	music01 3
	music8a 167
	music01 9
	musicd2
	music01 5
	music8a 167
	music01 1
	musicd2
	music01 5
	music8a 168
	music01 1
	musicd2
	wave 65
	music01 3
	music8a 168
	music01 9
	musicd2
	wave 61
	music01 5
	music8a 168
	music01 1
	musicd2
	wave 61
	music01 5
	music8a 170
	music01 1
	musicd2
	wave 63
	musicd8 103
	music01 3
	music8a 170
	music01 9
	musicd2
	musicd8 103
	music01 5
	music8a 170
	music01 1
	musicd2
	wave 61
	musicd8 104
	music01 5
	music8a 168
	music01 1
	musicd2
	wave 60
	music01 3
	music8a 168
	music01 9
	musicd2
	music01 5
	music8a 168
	music01 1
	musicd2
	song_ret

Music_AzaleaAndBlackthornGym_branch_1861da: ; 1861da (61:61da)
	wave 62
	music01 3
	music8a 167
	music01 2
	musicd3
	music01 1
	musicd2
	music01 3
	music8a 167
	music01 9
	musicd2
	music01 3
	music8a 167
	music01 2
	musicd3
	music01 1
	musicd2
	music01 3
	music8a 168
	music01 2
	musicd3
	music01 1
	musicd2
	music01 3
	music8a 168
	music01 9
	musicd2
	music01 3
	music8a 168
	music01 2
	musicd3
	music01 1
	musicd2
	music01 3
	music8a 170
	music01 45
	musicd2
	musicd8 27
	wave 66
	musicd7 0
	wave 66
	music01 24
	music8a 172
	music01 3
	music8a 156
	music01 3
	musicd2
	music8a 151
	music01 3
	musicd2
	music8a 156
	music01 3
	musicd2
	wave 64
	music8a 160
	music01 3
	musicd2
	music8a 163
	wave 66
	music01 3
	music8a 165
	music01 3
	music8a 163
	music01 3
	music8a 165
	music01 3
	music8a 163
	music01 3
	music8a 165
	music01 6
	music8a 163
	music01 6
	musicd2
	music8a 172
	music01 6
	musicd2
	music01 3
	music8a 170
	music01 3
	musicd2
	music01 12
	music8a 170
	music01 6
	musicd2
	music01 12
	music8a 170
	music01 3
	music8a 163
	music01 3
	musicd2
	music8a 170
	music01 3
	musicd2
	music8a 175
	music01 3
	musicd2
	music01 6
	music8a 174
	music01 3
	music8a 175
	music01 3
	musicd2
	music8a 174
	music01 3
	musicd2
	music01 12
	music8a 167
	wave 64
	music01 3
	music8a 143
	music01 3
	musicd2
	music01 12
	music8a 155
	wave 66
	music01 12
	music8a 172
	music01 6
	musicd2
	music01 12
	music8a 172
	music01 6
	musicd2
	music01 9
	music8a 172
	music01 3
	musicd2
	wave 65
	music01 6
	music8a 174
	music01 6
	music8a 172
	music01 6
	music8a 170
	music01 6
	music8a 174
	music01 6
	musicd2
	music8a 179
	music01 6
	musicd2
	music01 3
	music8a 183
	music01 3
	musicd2
	wave 66
	music01 12
	music8a 165
	music01 6
	musicd2
	music01 24
	music8a 163
	music01 6
	musicd2
	music01 9
	music8a 162
	music01 3
	musicd2
	music01 6
	music8a 162
	music01 24
	music8a 163
	music01 6
	musicd2
	wave 65
	music01 18
	musicd2
	music01 6
	music8a 168
	music01 6
	musicd2
	music8a 163
	music01 6
	musicd2
	music8a 156
	music01 18
	musicd2
	music01 6
	music8a 169
	music01 6
	musicd2
	music8a 163
	music01 6
	musicd2
	wave 66
	music8a 175
	music01 24
	music8a 177
	music01 3
	music8a 170
	music01 3
	music8a 175
	music01 3
	music8a 177
	music01 3
	music8a 182
	music01 3
	music8a 182
	music01 3
	music8a 187
	music01 3
	music8a 189
	music01 1
	music8a 194
	music01 2
	musicd2
	music01 48
	musicd2
	song_ret

; unreferenced ?
Music_AzaleaAndBlackthornGym_branch_1862b8: ; 186158 (61:6158)
	wave 62
	music01 3
	music8a 167
	music01 2
	musicd3
	music01 1
	musicd2
	music01 3
	music8a 167
	music01 9
	musicd2
	music01 3
	music8a 167
	music01 2
	musicd3
	music01 1
	musicd2
	music01 3
	music8a 168
	music01 2
	musicd3
	music01 1
	musicd2
	music01 3
	music8a 168
	music01 9
	musicd2
	music01 3
	music8a 168
	music01 2
	musicd3
	music01 1
	musicd2
	music01 3
	music8a 170
	music01 45
	musicd2
	music01 24
	music8a 172
	music01 3
	music8a 156
	music01 3
	musicd2
	music8a 151
	music01 3
	musicd2
	music8a 156
	music01 3
	musicd2
	music8a 160
	music01 3
	musicd2
	music8a 163
	music01 3
	music8a 165
	music01 3
	music8a 163
	music01 3
	music8a 165
	music01 3
	music8a 163
	music01 3
	music8a 165
	music01 6
	music8a 163
	music01 6
	musicd2
	music8a 172
	music01 6
	musicd2
	music01 3
	music8a 170
	music01 3
	musicd2
	music01 12
	music8a 170
	music01 6
	musicd2
	music01 12
	music8a 170
	music01 3
	music8a 163
	music01 3
	musicd2
	music8a 170
	music01 3
	musicd2
	music8a 175
	music01 3
	musicd2
	music01 6
	music8a 174
	music01 3
	music8a 175
	music01 3
	musicd2
	music8a 174
	music01 3
	musicd2
	music01 12
	music8a 167
	music01 3
	music8a 143
	music01 3
	musicd2
	music01 12
	music8a 155
	music01 12
	music8a 172
	music01 6
	musicd2
	music01 12
	music8a 172
	music01 6
	musicd2
	music01 9
	music8a 172
	music01 3
	musicd2
	music01 6
	music8a 174
	music01 6
	music8a 172
	music01 6
	music8a 170
	music01 6
	music8a 174
	music01 6
	musicd2
	music8a 179
	music01 6
	musicd2
	music01 3
	music8a 183
	music01 3
	musicd2
	music01 12
	music8a 165
	music01 6
	musicd2
	music01 24
	music8a 163
	music01 6
	musicd2
	music01 9
	music8a 162
	music01 3
	musicd2
	music01 6
	music8a 162
	music01 24
	music8a 163
	music01 6
	musicd2
	music01 18
	musicd2
	music01 6
	music8a 168
	music01 6
	musicd2
	music8a 163
	music01 6
	musicd2
	music8a 156
	music01 18
	musicd2
	music01 6
	music8a 169
	music01 6
	musicd2
	music8a 163
	music01 6
	musicd2
	music8a 175
	music01 24
	music8a 177
	music01 3
	music8a 170
	music01 3
	music8a 175
	music01 3
	music8a 177
	music01 3
	music8a 182
	music01 3
	music8a 182
	music01 3
	music8a 187
	music01 3
	music8a 189
	music01 3
	music8a 194
	music01 48
	musicd2
	song_ret

Music_AzaleaAndBlackthornGym_Ch4: ; 18637c (61:637c)
	stereo_panning_both
	music01 48
	musicd2
	music01 48
	musicd2
	music01 48
	musicd2
	music01 48
	musicd2
	music01 48
	musicd2
	music01 48
	musicd2
	music01 48
	musicd2
	music01 48
	musicd2
	music01 48
	musicd2
	music01 36
	musicd2
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 6
	music6d 125
Music_AzaleaAndBlackthornGym_branch_186397: ; 186397 (61:6397)
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 6
	music6d 125
	music01 3
	music6d 120
	music01 3
	musicd3
	music01 6
	music6d 120
	music01 3
	music6d 120
	music01 3
	musicd3
	music01 6
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 6
	music6d 125
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 6
	music6d 125
	music01 3
	music6d 120
	music01 3
	musicd3
	music01 6
	music6d 120
	music01 3
	music6d 120
	music01 3
	musicd3
	music01 6
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 6
	music6d 125
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 6
	music6d 125
	music01 3
	music6d 120
	music01 3
	musicd3
	music01 6
	music6d 120
	music01 3
	music6d 120
	music01 3
	musicd3
	music01 6
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 6
	music6d 125
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 6
	music6d 125
	music01 3
	music6d 120
	music01 3
	musicd3
	music01 6
	music6d 120
	music01 3
	music6d 120
	music01 3
	musicd3
	music01 6
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 6
	music6d 125
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 6
	music6d 125
	music01 3
	music6d 120
	music01 3
	musicd3
	music01 6
	music6d 120
	music01 3
	music6d 120
	music01 3
	musicd3
	music01 6
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 6
	music6d 125
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 6
	music6d 125
	music01 3
	music6d 120
	music01 3
	musicd3
	music01 6
	music6d 120
	music01 3
	music6d 120
	music01 3
	musicd3
	music01 6
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 6
	music6d 125
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 6
	music6d 125
	music01 3
	music6d 120
	music01 3
	musicd3
	music01 6
	music6d 120
	music01 3
	music6d 120
	music01 3
	musicd3
	music01 6
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 6
	music6d 125
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 6
	music6d 125
	music01 36
	musicd3
	music01 3
	music6d 112
	music01 3
	musicd3
	music01 6
	music6d 125
	music01 3
	music6d 126
	music01 3
	musicd3
	music6d 112
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	musicd3
	music01 6
	music6d 125
	music01 3
	music6d 126
	music01 3
	musicd3
	music6d 112
	music01 3
	musicd3
	music6d 112
	music01 3
	musicd3
	music01 6
	music6d 125
	music01 3
	music6d 126
	music01 3
	musicd3
	music6d 112
	music01 3
	music6d 120
	music01 3
	music6d 126
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	musicd3
	music6d 126
	music01 3
	musicd3
	music01 6
	music6d 125
	music01 3
	music6d 112
	music01 3
	musicd3
	music01 6
	music6d 125
	music01 3
	music6d 126
	music01 3
	musicd3
	music6d 112
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	musicd3
	music01 6
	music6d 125
	music01 3
	music6d 126
	music01 3
	musicd3
	music6d 112
	music01 3
	musicd3
	music6d 112
	music01 3
	musicd3
	music01 6
	music6d 125
	music01 3
	music6d 126
	music01 3
	musicd3
	music6d 112
	music01 3
	music6d 120
	music01 3
	music6d 126
	music01 3
	music6d 126
	music01 3
	music6d 112
	music01 3
	music6d 112
	music01 3
	music6d 126
	music01 3
	musicd3
	music6d 126
	music01 3
	musicd3
	music6d 112
	music01 3
	musicd3
	music01 6
	music6d 125
	music01 3
	music6d 112
	music01 3
	musicd3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	musicd3
	music01 6
	music6d 125
	music01 3
	music6d 112
	music01 3
	musicd3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	musicd3
	music01 6
	music6d 125
	music01 3
	music6d 112
	music01 3
	musicd3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 126
	music01 3
	music6d 120
	music01 3
	music6d 126
	music01 9
	musicd3
	music01 3
	music6d 126
	music01 3
	musicd3
	music6d 112
	music01 3
	musicd3
	music6d 126
	music01 3
	musicd3
	music01 6
	music6d 125
	music01 3
	music6d 112
	music01 3
	musicd3
	music6d 120
	music01 3
	musicd3
	music6d 112
	music01 3
	musicd3
	music01 6
	music6d 125
	music01 3
	music6d 126
	music01 3
	musicd3
	music6d 112
	music01 3
	musicd3
	music6d 126
	music01 3
	musicd3
	music01 6
	music6d 125
	music01 3
	music6d 112
	music01 3
	musicd3
	music6d 126
	music01 3
	musicd3
	music6d 112
	music01 3
	musicd3
	music6d 126
	music01 3
	musicd3
	music6d 126
	music01 3
	musicd3
	music6d 112
	music01 3
	musicd3
	music6d 112
	music01 3
	musicd3
	music6d 126
	music01 3
	musicd3
	music6d 112
	music01 3
	musicd3
	music6d 126
	music01 3
	music8a 146
	music01 3
	music6d 112
	music01 3
	musicd3
	music6d 126
	music01 3
	musicd3
	music6d 112
	music01 3
	musicd3
	music6d 112
	music01 3
	musicd3
	music6d 112
	music01 3
	musicd3
	music6d 126
	music01 3
	musicd3
	music6d 112
	music01 3
	musicd3
	music6d 126
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	musicd3
	music6d 126
	music01 3
	musicd3
	music6d 112
	music01 3
	musicd3
	music6d 112
	music01 3
	musicd3
	music6d 112
	music01 3
	musicd3
	music6d 126
	music01 3
	musicd3
	music6d 112
	music01 3
	musicd3
	music6d 126
	music01 3
	music6d 126
	music01 3
	music6d 112
	music01 3
	music6d 112
	music01 3
	music6d 126
	music01 3
	musicd3
	music6d 126
	music01 3
	musicd3
	music6d 112
	music01 3
	musicd3
	music6d 112
	music01 3
	musicd3
	music6d 120
	music01 3
	musicd3
	music6d 126
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 126
	music01 3
	music6d 120
	music01 3
	music6d 126
	music01 3
	musicd3
	music6d 126
	music01 3
	musicd3
	music01 48
	musicd3
	music01 36
	musicd3
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 6
	music6d 125
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 6
	music6d 125
	music01 3
	music6d 120
	music01 3
	musicd3
	music01 6
	music6d 120
	music01 3
	music6d 120
	music01 3
	musicd3
	music01 6
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 6
	music6d 125
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 6
	music6d 125
	music01 3
	music6d 120
	music01 3
	musicd3
	music01 6
	music6d 120
	music01 3
	music6d 120
	music01 3
	musicd3
	music01 6
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 6
	music6d 125
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 6
	music6d 125
	music01 3
	music6d 120
	music01 3
	musicd3
	music01 6
	music6d 120
	music01 3
	music6d 120
	music01 3
	musicd3
	music01 6
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 6
	music6d 125
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 6
	music6d 125
	music01 3
	music6d 120
	music01 3
	musicd3
	music01 6
	music6d 120
	music01 3
	music6d 120
	music01 3
	musicd3
	music01 6
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 6
	music6d 125
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 6
	music6d 125
	music01 3
	music6d 120
	music01 3
	musicd3
	music01 6
	music6d 120
	music01 3
	music6d 120
	music01 3
	musicd3
	music01 6
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 6
	music6d 125
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 6
	music6d 125
	music01 3
	music6d 120
	music01 3
	musicd3
	music01 6
	music6d 120
	music01 3
	music6d 120
	music01 3
	musicd3
	music01 6
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 6
	music6d 125
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 6
	music6d 125
	music01 3
	music6d 120
	music01 3
	musicd3
	music01 6
	music6d 120
	music01 3
	music6d 120
	music01 3
	musicd3
	music01 6
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 6
	music6d 125
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 6
	music6d 125
	music01 3
	music6d 120
	music01 3
	musicd3
	music01 6
	music6d 120
	music01 3
	music6d 120
	music01 3
	musicd3
	music01 6
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 6
	music6d 125
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 6
	music6d 125
	music01 3
	music6d 120
	music01 3
	musicd3
	music01 6
	music6d 120
	music01 3
	music6d 120
	music01 3
	musicd3
	music01 6
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 6
	music6d 125
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 6
	music6d 125
	music01 3
	music6d 120
	music01 3
	musicd3
	music01 6
	music6d 120
	music01 3
	music6d 120
	music01 3
	musicd3
	music01 6
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 6
	music6d 125
	song_jump Music_AzaleaAndBlackthornGym_branch_186397
