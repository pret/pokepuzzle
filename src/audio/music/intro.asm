Music_Intro: ; 18a980 (62:6980)
	dw Music_Intro_Ch1
	dw Music_Intro_Ch2
	dw Music_Intro_Ch3
	dw Music_Intro_Ch4

Music_Intro_Ch1: ; 18a988 (62:6988)
	volume 119
	volume_envelope 115
	stereo_panning_both
	duty_cycle_75
	musicd4 55
	duty_cycle_12_5
	musicd4 55
	musicd8 36
	musicd6 17
	song_call Music_Intro_branch_18a9be
	song_call Music_Intro_branch_18aa2e
	musice3 2
	song_call Music_Intro_branch_18aa50
	song_call Music_Intro_branch_18aa61
	musicd6 7
	song_call Music_Intro_branch_18aa74
	musicd6 5
	song_call Music_Intro_branch_18aa83
	music01 13
	musicd3
	musicd6 13
	song_call Music_Intro_branch_18aa87
Music_Intro_branch_18a9b6: ; 18a9b6 (62:69b6)
	musice3 0
	song_call Music_Intro_branch_18ab74
	song_jump Music_Intro_branch_18a9b6

Music_Intro_branch_18a9be: ; 18a9be (62:69be)
	music01 48
	musicd2
	music01 48
	musicd2
	music01 48
	musicd2
	music01 24
	musicd2
	duty_cycle_50
	musicd4 52
	musicd8 209
	musicd8 224
	music01 3
	music8a 162
	music01 3
	music8a 162
	music01 3
	music8a 162
	music01 3
	musicd2
	musicd4 52
	musicd8 224
	music01 3
	music8a 155
	musicd8 219
	music01 3
	music8a 155
	music01 6
	musicd2
	musicd4 55
	duty_cycle_12_5
	musicd8 39
	music01 6
	music8a 176
	music01 6
	music8a 176
	music01 6
	music8a 181
	music01 6
	music8a 176
	music01 6
	music8a 176
	music01 12
	music8a 181
	music01 6
	music8a 176
	musicd8 36
	music01 6
	music8a 174
	music01 6
	music8a 176
	music01 6
	music8a 181
	music01 6
	music8a 176
	music01 6
	music8a 173
	music01 12
	music8a 181
	music01 6
	music8a 176
	music01 48
	musicd2
	duty_cycle_50
	musicd4 52
	musicd8 224
	music01 6
	musicd2
	music01 3
	music8a 164
	music01 3
	music8a 164
	music01 3
	musicd2
	music01 3
	music8a 164
	music01 3
	music8a 159
	music01 3
	musicd2
	music01 3
	music8a 159
	music01 3
	music8a 159
	music01 6
	musicd2
	music01 3
	music8a 157
	musicd8 224
	music01 3
	music8a 157
	musicd8 219
	music01 3
	music8a 155
	musicd8 219
	music01 3
	music8a 155
	song_ret

Music_Intro_branch_18aa2e: ; 18aa2e (62:6a2e)
	musicd4 55
	musicd8 36
	duty_cycle_12_5
	music01 6
	music8a 176
	music01 6
	music8a 176
	music01 6
	music8a 181
	music01 6
	music8a 176
	music01 6
	music8a 176
	music01 12
	music8a 181
	music01 6
	music8a 176
	music01 6
	music8a 174
	music01 6
	music8a 176
	music01 6
	music8a 181
	music01 6
	music8a 176
	music01 6
	music8a 173
	music01 12
	music8a 181
	music01 6
	music8a 176
	song_ret

Music_Intro_branch_18aa50: ; 18aa50 (62:6a50)
	music01 6
	music8a 195
	music01 6
	music8a 176
	music01 6
	music8a 181
	music01 6
	music8a 195
	music01 6
	music8a 176
	music01 6
	music8a 181
	music01 6
	music8a 183
	music01 6
	music8a 181
	song_ret

Music_Intro_branch_18aa61: ; 18aa61 (62:6a61)
	musice3 0
	music01 3
	music8a 164
	music01 3
	music8a 169
	music01 3
	music8a 176
	music01 3
	music8a 181
	music01 3
	music8a 169
	music01 3
	music8a 176
	music01 3
	music8a 181
	music01 3
	music8a 200
	song_ret

Music_Intro_branch_18aa74: ; 18aa74 (62:6a74)
	music01 3
	music8a 176
	music01 3
	music8a 181
	music01 3
	music8a 188
	music01 3
	music8a 193
	music01 3
	music8a 181
	music01 3
	music8a 188
	music01 3
	music8a 193
	song_ret

Music_Intro_branch_18aa83: ; 18aa83 (62:6a83)
	music01 3
	music8a 188
	song_ret

; unreferenced ?
Music_Intro_branch_18aa86: ; 18a988 (62:6988)
	song_ret

Music_Intro_branch_18aa87: ; 18aa87 (62:6a87)
	musicd5
	musicd8 204
	duty_cycle_12_5
	music01 1
	music8a 183
	musicd8 202
	music01 1
	music8a 183
	musicd8 201
	music01 1
	music8a 183
	musicd8 205
	music01 1
	music8a 188
	musicd8 203
	music01 1
	music8a 188
	musicd8 202
	music01 1
	music8a 188
	musicd8 205
	music01 1
	music8a 192
	music01 1
	music8a 192
	music01 1
	music8a 192
	musicd8 206
	music01 1
	music8a 193
	musicd8 204
	music01 1
	music8a 193
	musicd8 203
	music01 1
	music8a 193
	musicd8 206
	music01 1
	music8a 183
	musicd8 204
	music01 1
	music8a 183
	musicd8 203
	music01 1
	music8a 183
	musicd8 207
	music01 1
	music8a 188
	musicd8 205
	music01 1
	music8a 188
	musicd8 203
	music01 1
	music8a 188
	musicd8 207
	music01 1
	music8a 192
	musicd8 205
	music01 1
	music8a 192
	musicd8 203
	music01 1
	music8a 192
	musicd8 208
	music01 1
	music8a 193
	musicd8 206
	music01 1
	music8a 193
	musicd8 203
	music01 1
	music8a 193
	musicd8 208
	music01 1
	music8a 183
	musicd8 206
	music01 1
	music8a 183
	musicd8 203
	music01 1
	music8a 183
	musicd8 209
	music01 1
	music8a 188
	musicd8 206
	music01 1
	music8a 188
	musicd8 203
	music01 1
	music8a 188
	musicd8 208
	music01 1
	music8a 192
	musicd8 206
	music01 1
	music8a 192
	musicd8 203
	music01 1
	music8a 192
	musicd8 210
	music01 1
	music8a 193
	musicd8 206
	music01 1
	music8a 193
	musicd8 203
	music01 1
	music8a 193
	musicd8 208
	music01 1
	music8a 183
	musicd8 206
	music01 1
	music8a 183
	musicd8 203
	music01 1
	music8a 183
	musicd8 211
	music01 1
	music8a 188
	musicd8 206
	music01 1
	music8a 188
	musicd8 203
	music01 1
	music8a 188
	musicd8 208
	music01 1
	music8a 192
	musicd8 206
	music01 1
	music8a 192
	musicd8 203
	music01 1
	music8a 192
	musicd8 208
	music01 1
	music8a 193
	musicd8 206
	music01 1
	music8a 193
	musicd8 203
	music01 1
	music8a 193
	duty_cycle_50
	musicd4 52
	musicd8 224
	music01 6
	musicd2
	music01 3
	music8a 162
	music01 3
	music8a 162
	musicd8 219
	music01 3
	music8a 162
	musicd8 224
	music8a 162
	music01 3
	music8a 159
	musicd8 219
	music01 3
	music8a 159
	musicd8 224
	music8a 159
	music01 3
	music8a 157
	music01 3
	music8a 157
	music01 3
	music8a 157
	music01 3
	music8a 155
	music01 3
	music8a 155
	music01 3
	music8a 155
	musicd8 209
	music01 2
	music8a 155
	musicd5
	music01 1
	musicd2
	song_ret

