Music_LanceDanger: ; 1913f3 (64:53f3)
	dw Music_LanceDanger_Ch1
	dw Music_LanceDanger_Ch2
	dw Music_LanceDanger_Ch3
	dw Music_LanceDanger_Ch4

Music_LanceDanger_Ch1: ; 1913fb (64:53fb)
	volume 119
	volume_envelope 115
	stereo_panning_both
	musicd6 20
	musicd7 0
	duty_cycle_12_5
	musice3 2
	musicd8 221
	song_call Music_LanceDanger_branch_19141b
Music_LanceDanger_branch_19140c: ; 19140c (64:540c)
	song_call Music_LanceDanger_branch_191463
	song_call Music_LanceDanger_branch_1914e7
	song_call Music_LanceDanger_branch_191566
	song_call Music_LanceDanger_branch_19160b
	song_jump Music_LanceDanger_branch_19140c

Music_LanceDanger_branch_19141b: ; 19141b (64:541b)
	duty_cycle_12_5
	musicd8 38
	music01 48
	musicd2
	music01 48
	musicd2
	music01 3
	music8a 175
	music01 3
	music8a 174
	music01 3
	music8a 173
	music01 3
	music8a 171
	music01 3
	music8a 175
	music01 3
	music8a 174
	music01 3
	music8a 173
	music01 3
	music8a 171
	music01 3
	music8a 175
	music01 3
	music8a 174
	music01 3
	music8a 173
	music01 3
	music8a 171
	music01 3
	music8a 175
	music01 3
	music8a 174
	music01 3
	music8a 173
	music01 3
	music8a 171
	music01 3
	music8a 175
	music01 3
	music8a 174
	music01 3
	music8a 173
	music01 3
	music8a 171
	music01 3
	music8a 180
	music01 3
	music8a 179
	music01 3
	music8a 178
	music01 3
	music8a 176
	music01 3
	music8a 175
	music01 3
	music8a 174
	music01 3
	music8a 173
	music01 3
	music8a 171
	music01 3
	music8a 168
	music01 3
	music8a 167
	music01 3
	music8a 166
	music01 3
	music8a 164
	song_ret

Music_LanceDanger_branch_191463: ; 191463 (64:5463)
	music01 6
	music8a 168
	music01 6
	music8a 161
	music01 6
	music8a 161
	music01 6
	music8a 168
	music01 6
	music8a 161
	music01 6
	music8a 161
	music01 6
	music8a 169
	music01 6
	music8a 162
	music01 6
	music8a 168
	music01 6
	music8a 161
	music01 6
	music8a 161
	music01 6
	music8a 168
	music01 6
	music8a 161
	music01 6
	music8a 161
	music01 6
	music8a 167
	music01 6
	music8a 160
	music01 6
	music8a 168
	music01 6
	music8a 161
	music01 6
	music8a 161
	music01 6
	music8a 168
	music01 6
	music8a 161
	music01 6
	music8a 161
	music01 6
	music8a 169
	music01 6
	music8a 162
	musicd8 120
	music01 2
	music8a 150
	music01 2
	musicd3
	music8a 152
	music01 2
	musicd3
	music8a 155
	music01 2
	musicd3
	music8a 152
	music01 2
	musicd3
	music8a 151
	music01 2
	musicd3
	music8a 150
	music01 2
	musicd3
	music01 12
	music8a 162
	music01 12
	music8a 160
	musicd8 38
	music01 6
	music8a 168
	music01 6
	music8a 161
	music01 6
	music8a 161
	music01 6
	music8a 168
	music01 6
	music8a 161
	music01 6
	music8a 161
	music01 6
	music8a 169
	music01 6
	music8a 162
	music01 6
	music8a 168
	music01 6
	music8a 161
	music01 6
	music8a 161
	music01 6
	music8a 168
	music01 6
	music8a 161
	music01 6
	music8a 161
	music01 6
	music8a 167
	music01 6
	music8a 160
	music01 6
	music8a 168
	music01 6
	music8a 161
	music01 6
	music8a 161
	music01 6
	music8a 168
	music01 6
	music8a 161
	music01 6
	music8a 161
	music01 6
	music8a 169
	music01 6
	music8a 162
	music01 6
	music8a 157
	music01 18
	music8a 164
	music01 12
	music8a 163
	music01 12
	music8a 162
	song_ret

