Music_GymBattleDanger: ; 18ed33 (63:6d33)
	dw Music_GymBattleDanger_Ch1
	dw Music_GymBattleDanger_Ch2
	dw Music_GymBattleDanger_Ch3
	dw Music_GymBattleDanger_Ch4

Music_GymBattleDanger_Ch1: ; 18ed3b (63:6d3b)
	volume 119
	volume_envelope 115
	stereo_panning_both
	musicd6 19
	musicd7 0
	duty_cycle_12_5
	musice3 2
	musicd8 221
	song_call Music_GymBattleDanger_branch_18ed5e
Music_GymBattleDanger_branch_18ed4c: ; 18ed4c (63:6d4c)
	song_call Music_GymBattleDanger_branch_18eda0
	song_call Music_GymBattleDanger_branch_18ee8f
	song_call Music_GymBattleDanger_branch_18eef9
	song_call Music_GymBattleDanger_branch_18ef85
	song_call Music_GymBattleDanger_branch_18efe1
	song_jump Music_GymBattleDanger_branch_18ed4c

Music_GymBattleDanger_branch_18ed5e: ; 18ed5e (63:6d5e)
	duty_cycle_12_5
	musicd8 205
	musicd4 55
	musicd8 36
	music01 3
	music8a 173
	music01 3
	music8a 172
	music01 3
	music8a 171
	music01 3
	music8a 170
	music01 3
	music8a 171
	music01 3
	music8a 170
	music01 3
	music8a 169
	music01 3
	music8a 168
	music01 3
	music8a 170
	music01 3
	music8a 169
	music01 3
	music8a 168
	music01 3
	music8a 167
	music01 3
	music8a 169
	music01 3
	music8a 168
	music01 3
	music8a 167
	music01 3
	music8a 166
	music01 3
	music8a 168
	music01 3
	music8a 167
	music01 3
	music8a 166
	music01 3
	music8a 165
	music01 3
	music8a 167
	music01 3
	music8a 166
	music01 3
	music8a 165
	music01 3
	music8a 164
	music01 3
	music8a 166
	music01 3
	music8a 165
	music01 6
	music8a 182
	music01 6
	music8a 181
	music01 6
	music8a 180
	song_ret

Music_GymBattleDanger_branch_18eda0: ; 18eda0 (63:6da0)
	musicd8 205
	duty_cycle_12_5
	musicd7 0
	musice3 3
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
	music8a 154
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
	music8a 154
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
	music8a 154
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
	music8a 154
	music01 6
	music8a 155
	music01 6
	music8a 155
	music01 6
	music8a 155
	music01 6
	music8a 155
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
	music8a 154
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
	music8a 154
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
	music8a 154
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
	music8a 154
	music01 6
	music8a 153
	music01 6
	music8a 153
	music01 6
	music8a 153
	music01 6
	music8a 153
	song_ret

; unreferenced ?
Music_GymBattleDanger_branch_18ee48: ; 18ed3b (63:6d3b)
	musicd8 34
	musicd7 12
	music01 6
	music8a 161
	music01 3
	musicd2
	music8a 161
	music01 3
	music8a 168
	music01 3
	musicd2
	music01 12
	music8a 161
	music01 6
	music8a 159
	music01 6
	music8a 160
	music01 6
	music8a 161
	music01 6
	music8a 161
	music01 3
	musicd2
	music8a 161
	music01 3
	music8a 168
	music01 3
	musicd2
	music01 12
	music8a 161
	music01 6
	music8a 160
	music01 12
	music8a 161
	music01 6
	music8a 161
	music01 3
	musicd2
	music8a 161
	music01 3
	music8a 168
	music01 3
	musicd2
	music01 12
	music8a 161
	music01 6
	music8a 159
	music01 6
	music8a 160
	music01 6
	music8a 161
	music01 6
	music8a 161
	music01 3
	musicd2
	music8a 161
	music01 3
	music8a 168
	music01 3
	musicd2
	music01 12
	music8a 161
	music01 6
	music8a 159
	music01 6
	music8a 160
	music01 6
	music8a 161
	song_ret