Music_Intro_branch_18ab74: ; 18ab74 (62:6b74)
	duty_cycle_12_5
	musicd4 55
	musicd8 36
	music01 3
	music8a 157
	music01 3
	music8a 164
	music01 3
	music8a 169
	music01 3
	music8a 174
	music01 6
	music8a 181
	music01 3
	music8a 169
	music01 6
	music8a 181
	music01 6
	music8a 169
	music01 3
	music8a 174
	music01 3
	music8a 176
	music01 3
	music8a 164
	music01 3
	music8a 169
	music01 3
	music8a 174
	music01 3
	music8a 150
	music01 3
	music8a 157
	music01 3
	music8a 162
	music01 3
	music8a 169
	music01 6
	music8a 174
	music01 3
	music8a 162
	music01 3
	music8a 169
	music01 3
	music8a 152
	music01 3
	music8a 159
	music01 3
	music8a 164
	music01 3
	music8a 169
	music01 3
	music8a 171
	music01 3
	music8a 159
	music01 3
	music8a 164
	music01 3
	music8a 169
	music01 3
	music8a 169
	music01 3
	music8a 176
	music01 3
	music8a 181
	music01 3
	music8a 186
	music01 6
	music8a 193
	music01 3
	music8a 181
	music01 6
	music8a 193
	music01 6
	music8a 181
	music01 3
	music8a 186
	music01 3
	music8a 188
	music01 3
	music8a 176
	music01 3
	music8a 181
	music01 3
	music8a 186
	music01 3
	music8a 150
	music01 3
	music8a 157
	music01 3
	music8a 162
	music01 3
	music8a 169
	music01 6
	music8a 174
	music01 3
	music8a 162
	music01 3
	music8a 169
	music01 3
	music8a 152
	music01 3
	music8a 159
	music01 3
	music8a 164
	music01 3
	music8a 169
	duty_cycle_50
	musicd4 52
	musicd8 224
	music01 3
	music8a 159
	music01 3
	music8a 159
	music01 3
	music8a 155
	musicd8 219
	music01 3
	music8a 152
	duty_cycle_12_5
	musicd4 55
	musicd8 36
	music8a 157
	music01 3
	music8a 164
	music01 3
	music8a 169
	music01 3
	music8a 174
	music01 6
	music8a 181
	music01 3
	music8a 169
	music01 6
	music8a 181
	music01 6
	music8a 169
	music01 3
	music8a 174
	music01 3
	music8a 176
	music01 3
	music8a 164
	music01 3
	music8a 169
	music01 3
	music8a 174
	music01 3
	music8a 150
	music01 3
	music8a 157
	music01 3
	music8a 162
	music01 3
	music8a 169
	music01 6
	music8a 174
	music01 3
	music8a 162
	music01 3
	music8a 169
	music01 3
	music8a 152
	music01 3
	music8a 159
	music01 3
	music8a 164
	music01 3
	music8a 169
	music01 3
	music8a 171
	music01 3
	music8a 159
	music01 3
	music8a 164
	music01 3
	music8a 169
	music01 3
	music8a 169
	music01 3
	music8a 176
	music01 3
	music8a 181
	music01 3
	music8a 186
	music01 6
	music8a 193
	music01 3
	music8a 181
	music01 6
	music8a 193
	music01 6
	music8a 181
	music01 3
	music8a 186
	music01 3
	music8a 188
	music01 3
	music8a 176
	music01 3
	music8a 181
	music01 3
	music8a 186
	music01 3
	music8a 150
	music01 3
	music8a 157
	music01 3
	music8a 162
	music01 3
	music8a 169
	music01 6
	music8a 174
	music01 3
	music8a 162
	music01 3
	music8a 169
	music01 3
	music8a 152
	music01 3
	music8a 159
	music01 3
	music8a 164
	music01 3
	music8a 169
	duty_cycle_50
	musicd4 52
	musicd8 224
	music01 3
	music8a 162
	music01 3
	music8a 162
	music01 3
	music8a 159
	music01 3
	music8a 155
	duty_cycle_12_5
	musicd4 55
	musicd8 36
	music8a 157
	music01 3
	music8a 164
	music01 3
	music8a 169
	music01 3
	music8a 174
	music01 6
	music8a 181
	music01 3
	music8a 169
	music01 6
	music8a 181
	music01 6
	music8a 169
	music01 3
	music8a 174
	music01 3
	music8a 176
	music01 3
	music8a 164
	music01 3
	music8a 169
	music01 3
	music8a 174
	music01 6
	musicd2
	music01 3
	music8a 176
	music01 3
	musicd2
	music8a 176
	music01 3
	musicd2
	music8a 176
	music01 3
	musicd2
	music01 6
	music8a 178
	music01 3
	music8a 176
	music01 3
	musicd2
	music01 6
	music8a 176
	music01 6
	music8a 176
	music01 3
	music8a 164
	music01 3
	music8a 169
	music01 3
	music8a 174
	music01 6
	music8a 181
	music01 3
	music8a 169
	music01 6
	music8a 181
	music01 6
	music8a 169
	music01 3
	music8a 174
	music01 3
	music8a 176
	music01 3
	music8a 164
	music01 3
	music8a 169
	music01 3
	music8a 174
	music01 3
	music8a 150
	music01 3
	music8a 169
	music01 3
	music8a 174
	music01 3
	music8a 181
	music01 6
	music8a 186
	music01 3
	music8a 174
	music01 3
	music8a 181
	music01 3
	music8a 164
	music01 3
	music8a 171
	music01 3
	music8a 176
	music01 3
	music8a 181
	music01 3
	music8a 183
	music01 3
	music8a 171
	music01 3
	music8a 176
	music01 3
	music8a 181
	music01 3
	music8a 186
	music01 3
	music8a 193
	music01 3
	music8a 181
	music01 6
	music8a 193
	music01 6
	music8a 181
	music01 3
	music8a 193
	music01 6
	music8a 181
	music01 3
	music8a 181
	music01 6
	music8a 193
	music01 6
	music8a 181
	music01 6
	music8a 193
	music01 3
	music8a 162
	music01 6
	musicd2
	music01 3
	music8a 162
	music01 6
	musicd2
	music01 3
	music8a 164
	music01 3
	musicd2
	music01 9
	music8a 193
	music01 3
	musicd2
	duty_cycle_50
	musicd4 52
	musicd8 224
	music01 3
	music8a 162
	music01 3
	music8a 162
	music01 3
	music8a 157
	musicd8 219
	music01 3
	music8a 155
	song_ret