Music_LanceDanger_branch_1914e7: ; 1914e7 (64:54e7)
	music01 6
	music8a 173
	music01 6
	music8a 180
	music01 6
	music8a 173
	music01 6
	music8a 180
	music01 6
	music8a 173
	music01 6
	music8a 180
	music01 6
	music8a 174
	music01 6
	musicd2
	music8a 173
	music01 6
	music8a 180
	music01 6
	music8a 173
	music01 6
	music8a 180
	music01 6
	music8a 173
	music01 6
	music8a 180
	music01 6
	music8a 172
	music01 6
	musicd2
	music8a 173
	music01 6
	music8a 180
	music01 6
	music8a 173
	music01 6
	music8a 180
	music01 6
	music8a 173
	music01 6
	music8a 180
	music01 6
	music8a 174
	music01 6
	musicd2
	musicd8 120
	music01 2
	music8a 150
	music01 2
	musicd3
	music8a 152
	music01 2
	musicd3
	music8a 155
	music01 2
	musicd3
	music8a 152
	music01 2
	musicd3
	music8a 151
	music01 2
	musicd3
	music8a 150
	music01 2
	musicd3
	music01 12
	music8a 162
	music01 12
	music8a 160
	musicd8 38
	music01 6
	music8a 173
	music01 6
	music8a 180
	music01 6
	music8a 173
	music01 6
	music8a 180
	music01 6
	music8a 173
	music01 6
	music8a 180
	music01 6
	music8a 174
	music01 6
	musicd2
	music8a 173
	music01 6
	music8a 180
	music01 6
	music8a 173
	music01 6
	music8a 180
	music01 6
	music8a 173
	music01 6
	music8a 180
	music01 6
	music8a 172
	music01 6
	musicd2
	music8a 173
	music01 6
	music8a 180
	music01 6
	music8a 173
	music01 6
	music8a 180
	music01 6
	music8a 173
	music01 6
	music8a 180
	music01 6
	music8a 174
	music01 6
	musicd2
	music8a 157
	music01 18
	music8a 164
	music01 12
	music8a 163
	music01 12
	music8a 162
	song_ret

Music_LanceDanger_branch_191566: ; 191566 (64:5566)
	music01 6
	music8a 173
	music01 6
	music8a 180
	music01 6
	music8a 173
	music01 6
	music8a 180
	music01 6
	music8a 173
	music01 6
	music8a 180
	music01 6
	music8a 181
	music01 6
	musicd2
	music01 6
	music8a 173
	music01 6
	music8a 180
	music01 6
	music8a 173
	music01 6
	music8a 180
	music01 6
	music8a 173
	music01 6
	music8a 180
	music01 6
	music8a 179
	music01 6
	musicd2
	music01 6
	music8a 173
	music01 6
	music8a 180
	music01 6
	music8a 173
	music01 6
	music8a 180
	music01 6
	music8a 173
	music01 6
	music8a 180
	music01 6
	music8a 181
	music01 6
	musicd2
	music01 1
	musicd2
	music01 3
	music8a 192
	music01 3
	music8a 185
	music01 3
	music8a 180
	music01 3
	music8a 173
	music01 3
	music8a 185
	music01 3
	music8a 180
	music01 3
	music8a 173
	music01 3
	music8a 168
	music01 3
	music8a 180
	music01 3
	music8a 173
	music01 3
	music8a 168
	music01 3
	music8a 161
	music01 3
	music8a 173
	music01 3
	music8a 168
	music01 3
	music8a 161
	music01 2
	music8a 156
	music01 6
	music8a 173
	music01 6
	music8a 180
	music01 6
	music8a 173
	music01 6
	music8a 180
	music01 6
	music8a 173
	music01 6
	music8a 180
	music01 6
	music8a 181
	music01 6
	musicd2
	music01 6
	music8a 173
	music01 6
	music8a 180
	music01 6
	music8a 173
	music01 6
	music8a 180
	music01 6
	music8a 173
	music01 6
	music8a 180
	music01 6
	music8a 179
	music01 6
	musicd2
	music01 6
	music8a 173
	music01 6
	music8a 180
	music01 6
	music8a 173
	music01 6
	music8a 180
	music01 6
	music8a 173
	music01 6
	music8a 180
	music01 6
	music8a 181
	music01 6
	musicd2
	music01 1
	musicd2
	music01 3
	music8a 161
	music01 3
	music8a 168
	music01 3
	music8a 173
	music01 3
	music8a 180
	music01 3
	music8a 168
	music01 3
	music8a 173
	music01 3
	music8a 180
	music01 3
	music8a 185
	music01 3
	music8a 173
	music01 3
	music8a 180
	music01 3
	music8a 185
	music01 3
	music8a 192
	music01 3
	music8a 185
	music01 3
	music8a 192
	music01 3
	music8a 197
	music01 2
	music8a 203
	song_ret

Music_LanceDanger_branch_19160b: ; 19160b (64:560b)
	musicd8 120
	music01 15
	music8a 161
	music01 3
	musicd2
	music8a 161
	music01 15
	musicd2
	music01 12
	music8a 161
	music01 33
	musicd3
	music01 3
	musicd2
	music8a 161
	music01 9
	musicd2
	music01 15
	music8a 162
	music01 3
	musicd2
	music8a 162
	music01 15
	musicd2
	music01 12
	music8a 162
	music01 42
	musicd3
	music01 6
	musicd2
	music01 15
	music8a 161
	music01 3
	musicd2
	music8a 161
	music01 15
	musicd2
	music01 12
	music8a 161
	music01 33
	musicd3
	music01 3
	musicd2
	music8a 161
	music01 9
	musicd2
	music01 15
	music8a 162
	music01 3
	musicd2
	music01 24
	music8a 162
	music01 6
	musicd2
	music01 15
	music8a 164
	music01 3
	musicd2
	music01 27
	music8a 164
	music01 3
	musicd2
	music01 48
	musicd2
	musicd8 38
	music01 3
	music8a 183
	music01 3
	music8a 181
	music01 3
	music8a 180
	music01 3
	music8a 178
	music01 3
	music8a 180
	music01 3
	music8a 178
	music01 3
	music8a 176
	music01 3
	music8a 175
	music01 3
	music8a 178
	music01 3
	music8a 176
	music01 3
	music8a 175
	music01 3
	music8a 171
	music01 12
	music8a 169
	song_ret

