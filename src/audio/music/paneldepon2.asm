Music_PanelDePon2: ; 180000 (60:4000)
	dw Music_PanelDePon2_Ch1
	dw Music_PanelDePon2_Ch2
	dw Music_PanelDePon2_Ch3
	dw Music_PanelDePon2_Ch4

Music_PanelDePon2_Ch1: ; 180008 (60:4008)
	musicd6 21
	musicd4 37
	duty_cycle_50
	musicd7 12
	musicd8 114
	music01 6
	music8a 155
	music8a 155
	music8a 153
	music8a 152
	music8a 150
	musicd2
	musicd2
	music8a 153
	music01 6
	musicd3
	music8a 153
	music8a 152
	music8a 150
	music8a 148
	musicd2
	music8a 150
	music8a 155
	music01 6
	musicd3
	music8a 155
	music8a 153
	music8a 152
	music8a 150
	musicd2
	musicd2
	music8a 153
	music01 6
	musicd3
	music8a 153
	music8a 152
	music8a 150
	music8a 148
	musicd7 0
	music01 2
	music8a 171
	music8a 173
	music8a 174
	music8a 176
	music8a 178
	music01 8
	musicd2
Music_PanelDePon2_branch_18003c: ; 18003c (60:403c)
	song_call Music_PanelDePon2_branch_18004b
	song_call Music_PanelDePon2_branch_18004b
	song_call Music_PanelDePon2_branch_180077
	song_call Music_PanelDePon2_branch_1800af
	song_jump Music_PanelDePon2_branch_18003c

Music_PanelDePon2_branch_18004b: ; 18004b (60:404b)
	musicd8 113
	musicd7 0
	musice3 0
	duty_cycle_50
	music01 18
	music8a 179
	music01 24
	music8a 174
	music01 6
	music8a 174
	music01 18
	musicd3
	music01 18
	music8a 179
	music01 12
	music8a 186
	musicd7 12
	duty_cycle_12_5
	music01 6
	music8a 179
	music8a 183
	music8a 186
	music8a 179
	music8a 183
	music8a 186
	music8a 179
	music8a 183
	music01 6
	music8a 186
	musicd7 0
	music8a 183
	music8a 181
	music8a 179
	music01 12
	music8a 183
	music01 6
	music8a 181
	music8a 179
	song_ret

Music_PanelDePon2_branch_180077: ; 180077 (60:4077)
	duty_cycle_50
	musicd8 118
	musice3 0
	music01 18
	music8a 171
	music8a 172
	music01 12
	music8a 174
	music01 24
	musicd3
	music01 12
	music8a 172
	music8a 171
	music01 18
	music8a 172
	music8a 171
	music01 12
	music8a 169
	music01 48
	musicd3
	musicd7 12
	duty_cycle_12_5
	music01 6
	music8a 171
	music01 12
	music8a 169
	music01 6
	music8a 183
	music01 12
	music8a 181
	music01 6
	music8a 171
	music8a 169
	music01 6
	musicd2
	music8a 159
	music8a 157
	musicd2
	music01 12
	music8a 172
	music8a 171
	music01 18
	music8a 169
	music8a 167
	music01 12
	music8a 169
	music01 24
	musicd3
	music01 6
	music8a 174
	music01 18
	music8a 174
	song_ret