Music_Intro_Ch2: ; 18ad09 (62:6d09)
	volume 119
	volume_envelope 115
	stereo_panning_both
	musice3 255
	song_call Music_Intro_branch_18af8a
	song_call Music_Intro_branch_18b12d
	music01 13
	musicd3
	musice3 0
	song_call Music_Intro_branch_18ad23
Music_Intro_branch_18ad1d: ; 18ad1d (62:6d1d)
	song_call Music_Intro_branch_18ae8d
	song_jump Music_Intro_branch_18ad1d

Music_Intro_branch_18ad23: ; 18ad23 (62:6d23)
	music01 6
	musicd2
	musicd8 202
	duty_cycle_12_5
	music01 1
	music8a 176
	musicd8 201
	music01 1
	music8a 176
	musicd8 201
	music01 1
	music8a 176
	musicd8 202
	music01 1
	music8a 181
	musicd8 201
	music01 1
	music8a 181
	musicd8 201
	music01 1
	music8a 181
	musicd8 203
	music01 1
	music8a 185
	musicd8 202
	music01 1
	music8a 185
	musicd8 201
	music01 1
	music8a 185
	music01 1
	music8a 186
	musicd8 202
	music01 1
	music8a 186
	musicd8 201
	music01 1
	music8a 186
	musicd8 204
	music01 1
	music8a 176
	musicd8 202
	music01 1
	music8a 176
	musicd8 201
	music01 1
	music8a 176
	musicd8 204
	music01 1
	music8a 181
	musicd8 202
	music01 1
	music8a 181
	musicd8 201
	music01 1
	music8a 181
	musicd8 205
	music01 1
	music8a 185
	musicd8 203
	music01 1
	music8a 185
	musicd8 201
	music01 1
	music8a 185
	musicd8 205
	music01 1
	music8a 186
	musicd8 203
	music01 1
	music8a 186
	musicd8 201
	music01 1
	music8a 186
	musicd8 206
	music01 1
	music8a 176
	musicd8 204
	music01 1
	music8a 176
	musicd8 202
	music01 1
	music8a 176
	musicd8 206
	music01 1
	music8a 181
	musicd8 204
	music01 1
	music8a 181
	musicd8 202
	music01 1
	music8a 181
	musicd8 207
	music01 1
	music8a 185
	musicd8 204
	music01 1
	music8a 185
	musicd8 202
	music01 1
	music8a 185
	musicd8 207
	music01 1
	music8a 186
	musicd8 204
	music01 1
	music8a 186
	musicd8 202
	music01 1
	music8a 186
	musicd8 208
	music01 1
	music8a 176
	musicd8 204
	music01 1
	music8a 176
	musicd8 202
	music01 1
	music8a 176
	musicd8 208
	music01 1
	music8a 181
	musicd8 204
	music01 1
	music8a 181
	musicd8 202
	music01 1
	music8a 181
	musicd8 209
	music01 1
	music8a 185
	musicd8 204
	music01 1
	music8a 185
	musicd8 202
	music01 1
	music8a 185
	musicd8 209
	music01 1
	music8a 186
	musicd8 204
	music01 1
	music8a 186
	musicd8 202
	music01 1
	music8a 186
	musicd8 209
	music01 1
	music8a 176
	musicd8 204
	music01 1
	music8a 176
	musicd8 202
	music01 1
	music8a 176
	musicd8 209
	music01 1
	music8a 181
	musicd8 204
	music01 1
	music8a 181
	musicd8 202
	music01 1
	music8a 181
	musicd8 211
	music01 1
	music8a 185
	musicd8 205
	music01 1
	music8a 185
	musicd8 203
	music01 1
	music8a 185
	musicd8 211
	music01 1
	music8a 186
	musicd8 205
	music01 1
	music8a 186
	musicd8 203
	music01 1
	music8a 186
	musicd8 212
	music01 1
	music8a 176
	musicd8 205
	music01 1
	music8a 176
	musicd8 203
	music01 1
	music8a 176
	musicd8 212
	music01 1
	music8a 181
	musicd8 205
	music01 1
	music8a 181
	musicd8 203
	music01 1
	music8a 181
	musicd8 212
	music01 1
	music8a 185
	musicd8 205
	music01 1
	music8a 185
	musicd8 203
	music01 1
	music8a 185
	musicd8 212
	music01 1
	music8a 186
	musicd8 205
	music01 1
	music8a 186
	musicd8 203
	music01 1
	music8a 186
	musicd8 212
	music01 1
	music8a 176
	musicd8 205
	music01 1
	music8a 176
	musicd8 203
	music01 1
	music8a 176
	musicd8 212
	music01 1
	music8a 181
	musicd8 205
	music01 1
	music8a 181
	musicd8 203
	music01 1
	music8a 181
	musicd8 212
	music01 1
	music8a 185
	musicd8 205
	music01 1
	music8a 185
	musicd8 203
	music01 1
	music8a 185
	musicd8 212
	music01 1
	music8a 186
	musicd8 205
	music01 1
	music8a 186
	musicd8 203
	music01 1
	music8a 186
	musicd8 212
	music01 1
	music8a 176
	musicd8 205
	music01 1
	music8a 176
	musicd8 203
	music01 1
	music8a 176
	musicd8 212
	music01 1
	music8a 181
	musicd8 205
	music01 1
	music8a 181
	musicd8 203
	music01 1
	music8a 181
	song_ret