Music_GymBattleDanger_branch_18ee8f: ; 18ee8f (63:6e8f)
	duty_cycle_12_5
	musice3 2
	musicd7 0
	musicd4 55
	musicd8 118
	music01 18
	music8a 173
	music01 30
	music8a 168
	music01 9
	musicd3
	music01 3
	musicd2
	music01 12
	music8a 173
	music01 6
	music8a 168
	music01 18
	music8a 173
	music01 6
	music8a 181
	music01 12
	music8a 180
	music01 12
	music8a 181
	music01 12
	music8a 178
	music01 6
	music8a 181
	music01 6
	musicd3
	music01 12
	music8a 180
	music01 12
	music8a 181
	music01 18
	music8a 178
	music01 18
	music8a 173
	music01 30
	music8a 168
	music01 9
	musicd3
	music01 3
	musicd2
	music01 12
	music8a 173
	music01 6
	music8a 168
	music01 18
	music8a 173
	music01 6
	music8a 164
	music01 3
	music8a 164
	music01 3
	music8a 166
	music01 6
	music8a 171
	music01 6
	music8a 166
	music01 6
	music8a 163
	music01 6
	music8a 171
	music01 6
	music8a 166
	music01 6
	music8a 175
	music01 3
	music8a 183
	music01 3
	music8a 178
	music01 3
	music8a 173
	music01 3
	music8a 171
	music01 3
	music8a 183
	music01 3
	music8a 178
	music01 3
	music8a 173
	music01 3
	music8a 171
	music01 3
	music8a 178
	music01 3
	music8a 175
	music01 3
	music8a 171
	music01 3
	music8a 166
	music01 3
	music8a 178
	music01 3
	music8a 175
	music01 3
	music8a 171
	music01 3
	music8a 166
	song_ret

Music_GymBattleDanger_branch_18eef9: ; 18eef9 (63:6ef9)
	duty_cycle_12_5
	musicd7 0
	musicd4 55
	musicd8 34
	music01 6
	music8a 185
	music01 6
	music8a 176
	music01 6
	music8a 181
	music01 6
	music8a 176
	music01 6
	music8a 181
	music01 6
	music8a 173
	music01 6
	music8a 176
	music01 6
	music8a 169
	music01 6
	music8a 173
	music01 6
	music8a 176
	music01 6
	music8a 173
	music01 6
	music8a 176
	music01 6
	music8a 173
	music01 6
	music8a 169
	music01 6
	music8a 173
	music01 6
	music8a 176
	music01 6
	music8a 168
	music01 6
	music8a 168
	music01 3
	music8a 166
	music01 3
	music8a 167
	music01 3
	music8a 168
	music01 3
	music8a 169
	music01 6
	music8a 168
	music01 9
	music8a 168
	music01 9
	musicd2
	music01 6
	music8a 168
	music01 6
	music8a 168
	music01 3
	music8a 171
	music01 3
	music8a 170
	music01 3
	music8a 169
	music01 3
	music8a 170
	music01 6
	music8a 168
	music01 9
	music8a 168
	music01 9
	musicd2
	music01 6
	music8a 185
	music01 6
	music8a 176
	music01 6
	music8a 181
	music01 6
	music8a 176
	music01 6
	music8a 181
	music01 6
	music8a 173
	music01 6
	music8a 176
	music01 6
	music8a 169
	music01 6
	music8a 173
	music01 6
	music8a 176
	music01 6
	music8a 173
	music01 6
	music8a 176
	music01 6
	music8a 173
	music01 6
	music8a 169
	music01 6
	music8a 173
	music01 6
	music8a 176
	music01 6
	music8a 175
	music01 6
	music8a 166
	music01 6
	music8a 163
	music01 6
	music8a 175
	music01 6
	music8a 166
	music01 6
	music8a 163
	music01 6
	music8a 175
	music01 6
	music8a 166
	music01 6
	music8a 175
	music01 6
	music8a 166
	music01 6
	music8a 163
	music01 6
	music8a 175
	music01 6
	music8a 175
	music01 6
	music8a 166
	music01 6
	music8a 163
	music01 6
	music8a 175
	song_ret