Music_PanelDePon2_branch_1800af: ; 1800af (60:40af)
	musicd7 0
	duty_cycle_50
	musice3 1
	music01 6
	music8a 167
	music8a 174
	music8a 179
	music8a 167
	music8a 174
	music8a 179
	music01 12
	music8a 167
	music01 24
	musicd2
	music01 12
	music8a 172
	music8a 171
	music01 6
	music8a 167
	music8a 174
	music8a 179
	music8a 167
	music8a 174
	music8a 179
	music01 12
	music8a 167
	music01 24
	musicd2
	music01 12
	music8a 167
	music8a 169
	music01 48
	music8a 171
	music01 24
	music8a 169
	music01 6
	music8a 169
	music01 12
	music8a 171
	music01 6
	music8a 169
	music01 48
	music8a 167
	music01 48
	musicd3
	musice3 1
	music01 18
	music8a 171
	music8a 172
	music01 12
	music8a 174
	music01 24
	musicd3
	music01 12
	music8a 172
	music01 12
	music8a 171
	music01 18
	music8a 172
	music01 18
	music8a 171
	music01 12
	music8a 169
	music01 48
	musicd3
	music01 6
	music8a 171
	music01 12
	music8a 169
	music01 6
	music8a 183
	music01 12
	music8a 181
	music01 6
	music8a 171
	music8a 169
	music01 6
	musicd2
	music8a 159
	music8a 157
	musicd2
	music01 12
	music8a 172
	music8a 171
	music01 18
	music8a 169
	music8a 167
	music01 12
	music8a 169
	music01 24
	musicd3
	music01 6
	music8a 179
	music01 18
	music8a 179
	music01 18
	music8a 171
	music8a 172
	music01 12
	music8a 174
	music01 24
	musicd3
	music01 12
	music8a 172
	music8a 171
	music01 18
	music8a 172
	music01 18
	music8a 174
	music01 12
	music8a 176
	music01 24
	musicd3
	music01 12
	music8a 174
	music8a 172
	music01 18
	music8a 171
	music8a 172
	music01 12
	music8a 171
	music01 18
	music8a 169
	music8a 171
	music01 12
	music8a 169
	music01 5
	music8a 167
	music01 1
	musicd2
	music01 5
	music8a 167
	music01 1
	musicd2
	music01 5
	music8a 167
	music01 13
	musicd2
	music01 12
	music8a 167
	music01 6
	music8a 167
	music01 18
	music8a 167
	music01 12
	music8a 167
	music01 6
	music8a 167
	music01 12
	music8a 167
	music01 5
	music8a 167
	music01 1
	musicd2
	music01 5
	music8a 167
	music01 1
	musicd2
	music01 5
	music8a 167
	music01 13
	musicd2
	music01 12
	music8a 167
	music01 6
	music8a 167
	music01 18
	music8a 167
	music01 12
	music8a 167
	music01 6
	music8a 167
	music01 12
	music8a 167
	music01 5
	music8a 167
	music01 1
	musicd2
	music01 5
	music8a 167
	music01 1
	musicd2
	music01 5
	music8a 167
	music01 13
	musicd2
	music01 12
	music8a 167
	music01 6
	music8a 167
	music01 18
	music8a 167
	music01 12
	music8a 167
	music01 6
	music8a 167
	music01 12
	music8a 167
	music01 5
	music8a 167
	music01 1
	musicd2
	music01 5
	music8a 167
	music01 1
	musicd2
	music01 5
	music8a 167
	music01 13
	musicd2
	music01 12
	music8a 167
	music01 6
	music8a 167
	music01 18
	music8a 167
	music01 12
	music8a 167
	music01 6
	music8a 167
	music01 12
	music8a 167
	song_ret

Music_PanelDePon2_Ch2: ; 180191 (60:4191)
	volume_envelope 119
	stereo_panning_both
	musicd4 37
	musicd6 21
	duty_cycle_50
	musicd8 114
	musicd7 0
	music01 48
	musicd2
	musicd8 118
	musice3 255
	music01 24
	musicd2
	music01 23
	music8a 174
	music01 1
	musicd2
	music01 48
	music8a 179
	music01 24
	musicd3
	duty_cycle_50
	musicd7 0
	music01 6
	music8a 179
	music01 2
	music8a 171
	music8a 173
	music8a 174
	music8a 176
	music8a 178
	music01 8
	musicd2