Music_Intro_branch_18ae8d: ; 18ae8d (62:6e8d)
	duty_cycle_50
	music01 12
	musicd2
	musicd4 59
	musicd8 164
	music01 3
	music8a 181
	music01 3
	musicd2
	musicd4 55
	music01 30
	music8a 176
	music01 3
	musicd3
	music01 3
	musicd2
	music01 3
	music8a 174
	music01 3
	musicd2
	music01 3
	music8a 176
	music01 3
	musicd2
	musicd4 59
	music01 12
	music8a 178
	musicd4 55
	music01 3
	music8a 176
	music01 3
	musicd2
	music01 6
	music8a 174
	music01 3
	music8a 176
	music01 3
	musicd2
	music01 6
	musicd2
	musicd4 59
	music01 9
	music8a 173
	music01 3
	musicd2
	musicd4 55
	music01 3
	music8a 173
	music01 3
	musicd2
	music01 9
	music8a 174
	music01 6
	music8a 173
	music01 3
	musicd2
	music01 3
	music8a 171
	music01 3
	musicd2
	music01 9
	music8a 173
	music01 6
	music8a 171
	music01 3
	musicd2
	music01 12
	music8a 169
	music01 18
	music8a 171
	music01 6
	musicd3
	music01 12
	musicd2
	music01 9
	music8a 181
	music01 3
	musicd2
	musicd4 59
	music01 12
	music8a 183
	musicd4 55
	music01 6
	music8a 181
	music01 18
	musicd2
	music01 9
	music8a 181
	music01 3
	musicd2
	musicd4 59
	music01 12
	music8a 183
	musicd4 55
	music01 3
	music8a 181
	music01 3
	musicd2
	musicd4 59
	music01 6
	music8a 185
	music01 3
	musicd2
	musicd4 55
	music01 6
	music8a 183
	music01 3
	musicd2
	music01 27
	music8a 181
	music01 3
	musicd2
	musicd4 59
	music01 6
	music8a 185
	music01 3
	musicd2
	musicd4 55
	music01 6
	music8a 183
	music01 3
	musicd2
	music01 9
	music8a 181
	music01 3
	musicd2
	music01 12
	music8a 186
	music01 3
	music8a 185
	music01 3
	musicd2
	musicd4 59
	music01 6
	music8a 185
	music01 3
	musicd2
	musicd4 55
	music01 6
	music8a 183
	music01 3
	musicd2
	music01 30
	music8a 181
	musicd4 60
	music01 2
	music8a 181
	music01 1
	musicd2
	music01 3
	musicd2
	musicd4 55
	musicd8 164
	music01 2
	music8a 181
	music01 4
	musicd2
	music01 2
	music8a 180
	music01 4
	musicd2
	music01 2
	music8a 181
	music01 4
	musicd2
	musicd4 59
	music01 6
	music8a 183
	musicd4 55
	music01 3
	music8a 181
	music01 3
	musicd2
	music01 6
	music8a 180
	music01 6
	music8a 181
	musicd4 59
	musicd8 44
	music01 48
	music8a 193
	musicd4 56
	music01 10
	musicd3
	musicd4 60
	music01 2
	musicd3
	musicd4 55
	music01 12
	musicd2
	musicd8 177
	music01 9
	music8a 198
	music01 9
	music8a 197
	music01 6
	music8a 195
	music01 9
	music8a 197
	musicd4 59
	musicd8 44
	music01 39
	music8a 193
	musicd4 56
	music01 12
	musicd3
	musicd4 60
	music01 2
	musicd3
	music01 10
	musicd2
	musicd5
	musicd8 176
	music01 12
	music8a 198
	music01 9
	music8a 197
	music01 3
	musicd2
	song_ret

Music_Intro_branch_18af8a: ; 18af8a (62:6f8a)
	musicd4 52
	musicd8 224
	music01 3
	music8a 154
	musicd8 234
	music01 3
	music8a 154
	music01 1
	musicd2
	musicd5
	music01 41
	musicd2
	music01 36
	musicd2
	musicd4 52
	musicd8 239
	music01 3
	music8a 154
	musicd8 234
	music01 3
	music8a 154
	musicd5
	music01 6
	musicd2
	musicd4 52
	musicd8 239
	music01 3
	music8a 154
	musicd8 234
	music01 3
	music8a 154
	musicd5
	musicd8 207
	musicd2
	music01 3
	musicd2
	musicd2
	music01 3
	musicd2
	musicd2
	music01 3
	musicd2
	musicd2
	music01 3
	musicd2
	musicd2
	music01 3
	musicd2
	musicd2
	music01 3
	musicd2
	musicd2
	music01 3
	musicd2
	musicd2
	music01 3
	musicd2
	musicd8 204
	musicd2
	music01 3
	musicd2
	musicd2
	music01 3
	musicd2
	musicd2
	music01 3
	musicd2
	musicd2
	music01 3
	musicd2
	musicd2
	music01 3
	musicd2
	musicd2
	music01 3
	musicd2
	musicd2
	music01 3
	musicd2
	musicd4 52
	musicd8 239
	music01 3
	music8a 154
	musicd8 234
	music01 3
	music8a 154
	musicd8 207
	musicd5
	music8a 169
	music01 3
	musicd2
	music8a 164
	music01 3
	musicd2
	music8a 169
	music01 3
	musicd2
	music8a 169
	music01 3
	musicd2
	music8a 157
	music01 3
	musicd2
	music8a 164
	music01 3
	musicd2
	music8a 169
	music01 3
	musicd2
	music8a 169
	music01 3
	musicd2
	musicd8 204
	music8a 181
	music01 3
	musicd2
	music8a 176
	music01 3
	musicd2
	music8a 181
	music01 3
	musicd2
	music8a 181
	music01 3
	musicd2
	music8a 169
	music01 3
	musicd2
	music8a 176
	music01 3
	musicd2
	music8a 181
	music01 3
	musicd2
	musicd4 52
	musicd8 239
	music01 3
	music8a 154
	musicd8 234
	music01 3
	music8a 154
	musicd5
	music8a 169
	music01 3
	musicd2
	music8a 164
	music01 3
	musicd2
	music8a 169
	music01 3
	musicd2
	music8a 169
	music01 3
	musicd2
	music8a 157
	music01 3
	musicd2
	music8a 164
	music01 3
	musicd2
	music8a 169
	music01 3
	musicd2
	music8a 169
	music01 3
	musicd2
	music8a 181
	music01 3
	musicd2
	music8a 176
	music01 3
	musicd2
	music8a 181
	music01 3
	musicd2
	music8a 181
	music01 3
	musicd2
	music8a 169
	music01 3
	musicd2
	music8a 176
	music01 3
	musicd2
	music8a 181
	music01 3
	musicd2
	song_ret