Music_GymBattleDanger_branch_18ef85: ; 18ef85 (63:6f85)
	duty_cycle_12_5
	musicd7 0
	musicd4 55
	musicd8 34
	music01 3
	music8a 180
	music01 3
	musicd2
	music8a 180
	music01 27
	musicd2
	music01 3
	music8a 180
	music01 3
	musicd2
	music8a 180
	music01 3
	musicd2
	music01 18
	musicd2
	music01 3
	music8a 180
	music01 9
	musicd2
	music01 3
	music8a 180
	music01 3
	musicd2
	music01 6
	music8a 180
	music01 6
	musicd2
	music01 3
	music8a 181
	music01 3
	musicd2
	music8a 181
	music01 27
	musicd2
	music01 3
	music8a 181
	music01 3
	musicd2
	music8a 181
	music01 3
	musicd2
	music01 18
	musicd2
	music01 3
	music8a 181
	music01 9
	musicd2
	music01 3
	music8a 181
	music01 3
	musicd2
	music01 6
	music8a 181
	music01 6
	musicd2
	music01 3
	music8a 182
	music01 3
	musicd2
	music8a 182
	music01 27
	musicd2
	music01 3
	music8a 182
	music01 3
	musicd2
	music8a 182
	music01 3
	musicd2
	music01 18
	musicd2
	music01 3
	music8a 182
	music01 9
	musicd2
	music01 3
	music8a 182
	music01 3
	musicd2
	music01 6
	music8a 182
	music01 6
	musicd2
	song_ret

Music_GymBattleDanger_branch_18efe1: ; 18efe1 (63:6fe1)
	duty_cycle_12_5
	musicd7 0
	musicd4 55
	musicd8 34
	music01 15
	music8a 174
	music01 3
	musicd2
	music01 27
	music8a 174
	music01 3
	musicd2
	music01 15
	music8a 174
	music01 3
	musicd2
	music01 27
	music8a 174
	music01 3
	musicd2
	music8a 181
	music01 3
	musicd2
	music8a 181
	music01 3
	musicd2
	music8a 181
	music01 3
	musicd2
	music8a 181
	music01 3
	musicd2
	music8a 181
	music01 3
	musicd2
	music8a 181
	music01 3
	musicd2
	music8a 181
	music01 3
	musicd2
	music8a 181
	music01 3
	musicd2
	music8a 181
	music01 3
	musicd2
	music8a 181
	music01 3
	musicd2
	music8a 181
	music01 3
	musicd2
	music8a 181
	music01 3
	musicd2
	music8a 181
	music01 3
	musicd2
	music8a 181
	music01 3
	musicd2
	music8a 181
	music01 3
	musicd2
	music8a 181
	music01 3
	musicd2
	music01 48
	musicd2
	song_ret

Music_GymBattleDanger_Ch2: ; 18f02b (63:702b)
	volume 119
	volume_envelope 115
	stereo_panning_both
	duty_cycle_50
	musicd4 55
	duty_cycle_50
	musicd8 179
	musicd4 55
	song_call Music_GymBattleDanger_branch_18f04d
Music_GymBattleDanger_branch_18f03b: ; 18f03b (63:703b)
	song_call Music_GymBattleDanger_branch_18f093
	song_call Music_GymBattleDanger_branch_18f181
	song_call Music_GymBattleDanger_branch_18f1e3
	song_call Music_GymBattleDanger_branch_18f223
	song_call Music_GymBattleDanger_branch_18f25b
	song_jump Music_GymBattleDanger_branch_18f03b

Music_GymBattleDanger_branch_18f04d: ; 18f04d (63:704d)
	duty_cycle_75
	musicd4 55
	musicd8 36
	music01 3
	music8a 173
	music01 3
	music8a 172
	music01 3
	music8a 171
	music01 3
	music8a 170
	music01 3
	music8a 171
	music01 3
	music8a 170
	music01 3
	music8a 169
	music01 3
	music8a 168
	music01 3
	music8a 170
	music01 3
	music8a 169
	music01 3
	music8a 168
	music01 3
	music8a 167
	music01 3
	music8a 169
	music01 3
	music8a 168
	music01 3
	music8a 167
	music01 3
	music8a 166
	music01 3
	music8a 168
	music01 3
	music8a 167
	music01 3
	music8a 166
	music01 3
	music8a 165
	music01 3
	music8a 167
	music01 3
	music8a 166
	music01 3
	music8a 165
	music01 3
	music8a 164
	music01 3
	music8a 166
	music01 3
	music8a 165
	musicd8 179
	musicd4 58
	music01 6
	music8a 182
	musicd4 55
	music01 6
	music8a 181
	music01 6
	music8a 180
	song_ret

Music_GymBattleDanger_branch_18f093: ; 18f093 (63:7093)
	musicd8 224
	duty_cycle_50
	musicd7 0
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
	music8a 154
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
	music8a 154
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
	music8a 154
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
	music8a 154
	music01 6
	music8a 155
	music01 6
	music8a 155
	music01 6
	music8a 155
	music01 6
	music8a 155
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
	music8a 154
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
	music8a 154
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
	music8a 154
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
	music8a 154
	music01 6
	music8a 153
	music01 6
	music8a 153
	music01 6
	music8a 153
	music01 6
	music8a 153
	song_ret