Music_PanelDePon2_branch_1801ba: ; 1801ba (60:41ba)
	duty_cycle_50
	musicd7 12
	musicd8 118
	music01 6
	music8a 171
	music01 12
	musicd2
	music01 6
	music8a 171
	music01 18
	musicd2
	music01 6
	music8a 169
	music01 18
	musicd2
	music01 6
	music8a 167
	music01 12
	musicd2
	music01 6
	music8a 167
	musicd2
	music01 18
	music8a 169
	music8a 167
	music01 12
	music8a 166
	music01 18
	music8a 167
	music8a 166
	music01 12
	music8a 167
	music01 6
	music8a 171
	music01 12
	musicd2
	music01 6
	music8a 171
	music01 18
	musicd2
	music01 6
	music8a 169
	music01 18
	musicd2
	music01 6
	music8a 174
	music01 12
	musicd2
	music01 12
	music8a 167
	music01 18
	music8a 169
	music01 18
	music8a 167
	music01 12
	music8a 166
	music01 18
	music8a 167
	music8a 166
	music01 12
	music8a 167
	duty_cycle_12_5
	music01 18
	music8a 159
	music01 18
	music8a 160
	music01 12
	music8a 162
	music01 24
	musicd3
	music01 12
	music8a 160
	music8a 159
	music01 18
	music8a 160
	music8a 159
	music01 12
	music8a 157
	music01 48
	musicd3
	music01 6
	music8a 159
	music8a 157
	musicd2
	music8a 171
	music8a 169
	musicd2
	music8a 159
	music8a 157
	music01 6
	musicd2
	music8a 147
	music8a 145
	musicd2
	music01 12
	music8a 160
	music01 12
	music8a 159
	music01 18
	music8a 157
	music8a 155
	music01 12
	music8a 157
	music01 24
	musicd3
	duty_cycle_25
	musicd7 24
	music01 6
	music8a 167
	music01 18
	music8a 167
	musicd7 12
	duty_cycle_50
	musicd8 118
	music01 18
	music8a 159
	music8a 160
	music01 12
	music8a 162
	music01 24
	musicd3
	music01 12
	music8a 160
	music8a 159
	music01 18
	music8a 160
	music01 18
	music8a 159
	music01 36
	music8a 157
	music01 12
	music8a 155
	music01 12
	music8a 157
	music01 48
	music8a 159
	music01 6
	music8a 157
	music01 18
	musicd2
	music01 6
	music8a 157
	music01 12
	music8a 159
	music01 6
	music8a 157
	music01 24
	music8a 155
	duty_cycle_12_5
	music01 6
	music8a 172
	music01 12
	music8a 174
	music01 6
	music8a 172
	music01 48
	music8a 171
	duty_cycle_50
	music01 18
	music8a 155
	music01 18
	music8a 157
	music01 36
	music8a 159
	music01 12
	music8a 160
	music01 12
	music8a 159
	music01 18
	music8a 160
	music01 18
	music8a 159
	music01 36
	music8a 157
	music01 24
	musicd2
	duty_cycle_25
	musicd7 12
	music01 6
	music8a 159
	music01 6
	music8a 157
	music01 6
	musicd2
	music01 6
	music8a 171
	music01 6
	music8a 169
	music01 6
	musicd2
	music01 6
	music8a 159
	music01 6
	music8a 157
	music01 6
	musicd2
	music01 6
	music8a 147
	music01 6
	music8a 145
	music01 6
	musicd2
	music01 12
	music8a 160
	music01 12
	music8a 159
	music01 18
	music8a 157
	music01 18
	music8a 155
	music01 36
	music8a 157
	music01 6
	music8a 162
	music01 18
	music8a 162
	musicd8 114
	duty_cycle_50
	musicd7 12
	music01 18
	music8a 155
	music01 18
	music8a 157
	music01 36
	music8a 159
	music01 12
	music8a 160
	music01 12
	music8a 159
	music01 18
	music8a 157
	music01 18
	music8a 159
	music01 36
	music8a 160
	music01 12
	music8a 162
	music01 12
	music8a 160
	music01 18
	music8a 159
	music01 18
	music8a 160
	music01 12
	music8a 159
	music01 18
	music8a 157
	music01 18
	music8a 159
	music01 12
	music8a 157
	duty_cycle_12_5
	music01 6
	music8a 155
	music8a 155
	music01 18
	music8a 155
	music01 12
	music8a 155
	music01 6
	music8a 155
	music01 18
	music8a 155
	music01 12
	music8a 155
	music01 6
	music8a 155
	music01 12
	music8a 155
	music01 6
	music8a 162
	music8a 162
	music01 18
	music8a 162
	music01 12
	music8a 162
	music01 6
	music8a 162
	music01 18
	music8a 162
	music01 12
	music8a 162
	music01 6
	music8a 162
	music01 12
	music8a 162
	music01 6
	music8a 167
	music8a 167
	music01 18
	music8a 167
	music01 12
	music8a 167
	music01 6
	music8a 167
	music01 18
	music8a 167
	music01 12
	music8a 167
	music01 6
	music8a 167
	music01 12
	music8a 167
	musicd8 115
	music01 6
	music8a 171
	music8a 171
	music01 18
	music8a 171
	music01 12
	music8a 171
	music01 6
	music8a 171
	music01 18
	music8a 171
	music01 12
	music8a 171
	music01 6
	music8a 171
	music01 12
	music8a 171
	song_jump Music_PanelDePon2_branch_1801ba