; unreferenced ?
Music_Intro_branch_18b059: ; 18ad09 (62:6d09)
	musicd4 52
	musicd8 224
	music01 3
	music8a 166
	musicd8 234
	music01 3
	music8a 166
	musicd5
	musicd8 226
	music01 42
	musicd2
	music01 36
	musicd2
	musicd4 52
	musicd8 224
	music01 3
	music8a 166
	musicd8 219
	music01 3
	music8a 166
	music01 6
	musicd2
	musicd4 52
	musicd8 224
	music01 3
	music8a 166
	musicd8 219
	music01 3
	music8a 166
	musicd4 55
	musicd8 36
	music01 3
	music8a 169
	music01 3
	musicd2
	music8a 164
	music01 3
	musicd2
	music8a 169
	music01 3
	musicd2
	music8a 169
	music01 3
	musicd2
	music8a 157
	music01 3
	musicd2
	music8a 164
	music01 3
	musicd2
	music8a 169
	music01 3
	musicd2
	music8a 169
	music01 3
	musicd2
	musicd8 221
	music8a 181
	music01 3
	musicd2
	music8a 176
	music01 3
	musicd2
	music8a 181
	music01 3
	musicd2
	music8a 181
	music01 3
	musicd2
	music8a 169
	music01 3
	musicd2
	music8a 176
	music01 3
	musicd2
	music8a 181
	music01 3
	musicd2
	musicd4 52
	musicd8 224
	music01 3
	music8a 166
	musicd8 219
	music01 3
	music8a 166
	musicd8 211
	musicd4 55
	music8a 169
	music01 3
	musicd2
	music8a 164
	music01 3
	musicd2
	music8a 169
	music01 3
	musicd2
	music8a 169
	music01 3
	musicd2
	music8a 157
	music01 3
	musicd2
	music8a 164
	music01 3
	musicd2
	music8a 169
	music01 3
	musicd2
	music8a 169
	music01 3
	musicd2
	musicd8 221
	music8a 181
	music01 3
	musicd2
	music8a 176
	music01 3
	musicd2
	music8a 181
	music01 3
	musicd2
	music8a 181
	music01 3
	musicd2
	music8a 169
	music01 3
	musicd2
	music8a 176
	music01 3
	musicd2
	music8a 181
	music01 3
	musicd2
	musicd4 52
	musicd8 224
	music01 3
	music8a 166
	musicd8 219
	music01 3
	music8a 166
	musicd8 226
	musicd4 55
	music8a 169
	music01 3
	musicd2
	music8a 164
	music01 3
	musicd2
	music8a 169
	music01 3
	musicd2
	music8a 169
	music01 3
	musicd2
	music8a 157
	music01 3
	musicd2
	music8a 164
	music01 3
	musicd2
	music8a 169
	music01 3
	musicd2
	music8a 169
	music01 3
	musicd2
	music8a 181
	music01 3
	musicd2
	music8a 176
	music01 3
	musicd2
	music8a 181
	music01 3
	musicd2
	music8a 181
	music01 3
	musicd2
	music8a 169
	music01 3
	musicd2
	music8a 176
	music01 3
	musicd2
	music8a 181
	music01 3
	musicd2
	song_ret

Music_Intro_branch_18b12d: ; 18b12d (62:712d)
	duty_cycle_75
	musice3 0
	musicd8 36
	music01 6
	music8a 176
	music01 6
	music8a 176
	music01 6
	music8a 181
	music01 6
	music8a 176
	music01 6
	music8a 176
	music01 12
	music8a 181
	music01 6
	music8a 176
	music01 6
	music8a 174
	music01 6
	music8a 176
	music01 6
	music8a 181
	music01 6
	music8a 176
	music01 6
	music8a 173
	music01 12
	music8a 181
	music01 6
	music8a 176
	music01 6
	music8a 195
	music01 6
	music8a 176
	music01 6
	music8a 181
	music01 6
	music8a 195
	music01 6
	music8a 176
	music01 6
	music8a 181
	music01 6
	music8a 183
	music01 6
	music8a 181
	music01 6
	music8a 193
	music01 6
	music8a 176
	music01 6
	music8a 181
	music01 6
	music8a 176
	music01 6
	music8a 188
	music01 6
	music8a 176
	music01 6
	music8a 181
	music01 6
	music8a 188
	musice3 0
	song_ret

; unreferenced ?
Music_Intro_branch_18b171: ; 18ad09 (62:6d09)
	song_ret

; unreferenced ?
Music_Intro_branch_18b172: ; 18ad09 (62:6d09)
	music01 45
	music8a 173
	music01 3
	musicd3
	music01 45
	music8a 174
	music01 3
	musicd3
	music01 45
	music8a 176
	music01 3
	musicd3
	music01 21
	music8a 178
	music01 3
	musicd3
	music01 9
	music8a 180
	music01 3
	musicd3
	music01 9
	music8a 178
	music01 3
	musicd3
	song_ret

; unreferenced ?
Music_Intro_branch_18b18b: ; 18ad09 (62:6d09)
	music01 48
	musicd2
	music01 6
	musicd2
	music01 3
	music8a 169
	music01 3
	musicd2
	music01 6
	music8a 169
	music01 3
	music8a 169
	music01 3
	musicd2
	music01 6
	music8a 174
	music01 3
	music8a 174
	music01 9
	musicd2
	music01 3
	music8a 169
	music01 3
	musicd2
	music01 6
	musicd2
	music01 3
	music8a 169
	music01 3
	musicd2
	music01 6
	music8a 169
	music01 3
	music8a 169
	music01 3
	musicd2
	music01 6
	music8a 174
	music01 15
	music8a 174
	music01 3
	musicd2
	music01 6
	musicd2
	music01 3
	music8a 169
	music01 3
	musicd2
	music01 6
	music8a 169
	music01 3
	music8a 169
	music01 3
	musicd2
	music01 6
	music8a 174
	music01 3
	music8a 174
	music01 9
	musicd2
	music01 3
	music8a 176
	music01 3
	musicd2
	music01 6
	musicd2
	music01 6
	music8a 176
	music01 6
	musicd2
	music01 9
	music8a 176
	music01 3
	musicd2
	music8a 176
	music01 3
	musicd2
	music01 12
	music8a 176
	music01 6
	musicd2
	music01 3
	music8a 169
	music01 3
	musicd2
	music01 6
	music8a 169
	music01 3
	music8a 169
	music01 3
	musicd2
	music01 6
	music8a 174
	music01 3
	music8a 174
	music01 9
	musicd2
	music01 3
	music8a 169
	music01 3
	musicd2
	music01 6
	musicd2
	music01 3
	music8a 169
	music01 3
	musicd2
	music01 6
	music8a 169
	music01 3
	music8a 169
	music01 3
	musicd2
	music01 6
	music8a 174
	music01 15
	music8a 174
	music01 3
	musicd2
	music01 6
	musicd2
	music01 3
	music8a 169
	music01 3
	musicd2
	music01 6
	music8a 169
	music01 3
	music8a 169
	music01 3
	musicd2
	music01 6
	music8a 174
	music01 3
	music8a 174
	music01 9
	musicd2
	music01 3
	music8a 176
	music01 3
	musicd2
	music01 6
	musicd2
	music01 6
	music8a 176
	music01 6
	musicd2
	music01 9
	music8a 176
	music01 3
	musicd2
	music8a 176
	music01 3
	musicd2
	music01 12
	music8a 176
	song_ret