; unreferenced ?
Music_GymBattleDanger_branch_18f139: ; 18f02b (63:702b)
	duty_cycle_12_5
	musicd8 36
	musicd7 24
	music01 6
	music8a 161
	music01 3
	musicd2
	music8a 161
	music01 3
	music8a 168
	music01 3
	musicd2
	music01 12
	music8a 161
	music01 6
	music8a 159
	music01 6
	music8a 160
	music01 6
	music8a 161
	music01 6
	music8a 161
	music01 3
	musicd2
	music8a 161
	music01 3
	music8a 168
	music01 3
	musicd2
	music01 12
	music8a 161
	music01 6
	music8a 160
	music01 12
	music8a 161
	music01 6
	music8a 161
	music01 3
	musicd2
	music8a 161
	music01 3
	music8a 168
	music01 3
	musicd2
	music01 12
	music8a 161
	music01 6
	music8a 159
	music01 6
	music8a 160
	music01 6
	music8a 161
	music01 6
	music8a 161
	music01 3
	musicd2
	music8a 161
	music01 3
	music8a 168
	music01 3
	musicd2
	music01 12
	music8a 161
	music01 6
	music8a 159
	music01 6
	music8a 160
	music01 6
	music8a 161
	song_ret

Music_GymBattleDanger_branch_18f181: ; 18f181 (63:7181)
	duty_cycle_50
	musicd7 0
	musicd8 179
	musicd4 58
	music01 18
	music8a 173
	musicd4 55
	music01 30
	music8a 168
	music01 9
	musicd3
	music01 3
	musicd2
	music01 12
	music8a 173
	music01 6
	music8a 168
	music01 18
	music8a 173
	music01 45
	music8a 174
	musicd4 60
	music01 3
	music8a 174
	music01 24
	musicd2
	musicd4 55
	music01 12
	music8a 169
	music01 12
	music8a 174
	musicd4 58
	music01 18
	music8a 173
	musicd4 55
	music01 30
	music8a 168
	music01 9
	musicd3
	music01 3
	musicd2
	music01 12
	music8a 173
	music01 6
	music8a 168
	music01 18
	music8a 173
	music01 45
	music8a 171
	musicd4 60
	music01 3
	music8a 171
	musicd4 55
	duty_cycle_12_5
	musicd8 39
	music8a 183
	music01 3
	music8a 178
	music01 3
	music8a 173
	music01 3
	music8a 171
	music01 3
	music8a 183
	music01 3
	music8a 178
	music01 3
	music8a 173
	music01 3
	music8a 171
	music01 3
	music8a 178
	music01 3
	music8a 175
	music01 3
	music8a 171
	music01 3
	music8a 166
	music01 3
	music8a 178
	music01 3
	music8a 175
	music01 3
	music8a 171
	music01 3
	music8a 166
	song_ret

Music_GymBattleDanger_branch_18f1e3: ; 18f1e3 (63:71e3)
	musicd8 47
	music01 45
	music8a 169
	music01 3
	musicd3
	music01 21
	music8a 176
	music01 3
	musicd3
	music01 18
	music8a 169
	music01 6
	musicd3
	music01 45
	music8a 171
	music01 3
	musicd3
	music01 6
	music8a 175
	music01 6
	music8a 175
	music01 3
	music8a 178
	music01 3
	music8a 177
	music01 3
	music8a 176
	music01 3
	music8a 177
	music01 6
	music8a 175
	music01 6
	music8a 175
	music01 12
	musicd3
	music01 45
	music8a 169
	music01 3
	musicd3
	music01 24
	music8a 178
	music01 24
	music8a 180
	music01 45
	music8a 178
	music01 3
	musicd3
	music01 6
	music8a 181
	music01 6
	musicd3
	music8a 183
	music01 6
	music8a 181
	music01 6
	music8a 180
	music01 6
	music8a 178
	music01 6
	music8a 176
	music01 6
	music8a 178
	song_ret