Music_LanceDanger_Ch2: ; 191669 (64:5669)
	volume 119
	volume_envelope 115
	stereo_panning_both
	musicd4 55
	musice3 2
	musicd4 55
	song_call Music_LanceDanger_branch_191686
Music_LanceDanger_branch_191677: ; 191677 (64:5677)
	song_call Music_LanceDanger_branch_19174d
	song_call Music_LanceDanger_branch_191924
	song_call Music_LanceDanger_branch_19198b
	song_call Music_LanceDanger_branch_1919fe
	song_jump Music_LanceDanger_branch_191677

Music_LanceDanger_branch_191686: ; 191686 (64:5686)
	duty_cycle_50
	musicd8 207
	musicd7 244
	duty_cycle_12_5
	musicd8 39
	music01 3
	music8a 183
	musicd8 36
	music01 3
	music8a 182
	music01 3
	music8a 181
	music01 3
	music8a 179
	musicd8 39
	music01 3
	music8a 183
	musicd8 36
	music01 3
	music8a 182
	music01 3
	music8a 181
	music01 3
	music8a 179
	musicd8 39
	music01 3
	music8a 183
	musicd8 36
	music01 3
	music8a 182
	music01 3
	music8a 181
	music01 3
	music8a 179
	musicd8 39
	music01 3
	music8a 183
	musicd8 36
	music01 3
	music8a 182
	music01 3
	music8a 181
	music01 3
	music8a 179
	musicd8 39
	music01 3
	music8a 183
	musicd8 36
	music01 3
	music8a 182
	music01 3
	music8a 181
	music01 3
	music8a 179
	musicd8 39
	music01 3
	music8a 183
	musicd8 36
	music01 3
	music8a 182
	music01 3
	music8a 181
	music01 3
	music8a 179
	musicd8 39
	music01 3
	music8a 183
	musicd8 36
	music01 3
	music8a 182
	music01 3
	music8a 181
	music01 3
	music8a 179
	musicd8 39
	music01 3
	music8a 183
	musicd8 36
	music01 3
	music8a 182
	music01 3
	music8a 181
	music01 3
	music8a 179
	musicd8 39
	music01 3
	music8a 183
	musicd8 36
	music01 3
	music8a 182
	music01 3
	music8a 181
	music01 3
	music8a 179
	musicd8 39
	music01 3
	music8a 183
	musicd8 36
	music01 3
	music8a 182
	music01 3
	music8a 181
	music01 3
	music8a 179
	musicd8 39
	music01 3
	music8a 183
	musicd8 36
	music01 3
	music8a 182
	music01 3
	music8a 181
	music01 3
	music8a 179
	musicd8 39
	music01 3
	music8a 183
	musicd8 36
	music01 3
	music8a 182
	music01 3
	music8a 181
	music01 3
	music8a 179
	musicd8 39
	music01 3
	music8a 183
	musicd8 36
	music01 3
	music8a 182
	music01 3
	music8a 181
	music01 3
	music8a 179
	musicd8 39
	music01 3
	music8a 188
	musicd8 36
	music01 3
	music8a 187
	music01 3
	music8a 186
	music01 3
	music8a 184
	musicd8 39
	music01 3
	music8a 183
	musicd8 36
	music01 3
	music8a 182
	music01 3
	music8a 181
	music01 3
	music8a 179
	musicd8 39
	music01 3
	music8a 176
	musicd8 36
	music01 3
	music8a 175
	music01 3
	music8a 174
	music01 3
	music8a 172
	song_ret