; unreferenced ?
Music_Intro_branch_18b228: ; 18ad09 (62:6d09)
	music01 48
	musicd2
	music01 3
	music8a 152
	music01 3
	musicd2
	music8a 152
	music01 3
	musicd2
	music8a 152
	music01 3
	musicd2
	music8a 152
	music01 3
	musicd2
	music8a 157
	music01 3
	musicd2
	music8a 157
	music01 3
	musicd2
	music8a 157
	music01 3
	musicd2
	music8a 157
	music01 3
	musicd2
	music01 6
	music8a 181
	music01 3
	music8a 180
	music01 3
	music8a 178
	music01 3
	music8a 176
	music01 3
	musicd2
	music01 12
	music8a 183
	music01 3
	music8a 181
	music01 3
	musicd2
	music01 6
	music8a 180
	music01 6
	music8a 181
	music01 6
	music8a 181
	music01 3
	music8a 180
	music01 3
	music8a 178
	music01 3
	music8a 176
	music01 3
	musicd2
	music01 12
	music8a 183
	music01 3
	music8a 181
	music01 3
	musicd2
	music01 6
	music8a 180
	music01 6
	music8a 181
	music01 6
	music8a 186
	music01 3
	music8a 185
	music01 3
	music8a 183
	music01 3
	music8a 181
	music01 3
	musicd2
	music01 12
	music8a 193
	music01 3
	music8a 186
	music01 3
	musicd2
	music01 6
	music8a 185
	music01 6
	music8a 186
	music01 6
	music8a 176
	music01 6
	music8a 188
	music01 6
	music8a 193
	music01 6
	music8a 176
	music01 6
	music8a 188
	music01 6
	music8a 193
	music01 6
	music8a 176
	music01 6
	music8a 193
	music01 6
	music8a 181
	music01 3
	music8a 180
	music01 3
	music8a 178
	music01 3
	music8a 176
	music01 3
	musicd2
	music01 12
	music8a 183
	music01 3
	music8a 181
	music01 3
	musicd2
	music01 6
	music8a 180
	music01 6
	music8a 181
	music01 6
	music8a 181
	music01 3
	music8a 180
	music01 3
	music8a 178
	music01 3
	music8a 176
	music01 3
	musicd2
	music01 12
	music8a 183
	music01 3
	music8a 181
	music01 3
	musicd2
	music01 6
	music8a 180
	music01 6
	music8a 181
	music01 6
	music8a 186
	music01 3
	music8a 185
	music01 3
	music8a 183
	music01 3
	music8a 181
	music01 3
	musicd2
	music01 12
	music8a 193
	music01 3
	music8a 186
	music01 3
	musicd2
	music01 6
	music8a 185
	music01 6
	music8a 186
	song_ret

Music_Intro_Ch3: ; 18b2cc (62:72cc)
	stereo_panning_both
	musicd8 27
	wave 72
	musicd7 12
	song_call Music_Intro_branch_18b4b8
	song_call Music_Intro_branch_18b4f9
	song_call Music_Intro_branch_18b4b8
	song_call Music_Intro_branch_18b4f9
	song_call Music_Intro_branch_18b4b8
	song_call Music_Intro_branch_18b4f9
	song_call Music_Intro_branch_18b4b8
	song_call Music_Intro_branch_18b4f9
	musicd7 12
	musice3 0
	wave 7
	musicd8 104
	song_call Music_Intro_branch_18b53a
	music01 13
	musicd2
	musicd8 104
	musicd7 24
	song_call Music_Intro_branch_18b305
Music_Intro_branch_18b2ff: ; 18b2ff (62:72ff)
	song_call Music_Intro_branch_18b358
	song_jump Music_Intro_branch_18b2ff

Music_Intro_branch_18b305: ; 18b305 (62:7305)
	music01 3
	music8a 152
	music01 3
	music8a 157
	wave 71
	music01 3
	music8a 161
	music01 3
	music8a 162
	wave 70
	music01 3
	music8a 152
	music01 3
	music8a 157
	wave 69
	music01 3
	music8a 161
	music01 3
	music8a 162
	wave 68
	music01 3
	music8a 152
	music01 3
	music8a 157
	wave 67
	music01 3
	music8a 161
	music01 3
	music8a 162
	wave 66
	music01 3
	music8a 152
	music01 3
	music8a 157
	wave 65
	music01 3
	music8a 161
	music01 3
	music8a 162
	music01 3
	music8a 152
	music01 3
	music8a 157
	wave 64
	music01 3
	music8a 161
	music01 3
	music8a 162
	music01 3
	music8a 152
	music01 3
	music8a 157
	music01 3
	music8a 161
	music01 3
	music8a 162
	music01 3
	music8a 152
	music01 3
	music8a 157
	music01 3
	music8a 161
	wave 63
	music01 3
	music8a 162
	music01 3
	music8a 152
	music01 3
	music8a 157
	music01 3
	music8a 161
	music01 3
	music8a 162
	song_ret

Music_Intro_branch_18b358: ; 18b358 (62:7358)
	musice3 0
	musicd7 12
	musicd8 27
	wave 62
	music01 3
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music01 6
	music8a 152
	music01 3
	music8a 150
	music01 6
	music8a 149
	music01 3
	musicd2
	music01 9
	music8a 147
	music01 3
	musicd2
	music8a 149
	music01 3
	musicd2
	music01 9
	music8a 150
	music01 3
	music8a 149
	music01 6
	musicd2
	music01 3
	music8a 150
	music01 3
	musicd2
	music01 9
	music8a 152
	music01 3
	music8a 150
	music01 6
	musicd2
	music01 3
	music8a 149
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 152
	music01 3
	musicd2
	music8a 150
	music01 6
	music8a 149
	music01 3
	musicd2
	music01 12
	music8a 147
	music01 3
	music8a 149
	music01 3
	musicd2
	music8a 150
	music01 3
	music8a 157
	music01 3
	music8a 162
	music01 3
	music8a 149
	music01 3
	music8a 174
	music01 3
	music8a 174
	music01 6
	music8a 150
	music01 3
	music8a 152
	music01 3
	music8a 159
	music01 9
	music8a 152
	music01 3
	music8a 159
	music01 3
	music8a 150
	music01 3
	music8a 169
	music01 3
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music01 9
	music8a 145
	music01 3
	musicd2
	music8a 147
	music01 3
	musicd2
	music8a 147
	music01 3
	musicd2
	music01 9
	music8a 147
	music01 3
	musicd2
	music8a 149
	music01 3
	musicd2
	music8a 149
	music01 3
	musicd2
	music01 9
	music8a 149
	music01 3
	musicd2
	music8a 150
	music01 3
	musicd2
	music8a 150
	music01 3
	musicd2
	music01 6
	music8a 150
	music01 6
	musicd2
	wave 7
	musicd8 104
	music01 3
	music8a 169
	music01 3
	music8a 164
	music01 3
	musicd2
	music8a 169
	music01 3
	music8a 164
	music01 3
	musicd2
	music8a 169
	music01 3
	music8a 164
	music01 3
	musicd2
	music8a 169
	music01 3
	music8a 164
	music01 3
	musicd2
	music01 6
	music8a 169
	music01 3
	music8a 164
	music01 3
	musicd2
	wave 62
	musicd8 27
	music01 6
	music8a 150
	music01 3
	musicd2
	music01 6
	music8a 152
	music01 3
	musicd2
	music8a 150
	music01 3
	musicd2
	music01 6
	music8a 149
	music01 3
	musicd2
	music01 6
	music8a 147
	music01 3
	musicd2
	music01 6
	music8a 145
	music01 3
	music8a 157
	music01 3
	music8a 152
	music01 3
	musicd2
	music8a 157
	music01 3
	music8a 152
	music01 3
	musicd2
	music8a 157
	music01 3
	music8a 152
	music01 6
	musicd2
	music01 3
	music8a 145
	music01 3
	musicd2
	music8a 147
	music01 3
	musicd2
	music8a 149
	music01 3
	musicd2
	music01 6
	music8a 145
	music01 3
	music8a 157
	music01 3
	musicd2
	music8a 156
	music01 3
	musicd2
	music8a 157
	music01 3
	musicd2
	music01 6
	music8a 159
	music01 3
	music8a 157
	music01 3
	musicd2
	music01 6
	music8a 156
	music01 3
	music8a 157
	music01 3
	musicd2
	wave 7
	musicd8 104
	music8a 171
	music01 3
	music8a 176
	music01 3
	music8a 181
	music01 3
	music8a 188
	music01 3
	music8a 188
	music01 3
	music8a 176
	music01 3
	music8a 188
	music01 3
	music8a 188
	music01 3
	music8a 176
	music01 3
	music8a 176
	music01 3
	music8a 181
	music01 3
	music8a 183
	music01 3
	music8a 171
	music01 3
	music8a 176
	music01 3
	music8a 181
	music01 3
	music8a 157
	music01 3
	music8a 164
	music01 3
	music8a 169
	music01 3
	music8a 176
	music01 3
	music8a 181
	music01 3
	music8a 181
	music01 3
	music8a 169
	music01 3
	music8a 176
	music01 3
	music8a 159
	music01 3
	music8a 166
	music01 3
	music8a 171
	music01 3
	music8a 176
	music01 3
	music8a 178
	music01 3
	music8a 166
	music01 3
	music8a 171
	music01 3
	music8a 176
	music01 3
	music8a 181
	music01 3
	music8a 176
	music01 3
	music8a 188
	music01 6
	music8a 176
	music01 6
	music8a 188
	music01 3
	music8a 176
	music01 6
	music8a 188
	music01 3
	music8a 188
	music01 6
	music8a 176
	music01 6
	music8a 188
	music01 6
	music8a 176
	music01 3
	music8a 181
	music01 6
	musicd2
	music01 3
	music8a 181
	music01 6
	musicd2
	music01 3
	music8a 183
	music01 9
	musicd2
	music01 3
	music8a 183
	music01 3
	musicd2
	music8a 183
	music01 3
	musicd2
	music8a 183
	music01 3
	musicd2
	song_ret