Music_GymBattleDanger_branch_18f223: ; 18f223 (63:7223)
	duty_cycle_12_5
	musicd8 39
	music01 6
	music8a 180
	music01 30
	music8a 180
	music01 6
	music8a 180
	music01 6
	music8a 180
	music01 18
	musicd3
	music01 12
	music8a 180
	music01 6
	music8a 180
	music01 12
	music8a 180
	music01 6
	music8a 181
	music01 30
	music8a 181
	music01 6
	music8a 181
	music01 6
	music8a 181
	music01 18
	musicd3
	music01 12
	music8a 181
	music01 6
	music8a 181
	music01 9
	music8a 181
	music01 3
	musicd2
	music01 6
	music8a 182
	music01 30
	music8a 182
	music01 6
	music8a 182
	music01 6
	music8a 182
	music01 18
	musicd3
	music01 12
	music8a 182
	music01 6
	music8a 182
	music01 9
	music8a 182
	music01 3
	musicd2
	song_ret

Music_GymBattleDanger_branch_18f25b: ; 18f25b (63:725b)
	duty_cycle_12_5
	musicd8 39
	musicd8 179
	musicd4 58
	music01 15
	music8a 183
	music01 3
	musicd2
	musicd4 55
	music01 27
	music8a 182
	music01 3
	musicd2
	musicd4 58
	music01 15
	music8a 181
	music01 3
	musicd2
	musicd4 55
	music01 27
	music8a 180
	music01 3
	musicd2
	duty_cycle_12_5
	musicd8 34
	duty_cycle_50
	music8a 186
	music01 3
	musicd2
	music8a 186
	music01 3
	musicd2
	music8a 186
	music01 3
	musicd2
	music8a 186
	music01 3
	musicd2
	musicd8 36
	music8a 187
	music01 3
	musicd2
	music8a 187
	music01 3
	musicd2
	music8a 187
	music01 3
	musicd2
	music8a 187
	music01 3
	musicd2
	musicd8 38
	music8a 188
	music01 3
	musicd2
	music8a 188
	music01 3
	musicd2
	music8a 188
	music01 3
	musicd2
	music8a 188
	music01 3
	musicd2
	musicd8 39
	music8a 189
	music01 3
	musicd2
	music8a 189
	music01 3
	musicd2
	music8a 189
	music01 3
	musicd2
	music8a 189
	music01 3
	musicd2
	musicd8 179
	music01 12
	music8a 152
	music01 12
	music8a 151
	music01 12
	music8a 152
	music01 12
	music8a 154
	song_ret

Music_GymBattleDanger_Ch3: ; 18f2bd (63:72bd)
	stereo_panning_both
	musice3 0
	musicd8 27
	musicd7 12
	musicd4 55
	song_call Music_GymBattleDanger_branch_18f2db
Music_GymBattleDanger_branch_18f2c9: ; 18f2c9 (63:72c9)
	song_call Music_GymBattleDanger_branch_18f31e
	song_call Music_GymBattleDanger_branch_18f416
	song_call Music_GymBattleDanger_branch_18f4a3
	song_call Music_GymBattleDanger_branch_18f523
	song_call Music_GymBattleDanger_branch_18f5ba
	song_jump Music_GymBattleDanger_branch_18f2c9

Music_GymBattleDanger_branch_18f2db: ; 18f2db (63:72db)
	wave 63
	music01 3
	music8a 164
	music01 3
	musicd2
	music8a 164
	music01 3
	music8a 164
	wave 67
	music01 6
	music8a 176
	wave 63
	music01 3
	music8a 164
	music01 3
	musicd2
	music8a 164
	music01 3
	music8a 164
	wave 67
	music01 6
	music8a 177
	wave 63
	music01 3
	music8a 164
	music01 3
	musicd2
	music8a 164
	music01 3
	music8a 164
	wave 67
	music01 6
	music8a 178
	wave 63
	music01 3
	music8a 164
	music01 3
	musicd2
	music8a 164
	music01 3
	music8a 164
	wave 67
	music01 6
	music8a 179
	wave 63
	music01 3
	music8a 164
	music01 3
	musicd2
	wave 67
	music01 6
	music8a 182
	music01 6
	music8a 181
	music01 6
	music8a 180
	song_ret

Music_GymBattleDanger_branch_18f31e: ; 18f31e (63:731e)
	musicd7 12
	wave 63
	music01 3
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
	music8a 149
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
	music8a 149
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
	music8a 149
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
	music8a 149
	music01 6
	music8a 150
	music01 6
	music8a 150
	music01 6
	music8a 150
	music01 6
	music8a 150
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
	music8a 149
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
	music8a 149
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
	music8a 149
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
	music8a 149
	music01 6
	music8a 148
	music01 6
	music8a 148
	music01 6
	music8a 148
	music01 5
	music8a 148
	song_ret