Music_LanceDanger_branch_19174d: ; 19174d (64:574d)
	musicd8 236
	musicd7 0
	music01 6
	music8a 180
	musicd7 12
	musicd8 211
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	musicd7 0
	musicd8 236
	music01 6
	music8a 180
	musicd7 12
	musicd8 211
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	musicd7 0
	musicd8 236
	music01 6
	music8a 181
	musicd7 12
	musicd8 211
	music01 2
	music8a 150
	music01 1
	musicd2
	music01 2
	music8a 150
	music01 1
	musicd2
	musicd7 0
	musicd8 236
	music01 6
	music8a 180
	musicd7 12
	musicd8 211
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	musicd7 0
	musicd8 236
	music01 6
	music8a 180
	musicd7 12
	musicd8 211
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	musicd7 0
	musicd8 236
	music01 6
	music8a 179
	musicd7 12
	musicd8 211
	music01 2
	music8a 148
	music01 1
	musicd2
	music01 2
	music8a 148
	music01 1
	musicd2
	musicd7 0
	musicd8 236
	music01 6
	music8a 180
	musicd7 12
	musicd8 211
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	musicd7 0
	musicd8 236
	music01 6
	music8a 180
	musicd7 12
	musicd8 211
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	musicd7 0
	musicd8 236
	music01 6
	music8a 181
	musicd7 12
	musicd8 211
	music01 2
	music8a 150
	music01 1
	musicd2
	music01 2
	music8a 150
	music01 1
	musicd2
	duty_cycle_50
	musicd7 0
	musicd8 176
	music01 2
	music8a 150
	music01 2
	musicd3
	music8a 152
	music01 2
	musicd3
	music8a 155
	music01 2
	musicd3
	music8a 152
	music01 2
	musicd3
	music8a 151
	music01 2
	musicd3
	music8a 150
	music01 2
	musicd3
	musicd4 58
	music01 12
	music8a 162
	musicd4 55
	music01 12
	music8a 160
	duty_cycle_12_5
	musicd7 0
	musicd8 236
	music01 6
	music8a 180
	musicd7 12
	musicd8 211
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	musicd7 0
	musicd8 236
	music01 6
	music8a 180
	musicd7 12
	musicd8 211
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	musicd7 0
	musicd8 236
	music01 6
	music8a 181
	musicd7 12
	musicd8 211
	music01 2
	music8a 150
	music01 1
	musicd2
	music01 2
	music8a 150
	music01 1
	musicd2
	musicd7 0
	musicd8 236
	music01 6
	music8a 180
	musicd7 12
	musicd8 211
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	musicd7 0
	musicd8 236
	music01 6
	music8a 180
	musicd7 12
	musicd8 211
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	musicd7 0
	musicd8 236
	music01 6
	music8a 179
	musicd7 12
	musicd8 211
	music01 2
	music8a 148
	music01 1
	musicd2
	music01 2
	music8a 148
	music01 1
	musicd2
	musicd7 0
	musicd8 236
	music01 6
	music8a 180
	musicd7 12
	musicd8 211
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	musicd7 0
	musicd8 236
	music01 6
	music8a 180
	musicd7 12
	musicd8 211
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	musicd7 0
	musicd8 236
	music01 6
	music8a 181
	musicd7 12
	musicd8 211
	music01 2
	music8a 150
	music01 1
	musicd2
	music01 2
	music8a 150
	music01 1
	musicd2
	musicd7 0
	duty_cycle_50
	musicd8 180
	music01 6
	music8a 157
	musicd4 58
	music01 18
	music8a 164
	musicd4 55
	music01 12
	music8a 163
	music01 12
	music8a 162
	song_ret

Music_LanceDanger_branch_191924: ; 191924 (64:5924)
	duty_cycle_50
	musicd7 0
	musice3 0
	musicd8 165
	musicd4 58
	music01 6
	music8a 185
	musicd4 55
	music01 12
	music8a 180
	music01 30
	music8a 185
	music01 6
	musicd3
	music01 6
	musicd2
	music8a 183
	music01 6
	music8a 185
	music01 12
	music8a 186
	music01 12
	music8a 183
	music01 45
	music8a 185
	music01 3
	musicd2
	musicd8 176
	music01 2
	music8a 150
	music01 2
	musicd3
	music8a 152
	music01 2
	musicd3
	music8a 155
	music01 2
	musicd3
	music8a 152
	music01 2
	musicd3
	music8a 151
	music01 2
	musicd3
	music8a 150
	music01 2
	musicd3
	musicd4 58
	music01 12
	music8a 162
	musicd4 55
	music01 12
	music8a 160
	musicd8 165
	musicd4 58
	music01 6
	music8a 185
	musicd4 55
	music01 12
	music8a 180
	music01 30
	music8a 185
	music01 6
	musicd3
	music01 6
	musicd2
	music8a 183
	music01 6
	music8a 185
	music01 12
	music8a 186
	music01 12
	music8a 188
	music01 18
	music8a 186
	music01 30
	music8a 185
	musicd8 176
	music01 6
	music8a 157
	music01 18
	music8a 164
	musicd4 58
	music01 12
	music8a 163
	musicd4 55
	music01 12
	music8a 162
	song_ret

Music_LanceDanger_branch_19198b: ; 19198b (64:598b)
	duty_cycle_12_5
	musicd7 0
	musice3 0
	musicd8 48
	musicd4 58
	music01 18
	music8a 180
	musicd4 55
	music01 30
	music8a 181
	music01 24
	music8a 183
	music01 24
	music8a 181
	music01 45
	music8a 180
	music01 3
	musicd2
	music8a 192
	duty_cycle_12_5
	musicd8 240
	music01 3
	music8a 185
	music01 3
	music8a 180
	music01 3
	music8a 173
	music01 3
	music8a 185
	music01 3
	music8a 180
	music01 3
	music8a 173
	music01 3
	music8a 168
	music01 3
	music8a 180
	music01 3
	music8a 173
	music01 3
	music8a 168
	music01 3
	music8a 161
	music01 3
	music8a 173
	music01 3
	music8a 168
	music01 3
	music8a 161
	music01 3
	music8a 156
	duty_cycle_12_5
	musicd7 0
	musice3 0
	musicd8 165
	musicd4 58
	music01 18
	music8a 180
	musicd4 55
	music01 30
	music8a 181
	music01 24
	music8a 183
	music01 24
	music8a 181
	music01 45
	music8a 180
	music01 3
	musicd2
	music8a 161
	duty_cycle_12_5
	musicd8 240
	music01 3
	music8a 168
	music01 3
	music8a 173
	music01 3
	music8a 180
	music01 3
	music8a 168
	music01 3
	music8a 173
	music01 3
	music8a 180
	music01 3
	music8a 185
	music01 3
	music8a 173
	music01 3
	music8a 180
	music01 3
	music8a 185
	music01 3
	music8a 192
	music01 3
	music8a 185
	music01 3
	music8a 192
	music01 3
	music8a 197
	music01 3
	music8a 203
	song_ret