Music_Intro_branch_18b4b8: ; 18b4b8 (62:74b8)
	wave 66
	music01 3
	music8a 145
	wave 72
	music01 3
	music8a 145
	wave 65
	music01 3
	music8a 145
	wave 72
	music01 3
	music8a 145
	wave 64
	music01 3
	music8a 145
	wave 71
	music01 3
	music8a 145
	wave 63
	music01 3
	music8a 145
	wave 70
	music01 3
	music8a 145
	wave 62
	music01 3
	music8a 145
	wave 69
	music01 3
	music8a 145
	wave 61
	music01 3
	music8a 145
	wave 69
	music01 3
	music8a 145
	wave 60
	music01 3
	music8a 145
	wave 68
	music01 3
	music8a 145
	wave 59
	music01 3
	music8a 145
	wave 68
	music01 3
	music8a 145
	song_ret

Music_Intro_branch_18b4f9: ; 18b4f9 (62:74f9)
	wave 59
	music01 3
	music8a 145
	wave 72
	music01 3
	music8a 145
	wave 60
	music01 3
	music8a 145
	wave 72
	music01 3
	music8a 145
	wave 61
	music01 3
	music8a 145
	wave 71
	music01 3
	music8a 145
	wave 62
	music01 3
	music8a 145
	wave 70
	music01 3
	music8a 145
	wave 63
	music01 3
	music8a 145
	wave 69
	music01 3
	music8a 145
	wave 63
	music01 3
	music8a 145
	wave 69
	music01 3
	music8a 145
	wave 63
	music01 3
	music8a 145
	wave 68
	music01 3
	music8a 145
	wave 67
	music01 3
	music8a 145
	wave 68
	music01 3
	music8a 145
	song_ret

Music_Intro_branch_18b53a: ; 18b53a (62:753a)
	musicd8 103
	music01 6
	music8a 176
	music01 6
	music8a 176
	music01 6
	music8a 181
	music01 6
	music8a 176
	music01 6
	music8a 176
	music01 12
	music8a 181
	music01 6
	music8a 176
	music01 6
	music8a 174
	music01 6
	music8a 176
	music01 6
	music8a 181
	music01 6
	music8a 176
	music01 6
	music8a 173
	music01 12
	music8a 181
	music01 6
	music8a 176
	music01 6
	musicd2
	music01 6
	music8a 176
	music01 6
	music8a 181
	music01 6
	musicd2
	music01 6
	music8a 176
	music01 6
	music8a 181
	music01 6
	music8a 183
	music01 6
	music8a 181
	musice3 0
	music01 3
	music8a 152
	music01 3
	music8a 157
	music01 3
	music8a 164
	music01 3
	music8a 169
	music01 3
	music8a 157
	music01 3
	music8a 164
	music01 3
	music8a 169
	music01 3
	music8a 176
	music01 3
	music8a 164
	music01 3
	music8a 169
	music01 3
	music8a 176
	music01 3
	music8a 181
	music01 3
	music8a 169
	music01 3
	music8a 176
	music01 3
	music8a 181
	music01 3
	music8a 188
	song_ret

; unreferenced ?
Music_Intro_branch_18b58b: ; 18b2cc (62:72cc)
	song_ret

; unreferenced ?
Music_Intro_branch_18b58c: ; 18b2cc (62:72cc)
	music01 6
	music8a 157
	music01 6
	music8a 157
	music01 6
	music8a 188
	music01 6
	music8a 157
	music01 6
	music8a 188
	music01 6
	music8a 157
	music01 6
	music8a 188
	music01 6
	music8a 157
	music01 6
	music8a 159
	music01 6
	music8a 159
	music01 6
	music8a 190
	music01 6
	music8a 159
	music01 6
	music8a 190
	music01 6
	music8a 159
	music01 6
	music8a 190
	music01 6
	music8a 159
	music01 6
	music8a 161
	music01 6
	music8a 161
	music01 6
	music8a 192
	music01 6
	music8a 161
	music01 6
	music8a 192
	music01 6
	music8a 161
	music01 6
	music8a 192
	music01 6
	music8a 161
	music01 6
	music8a 162
	music01 6
	music8a 162
	music01 6
	music8a 193
	music01 6
	music8a 162
	music01 6
	music8a 193
	music01 6
	music8a 162
	music01 6
	music8a 193
	music01 6
	music8a 162
	song_ret