Music_PanelDePon2_Ch3: ; 180307 (60:4307)
	wave 25
	musicd8 20
	musicd7 24
	musice3 3
	music01 6
	music8a 155
	music8a 155
	music8a 153
	music8a 152
	music8a 150
	musicd2
	musicd2
	music8a 153
	music01 6
	musicd3
	music8a 153
	music8a 152
	music8a 150
	music8a 148
	musicd2
	music8a 150
	music8a 155
	music01 6
	musicd3
	music8a 155
	music8a 153
	music8a 152
	music8a 150
	musicd2
	musicd2
	music8a 153
	music01 6
	musicd3
	music8a 153
	music8a 152
	music8a 150
	music8a 148
	musicd2
	musicd2
	musicd2
Music_PanelDePon2_branch_180333: ; 180333 (60:4333)
	musice3 0
	musicd7 12
	wave 15
	music01 6
	music8a 155
	musicd2
	musicd2
	music8a 147
	musicd2
	musicd2
	musicd2
	music8a 145
	music01 18
	musicd2
	music8a 150
	music01 12
	music8a 160
	music01 18
	music8a 147
	music8a 152
	music01 12
	music8a 150
	music01 18
	music8a 148
	music8a 147
	music01 12
	music8a 145
	music01 6
	music8a 155
	musicd2
	musicd2
	music8a 147
	musicd2
	musicd2
	musicd2
	music8a 145
	music01 18
	musicd2
	music8a 150
	music01 12
	music8a 148
	music01 18
	music8a 147
	music8a 140
	music01 12
	music8a 150
	music01 18
	music8a 148
	music8a 147
	music01 12
	music8a 145
	music01 6
	music8a 143
	musicd2
	music8a 143
	music8a 145
	musicd2
	music8a 145
	music01 12
	music8a 147
	music01 6
	musicd2
	music8a 147
	music01 12
	music8a 147
	music8a 145
	music8a 143
	music01 6
	music8a 143
	musicd2
	music8a 145
	music8a 143
	musicd2
	music8a 143
	music01 12
	music8a 145
	music01 6
	musicd2
	music8a 145
	music01 12
	music8a 145
	music8a 143
	music8a 145
	music01 6
	music8a 143
	musicd2
	music8a 143
	music8a 143
	musicd2
	music8a 143
	music01 12
	music8a 143
	music01 6
	musicd2
	music8a 143
	music01 12
	music8a 143
	music8a 142
	music8a 143
	music01 6
	music8a 145
	musicd2
	music8a 145
	music8a 147
	musicd2
	music8a 147
	music01 12
	music8a 145
	music01 6
	musicd3
	musicd2
	music8a 145
	music8a 145
	musicd2
	music8a 145
	music8a 145
	music8a 145
	music01 6
	music8a 143
	musicd2
	music8a 143
	music8a 145
	musicd2
	music8a 145
	music01 12
	music8a 147
	music01 6
	musicd2
	music8a 147
	music01 12
	music8a 147
	music8a 145
	music8a 143
	music01 6
	music8a 143
	musicd2
	music8a 145
	music8a 143
	musicd2
	music8a 143
	music01 12
	music8a 145
	music01 6
	musicd2
	music8a 145
	music01 12
	music8a 145
	music8a 143
	music8a 145
	music01 6
	music8a 143
	musicd2
	music8a 143
	music8a 142
	musicd2
	music8a 142
	music01 12
	music8a 143
	music01 6
	musicd2
	music8a 143
	music01 12
	music8a 143
	music8a 142
	music8a 142
	music01 6
	music8a 143
	musicd2
	music8a 143
	music8a 145
	musicd2
	music8a 142
	music01 12
	music8a 143
	music01 6
	musicd3
	musicd2
	music8a 143
	music8a 143
	musicd2
	music8a 145
	music8a 143
	music8a 143
	music01 6
	music8a 143
	musicd2
	music8a 143
	music8a 145
	musicd2
	music8a 145
	music01 12
	music8a 147
	music01 6
	musicd2
	music8a 147
	music01 12
	music8a 147
	music8a 145
	music8a 143
	music01 6
	music8a 145
	musicd2
	music8a 145
	music8a 143
	musicd2
	music8a 143
	music01 12
	music8a 145
	music01 6
	musicd2
	music8a 145
	music01 18
	music8a 143
	music8a 145
	music01 6
	music8a 143
	musicd2
	music8a 143
	music8a 143
	musicd2
	music8a 143
	music01 12
	music8a 143
	music01 6
	musicd2
	music8a 143
	music01 12
	music8a 143
	music8a 142
	music8a 143
	music01 6
	music8a 145
	musicd2
	music8a 145
	music8a 147
	musicd2
	music8a 147
	music01 12
	music8a 145
	music01 6
	musicd3
	musicd2
	music8a 145
	music8a 145
	musicd2
	music8a 145
	music8a 145
	music8a 145
	music01 6
	music8a 143
	musicd2
	music8a 143
	music8a 145
	musicd2
	music8a 145
	music01 12
	music8a 147
	music01 6
	musicd2
	music8a 147
	music01 12
	music8a 147
	music8a 145
	music8a 143
	music01 6
	music8a 145
	musicd2
	music8a 145
	music8a 147
	musicd2
	music8a 147
	music01 12
	music8a 148
	music01 6
	musicd2
	music8a 148
	music01 18
	music8a 148
	music01 6
	music8a 147
	music01 12
	music8a 145
	music01 6
	music8a 143
	musicd2
	music8a 143
	music8a 145
	musicd2
	music8a 145
	music01 12
	music8a 147
	music01 6
	music8a 143
	musicd2
	music8a 143
	music8a 142
	musicd2
	music8a 142
	music01 12
	music8a 142
	music01 6
	music8a 143
	music8a 143
	music8a 143
	music01 12
	musicd2
	music01 6
	music8a 143
	musicd2
	music8a 143
	music01 6
	music8a 143
	music01 12
	musicd2
	music01 6
	music8a 143
	musicd2
	music8a 143
	music8a 143
	musicd2
	music01 6
	music8a 143
	music8a 143
	music8a 143
	music01 12
	musicd2
	music01 6
	music8a 143
	musicd2
	music8a 143
	music01 6
	music8a 143
	music01 12
	musicd2
	music01 6
	music8a 143
	musicd2
	music8a 143
	music8a 143
	musicd2
	music01 6
	music8a 143
	music8a 143
	music8a 143
	music01 12
	musicd2
	music01 6
	music8a 143
	musicd2
	music8a 143
	music01 6
	music8a 143
	music01 12
	musicd2
	music01 6
	music8a 143
	musicd2
	music8a 143
	music8a 143
	musicd2
	music01 6
	music8a 143
	music8a 143
	music8a 143
	music01 12
	musicd2
	music01 6
	music8a 143
	musicd2
	music8a 143
	music01 6
	music8a 143
	music01 12
	musicd2
	music01 6
	music8a 143
	musicd2
	music8a 143
	music8a 143
	musicd2
	song_jump Music_PanelDePon2_branch_180333