Music_LanceDanger_branch_1919fe: ; 1919fe (64:59fe)
	duty_cycle_50
	musicd8 165
	music01 18
	music8a 185
	music01 18
	music8a 180
	music01 12
	music8a 183
	music01 12
	musicd3
	music01 12
	music8a 180
	music01 6
	music8a 180
	music01 6
	music8a 181
	music01 6
	music8a 183
	music01 6
	music8a 185
	music01 18
	music8a 183
	music01 18
	music8a 181
	music01 12
	music8a 180
	music01 24
	musicd3
	musicd4 58
	music01 6
	music8a 188
	musicd4 55
	music01 6
	music8a 186
	music01 6
	music8a 185
	music01 6
	music8a 183
	music01 18
	music8a 181
	music01 30
	music8a 180
	music01 24
	musicd3
	music01 3
	music8a 173
	music01 3
	musicd2
	music8a 174
	music01 3
	musicd2
	music8a 176
	music01 3
	musicd2
	music8a 178
	music01 3
	musicd2
	music01 48
	music8a 174
	music01 6
	music8a 180
	music01 6
	music8a 181
	music01 6
	music8a 183
	music01 6
	music8a 185
	music01 3
	music8a 181
	music01 3
	music8a 183
	music01 3
	music8a 185
	music01 3
	music8a 186
	music01 3
	music8a 188
	music01 3
	music8a 190
	music01 6
	music8a 192
	duty_cycle_12_5
	musicd8 209
	music01 3
	music8a 188
	musicd8 207
	music01 3
	music8a 186
	music01 3
	music8a 185
	music01 3
	music8a 183
	musicd8 209
	music01 3
	music8a 185
	musicd8 207
	music01 3
	music8a 183
	music01 3
	music8a 181
	music01 3
	music8a 180
	musicd8 209
	music01 3
	music8a 183
	musicd8 207
	music01 3
	music8a 181
	music01 3
	music8a 180
	music01 3
	music8a 176
	musicd8 209
	music01 3
	music8a 181
	musicd8 207
	music01 3
	music8a 180
	music01 3
	music8a 176
	music01 3
	music8a 174
	musicd8 209
	music01 3
	music8a 188
	musicd8 207
	music01 3
	music8a 186
	music01 3
	music8a 185
	music01 3
	music8a 183
	musicd8 209
	music01 3
	music8a 185
	musicd8 207
	music01 3
	music8a 183
	music01 3
	music8a 181
	music01 3
	music8a 180
	musicd8 209
	music01 3
	music8a 183
	musicd8 207
	music01 3
	music8a 181
	music01 3
	music8a 180
	music01 3
	music8a 176
	musicd8 165
	music01 12
	music8a 174
	song_ret

Music_LanceDanger_Ch3: ; 191aac (64:5aac)
	stereo_panning_both
	musicd8 27
	musicd7 12
	musicd4 55
	song_call Music_LanceDanger_branch_191ac5
Music_LanceDanger_branch_191ab6: ; 191ab6 (64:5ab6)
	song_call Music_LanceDanger_branch_191b16
	song_call Music_LanceDanger_branch_191c40
	song_call Music_LanceDanger_branch_191db2
	song_call Music_LanceDanger_branch_191f83
	song_jump Music_LanceDanger_branch_191ab6

Music_LanceDanger_branch_191ac5: ; 191ac5 (64:5ac5)
	wave 61
	musicd8 27
	music01 6
	music8a 142
	music01 3
	musicd2
	music8a 142
	music01 6
	musicd2
	musicd4 58
	music01 12
	music8a 148
	musicd4 55
	music01 6
	music8a 147
	music01 6
	music8a 145
	music01 6
	music8a 147
	music01 6
	music8a 142
	music01 3
	musicd2
	music8a 142
	music01 6
	musicd2
	musicd4 58
	music01 12
	music8a 148
	musicd4 55
	music01 6
	music8a 147
	music01 6
	music8a 145
	music01 6
	music8a 147
	music01 6
	music8a 142
	music01 3
	musicd2
	music8a 142
	music01 6
	musicd2
	musicd4 58
	music01 12
	music8a 148
	musicd4 55
	music01 6
	music8a 147
	music01 6
	music8a 145
	music01 6
	music8a 147
	music01 6
	music8a 142
	music01 3
	musicd2
	music8a 142
	music01 6
	musicd2
	musicd4 58
	music01 12
	music8a 148
	musicd4 55
	music01 6
	music8a 147
	music01 6
	music8a 145
	music01 6
	music8a 147
	song_ret