; unreferenced ?
Music_Intro_branch_18b5cd: ; 18b2cc (62:72cc)
	music01 3
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music01 3
	music8a 145
	music01 15
	musicd2
	music01 3
	music8a 145
	music01 15
	musicd2
	music01 6
	music8a 150
	music01 6
	music8a 149
	music01 3
	music8a 145
	music01 15
	musicd2
	music01 3
	music8a 145
	music01 15
	musicd2
	music01 9
	music8a 144
	music01 3
	musicd2
	music01 3
	music8a 145
	music01 15
	musicd2
	music01 3
	music8a 145
	music01 15
	musicd2
	music01 6
	music8a 150
	music01 6
	music8a 149
	music01 6
	music8a 147
	music01 6
	music8a 149
	music01 6
	musicd2
	music01 6
	music8a 150
	music01 6
	musicd2
	music01 6
	music8a 152
	music01 12
	music8a 152
	music01 3
	music8a 145
	music01 3
	musicd2
	music01 3
	music8a 145
	music01 3
	musicd2
	music01 3
	music8a 145
	music01 3
	musicd2
	music01 3
	music8a 145
	music01 3
	musicd2
	music01 3
	music8a 145
	music01 3
	musicd2
	music01 6
	music8a 145
	music01 6
	music8a 150
	music01 6
	music8a 149
	music01 3
	music8a 145
	music01 3
	musicd2
	music01 3
	music8a 145
	music01 3
	musicd2
	music01 3
	music8a 145
	music01 3
	musicd2
	music01 3
	music8a 145
	music01 3
	musicd2
	music01 6
	music8a 150
	music01 6
	music8a 150
	music01 6
	music8a 150
	music01 6
	music8a 150
	music01 3
	music8a 145
	music01 3
	musicd2
	music01 3
	music8a 145
	music01 3
	musicd2
	music01 3
	music8a 145
	music01 3
	musicd2
	music01 3
	music8a 145
	music01 3
	musicd2
	music01 6
	music8a 150
	music01 6
	music8a 149
	music01 6
	music8a 150
	music01 6
	music8a 152
	music01 6
	musicd2
	music01 6
	music8a 152
	music01 6
	musicd2
	music01 6
	music8a 152
	music01 6
	music8a 152
	music01 6
	music8a 152
	music01 6
	music8a 152
	music01 6
	music8a 152
	song_ret

; unreferenced ?
Music_Intro_branch_18b673: ; 18b2cc (62:72cc)
	music01 3
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 144
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 144
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 144
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 144
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 144
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 144
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 144
	music01 3
	music8a 143
	music01 3
	music8a 145
	music01 3
	musicd2
	song_ret

Music_Intro_Ch4: ; 18b74e (62:774e)
	stereo_panning_both
	song_call Music_Intro_branch_18b94f
	song_call Music_Intro_branch_18b9d3
	music01 13
	musicd2
	song_call Music_Intro_branch_18b762
Music_Intro_branch_18b75a: ; 18b75a (62:775a)
	musicd6 13
	song_call Music_Intro_branch_18b78e
	song_jump Music_Intro_branch_18b75a

Music_Intro_branch_18b762: ; 18b762 (62:7762)
	music01 3
	music6d 112
	music01 9
	musicd3
	music01 3
	music6d 112
	music01 9
	musicd3
	music01 3
	music6d 112
	music01 9
	musicd3
	music01 3
	music6d 112
	music01 9
	musicd3
	music01 3
	music6d 126
	music01 3
	musicd3
	music6d 126
	music01 3
	musicd3
	music6d 126
	music01 3
	musicd3
	music6d 126
	music01 3
	musicd3
	music6d 126
	music01 3
	musicd3
	music6d 126
	music01 3
	music6d 126
	music01 3
	music6d 126
	music01 3
	music6d 127
	music01 3
	music6d 127
	music01 3
	music6d 127
	song_ret

Music_Intro_branch_18b78e: ; 18b78e (62:778e)
	music01 3
	music6d 124
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	music6d 126
	music01 3
	music6d 112
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 126
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	music6d 126
	music01 3
	music6d 112
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 126
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	music6d 126
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 126
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	music6d 126
	music01 3
	music6d 120
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
	music6d 120
	music01 3
	music6d 126
	music01 3
	music6d 126
	music01 3
	music6d 127
	music01 3
	music6d 127
	music01 3
	music6d 124
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	music6d 126
	music01 3
	music6d 112
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 126
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	music6d 126
	music01 3
	music6d 112
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 126
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	music6d 126
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 126
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	music6d 126
	music01 3
	music6d 120
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
	music6d 120
	music01 3
	music6d 126
	music01 3
	music6d 126
	music01 3
	music6d 127
	music01 3
	music6d 127
	music01 3
	music6d 124
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	music6d 126
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 126
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
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
	music6d 126
	music01 3
	music6d 112
	music01 3
	music6d 126
	music01 3
	music6d 126
	music01 3
	music6d 126
	music01 3
	music6d 112
	music01 3
	music6d 126
	music01 3
	music6d 124
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	music6d 126
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 126
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	music6d 126
	music01 3
	music6d 120
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
	music6d 120
	music01 3
	music6d 126
	music01 3
	music6d 126
	music01 3
	music6d 126
	music01 3
	music6d 126
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	music6d 126
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 126
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	music6d 126
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 127
	music01 3
	music6d 120
	music01 3
	music6d 112
	music01 3
	music6d 127
	song_ret

Music_Intro_branch_18b94f: ; 18b94f (62:794f)
	music01 6
	music6d 120
	music01 6
	musicd3
	music6d 120
	music01 6
	musicd3
	music6d 120
	music01 6
	musicd3
	music6d 120
	music01 6
	music8a 148
	music01 6
	music6d 120
	music01 6
	musicd3
	music6d 120
	music01 6
	musicd3
	music6d 120
	music01 6
	musicd3
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music8a 148
	music01 3
	music6d 120
	music01 6
	music6d 120
	music01 6
	musicd3
	music6d 120
	music01 6
	musicd3
	music6d 120
	music01 6
	musicd3
	music6d 120
	music01 6
	music8a 148
	music01 6
	music6d 120
	music01 6
	musicd3
	music6d 120
	music01 6
	musicd3
	music6d 120
	music01 6
	musicd3
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music8a 148
	music01 3
	music6d 120
	music01 6
	music6d 120
	music01 6
	musicd3
	music6d 120
	music01 6
	musicd3
	music6d 120
	music01 6
	musicd3
	music6d 120
	music01 6
	music8a 148
	music01 6
	music6d 120
	music01 6
	musicd3
	music6d 120
	music01 6
	musicd3
	music6d 120
	music01 6
	musicd3
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music8a 148
	music01 3
	music6d 120
	music01 6
	music6d 120
	music01 6
	music8a 148
	music01 6
	music6d 120
	music01 6
	music8a 148
	music01 6
	music6d 120
	music01 6
	music8a 148
	music01 6
	music6d 120
	music01 6
	music8a 148
	music01 6
	music6d 120
	music01 6
	music6d 126
	music01 6
	music6d 120
	music01 6
	music6d 126
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 6
	music6d 126
	music01 3
	music6d 126
	music01 3
	music6d 127
	music01 3
	music6d 127
	music01 3
	music6d 127
	song_ret

Music_Intro_branch_18b9d3: ; 18b9d3 (62:79d3)
	music01 6
	music6d 112
	music01 36
	musicd3
	music01 6
	music6d 112
	music01 6
	music6d 112
	music01 30
	musicd3
	music01 12
	music6d 126
	music01 6
	music6d 112
	music01 36
	musicd3
	music01 6
	music6d 112
	music01 6
	music6d 112
	music01 42
	musicd3
	song_ret