; unreferenced ?
Music_GymBattleDanger_branch_18f3c3: ; 18f2bd (63:72bd)
	wave 64
	music01 6
	music8a 149
	music01 3
	musicd2
	music8a 149
	music01 3
	music8a 156
	music01 3
	musicd2
	music01 12
	music8a 149
	music01 6
	music8a 147
	music01 3
	music8a 148
	music01 3
	musicd2
	music01 3
	music8a 149
	music01 3
	musicd2
	music01 6
	music8a 149
	music01 3
	musicd2
	music8a 149
	music01 3
	music8a 156
	music01 3
	musicd2
	music01 12
	music8a 149
	music01 3
	music8a 148
	music01 3
	musicd2
	music01 12
	music8a 149
	music01 6
	music8a 149
	music01 3
	musicd2
	music8a 149
	music01 3
	music8a 156
	music01 3
	musicd2
	music01 12
	music8a 149
	music01 6
	music8a 147
	music01 3
	music8a 148
	music01 3
	musicd2
	music01 3
	music8a 149
	music01 3
	musicd2
	music01 6
	music8a 149
	music01 3
	musicd2
	music8a 149
	music01 3
	music8a 156
	music01 3
	musicd2
	music01 12
	music8a 149
	music01 6
	music8a 147
	music01 3
	music8a 148
	music01 3
	musicd2
	music01 3
	music8a 149
	music01 3
	musicd2
	song_ret

Music_GymBattleDanger_branch_18f416: ; 18f416 (63:7416)
	wave 62
	musicd7 12
	music01 6
	music8a 149
	music01 3
	musicd2
	music8a 149
	music01 3
	music8a 156
	music01 3
	musicd2
	music01 12
	music8a 149
	music01 6
	music8a 147
	music01 6
	music8a 148
	music01 6
	music8a 149
	music01 6
	music8a 149
	music01 3
	musicd2
	music8a 149
	music01 3
	music8a 156
	music01 3
	musicd2
	music01 12
	music8a 149
	music01 6
	music8a 156
	music01 6
	music8a 155
	music01 6
	music8a 156
	music01 6
	music8a 157
	music01 3
	musicd2
	music8a 150
	music01 3
	music8a 150
	music01 3
	musicd2
	music01 12
	music8a 157
	music01 6
	music8a 148
	music01 6
	music8a 149
	music01 6
	music8a 150
	music01 6
	music8a 157
	music01 3
	musicd2
	music8a 150
	music01 3
	music8a 150
	music01 3
	musicd2
	music01 12
	music8a 157
	music01 6
	music8a 157
	music01 6
	music8a 156
	music01 6
	music8a 155
	music01 6
	music8a 149
	music01 3
	musicd2
	music8a 149
	music01 3
	music8a 156
	music01 3
	musicd2
	music01 12
	music8a 149
	music01 6
	music8a 147
	music01 6
	music8a 148
	music01 6
	music8a 149
	music01 6
	music8a 149
	music01 3
	musicd2
	music8a 149
	music01 3
	music8a 156
	music01 3
	musicd2
	music01 12
	music8a 149
	music01 6
	music8a 156
	music01 6
	music8a 155
	music01 6
	music8a 156
	music01 6
	music8a 152
	music01 3
	music8a 152
	music01 3
	music8a 154
	music01 6
	music8a 159
	music01 6
	music8a 154
	music01 6
	music8a 151
	music01 6
	music8a 159
	music01 6
	music8a 154
	music01 6
	music8a 163
	music01 6
	music8a 157
	music01 6
	music8a 157
	music01 6
	music8a 156
	music01 6
	music8a 156
	music01 6
	music8a 155
	music01 6
	music8a 155
	music01 6
	music8a 154
	music01 6
	music8a 154
	song_ret