Music_LanceDanger_branch_191b16: ; 191b16 (64:5b16)
	wave 63
	music01 6
	music8a 161
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 6
	music8a 161
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 6
	music8a 162
	music01 2
	music8a 150
	music01 1
	musicd2
	music01 2
	music8a 150
	music01 1
	musicd2
	music01 6
	music8a 161
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 6
	music8a 161
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 6
	music8a 160
	music01 3
	music8a 148
	music01 3
	music8a 148
	music01 6
	music8a 161
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 6
	music8a 161
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 6
	music8a 162
	music01 3
	music8a 150
	music01 3
	music8a 150
	music01 2
	music8a 155
	music01 2
	musicd3
	music8a 157
	music01 2
	musicd3
	music8a 160
	music01 2
	musicd3
	music8a 157
	music01 2
	musicd3
	music8a 156
	music01 2
	musicd3
	music8a 155
	music01 2
	musicd3
	music01 12
	music8a 157
	music01 12
	music8a 155
	music01 6
	music8a 161
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 6
	music8a 161
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 6
	music8a 162
	music01 2
	music8a 150
	music01 1
	musicd2
	music01 2
	music8a 150
	music01 1
	musicd2
	music01 6
	music8a 161
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 6
	music8a 161
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 6
	music8a 160
	music01 2
	music8a 148
	music01 1
	musicd2
	music01 2
	music8a 148
	music01 1
	musicd2
	music01 6
	music8a 161
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 6
	music8a 161
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 6
	music8a 162
	music01 3
	music8a 150
	music01 3
	music8a 150
	music01 6
	music8a 150
	music01 18
	music8a 159
	music01 12
	music8a 158
	music01 12
	music8a 157
	song_ret

Music_LanceDanger_branch_191c40: ; 191c40 (64:5c40)
	wave 64
	music01 6
	music8a 161
	wave 62
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 6
	music8a 161
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	wave 64
	music01 6
	music8a 162
	wave 62
	music01 2
	music8a 150
	music01 1
	musicd2
	music01 2
	music8a 150
	music01 1
	musicd2
	wave 64
	music01 6
	music8a 161
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 6
	music8a 161
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	wave 64
	music01 6
	music8a 160
	wave 62
	music01 2
	music8a 148
	music01 1
	musicd2
	music01 2
	music8a 148
	music01 1
	musicd2
	wave 64
	music01 6
	music8a 161
	wave 62
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	wave 64
	music01 6
	music8a 161
	wave 62
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	wave 64
	music01 6
	music8a 162
	wave 62
	music01 2
	music8a 150
	music01 1
	musicd2
	music01 2
	music8a 150
	music01 1
	musicd2
	music01 2
	music8a 155
	music01 2
	musicd3
	music8a 157
	music01 2
	musicd3
	music8a 160
	music01 2
	musicd3
	music8a 157
	music01 2
	musicd3
	music8a 156
	music01 2
	musicd3
	music8a 155
	music01 2
	musicd3
	music01 12
	music8a 157
	music01 12
	music8a 155
	wave 64
	music01 6
	music8a 161
	wave 62
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	wave 64
	music01 6
	music8a 161
	wave 62
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	wave 64
	music01 6
	music8a 162
	wave 62
	music01 2
	music8a 150
	music01 1
	musicd2
	music01 2
	music8a 150
	music01 1
	musicd2
	wave 64
	music01 6
	music8a 161
	wave 62
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	wave 64
	music01 6
	music8a 161
	wave 62
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	wave 64
	music01 6
	music8a 160
	wave 62
	music01 2
	music8a 148
	music01 1
	musicd2
	music01 2
	music8a 148
	music01 1
	musicd2
	wave 64
	music01 6
	music8a 161
	wave 62
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	wave 64
	music01 6
	music8a 161
	wave 62
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	music01 2
	music8a 149
	music01 1
	musicd2
	wave 64
	music01 6
	music8a 162
	wave 62
	music01 2
	music8a 150
	music01 1
	musicd2
	music01 2
	music8a 150
	music01 1
	musicd2
	music01 6
	music8a 150
	music01 18
	music8a 159
	music01 12
	music8a 158
	music01 12
	music8a 157
	song_ret

Music_LanceDanger_branch_191db2: ; 191db2 (64:5db2)
	wave 62
	music01 6
	music8a 168
	wave 62
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	wave 62
	music01 6
	music8a 168
	wave 62
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	wave 62
	music01 6
	music8a 169
	wave 62
	music01 2
	music8a 157
	music01 1
	musicd2
	music01 2
	music8a 157
	music01 1
	musicd2
	wave 62
	music01 6
	music8a 168
	wave 62
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	wave 62
	music01 6
	music8a 168
	wave 62
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	wave 62
	music01 6
	music8a 167
	wave 62
	music01 2
	music8a 155
	music01 1
	musicd2
	music01 2
	music8a 155
	music01 1
	musicd2
	wave 62
	music01 6
	music8a 168
	wave 62
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	wave 62
	music01 6
	music8a 168
	wave 62
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	wave 62
	music01 6
	music8a 169
	wave 62
	music01 2
	music8a 157
	music01 1
	musicd2
	music01 2
	music8a 157
	music01 1
	musicd2
	wave 62
	music01 6
	music8a 168
	wave 62
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	wave 62
	music01 6
	music8a 168
	wave 62
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	wave 62
	music01 6
	music8a 167
	wave 62
	music01 2
	music8a 155
	music01 1
	musicd2
	music01 2
	music8a 155
	music01 1
	musicd2
	wave 62
	music01 6
	music8a 168
	wave 62
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	wave 62
	music01 6
	music8a 168
	wave 62
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	wave 62
	music01 6
	music8a 169
	wave 62
	music01 2
	music8a 157
	music01 1
	musicd2
	music01 2
	music8a 157
	music01 1
	musicd2
	wave 62
	music01 6
	music8a 168
	wave 62
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	wave 62
	music01 6
	music8a 168
	wave 62
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	wave 62
	music01 6
	music8a 167
	wave 62
	music01 2
	music8a 155
	music01 1
	musicd2
	music01 2
	music8a 155
	music01 1
	musicd2
	wave 62
	music01 6
	music8a 168
	wave 62
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	wave 62
	music01 6
	music8a 168
	wave 62
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	wave 62
	music01 6
	music8a 169
	wave 62
	music01 2
	music8a 157
	music01 1
	musicd2
	music01 2
	music8a 157
	music01 1
	musicd2
	wave 62
	music01 6
	music8a 168
	wave 62
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	wave 62
	music01 6
	music8a 168
	wave 62
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	music01 2
	music8a 156
	music01 1
	musicd2
	wave 62
	music01 6
	music8a 167
	wave 62
	music01 2
	music8a 155
	music01 1
	musicd2
	music01 2
	music8a 155
	music01 1
	musicd2
	song_ret