Music_PanelDePon2_Ch4: ; 1804b5 (60:44b5)
	stereo_panning_both
	music01 6
	music6d 119
	music6d 123
	music6d 119
	music6d 123
	music6d 119
	music6d 126
	music6d 126
	music6d 119
	music01 6
	music6d 119
	music6d 123
	music6d 119
	music6d 123
	music6d 119
	music6d 123
	music6d 126
	music6d 119
	music01 6
	music6d 119
	music6d 123
	music6d 119
	music6d 123
	music6d 119
	music6d 126
	music6d 126
	music6d 119
	music01 6
	music6d 119
	music6d 123
	music6d 119
	music6d 123
	music6d 119
	music6d 123
	music6d 126
	music6d 127
Music_PanelDePon2_branch_1804da: ; 1804da (60:44da)
	song_call Music_PanelDePon2_branch_1804ef
	song_call Music_PanelDePon2_branch_1804ef
	song_call Music_PanelDePon2_branch_1804ef
	song_call Music_PanelDePon2_branch_1804ef
	song_call Music_PanelDePon2_branch_1804ef
	song_call Music_PanelDePon2_branch_18053b
	song_jump Music_PanelDePon2_branch_1804da

Music_PanelDePon2_branch_1804ef: ; 1804ef (60:44ef)
	music01 6
	music6d 119
	music6d 120
	music6d 126
	music6d 119
	music6d 119
	music6d 120
	music6d 126
	music6d 119
	music01 6
	music6d 119
	music6d 120
	music6d 126
	music6d 119
	music6d 119
	music6d 120
	music6d 126
	music6d 119
	music01 6
	music6d 119
	music6d 120
	music6d 126
	music6d 119
	music6d 119
	music6d 120
	music6d 126
	music6d 119
	music01 6
	music6d 119
	music6d 120
	music6d 126
	music6d 119
	music6d 119
	music6d 120
	music6d 126
	music6d 126
	music01 6
	music6d 119
	music6d 120
	music6d 126
	music6d 119
	music6d 119
	music6d 120
	music6d 126
	music6d 119
	music01 6
	music6d 119
	music6d 120
	music6d 126
	music6d 119
	music6d 119
	music6d 120
	music6d 126
	music6d 119
	music01 6
	music6d 119
	music6d 120
	music6d 126
	music6d 119
	music6d 119
	music6d 120
	music6d 126
	music6d 119
	music01 6
	music6d 119
	music6d 123
	music6d 126
	music6d 123
	music6d 119
	music6d 123
	music01 3
	music6d 126
	music6d 127
	music6d 126
	music6d 127
	song_ret

Music_PanelDePon2_branch_18053b: ; 18053b (60:453b)
	music01 6
	music6d 126
	music6d 126
	music6d 126
	music6d 119
	music6d 119
	music6d 126
	music6d 119
	music6d 119
	music01 6
	music6d 119
	music6d 123
	music6d 126
	music6d 123
	music6d 119
	music6d 123
	music6d 126
	music6d 127
	music01 6
	music6d 126
	music6d 126
	music6d 126
	music6d 119
	music6d 119
	music6d 126
	music6d 119
	music6d 119
	music01 6
	music6d 119
	music6d 123
	music6d 126
	music6d 123
	music6d 119
	music6d 123
	music6d 126
	music6d 127
	music01 6
	music6d 126
	music6d 126
	music6d 126
	music6d 119
	music6d 119
	music6d 126
	music6d 119
	music6d 119
	music01 6
	music6d 119
	music6d 123
	music6d 126
	music6d 123
	music6d 119
	music6d 123
	music01 3
	music6d 126
	music6d 127
	music6d 126
	music6d 127
	song_ret