Music_GymBattleDanger_branch_18f4a3: ; 18f4a3 (63:74a3)
	music01 6
	music8a 161
	music01 6
	music8a 164
	music01 6
	musicd2
	music8a 164
	music01 6
	music8a 161
	music01 6
	music8a 161
	music01 6
	music8a 161
	music01 6
	music8a 164
	music01 6
	music8a 161
	music01 6
	music8a 164
	music01 6
	music8a 161
	music01 6
	music8a 164
	music01 12
	music8a 161
	music01 6
	music8a 161
	music01 6
	music8a 164
	music01 6
	music8a 163
	music01 6
	music8a 163
	music01 3
	music8a 161
	music01 3
	music8a 162
	music01 3
	music8a 163
	music01 3
	music8a 164
	music01 6
	music8a 163
	music01 9
	music8a 163
	music01 9
	musicd2
	music01 6
	music8a 163
	music01 6
	music8a 163
	music01 3
	music8a 166
	music01 3
	music8a 165
	music01 3
	music8a 164
	music01 3
	music8a 165
	music01 6
	music8a 163
	music01 9
	music8a 163
	music01 9
	musicd2
	music01 6
	music8a 161
	music01 6
	music8a 164
	music01 6
	music8a 161
	music01 6
	music8a 164
	music01 6
	music8a 161
	music01 6
	music8a 161
	music01 6
	music8a 161
	music01 6
	music8a 164
	music01 6
	music8a 161
	music01 6
	music8a 164
	music01 6
	music8a 161
	music01 6
	music8a 164
	music01 12
	music8a 161
	music01 6
	music8a 161
	music01 6
	music8a 164
	music01 6
	music8a 175
	music01 6
	music8a 166
	music01 6
	music8a 163
	music01 6
	music8a 175
	music01 6
	music8a 166
	music01 6
	music8a 163
	music01 6
	music8a 175
	music01 6
	music8a 166
	music01 6
	music8a 175
	music01 6
	music8a 166
	music01 6
	music8a 163
	music01 6
	music8a 175
	music01 6
	music8a 175
	music01 6
	music8a 166
	music01 6
	music8a 163
	music01 6
	music8a 175
	song_ret

Music_GymBattleDanger_branch_18f523: ; 18f523 (63:7523)
	music01 3
	music8a 144
	music01 3
	musicd2
	music8a 174
	music01 3
	musicd2
	music8a 144
	music01 3
	musicd2
	music8a 144
	music01 3
	musicd2
	music8a 144
	music01 3
	musicd2
	music8a 144
	music01 3
	musicd2
	music8a 174
	music01 3
	musicd2
	music8a 174
	music01 3
	music8a 156
	music01 3
	music8a 144
	music01 3
	musicd2
	music8a 144
	music01 3
	musicd2
	music8a 144
	music01 3
	musicd2
	music8a 174
	music01 3
	musicd2
	music8a 144
	music01 3
	musicd2
	music8a 174
	music01 3
	musicd2
	music01 6
	music8a 174
	music01 3
	music8a 144
	music01 3
	music8a 156
	music01 3
	music8a 145
	music01 3
	musicd2
	music8a 174
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
	music8a 174
	music01 3
	musicd2
	music8a 174
	music01 3
	music8a 157
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
	music8a 174
	music01 3
	musicd2
	music8a 145
	music01 3
	musicd2
	music8a 174
	music01 3
	musicd2
	music01 6
	music8a 174
	music01 3
	music8a 145
	music01 3
	music8a 157
	music01 3
	music8a 146
	music01 3
	musicd2
	music8a 174
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
	music8a 174
	music01 3
	musicd2
	music8a 174
	music01 3
	music8a 158
	music01 3
	music8a 146
	music01 3
	musicd2
	music8a 146
	music01 3
	musicd2
	music8a 146
	music01 3
	musicd2
	music8a 174
	music01 3
	musicd2
	music8a 146
	music01 3
	musicd2
	music8a 174
	music01 3
	musicd2
	music01 6
	music8a 174
	music01 3
	music8a 146
	music01 3
	music8a 158
	song_ret

Music_GymBattleDanger_branch_18f5ba: ; 18f5ba (63:75ba)
	music01 18
	music8a 147
	music01 30
	music8a 146
	music01 18
	music8a 145
	music01 30
	music8a 144
	music01 3
	music8a 143
	music01 3
	musicd2
	music8a 143
	music01 3
	musicd2
	music8a 143
	music01 3
	musicd2
	music8a 143
	music01 3
	musicd2
	music8a 144
	music01 3
	musicd2
	music8a 144
	music01 3
	musicd2
	music8a 144
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
	music01 12
	music8a 146
	music01 12
	music8a 147
	music01 12
	music8a 149
	song_ret

Music_GymBattleDanger_Ch4: ; 18f5fc (63:75fc)
	stereo_panning_both
	song_call Music_GymBattleDanger_branch_18f612