Music_LanceDanger_branch_191f83: ; 191f83 (64:5f83)
	music01 3
	music8a 156
	music01 3
	musicd2
	music8a 156
	music01 3
	musicd2
	music8a 156
	music01 3
	musicd2
	music8a 156
	music01 3
	musicd2
	music8a 156
	music01 3
	musicd2
	music8a 156
	music01 3
	musicd2
	music01 6
	music8a 155
	music01 3
	music8a 156
	music01 3
	musicd2
	music8a 156
	music01 3
	musicd2
	music8a 156
	music01 3
	musicd2
	music8a 156
	music01 3
	musicd2
	music8a 156
	music01 3
	musicd2
	music8a 156
	music01 3
	musicd2
	music8a 156
	music01 3
	musicd2
	music01 12
	music8a 156
	music01 3
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
	music8a 157
	music01 3
	musicd2
	music8a 157
	music01 3
	musicd2
	music01 6
	music8a 156
	music01 3
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
	music8a 157
	music01 3
	musicd2
	music8a 157
	music01 3
	musicd2
	music8a 157
	music01 3
	musicd2
	music01 12
	music8a 157
	music01 3
	music8a 156
	music01 3
	musicd2
	music8a 156
	music01 3
	musicd2
	music8a 156
	music01 3
	musicd2
	music8a 156
	music01 3
	musicd2
	music8a 156
	music01 3
	musicd2
	music8a 156
	music01 3
	musicd2
	music01 6
	music8a 155
	music01 3
	music8a 156
	music01 3
	musicd2
	music8a 156
	music01 3
	musicd2
	music8a 156
	music01 3
	musicd2
	music8a 156
	music01 3
	musicd2
	music8a 156
	music01 3
	musicd2
	music8a 156
	music01 3
	musicd2
	music8a 156
	music01 3
	musicd2
	music01 12
	music8a 156
	music01 6
	music8a 157
	music01 6
	music8a 169
	music01 6
	music8a 157
	music01 6
	music8a 169
	music01 6
	music8a 157
	music01 6
	music8a 169
	music01 6
	music8a 157
	music01 6
	music8a 169
	music01 6
	music8a 159
	music01 6
	music8a 171
	music01 6
	music8a 159
	music01 6
	music8a 171
	music01 6
	music8a 159
	music01 6
	music8a 171
	music01 6
	music8a 159
	music01 6
	music8a 171
	wave 64
	musicd8 104
	music01 3
	music8a 176
	music01 3
	music8a 174
	music01 3
	music8a 173
	music01 3
	music8a 171
	music01 3
	music8a 173
	music01 3
	music8a 171
	music01 3
	music8a 169
	music01 3
	music8a 168
	music01 3
	music8a 171
	music01 3
	music8a 169
	music01 3
	music8a 168
	music01 3
	music8a 164
	music01 3
	music8a 169
	music01 3
	music8a 168
	music01 3
	music8a 164
	music01 3
	music8a 162
	music01 4
	music8a 176
	music01 3
	music8a 174
	music01 3
	music8a 173
	music01 3
	music8a 171
	music01 3
	music8a 173
	music01 3
	music8a 171
	music01 3
	music8a 169
	music01 3
	music8a 168
	music01 3
	music8a 171
	music01 3
	music8a 169
	music01 3
	music8a 168
	music01 3
	music8a 164
	musicd8 27
	music01 11
	music8a 162
	song_ret

Music_LanceDanger_Ch4: ; 19206b (64:606b)
	stereo_panning_both
	musicd6 20
	song_call Music_LanceDanger_branch_192080
Music_LanceDanger_branch_192071: ; 192071 (64:6071)
	song_call Music_LanceDanger_branch_1920d1
	song_call Music_LanceDanger_branch_192162
	song_call Music_LanceDanger_branch_1921fb
	song_call Music_LanceDanger_branch_19228c
	song_jump Music_LanceDanger_branch_192071

Music_LanceDanger_branch_192080: ; 192080 (64:6080)
	music01 6
	music6d 125
	music01 6
	music6d 120
	music01 6
	music6d 120
	music01 6
	music6d 120
	music01 6
	music6d 120
	music01 6
	music6d 120
	music01 3
	music6d 126
	music01 3
	music6d 126
	music01 3
	music6d 127
	music01 3
	music6d 127
	music01 6
	music6d 125
	music01 6
	music6d 120
	music01 6
	music6d 120
	music01 6
	music6d 120
	music01 6
	music6d 120
	music01 6
	music6d 120
	music01 3
	music6d 126
	music01 3
	music6d 126
	music01 3
	music6d 127
	music01 3
	music6d 127
	music01 6
	music6d 125
	music01 6
	music6d 120
	music01 6
	music6d 120
	music01 6
	music6d 120
	music01 6
	music6d 120
	music01 6
	music6d 120
	music01 3
	music6d 126
	music01 3
	music6d 126
	music01 3
	music6d 127
	music01 3
	music6d 127
	music01 6
	music6d 126
	music01 6
	music6d 124
	music01 6
	music6d 126
	music01 6
	music6d 124
	music01 6
	music6d 126
	music01 6
	music6d 124
	music01 3
	music6d 126
	music01 3
	music6d 126
	music01 3
	music6d 127
	music01 3
	music6d 127
	song_ret

Music_LanceDanger_branch_1920d1: ; 1920d1 (64:60d1)
	music01 6
	music6d 125
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 4
	music6d 127
	music01 4
	music6d 126
	music01 4
	music6d 126
	music01 4
	music6d 127
	music01 4
	music6d 126
	music01 4
	music6d 126
	music01 6
	music6d 125
	music01 6
	music6d 112
	music01 2
	music6d 126
	music01 2
	music6d 126
	music01 2
	music6d 126
	music01 3
	music6d 127
	music01 3
	music6d 127
	music01 6
	music6d 125
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 6
	music6d 128
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 6
	music6d 128
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 6
	music6d 128
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 6
	music6d 125
	music01 6
	music6d 126
	music01 6
	music6d 126
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 2
	music6d 126
	music01 2
	music6d 126
	music01 2
	music6d 126
	music01 3
	music6d 127
	music01 3
	music6d 127
	song_ret

Music_LanceDanger_branch_192162: ; 192162 (64:6162)
	music01 6
	music6d 125
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 3
	music6d 112
	music01 3
	music6d 126
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 120
	music01 6
	music6d 112
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 6
	music6d 112
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 120
	music01 6
	music6d 112
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 3
	music6d 112
	music01 3
	music6d 126
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 120
	music01 4
	music6d 127
	music01 4
	music6d 126
	music01 4
	music6d 126
	music01 4
	music6d 127
	music01 4
	music6d 126
	music01 4
	music6d 126
	music01 6
	music6d 125
	music01 6
	music6d 112
	music01 2
	music6d 128
	music01 2
	music6d 126
	music01 2
	music6d 126
	music01 3
	music6d 127
	music01 3
	music6d 127
	music01 6
	music6d 125
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 3
	music6d 112
	music01 3
	music6d 126
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 120
	music01 6
	music6d 112
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 6
	music6d 112
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 120
	music01 6
	music6d 112
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 3
	music6d 112
	music01 3
	music6d 128
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 120
	music01 6
	music6d 112
	music01 6
	music6d 120
	music01 6
	music6d 126
	music01 6
	music6d 126
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 2
	music6d 128
	music01 2
	music6d 126
	music01 2
	music6d 126
	music01 3
	music6d 127
	music01 3
	music6d 127
	song_ret

Music_LanceDanger_branch_1921fb: ; 1921fb (64:61fb)
	music01 6
	music6d 125
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 6
	music6d 112
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 120
	music01 6
	music6d 112
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 6
	music6d 112
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 120
	music01 6
	music6d 112
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 3
	music6d 112
	music01 3
	music6d 128
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 120
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 126
	music01 6
	music6d 126
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 2
	music6d 128
	music01 2
	music6d 126
	music01 2
	music6d 126
	music01 3
	music6d 127
	music01 3
	music6d 127
	music01 6
	music6d 125
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 6
	music6d 112
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 120
	music01 6
	music6d 112
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 6
	music6d 112
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 120
	music01 6
	music6d 112
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 3
	music6d 112
	music01 3
	music6d 126
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 120
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 126
	music01 6
	music6d 126
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 2
	music6d 128
	music01 2
	music6d 126
	music01 2
	music6d 126
	music01 3
	music6d 127
	music01 3
	music6d 127
	song_ret

Music_LanceDanger_branch_19228c: ; 19228c (64:628c)
	music01 6
	music6d 125
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 6
	music6d 112
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 120
	music01 6
	music6d 112
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 6
	music6d 112
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 120
	music01 6
	music6d 112
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 6
	music6d 112
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 120
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 126
	music01 6
	music6d 126
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 2
	music6d 128
	music01 2
	music6d 126
	music01 2
	music6d 126
	music01 3
	music6d 127
	music01 3
	music6d 127
	music01 6
	music6d 125
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 6
	music6d 112
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 120
	music01 6
	music6d 112
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 6
	music6d 112
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 120
	music01 6
	music6d 112
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 6
	music6d 112
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 120
	music01 6
	music6d 112
	music01 6
	music6d 120
	music01 6
	music6d 126
	music01 6
	music6d 126
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 2
	music6d 128
	music01 2
	music6d 126
	music01 2
	music6d 126
	music01 3
	music6d 127
	music01 3
	music6d 127
	music01 12
	music6d 112
	music01 12
	music6d 112
	music01 12
	music6d 112
	music01 12
	music6d 112
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 6
	music6d 112
	music01 6
	music6d 126
	music01 3
	music6d 125
	music01 3
	music6d 120
	music01 3
	music6d 126
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
	song_ret