Music_GymBattleDanger_branch_18f600: ; 18f600 (63:7600)
	song_call Music_GymBattleDanger_branch_18f64d
	song_call Music_GymBattleDanger_branch_18f6c8
	song_call Music_GymBattleDanger_branch_18f7c8
	song_call Music_GymBattleDanger_branch_18f849
	song_call Music_GymBattleDanger_branch_18f909
	song_jump Music_GymBattleDanger_branch_18f600
Music_GymBattleDanger_branch_18f612: ; 18f612 (63:7612)
	music01 3
	music6d 126
	music01 3
	music6d 121
	music01 3
	music6d 121
	music01 3
	music6d 121
	music01 3
	music6d 126
	music01 3
	music6d 121
	music01 3
	music6d 121
	music01 3
	music6d 121
	music01 3
	music6d 126
	music01 3
	music6d 121
	music01 3
	music6d 121
	music01 3
	music6d 121
	music01 3
	music6d 126
	music01 3
	music6d 126
	music01 3
	music6d 127
	music01 3
	music6d 127
	music01 6
	music6d 124
	music01 3
	music6d 126
	music01 3
	music6d 126
	music01 6
	music6d 126
	music01 6
	music6d 124
	music01 3
	music6d 126
	music01 3
	music6d 126
	music01 3
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

Music_GymBattleDanger_branch_18f64d: ; 18f64d (63:764d)
	music01 3
	music6d 124
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
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
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
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 126
	music01 3
	music6d 126
	music01 3
	musicd2
	music01 9
	music6d 126
	music01 3
	musicd2
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
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
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
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 126
	music01 3
	music6d 126
	music01 3
	musicd2
	music6d 126
	music01 3
	music6d 126
	music01 3
	music6d 127
	music01 3
	music6d 127
	song_ret

Music_GymBattleDanger_branch_18f6c8: ; 18f6c8 (63:76c8)
	music01 3
	music6d 124
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
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music8a 148
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
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 126
	music01 3
	musicd2
	music6d 120
	music01 3
	music6d 126
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music8a 148
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
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music8a 148
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
	music6d 120
	music01 3
	music6d 126
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
	music6d 120
	music01 3
	music6d 120
	music01 3
	music8a 148
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
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music8a 148
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
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music8a 148
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
	music6d 120
	music01 3
	music6d 126
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
	song_ret

Music_GymBattleDanger_branch_18f7c8: ; 18f7c8 (63:77c8)
	music01 6
	music6d 112
	music01 6
	music6d 125
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
	music6d 125
	music01 6
	music6d 112
	music01 6
	music6d 120
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
	music6d 120
	music01 6
	music6d 112
	music01 6
	music6d 125
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
	music6d 125
	music01 6
	music6d 112
	music01 6
	music6d 120
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
	music6d 120
	music01 6
	music6d 112
	music01 6
	music6d 125
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
	music6d 125
	music01 6
	music6d 112
	music01 6
	music6d 120
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
	music6d 120
	music01 6
	music6d 112
	music01 6
	music6d 125
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
	music6d 125
	music01 6
	music6d 112
	music01 6
	music6d 120
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
	music6d 120
	song_ret

Music_GymBattleDanger_branch_18f849: ; 18f849 (63:7849)
	music01 3
	music6d 124
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
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 125
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
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 126
	music01 3
	musicd2
	music6d 120
	music01 3
	music6d 126
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 125
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
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 125
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
	music6d 120
	music01 3
	music6d 126
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
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 125
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
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 125
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
	music6d 120
	music01 3
	music6d 120
	music01 3
	music6d 120
	song_ret

Music_GymBattleDanger_branch_18f909: ; 18f909 (63:7909)
	music01 3
	music6d 125
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
	music6d 120
	music01 3
	music6d 126
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
	music6d 126
	music01 3
	musicd2
	music6d 126
	music01 3
	musicd2
	music6d 126
	music01 3
	musicd2
	music6d 126
	music01 3
	musicd2
	music6d 126
	music01 3
	musicd2
	music6d 126
	music01 3
	musicd2
	music6d 126
	music01 3
	musicd2
	music6d 126
	music01 3
	musicd2
	music6d 126
	music01 3
	musicd2
	music6d 126
	music01 3
	musicd2
	music6d 126
	music01 3
	musicd2
	music6d 126
	music01 3
	musicd2
	music6d 126
	music01 3
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
	music01 3
	music6d 127
	music01 12
	music6d 125
	music01 12
	music6d 125
	music01 12
	music6d 125
	music01 12
	music6d 125
	song_ret
