InitTransferVirtualOAM::
	ld c, LOW(STARTOF("DMA Transfer"))
	ld b, TransferVirtualEnd - TransferVirtualOAM
	ld hl, TransferVirtualOAM
.loop
	ld a, [hli]
	ld [$ff00+c], a
	inc c
	dec b
	jr nz, .loop
	ret

TransferVirtualOAM:
LOAD "DMA Transfer", HRAM
hTransferVirtualOAM:: ; ff80
	ld a, HIGH(wVirtualOAM)
	ldh [rDMA], a ; start DMA transfer (starts right after instruction)
	ld a, 160 / (1 + 3) ; delay for a total of 160 cycles
.loop
	dec a        ; 1 cycle
	jr nz, .loop ; 3 cycles
	ret
ENDL
TransferVirtualEnd:

Func_10018::
	xor a
	ld [w1dd85], a
	ldh a, [hInitialA]
	cp BOOTUP_A_CGB
	jr nz, .not_cgb
	ld a, GAMESTATE_19
	ldh [hGameState], a
	xor a
	ldh [hVBlankTrampolinePtr + 1], a
	ret

.not_cgb
	ld a, LCDC_ON
	ldh [hLCDC], a
	ldh [rLCDC], a
	call DoFrame
	; this is a serious bug, LCD is turned off OUTSIDE V-Blank!
	ld a, LCDC_OFF
	ldh [hLCDC], a
	ldh [rLCDC], a

	ld a, GAMESTATE_LOAD_GB_COMPATIBILITY
	ldh [hGameState], a
	xor a
	ldh [hVBlankTrampolinePtr + 1], a
	ret
; 0x10041

SECTION "Bank 4@44b4", ROMX[$44b4], BANK[$4]

Func_104b4:
	call Func_10503
	ld [$d84e], a
	call Func_1055e
	ld [$d84f], a
	call Func_105ba
	ld [$d850], a
	call Func_10614
	ld [$d851], a
	call Func_1066e
	ld [$d852], a
	call Func_106ab
	ld [$d8ab], a
	call Func_10723
	ld [$d855], a
	call Func_1077a
	ld [$d859], a
	call Func_10806
	ld [$d85d], a
	call Func_10840
	ld [$d85e], a
	call Func_1087a
	ld [$d85f], a
	call Func_108b4
	ld [$d860], a
	call Func_108ee
	ld [$d861], a
	ret

Func_10503:
	call .Func_1050b
	add a ; *2
	call Func_10958
	ret

.Func_1050b:
	ld a, [wGameMode]
	cp GAMEMODE_MARATHON
	jr z, .asm_1052e
	cp GAMEMODE_TIME_ZONE
	jr z, .asm_1052e
	cp GAMEMODE_LINE_CLEAR
	jr z, .asm_1053e
	cp GAMEMODE_PUZZLE
	jr z, .asm_1052e
	cp GAMEMODE_GARBAGE
	jr z, .asm_1054e
	cp GAMEMODE_CHALLENGE
	jr z, .asm_1054e
	cp GAMEMODE_UNK6
	jr z, .asm_1054e
	cp GAMEMODE_UNK7
	jr z, .asm_1054e
.asm_1052e
	call Func_108f4
	ld l, a
	ld h, $00
	ld bc, $6396
	add hl, bc
	ld a, $03
	call GetFarByte
	ret
.asm_1053e
	call Func_1091c
	ld l, a
	ld h, $00
	ld bc, $6d88
	add hl, bc
	ld a, $03
	call GetFarByte
	ret
.asm_1054e
	call Func_1092d
	ld l, a
	ld h, $00
	ld bc, $67c0
	add hl, bc
	ld a, $03
	call GetFarByte
	ret

Func_1055e:
	call Func_10567
	inc a
	inc a
	call Func_10958
	ret

Func_10567:
	ld a, [wGameMode]
	cp GAMEMODE_MARATHON
	jr z, .asm_1058a
	cp GAMEMODE_TIME_ZONE
	jr z, .asm_1058a
	cp GAMEMODE_LINE_CLEAR
	jr z, .asm_1059a
	cp GAMEMODE_PUZZLE
	jr z, .asm_1058a
	cp GAMEMODE_GARBAGE
	jr z, .asm_105aa
	cp GAMEMODE_CHALLENGE
	jr z, .asm_105aa
	cp GAMEMODE_UNK6
	jr z, .asm_105aa
	cp GAMEMODE_UNK7
	jr z, .asm_105aa
.asm_1058a
	call Func_108f4
	ld l, a
	ld h, $00
	ld bc, $6399
	add hl, bc
	ld a, $03
	call GetFarByte
	ret
.asm_1059a
	call Func_1091c
	ld l, a
	ld h, $00
	ld bc, $6d8f
	add hl, bc
	ld a, $03
	call GetFarByte
	ret
.asm_105aa
	call Func_1092d
	ld l, a
	ld h, $00
	ld bc, $67ca
	add hl, bc
	ld a, $03
	call GetFarByte
	ret

Func_105ba:
	call Func_105c1
	call Func_10958
	ret

Func_105c1:
	ld a, [wGameMode]
	cp GAMEMODE_MARATHON
	jr z, .asm_105e4
	cp GAMEMODE_TIME_ZONE
	jr z, .asm_105e4
	cp GAMEMODE_LINE_CLEAR
	jr z, .asm_105f4
	cp GAMEMODE_PUZZLE
	jr z, .asm_105e4
	cp GAMEMODE_GARBAGE
	jr z, .asm_10604
	cp GAMEMODE_CHALLENGE
	jr z, .asm_10604
	cp GAMEMODE_UNK6
	jr z, .asm_10604
	cp GAMEMODE_UNK7
	jr z, .asm_10604
.asm_105e4
	call Func_108f4
	ld l, a
	ld h, $00
	ld bc, $639c
	add hl, bc
	ld a, $03
	call GetFarByte
	ret
.asm_105f4
	call Func_1091c
	ld l, a
	ld h, $00
	ld bc, $6d96
	add hl, bc
	ld a, $03
	call GetFarByte
	ret
.asm_10604
	call Func_1092d
	ld l, a
	ld h, $00
	ld bc, $67d4
	add hl, bc
	ld a, $03
	call GetFarByte
	ret

Func_10614:
	call Func_1061b
	call Func_10958
	ret

Func_1061b:
	ld a, [wGameMode]
	cp GAMEMODE_MARATHON
	jr z, .asm_1063e
	cp GAMEMODE_TIME_ZONE
	jr z, .asm_1063e
	cp GAMEMODE_LINE_CLEAR
	jr z, .asm_1064e
	cp GAMEMODE_PUZZLE
	jr z, .asm_1063e
	cp GAMEMODE_GARBAGE
	jr z, .asm_1065e
	cp GAMEMODE_CHALLENGE
	jr z, .asm_1065e
	cp GAMEMODE_UNK6
	jr z, .asm_1065e
	cp GAMEMODE_UNK7
	jr z, .asm_1065e
.asm_1063e
	call Func_108f4
	ld l, a
	ld h, $00
	ld bc, $639f
	add hl, bc
	ld a, $03
	call GetFarByte
	ret
.asm_1064e
	call Func_1091c
	ld l, a
	ld h, $00
	ld bc, $6d9d
	add hl, bc
	ld a, $03
	call GetFarByte
	ret
.asm_1065e
	call Func_1092d
	ld l, a
	ld h, $00
	ld bc, $67fc
	add hl, bc
	ld a, $03
	call GetFarByte
	ret

Func_1066e:
	call Func_10675
	call Func_10958
	ret

Func_10675:
	ld a, [wGameMode]
	cp GAMEMODE_MARATHON
	jr z, .asm_10698
	cp GAMEMODE_TIME_ZONE
	jr z, .asm_10698
	cp GAMEMODE_LINE_CLEAR
	jr z, .asm_10698
	cp GAMEMODE_PUZZLE
	jr z, .asm_10698
	cp GAMEMODE_GARBAGE
	jr z, .asm_1069b
	cp GAMEMODE_CHALLENGE
	jr z, .asm_1069b
	cp GAMEMODE_UNK6
	jr z, .asm_1069b
	cp GAMEMODE_UNK7
	jr z, .asm_1069b
.asm_10698
	ld a, $00
	ret
.asm_1069b
	call Func_1092d
	ld l, a
	ld h, $00
	ld bc, $6806
	add hl, bc
	ld a, $03
	call GetFarByte
	ret

Func_106ab:
	call Func_106af
	ret

Func_106af:
	ld a, [wGameMode]
	cp GAMEMODE_MARATHON
	jr z, .asm_106d2
	cp GAMEMODE_TIME_ZONE
	jr z, .asm_106d2
	cp GAMEMODE_LINE_CLEAR
	jr z, .asm_106de
	cp GAMEMODE_PUZZLE
	jr z, .asm_10710
	cp GAMEMODE_GARBAGE
	jr z, .asm_10713
	cp GAMEMODE_CHALLENGE
	jr z, .asm_10713
	cp GAMEMODE_UNK6
	jr z, .asm_10713
	cp GAMEMODE_UNK7
	jr z, .asm_10713
.asm_106d2
	ld a, [wSpeedLevel]
	and a
	jr z, .asm_106d9
	dec a
.asm_106d9
	inc a
	ld [$d8ab], a
	ret
.asm_106de
	ld a, [wceac]
	and a
	jr z, .asm_106e7
	ld a, $28
	ret
.asm_106e7
	call Func_1091c
	add a
	ld l, a
	ld h, $00
	ld bc, $6dab
	add hl, bc
	ld a, $03
	call GetFarByte
	ld c, a
	inc hl
	ld a, $03
	call GetFarByte
	ld b, a
	ld a, [wceab]
	and a
	jr z, .asm_10706
	dec a
.asm_10706
	ld l, a
	ld h, $00
	add hl, bc
	ld a, $03
	call GetFarByte
	ret
.asm_10710
	ld a, $00
	ret
.asm_10713
	call Func_1092d
	ld l, a
	ld h, $00
	ld bc, $67de
	add hl, bc
	ld a, $03
	call GetFarByte
	ret

Func_10723:
	call Func_10727
	ret

Func_10727:
	ld a, [wGameMode]
	cp GAMEMODE_MARATHON
	jr z, .asm_1074a
	cp GAMEMODE_TIME_ZONE
	jr z, .asm_1074a
	cp GAMEMODE_LINE_CLEAR
	jr z, .asm_1075a
	cp GAMEMODE_PUZZLE
	jr z, .asm_1074a
	cp GAMEMODE_GARBAGE
	jr z, .asm_1076a
	cp GAMEMODE_CHALLENGE
	jr z, .asm_1076a
	cp GAMEMODE_UNK6
	jr z, .asm_1076a
	cp GAMEMODE_UNK7
	jr z, .asm_1076a
.asm_1074a
	call Func_108f4
	ld l, a
	ld h, $00
	ld bc, $6393
	add hl, bc
	ld a, $03
	call GetFarByte
	ret
.asm_1075a
	call Func_1091c
	ld l, a
	ld h, $00
	ld bc, $6da4
	add hl, bc
	ld a, $03
	call GetFarByte
	ret
.asm_1076a
	call Func_1092d
	ld l, a
	ld h, $00
	ld bc, $67b6
	add hl, bc
	ld a, $03
	call GetFarByte
	ret

Func_1077a:
	call Func_1077e
	ret

Func_1077e:
	ld a, [wGameMode]
	cp GAMEMODE_MARATHON
	jr z, .asm_107a1
	cp GAMEMODE_TIME_ZONE
	jr z, .asm_107b1
	cp GAMEMODE_LINE_CLEAR
	jr z, .asm_107b4
	cp GAMEMODE_PUZZLE
	jr z, .asm_107a1
	cp GAMEMODE_GARBAGE
	jr z, .asm_107e6
	cp GAMEMODE_CHALLENGE
	jr z, .asm_107e6
	cp GAMEMODE_UNK6
	jr z, .asm_107e6
	cp GAMEMODE_UNK7
	jr z, .asm_107f6
.asm_107a1
	call Func_108f4
	ld l, a
	ld h, $00
	ld bc, $6390
	add hl, bc
	ld a, $03
	call GetFarByte
	ret
.asm_107b1
	ld a, $06
	ret
.asm_107b4
	ld a, [wceac]
	and a
	jr z, .asm_107bd
	ld a, $06
	ret
.asm_107bd
	call Func_1091c
	add a
	ld l, a
	ld h, $00
	ld bc, $6dd5
	add hl, bc
	ld a, $03
	call GetFarByte
	ld c, a
	inc hl
	ld a, $03
	call GetFarByte
	ld b, a
	ld a, [wceab]
	and a
	jr z, .asm_107dc
	dec a
.asm_107dc
	ld l, a
	ld h, $00
	add hl, bc
	ld a, $03
	call GetFarByte
	ret
.asm_107e6
	call Func_1092d
	ld l, a
	ld h, $00
	ld bc, $67a2
	add hl, bc
	ld a, $03
	call GetFarByte
	ret
.asm_107f6
	call Func_1092d
	ld l, a
	ld h, $00
	ld bc, $67ac
	add hl, bc
	ld a, $03
	call GetFarByte
	ret

Func_10806:
	call Func_1080a
	ret

Func_1080a:
	ld a, [wGameMode]
	cp GAMEMODE_MARATHON
	jr z, .asm_1082d
	cp GAMEMODE_TIME_ZONE
	jr z, .asm_1082d
	cp GAMEMODE_LINE_CLEAR
	jr z, .asm_1082d
	cp GAMEMODE_PUZZLE
	jr z, .asm_1082d
	cp GAMEMODE_GARBAGE
	jr z, .asm_1082d
	cp GAMEMODE_CHALLENGE
	jr z, .asm_10830
	cp GAMEMODE_UNK6
	jr z, .asm_10830
	cp GAMEMODE_UNK7
	jr z, .asm_1082d
.asm_1082d
	ld a, $00
	ret
.asm_10830
	call Func_1092d
	ld l, a
	ld h, $00
	ld bc, $67e8
	add hl, bc
	ld a, $03
	call GetFarByte
	ret

Func_10840:
	call Func_10844
	ret

Func_10844:
	ld a, [wGameMode]
	cp GAMEMODE_MARATHON
	jr z, .asm_10867
	cp GAMEMODE_TIME_ZONE
	jr z, .asm_10867
	cp GAMEMODE_LINE_CLEAR
	jr z, .asm_10867
	cp GAMEMODE_PUZZLE
	jr z, .asm_10867
	cp GAMEMODE_GARBAGE
	jr z, .asm_10867
	cp GAMEMODE_CHALLENGE
	jr z, .asm_1086a
	cp GAMEMODE_UNK6
	jr z, .asm_1086a
	cp GAMEMODE_UNK7
	jr z, .asm_10867
.asm_10867
	ld a, $00
	ret
.asm_1086a
	call Func_1092d
	ld l, a
	ld h, $00
	ld bc, $67f2
	add hl, bc
	ld a, $03
	call GetFarByte
	ret

Func_1087a:
	call Func_1087e
	ret

Func_1087e:
	ld a, [wGameMode]
	cp GAMEMODE_MARATHON
	jr z, .asm_108a1
	cp GAMEMODE_TIME_ZONE
	jr z, .asm_108a1
	cp GAMEMODE_LINE_CLEAR
	jr z, .asm_108a1
	cp GAMEMODE_PUZZLE
	jr z, .asm_108a1
	cp GAMEMODE_GARBAGE
	jr z, .asm_108a4
	cp GAMEMODE_CHALLENGE
	jr z, .asm_108a4
	cp GAMEMODE_UNK6
	jr z, .asm_108a4
	cp GAMEMODE_UNK7
	jr z, .asm_108a1
.asm_108a1
	ld a, $00
	ret
.asm_108a4
	call Func_1092d
	ld l, a
	ld h, $00
	ld bc, $6810
	add hl, bc
	ld a, $03
	call GetFarByte
	ret

Func_108b4:
	call Func_108b8
	ret

Func_108b8:
	ld a, [wGameMode]
	cp GAMEMODE_MARATHON
	jr z, .asm_108db
	cp GAMEMODE_TIME_ZONE
	jr z, .asm_108db
	cp GAMEMODE_LINE_CLEAR
	jr z, .asm_108db
	cp GAMEMODE_PUZZLE
	jr z, .asm_108db
	cp GAMEMODE_GARBAGE
	jr z, .asm_108de
	cp GAMEMODE_CHALLENGE
	jr z, .asm_108de
	cp GAMEMODE_UNK6
	jr z, .asm_108de
	cp GAMEMODE_UNK7
	jr z, .asm_108db
.asm_108db
	ld a, $00
	ret
.asm_108de
	call Func_1092d
	ld l, a
	ld h, $00
	ld bc, $681a
	add hl, bc
	ld a, $03
	call GetFarByte
	ret

Func_108ee:
	ld a, $04
	call Func_10958
	ret

Func_108f4:
	ld a, [wGameMode]
	cp GAMEMODE_PUZZLE
	jr nz, .asm_108fe
	ld a, $00
	ret
.asm_108fe
	ld a, [wGameLevel]
	cp GAMELEVEL_EASY
	ret z
	cp GAMELEVEL_NORMAL
	ret z
	cp GAMELEVEL_HARD
	ret z
	cp GAMELEVEL_S_HARD
	jr z, .asm_10916
	cp GAMELEVEL_V_HARD
	jr z, .asm_10916
	cp GAMELEVEL_SLOW
	jr z, .asm_10919
.asm_10916
	ld a, $02
	ret
.asm_10919
	ld a, $00
	ret

Func_1091c:
	ld a, [wceac]
	and a
	jr z, .asm_10925
	ld a, $06
	ret
.asm_10925
	ld a, [$ceaa]
	and a
	jr z, .asm_1092c
	dec a
.asm_1092c
	ret

Func_1092d:
	ld a, [wGameMode]
	cp GAMEMODE_GARBAGE
	jr z, .asm_10940
	cp GAMEMODE_CHALLENGE
	jr z, .asm_10940
	ld a, [$cea7]
	and a
	jr z, .asm_1093f
	dec a
.asm_1093f
	ret
.asm_10940
	call Func_108f4
	cp $00
	jr z, .asm_10955
	cp $01
	jr z, .asm_10952
	cp $02
	jr z, .asm_1094f
.asm_1094f
	ld a, $05
	ret
.asm_10952
	ld a, $03
	ret
.asm_10955
	ld a, $01
	ret

Func_10958:
	push bc
	ld b, a
	ld a, [wGameMode]
	cp GAMEMODE_MARATHON
	jr z, .asm_1096c
	cp GAMEMODE_TIME_ZONE
	jr z, .asm_1096c
	cp GAMEMODE_GARBAGE
	jr z, .asm_1096c
	ld a, b
	jr .asm_10994
.asm_1096c
	ld a, [wGameLevel]
	cp GAMELEVEL_SLOW
	jr z, .slow
	ld a, b
	jr .asm_10994
.slow
	ld a, [wceb4]
	cp $00
	jr z, .asm_10989
	cp $01
	jr z, .asm_1098d
	cp $02
	jr z, .asm_10985
.asm_10985
	ld c, $02
	jr .asm_1098f
.asm_10989
	ld c, $03
	jr .asm_1098f
.asm_1098d
	ld c, $04
.asm_1098f
	xor a
.asm_10990
	add b
	dec c
	jr nz, .asm_10990
.asm_10994
	pop bc
	ret

Func_10996::
	xor a
	ld [wceb2], a
	ld [wceb3], a
	ld [wceb4], a
	ld [wceb5], a
	ld [wceb6], a
	ld [wceb7], a
	ld [wc601], a
	ld [wc7ce], a
	ld [wceb9], a
	ld [wceba], a

	ld a, $01
	ld [wceb3], a
	ld a, $01
	ld [wceb8], a
	ret

Func_109c0::
	xor a
	ld [wcebc], a
	ld [wcebd], a
	ret

Func_109c8:
	ld a, [$d89e]
	ld l, a
	push hl
	ld a, [$c494]
	ld l, a
	ld a, [$c493]
	ld h, a
	push hl
	ldh a, [hVBlankTrampolineBank]
	ld l, a
	push hl
	ldh a, [hVBlankTrampolinePtr + 1]
	ld l, a
	ldh a, [hVBlankTrampolinePtr + 0]
	ld h, a
	push hl
	ldh a, [hJoypadRepeatDelay]
	ld l, a
	ldh a, [hJoypadRepeatInterval]
	ld h, a
	push hl
	call Func_10a10
	xor a
	ld [$d867], a
	pop hl
	ld a, h
	ldh [hJoypadRepeatInterval], a
	ld a, l
	ldh [hJoypadRepeatDelay], a
	pop hl
	ld a, h
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, l
	ldh [hVBlankTrampolinePtr + 1], a
	pop hl
	ld a, l
	ldh [hVBlankTrampolineBank], a
	pop hl
	ld a, h
	ld [$c493], a
	ld a, l
	ld [$c494], a
	pop hl
	ld a, l
	ld [$d89e], a
	ret

Func_10a10:
	xor a
	ld [$d89e], a

	ld a, 15
	ldh [hJoypadRepeatDelay], a
	ld a, 3
	ldh [hJoypadRepeatInterval], a

	ld a, [wGameMode]
	cp GAMEMODE_LINE_CLEAR
	jr z, .asm_10a3e
	cp GAMEMODE_PUZZLE
	jr z, .asm_10a3e
	cp GAMEMODE_CHALLENGE
	jr z, .asm_10a3e
	cp GAMEMODE_UNK6
	jr z, .asm_10a3e
	cp GAMEMODE_UNK7
	jr z, .asm_10a3e
	ld a, [wGameLevel]
	cp GAMELEVEL_EASY
	jr z, .asm_10a67
	cp GAMELEVEL_SLOW
	jr z, .asm_10a67
.asm_10a3e
	ld hl, wVBlankHandler
	ld [hl], $c3
	inc hl
	ld [hl], LOW(Func_32df)
	inc hl
	ld [hl], HIGH(Func_32df)

	ld a, LOW(Func_c5432)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(Func_c5432)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(Func_c5432)
	ldh [hVBlankTrampolinePtr + 1], a
	call DoFrame

	ld a, LOW(Func_c5437)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(Func_c5437)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(Func_c5437)
	ldh [hVBlankTrampolinePtr + 1], a
	call DoFrame

.asm_10a67
	ld hl, wVBlankHandler
	ld [hl], $c3
	inc hl
	ld [hl], LOW(VBlankHandler)
	inc hl
	ld [hl], HIGH(VBlankHandler)
	ld b, $01
.asm_10a74
	call DoFrame
	dec b
	jr nz, .asm_10a74
	ld a, $02
	ld [$d86a], a
	xor a
	ld [$d869], a
	ld [$d868], a
	ld [$d86b], a
.asm_10a89
	ldh a, [hJoypadDown]
	and PAD_SELECT
	jp nz, .asm_10b84
	ld a, [$d867]
	dec a
	jr nz, .asm_10a9d
	ldh a, [hJoypadPressed]
	and PAD_A | PAD_B | PAD_START
	jp nz, Func_10b8d
.asm_10a9d
	farcall Func_c54f4
	ld b, $24
	ld a, $3c
	add e
	ld c, a
	ld hl, $6ce0
	ld e, $32
	call Func_32c
	ld a, [$d867]
	dec a
	jp nz, .asm_10b84
	ld a, [$d86a]
	dec a
	ld b, a
	ldh a, [hJoypadPressed]
	and PAD_UP
	jr nz, .asm_10acf
	ldh a, [hJoypadHeld]
	and PAD_UP
	jr z, .asm_10af3
	ld a, [$d869]
	and a
	jr z, .asm_10af3
.asm_10acf
	xor a
	ld [$d86b], a
	ld a, [$d869]
	cp b
	jr z, .asm_10adb
	jr nc, .asm_10ae1
.asm_10adb
	cp $00
	jr z, .asm_10ae1
	jr nz, .asm_10ae4
.asm_10ae1
	ld a, b
	jr .asm_10ae5
.asm_10ae4
	dec a
.asm_10ae5
	ld [$d869], a
	ld a, [wc7ce]
	and a
	jr nz, .asm_10af3
	ld a, $02
	ld [wc7cb], a
.asm_10af3
	ldh a, [hJoypadPressed]
	and PAD_DOWN
	jr nz, .asm_10b05
	ldh a, [hJoypadHeld]
	and PAD_DOWN
	jr z, .asm_10b26
	ld a, [$d869]
	cp b
	jr z, .asm_10b26
.asm_10b05
	xor a
	ld [$d86b], a
	ld a, [$d869]
	cp $00
	jr c, .asm_10b13
	cp b
	jr c, .asm_10b17
.asm_10b13
	ld a, $00
	jr .asm_10b18
.asm_10b17
	inc a
.asm_10b18
	ld [$d869], a
	ld a, [wc7ce]
	and a
	jr nz, .asm_10b26
	ld a, $02
	ld [wc7cb], a
.asm_10b26
	ldh a, [hffb7]
	bit 3, a
	jr z, .asm_10b49
	ld a, [$d869]
	add a
	add a
	add a
	add a
	ld d, a
	farcall Func_c54af
	ld b, $14
	ld a, $54
	add e
	add d
	ld c, a
	ld hl, $6cf5
	ld e, $32
	call Func_32c
.asm_10b49
	ld a, $68
	ldh [hff90], a
	ld a, [$d868]
	ld e, a
	ld hl, rLY
	ld a, $38
	add e
.asm_10b57
	cp [hl]
	jr nz, .asm_10b57
	ld a, $a0
	ldh [rSCX], a
	ld a, $c8
	sub e
	ldh [rSCY], a
	push hl
	push de
	call Func_10be4
	pop de
	pop hl
	ldh a, [hff90]
	add e
.asm_10b6d
	cp [hl]
	jr nz, .asm_10b6d
	ldh a, [hSCX]
	ldh [rSCX], a
	ldh a, [hSCY]
	ldh [rSCY], a
	push hl
	farcall Func_c54af
	pop hl
	ld a, e
	ld [$d868], a
.asm_10b84
	call Func_39d
	call DoFrame
	jp .asm_10a89

Func_10b8d:
	ldh a, [hJoypadDown]
	and PAD_B
	jr nz, .asm_10ba6
	ld a, [wc7ce]
	and a
	jr nz, .asm_10b9e
	ld a, $03
	ld [wc7cb], a
.asm_10b9e
	ld a, [$d869]
	ld [wcec4], a
	jr .asm_10bb5
.asm_10ba6
	ld a, [wc7ce]
	and a
	jr nz, .asm_10bb1
	ld a, $04
	ld [wc7cb], a
.asm_10bb1
	xor a
	ld [wcec4], a
.asm_10bb5
	ld b, $08
.asm_10bb7
	call DoFrame
	dec b
	jr nz, .asm_10bb7
	ld hl, wVBlankHandler
	ld [hl], $c3
	inc hl
	ld [hl], LOW(Func_3298)
	inc hl
	ld [hl], HIGH(Func_3298)
	farcall Func_c2bfa
	farcall Func_c3110
.asm_10bd4
	farcall Func_c2b85
	call DoFrame
	ld a, [$d58c]
	and a
	jr nz, .asm_10bd4
	ret

Func_10be4:
	farcall Func_c54af
	ld a, $54
	add e
	ldh [hff8b], a
	ld a, $00
	ldh [hff92], a
	call Func_10d56
	ldh a, [hVirtualOAMSize]
	cp OAM_SIZE
	jr z, .asm_10c0e
	ld l, a
	ld h, HIGH(wVirtualOAM)
	ldh a, [hff8d]
	ld [hli], a ; y
	ldh a, [hff8c]
	ld [hli], a ; x
	ld a, $70
	ld [hli], a ; tile
	ld a, $00
	ld [hli], a ; attributes
	ld a, l
	ldh [hVirtualOAMSize], a
.asm_10c0e
	call Func_10d71
	ldh a, [hVirtualOAMSize]
	cp OAM_SIZE
	jr z, .asm_10c29
	ld l, a
	ld h, HIGH(wVirtualOAM)
	ldh a, [hff8d]
	ld [hli], a ; y
	ldh a, [hff8c]
	ld [hli], a ; x
	ld a, $71
	ld [hli], a ; tile
	ld a, $00
	ld [hli], a ; attributes
	ld a, l
	ldh [hVirtualOAMSize], a
.asm_10c29
	call Func_10d71
	ldh a, [hVirtualOAMSize]
	cp OAM_SIZE
	jr z, .asm_10c44
	ld l, a
	ld h, HIGH(wVirtualOAM)
	ldh a, [hff8d]
	ld [hli], a ; y
	ldh a, [hff8c]
	ld [hli], a ; x
	ld a, $72
	ld [hli], a ; tile
	ld a, $00
	ld [hli], a ; attributes
	ld a, l
	ldh [hVirtualOAMSize], a
.asm_10c44
	call Func_10d71
	ldh a, [hVirtualOAMSize]
	cp OAM_SIZE
	jr z, .asm_10c5f
	ld l, a
	ld h, HIGH(wVirtualOAM)
	ldh a, [hff8d]
	ld [hli], a ; y
	ldh a, [hff8c]
	ld [hli], a ; x
	ld a, $73
	ld [hli], a ; tile
	ld a, $00
	ld [hli], a ; attributes
	ld a, l
	ldh [hVirtualOAMSize], a
.asm_10c5f
	call Func_10d71
	ldh a, [hVirtualOAMSize]
	cp OAM_SIZE
	jr z, .asm_10c7a
	ld l, a
	ld h, HIGH(wVirtualOAM)
	ldh a, [hff8d]
	ld [hli], a ; y
	ldh a, [hff8c]
	ld [hli], a ; x
	ld a, $6f
	ld [hli], a ; tile
	ld a, $00
	ld [hli], a ; attributes
	ld a, l
	ldh [hVirtualOAMSize], a
.asm_10c7a
	call Func_10d71
	ldh a, [hVirtualOAMSize]
	cp OAM_SIZE
	jr z, .asm_10c95
	ld l, a
	ld h, HIGH(wVirtualOAM)
	ldh a, [hff8d]
	ld [hli], a ; y
	ldh a, [hff8c]
	ld [hli], a ; x
	ld a, $72
	ld [hli], a ; tile
	ld a, $00
	ld [hli], a ; attributes
	ld a, l
	ldh [hVirtualOAMSize], a
.asm_10c95
	call Func_10d71
	ldh a, [hVirtualOAMSize]
	cp OAM_SIZE
	jr z, .asm_10cb0
	ld l, a
	ld h, HIGH(wVirtualOAM)
	ldh a, [hff8d]
	ld [hli], a ; y
	ldh a, [hff8c]
	ld [hli], a ; x
	ld a, $74
	ld [hli], a ; tile
	ld a, $00
	ld [hli], a ; attributes
	ld a, l
	ldh [hVirtualOAMSize], a
.asm_10cb0
	call Func_10d71
	ldh a, [hVirtualOAMSize]
	cp OAM_SIZE
	jr z, .asm_10ccb
	ld l, a
	ld h, HIGH(wVirtualOAM)
	ldh a, [hff8d]
	ld [hli], a ; y
	ldh a, [hff8c]
	ld [hli], a ; x
	ld a, $75
	ld [hli], a ; tile
	ld a, $00
	ld [hli], a ; attributes
	ld a, l
	ldh [hVirtualOAMSize], a
.asm_10ccb
	ldh a, [hff8b]
	add $10
	ldh [hff8b], a
	ldh a, [hff92]
	inc a
	ldh [hff92], a
	call Func_10d56
	ldh a, [hVirtualOAMSize]
	cp OAM_SIZE
	jr z, .asm_10cf1
	ld l, a
	ld h, HIGH(wVirtualOAM)
	ldh a, [hff8d]
	ld [hli], a ; y
	ldh a, [hff8c]
	ld [hli], a ; x
	ld a, $76
	ld [hli], a ; tile
	ld a, $00
	ld [hli], a ; attributes
	ld a, l
	ldh [hVirtualOAMSize], a
.asm_10cf1
	call Func_10d71
	ldh a, [hVirtualOAMSize]
	cp OAM_SIZE
	jr z, .asm_10d0c
	ld l, a
	ld h, HIGH(wVirtualOAM)
	ldh a, [hff8d]
	ld [hli], a ; y
	ldh a, [hff8c]
	ld [hli], a ; x
	ld a, $74
	ld [hli], a ; tile
	ld a, $00
	ld [hli], a ; attributes
	ld a, l
	ldh [hVirtualOAMSize], a
.asm_10d0c
	call Func_10d71
	ldh a, [hVirtualOAMSize]
	cp OAM_SIZE
	jr z, .asm_10d27
	ld l, a
	ld h, HIGH(wVirtualOAM)
	ldh a, [hff8d]
	ld [hli], a ; y
	ldh a, [hff8c]
	ld [hli], a ; x
	ld a, $6f
	ld [hli], a ; tile
	ld a, $00
	ld [hli], a ; attributes
	ld a, l
	ldh [hVirtualOAMSize], a
.asm_10d27
	call Func_10d71
	ldh a, [hVirtualOAMSize]
	cp OAM_SIZE
	jr z, .asm_10d42
	ld l, a
	ld h, HIGH(wVirtualOAM)
	ldh a, [hff8d]
	ld [hli], a ; y
	ldh a, [hff8c]
	ld [hli], a ; x
	ld a, $73
	ld [hli], a ; tile
	ld a, $00
	ld [hli], a ; attributes
	ld a, l
	ldh [hVirtualOAMSize], a
.asm_10d42
	ld a, [$d86b]
	cp $00
	jr c, .asm_10d4d
	cp $27
	jr c, .asm_10d51
.asm_10d4d
	ld a, $00
	jr .asm_10d52
.asm_10d51
	inc a
.asm_10d52
	ld [$d86b], a
	ret

Func_10d56:
	ld a, $1c
	ldh [hff8a], a
	ld a, [$d86b]
	ldh [hff93], a
	xor a
	ldh [hff91], a
	ld a, [$d869]
	ld e, a
	ldh a, [hff92]
	cp e
	jr nz, .asm_10d6f
	ld a, $01
	ldh [hff91], a
.asm_10d6f
	jr Func_10d7d

Func_10d71:
	ldh a, [hff8a]
	add $08
	ldh [hff8a], a
	ldh a, [hff93]
	add $03
	ldh [hff93], a
Func_10d7d:
	ldh a, [hff91]
	and a
	jr z, .asm_10d98
	ldh a, [hff93]
	add a
	ld l, a
	ld h, $00
	ld bc, $4da1
	add hl, bc
	ldh a, [hff8a]
	add [hl]
	ldh [hff8c], a
	inc hl
	ldh a, [hff8b]
	add [hl]
	ldh [hff8d], a
	ret
.asm_10d98
	ldh a, [hff8a]
	ldh [hff8c], a
	ldh a, [hff8b]
	ldh [hff8d], a
	ret
; 0x10da1

SECTION "Bank 4@4e41", ROMX[$4e41], BANK[$4]

Func_10e41:
	ld de, s3a000
	ld c, BANK(s3a000)
	ld hl, $6ca0
	ld a, $32
	call Func_93d
	push hl
	ld hl, $4e57
	call Func_692
	pop hl
	ret
; 0x10e57

SECTION "Bank 4@4e63", ROMX[$4e63], BANK[$4]

Func_10e63::
	ld a, [$d89e]
	and a
	ret z
	ld a, [wGameMode]
	cp GAMEMODE_TIME_ZONE
	jr z, .asm_10ea7
	cp GAMEMODE_UNK7
	jr z, .asm_10ea7
	ld hl, $d89a
	ld a, [hl]
	cp $3b
	jr c, .asm_10ea4
	inc hl
	ld a, [hl]
	cp $3b
	jr c, .asm_10e9e
	inc hl
	ld a, [hl]
	cp $3b
	jr c, .asm_10e97
	inc hl
	ld a, [hl]
	cp $63
	jr c, .asm_10e8f
	jr .asm_10ea6
.asm_10e8f
	inc a
	ld [hld], a
	xor a
	ld [hld], a
	ld [hld], a
	ld [hl], a
	jr .asm_10ea6
.asm_10e97
	inc a
	ld [hld], a
	xor a
	ld [hld], a
	ld [hl], a
	jr .asm_10ea6
.asm_10e9e
	inc a
	ld [hld], a
	xor a
	ld [hl], a
	jr .asm_10ea6
.asm_10ea4
	inc a
	ld [hl], a
.asm_10ea6
	ret
.asm_10ea7
	ld hl, $d89a
	ld a, [hl]
	and a
	jr nz, .asm_10ed6
	inc hl
	ld a, [hl]
	and a
	jr nz, .asm_10ed0
	inc hl
	ld a, [hl]
	and a
	jr nz, .asm_10ec8
	inc hl
	ld a, [hl]
	and a
	jr nz, .asm_10ebf
	jr .asm_10ed8
.asm_10ebf
	dec a
	ld [hld], a
	ld a, $3b
	ld [hld], a
	ld [hld], a
	ld [hl], a
	jr .asm_10ed8
.asm_10ec8
	dec a
	ld [hld], a
	ld a, $3b
	ld [hld], a
	ld [hl], a
	jr .asm_10ed8
.asm_10ed0
	dec a
	ld [hld], a
	ld [hl], $3b
	jr .asm_10ed8
.asm_10ed6
	dec a
	ld [hl], a
.asm_10ed8
	ret

Func_10ed9:
	ld a, [wGameMode]
	cp GAMEMODE_PUZZLE
	ret nz
	ld hl, $d58c
	set 2, [hl]
	ld a, [wcec0]
	and a
	jr z, .asm_10eef
	ld a, $1f
	ld [$d4e6], a
.asm_10eef
	ld a, [wcec1]
	and a
	jr z, .asm_10f0d
	call ConvertToDigits
	ld a, e
	ld [$d4ef], a
	ld a, $2f
	ld [$d4ee], a
	ld a, $2e
	ld [$d4f3], a
	ld a, $2d
	ld [$d4f2], a
	jr .asm_10f25
.asm_10f0d
	ld a, [$d8a7]
	ld [$d4ef], a
	ld a, [$d8a8]
	ld [$d4ee], a
	ld a, [$d8a9]
	ld [$d4f3], a
	ld a, [$d8aa]
	ld [$d4f2], a
.asm_10f25
	ld a, [$da45]
	add a
	add a
	ld l, a
	ld h, $00
	ld bc, $4f42
	add hl, bc
	ld a, [hli]
	ld [$d4f9], a
	ld a, [hli]
	ld [$d4fa], a
	ld a, [hli]
	ld [$d500], a
	ld a, [hli]
	ld [$d501], a
	ret
; 0x10f42

SECTION "Bank 4@4f62", ROMX[$4f62], BANK[$4]

Func_10f62:
	ld a, [wcebb]
	and a
	ret nz
	call Func_110f6
	call Func_10f6e
	ret

Func_10f6e:
	ld hl, $d128
	ld de, $6
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	bit 3, [hl]
	call nz, Func_110b9
	add hl, de
	ret

Func_110b9:
	dec hl
	dec hl
	ld a, [hli]
	cp $01
	jr z, .asm_110ca
	dec hl
	dec hl
	dec hl
	ld a, [hli]
	ld [hli], a
	inc hl
	inc hl
	res 3, [hl]
	ret
.asm_110ca
	inc hl
	inc hl
	ld a, [hl]
	and a
	jr nz, .asm_110d4
	dec hl
	res 3, [hl]
	ret
.asm_110d4
	dec [hl]
	ld bc, $50eb
	add c
	ld c, a
	ld a, b
	adc $00
	ld b, a
	ld a, [bc]
	ld b, a
	dec hl
	dec hl
	dec hl
	dec hl
	dec hl
	ld a, [hli]
	add b
	ld [hli], a
	inc hl
	inc hl
	ret
; 0x110eb

SECTION "Bank 4@50f6", ROMX[$50f6], BANK[$4]

Func_110f6:
	ld a, [wGameMode]
	cp GAMEMODE_PUZZLE
	ret z
	ld a, [$d87f]
	and a
	ret z
	ld hl, $d8b8
	ld a, [hli]
	or [hl]
	ldh [hff8a], a
	ld hl, $d883
	ld a, [hl]
	inc a
	cp $12
	jr c, .asm_11112
	xor a
.asm_11112
	ld [hl], a
	add a
	ld l, a
	ld h, $00
	ld de, $511f
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl
; 0x1111f

SECTION "Bank 4@55dc", ROMX[$55dc], BANK[$4]

Func_115dc:
	ldh a, [hff8a]
	ld l, a
	ldh a, [hff8b]
	ld h, a
	push hl
	ldh a, [hff8c]
	ld l, a
	ldh a, [hff8d]
	ld h, a
	push hl
	ldh a, [hff8e]
	push af
	ld a, b
	ldh [hff8a], a
	ld a, c
	ldh [hff8b], a
	ld a, [$da5e]
	ldh [hff8c], a
	ld a, [$da5d]
	ldh [hff8d], a
	ld a, [$da5f]
	ldh [hff8e], a
	ld a, [$d5f7]
	and a
	jr z, .asm_11610
	ldh a, [hff8c]
	and a
	jr z, .asm_11610
	call Func_11688
.asm_11610
	ldh a, [hff8d]
	and a
	jr z, .asm_11618
	call Func_116da
.asm_11618
	ldh a, [hff8e]
	and a
	jr z, .asm_11620
	call Func_11737
.asm_11620
	pop af
	ldh [hff8e], a
	pop hl
	ld a, h
	ldh [hff8d], a
	ld a, l
	ldh [hff8c], a
	pop hl
	ld a, h
	ldh [hff8b], a
	ld a, l
	ldh [hff8a], a
	ret

Func_11632:
	ld hl, w1d671
	ld de, $13
	xor a
REPT 16
	cp [hl]
	jr z, .found
	add hl, de
ENDR
	ld h, $00
	ret
.found
	ld a, l
	ld [$d988], a
	ld a, h
	ld [$d989], a
	ld a, $01
	ld [hli], a
	ret

Func_11688:
	call Func_11632
	inc h
	dec h
	ret z
	ld a, [$da5e]
	ld [hli], a
	xor a
	ld [hli], a
	ld [hli], a
	inc hl
	xor a
	ldh [hff8c], a
	ld a, [$d7a1]
	bit 1, a
	jr z, .asm_116b4
	ld a, [$da5e]
	ld b, a
	xor a
	ld c, a
	ld d, a
	push hl
	farcall Func_c2925
	pop hl
	dec hl
	ld a, [$d987]
	ld [hli], a
.asm_116b4
	call Func_1177f
	inc hl
	ld a, $00
	ld [hli], a
	ld bc, NULL
	call Func_117a7
	ld a, [$da5e]
	ld e, a
	ld a, [wceb3]
	and a
	jr nz, .asm_116d2
	ld a, e
	cp $0e
	jr c, .asm_116d2
	ld e, $1e
.asm_116d2
	ld a, e
	ld de, $59db
	call Func_117e4
	ret

Func_116da:
	call Func_11632
	inc h
	dec h
	ret z
	xor a
	ld [hli], a
	ld a, [$da5d]
	ld [hli], a
	xor a
	ld [hli], a
	inc hl
	ldh [hff8d], a
	ld a, [$d7a1]
	bit 1, a
	jr z, .asm_11702
	xor a
	ld b, a
	ld a, [$da5d]
	ld c, a
	xor a
	ld d, a
	push hl
	farcall Func_c2925
	pop hl
.asm_11702
	call Func_1177f
	inc hl
	ld a, $00
	ld [hli], a
	ld bc, NULL
	ld a, [$d5f7]
	and a
	jr z, .asm_1171b
	ld a, [$da5e]
	and a
	jr z, .asm_1171b
	ld bc, $f0
.asm_1171b
	call Func_117a7
	ld a, [$da5d]
	ld e, a
	ld a, [wceb3]
	and a
	jr nz, .asm_1172f
	ld a, e
	cp $23
	jr c, .asm_1172f
	ld e, $37
.asm_1172f
	ld a, e
	ld de, $5ad3
	call Func_117e4
	ret

Func_11737:
	call Func_11632
	inc h
	dec h
	ret z
	xor a
	ldh [hff8e], a
	ld [hli], a
	ld [hli], a
	ld a, [$da5f]
	ld [hli], a
	inc hl
	ld a, [$d7a1]
	bit 1, a
	jr z, .asm_1175d
	xor a
	ld b, a
	ld c, a
	ld a, [$da5f]
	ld d, a
	push hl
	farcall Func_c2925
	pop hl
.asm_1175d
	call Func_1177f
	inc hl
	ld a, $00
	ld [hli], a
	ld bc, NULL
	ld a, [$da5e]
	ld d, a
	ld a, [$da5d]
	or d
	jr z, .asm_11774
	ld bc, $fc04
.asm_11774
	call Func_117a7
	xor a
	ld de, $5c93
	call Func_117e4
	ret
; 0x1177f

SECTION "Bank 4@577f", ROMX[$577f], BANK[$4]

Func_1177f:
	xor a
	ld [hl], a
	ld a, [$d7a1]
	bit 1, a
	jr z, .asm_1178b
	set 1, [hl]
	ret
.asm_1178b
	ld a, [wcebd]
	and a
	ret nz
	ld a, [$d87f]
	and a
	ret z
	ld a, [wGameMode]
	cp GAMEMODE_PUZZLE
	ret z
	cp GAMEMODE_GARBAGE
	ret z
	cp GAMEMODE_CHALLENGE
	ret z
	cp GAMEMODE_UNK6
	ret z
	set 0, [hl]
	ret

Func_117a7:
	ld a, [$d7a1]
	bit 1, a
	jr nz, .asm_117ce
	ld a, $80
	ld [hli], a
	ldh a, [hff8a]
	add a
	add a
	add a
	add a
	add $08
	add b
	ld [hli], a
	ld a, $80
	ld [hli], a
	ld a, [wced6]
	ld d, a
	ldh a, [hff8b]
	add a
	add a
	add a
	add a
	sub d
	add $10
	add c
	ld [hli], a
	ret
.asm_117ce
	ld a, $80
	ld [hli], a
	ldh a, [hff8a]
	add $70
	add b
	ld [hli], a
	ld a, $80
	ld [hli], a
	ldh a, [hff8b]
	add a
	add a
	add a
	add $50
	add c
	ld [hli], a
	ret

Func_117e4:
	push hl
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, de
	ld e, l
	ld d, h
	pop hl
	ld a, [de]
	inc de
	ld [hli], a
	ld a, [de]
	inc de
	ld [hli], a
	ld a, [de]
	inc de
	ld [hli], a
	ld a, [de]
	inc de
	ld [hli], a
	ld a, [de]
	inc de
	ld [hli], a
	ld a, [de]
	inc de
	ld [hli], a
	ld a, [de]
	inc de
	ld [hli], a
	ld a, [de]
	ld [hli], a
	ret

Func_11807:
	ld hl, w1d671
	ld de, $13
	xor a
	ld b, $00
	cp [hl]
	call nz, .Func_1187f
	add hl, de
	ld b, $01
	cp [hl]
	call nz, .Func_1187f
	add hl, de
	ld b, $02
	cp [hl]
	call nz, .Func_1187f
	add hl, de
	ld b, $03
	cp [hl]
	call nz, .Func_1187f
	add hl, de
	ld b, $04
	cp [hl]
	call nz, .Func_1187f
	add hl, de
	ld b, $05
	cp [hl]
	call nz, .Func_1187f
	add hl, de
	ld b, $06
	cp [hl]
	call nz, .Func_1187f
	add hl, de
	ld b, $07
	cp [hl]
	call nz, .Func_1187f
	add hl, de
	ld b, $08
	cp [hl]
	call nz, .Func_1187f
	add hl, de
	ld b, $09
	cp [hl]
	call nz, .Func_1187f
	add hl, de
	ld b, $0a
	cp [hl]
	call nz, .Func_1187f
	add hl, de
	ld b, $0b
	cp [hl]
	call nz, .Func_1187f
	add hl, de
	ld b, $0c
	cp [hl]
	call nz, .Func_1187f
	add hl, de
	ld b, $0d
	cp [hl]
	call nz, .Func_1187f
	add hl, de
	ld b, $0e
	cp [hl]
	call nz, .Func_1187f
	add hl, de
	ld b, $0f
	cp [hl]
	call nz, .Func_1187f
	add hl, de
	ret

; input:
; - hl = ?
; - b  = ?
.Func_1187f:
	ld a, [wceb2]
	and a
	jr z, .asm_1188a
	ldh a, [hffb7]
	xor b
	and $01
.asm_1188a
	ldh [hff91], a
	push hl
	call .Func_11898
	pop hl
	ld a, [hl]
	dec a
	jp z, .asm_118ad
.asm_11896
	jr .asm_11896

.Func_11898:
	ld bc, $4
	add hl, bc
	ld a, [hl]
	bit 7, a
	ret z
	and $7f
	ld l, a
	ld h, $00
	ld de, w1d905
	add hl, de
	ld a, $3c
	ld [hl], a
	ret

.asm_118ad
	ld bc, $6
	add hl, bc
	ld a, [hl]
	ld bc, $4
	add hl, bc
	push hl
	ld l, a
	ld h, $00
	ld bc, $59ae
	add hl, bc
	ld a, [hl]
	pop hl
	and a
	jp z, .asm_118db
	inc a
	add [hl]
	ld [hl], a
	ld bc, $fffc
	add hl, bc
	inc [hl]
	dec hl
	push hl
	call .Func_118ee
	pop hl
	ld bc, $fffb
	add hl, bc
	ld de, $13
	xor a
	ret

.asm_118db
	ld bc, $fff6
	add hl, bc
	push hl
	call .Func_118e5
	pop hl
	ret

.Func_118e5:
	xor a
	ld [hl], a
	ld bc, $5
	add hl, bc
	res 0, [hl]
	ret

.Func_118ee:
	ld a, [hli]
	inc hl
	inc hl
	and $01
	ldh [hff90], a
	ld a, [hli]
	inc hl
	ldh [hff8a], a
	ld a, [hli]
	ldh [hff8b], a
	ld a, [hli]
	ldh [hff8c], a
	ld a, [hli]
	ldh [hff94], a
	ld a, [hli]
	ldh [hff8d], a
	ld a, [hli]
	ldh [hff95], a
	ld a, [hli]
	ldh [hff8e], a
	ld a, [hli]
	ldh [hff96], a
	ld a, [hli]
	ldh [hff8f], a
	ld a, [hli]
	ldh [hff97], a
	ldh a, [hff91]
	and a
	jr nz, .asm_11922
	call .Func_11966
	ldh a, [hff90]
	and a
	call nz, .Func_11923
.asm_11922
	ret

.Func_11923:
	; attributes
	ld a, OAM_PAL1
	ldh [hff94], a
	ldh [hff95], a
	ldh [hff96], a
	ldh [hff97], a

	ldh a, [hff8a]
	add TILE_SIZE
	ldh [hff8a], a
	ld a, $48
	ldh [hff8c], a
	ld a, $49
	ldh [hff8d], a
	ld a, $4c
	ldh [hff8e], a
	ld a, $4d
	ldh [hff8f], a
	call .Func_11966

	ldh a, [hff8a]
	add TILE_SIZE
	ldh [hff8a], a
	ld a, $4a
	ldh [hff8c], a
	ld a, $4b
	ldh [hff8d], a
	ld a, $4e
	ldh [hff8e], a
	ld a, $4f
	ldh [hff8f], a
	call .Func_11966

	ldh a, [hff8a]
	add -2*TILE_SIZE
	ldh [hff8a], a
	ret

; draws 2x2 square sprite with coordinates at (hff8a, hff8b)
; with respective tiles [hff8c, hff8d, hff8e, hff8f]
; and attributes [hff94, hff95, hff96, hff97]
.Func_11966:
	push hl
	; do we have space for 4 more OAM entries?
	ldh a, [hVirtualOAMSize]
	cp OAM_SIZE - 3 * OBJ_SIZE
	jr nc, .skip ; no

	ld l, a
	ld h, HIGH(wVirtualOAM)

	; top-left
	ldh a, [hff8b]
	ld [hli], a ; y
	ldh a, [hff8a]
	ld [hli], a ; x
	ldh a, [hff8c]
	ld [hli], a ; tile
	ldh a, [hff94]
	ld [hli], a ; attributes

	; right-left
	ldh a, [hff8b]
	ld [hli], a ; y
	ldh a, [hff8a]
	add 8
	ld [hli], a ; x
	ldh a, [hff8d]
	ld [hli], a ; tile
	ldh a, [hff95]
	ld [hli], a ; attributes

	; bottom-left
	ldh a, [hff8b]
	add 8
	ld [hli], a ; y
	ldh a, [hff8a]
	ld [hli], a ; x
	ldh a, [hff8e]
	ld [hli], a ; tile
	ldh a, [hff96]
	ld [hli], a ; attributes

	; bottom-right
	ldh a, [hff8b]
	add 8
	ld [hli], a ; y
	ldh a, [hff8a]
	add 8
	ld [hli], a ; x
	ldh a, [hff8f]
	ld [hli], a ; tile
	ldh a, [hff97]
	ld [hli], a ; attributes

	ld a, l
	ldh [hVirtualOAMSize], a
.skip
	pop hl
	ret
; 0x119ad

SECTION "Bank 4@5c9b", ROMX[$5c9b], BANK[$4]

Func_11c9b:
	push bc
	push de
	push hl
	ldh a, [hff8a]
	ld l, a
	ldh a, [hff8b]
	ld h, a
	push hl
	ldh a, [hff8c]
	ld l, a
	ldh a, [hff8d]
	ld h, a
	push hl
	ldh a, [hff8e]
	ld l, a
	ldh a, [hff8f]
	ld h, a
	push hl
	ldh a, [hff90]
	ld l, a
	ldh a, [hff91]
	ld h, a
	push hl
	ldh a, [hff92]
	ld l, a
	ldh a, [hff93]
	ld h, a
	push hl

	ldh a, [hff94]
	ld l, a
	ldh a, [hff95]
	ld h, a
	push hl
	ld a, [wGameMode]
	cp GAMEMODE_MARATHON
	jp z, .Func_11dea
	cp GAMEMODE_TIME_ZONE
	jp z, .Func_11dea
	cp GAMEMODE_LINE_CLEAR
	jp z, .Func_11e6c
	cp GAMEMODE_PUZZLE
	jp z, .Func_11dea
	cp GAMEMODE_GARBAGE
	jp z, .Func_11dea
	cp GAMEMODE_CHALLENGE
	jp z, .Func_11dea
	cp GAMEMODE_UNK6
	jp z, .Func_11d21
	cp GAMEMODE_UNK7
	jp z, .Func_11d21

.asm_11cf3
	pop hl
	ld a, h
	ldh [hff95], a
	ld a, l
	ldh [hff94], a
	pop hl
	ld a, h
	ldh [hff93], a
	ld a, l
	ldh [hff92], a
	pop hl
	ld a, h
	ldh [hff91], a
	ld a, l
	ldh [hff90], a
	pop hl
	ld a, h
	ldh [hff8f], a
	ld a, l
	ldh [hff8e], a
	pop hl
	ld a, h
	ldh [hff8d], a
	ld a, l
	ldh [hff8c], a
	pop hl
	ld a, h
	ldh [hff8b], a
	ld a, l
	ldh [hff8a], a
	pop hl
	pop de
	pop bc
	ret

.Func_11d21:
	ld c, LOW(hff8a)
	ld b, $06
.asm_11d25
	ld a, $03
	call GetFarByte
	ld [$ff00+c], a
	inc hl
	inc c
	dec b
	jr nz, .asm_11d25
	inc e
	dec e
	jr z, .asm_11d5c

	ld hl, hff90
	ld b, $06
.asm_11d39
	call Func_1f61
	call Func_1fcb
	ld c, LOW(hff8a)
	add c
	ld c, a
	ld a, [$ff00+c]
	cp $ff
	jr z, .asm_11d39
	ld [hli], a
	ld a, $ff
	ld [$ff00+c], a
	dec b
	jr nz, .asm_11d39

	ld hl, hff90
	ld c, LOW(hff8a)
	ld b, $06
.asm_11d56
	ld a, [hli]
	ld [$ff00+c], a
	inc c
	dec b
	jr nz, .asm_11d56

.asm_11d5c
	ldh a, [hff8f]
	ld b, a
	ld c, $00
	ld hl, $d262
	call .Func_11da7
	ldh a, [hff8e]
	ld b, a
	ld c, $01
	ld hl, $d25c
	call .Func_11da7
	ldh a, [hff8d]
	ld b, a
	ld c, $01
	ld hl, $d256
	call .Func_11da7
	ldh a, [hff8c]
	ld b, a
	ld c, $01
	ld hl, $d250
	call .Func_11da7
	ldh a, [hff8b]
	ld b, a
	ld c, $01
	ld hl, $d24a
	call .Func_11da7
	ldh a, [hff8a]
	ld b, a
	ld c, $01
	ld hl, $d244
	call .Func_11da7
	farcall Func_c0942
	jp .asm_11cf3

.Func_11da7:
	inc b
	dec b
	ret z
.asm_11daa
	call $d85a
	inc a
	ld e, a
	push bc
	ld bc, $24
	add hl, bc
	pop bc
	ld a, [hl]
	push bc
	ld bc, $ffdc
	add hl, bc
	pop bc
	cp e
	jr z, .asm_11daa
	inc c
	dec c
	jr z, .asm_11dd2
	push bc
	ld bc, $6
	add hl, bc
	pop bc
	ld a, [hld]
	dec hl
	dec hl
	dec hl
	dec hl
	dec hl
	cp e
	jr z, .asm_11daa
.asm_11dd2
	ld a, e
	ld [hli], a
	ld [hli], a
	ld a, $01
	ld [hli], a
	xor a
	ld [hli], a
	ld [hli], a
	ld [hld], a
	dec hl
	dec hl
	dec hl
	dec hl
	push bc
	ld bc, $ffdc
	add hl, bc
	pop bc
	dec b
	jr nz, .asm_11daa
	ret

.Func_11dea:
	call Func_1f61
	cp $ed
	jr nc, .asm_11e62
	cp $db
	jr nc, .asm_11e5d
	cp $c9
	jr nc, .asm_11e58
	cp $b6
	jr nc, .asm_11e53
	cp $a4
	jr nc, .asm_11e4e
	cp $92
	jr nc, .asm_11e49
	cp $80
	jr nc, .asm_11e44
	cp $6d
	jr nc, .asm_11e3f
	cp $5b
	jr nc, .asm_11e3a
	cp $49
	jr nc, .asm_11e35
	cp $36
	jr nc, .asm_11e30
	cp $24
	jr nc, .asm_11e2b
	cp $12
	jr nc, .asm_11e26
	ld hl, $72d5
	jr .asm_11e67
.asm_11e26
	ld hl, $72db
	jr .asm_11e67
.asm_11e2b
	ld hl, $72e1
	jr .asm_11e67
.asm_11e30
	ld hl, $72e7
	jr .asm_11e67
.asm_11e35
	ld hl, $72ed
	jr .asm_11e67
.asm_11e3a
	ld hl, $72f3
	jr .asm_11e67
.asm_11e3f
	ld hl, $72f9
	jr .asm_11e67
.asm_11e44
	ld hl, $72ff
	jr .asm_11e67
.asm_11e49
	ld hl, $7305
	jr .asm_11e67
.asm_11e4e
	ld hl, $730b
	jr .asm_11e67
.asm_11e53
	ld hl, $7311
	jr .asm_11e67
.asm_11e58
	ld hl, $7317
	jr .asm_11e67
.asm_11e5d
	ld hl, $731d
	jr .asm_11e67
.asm_11e62
	ld hl, $7323
	jr .asm_11e67
.asm_11e67
	ld e, $01
	jp .Func_11d21

.Func_11e6c:
	ld hl, $d80f
	ld d, $36
.asm_11e71
	ld a, [hld]
	or [hl]
	dec hl
	jr nz, .asm_11e7b
	dec d
	jr nz, .asm_11e71
	ld d, $00
.asm_11e7b
	ld hl, $d84b
	ld e, $1d
.asm_11e80
	ld a, [hld]
	or [hl]
	dec hl
	jr nz, .asm_11e8a
	dec e
	jr nz, .asm_11e80
	ld e, $00
.asm_11e8a
	ret
; 0x11e8b

SECTION "Bank 4@6186", ROMX[$6186], BANK[$4]

Func_12186:
	push bc
	push de
	push hl
	ld a, [wceb7]
	and a
	jr nz, .asm_1219a
	ld a, e
	cp $19
	jr c, .asm_1219a
	cp $20
	jr nc, .asm_1219a
	ld e, $18
.asm_1219a
	ld a, e
	ldh [hff8a], a
	ld a, c
	ldh [hff8b], a
	ld a, b
	ldh [hff8c], a
	xor a
	inc d
	dec d
	jr z, .asm_121aa
	ld a, $80
.asm_121aa
	ldh [hff8d], a
	ld a, e
	add a
	ld l, a
	ld h, $00
	ld de, $66c2
	add hl, de
	ld a, [hli]
	ld d, [hl]
	ld e, a
	ld hl, $90cc
	add hl, bc
	push bc
	ld a, [de]
	inc de
	push hl
	dec a
	ld l, a
	ld h, $00
	ld c, l
	ld b, h
	add hl, hl
	add hl, bc
	add hl, hl
	ld bc, $61f0
	add hl, bc
	ld c, l
	ld b, h
	pop hl
	ld a, c
	sub l
	ld a, b
	sbc h
	jr nc, .asm_121d8
	ld l, c
	ld h, b
.asm_121d8
	pop bc
	jp hl
; 0x121da

SECTION "Bank 4@6c26", ROMX[$6c26], BANK[$4]

Func_12c26:
	push bc
	push de
	push hl
	ld c, l
	ld b, h
	call Func_12d2a
	push bc
	sub $0b
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	ld de, $666c
	add hl, de
	ld a, [hli]
	ld c, a
	pop hl
	ld de, $26
	add hl, de
	ld de, $fffa
	ld a, [hl]
	cp $00
	jr z, .asm_12c57
	cp $07
	jr z, .asm_12c57
	cp $05
	jr z, .asm_12c80
	cp $06
	jr z, .asm_12c80
	jr .asm_12ca3
.asm_12c57
	ld a, l
	ldh [hff91], a
	ld a, h
	ldh [hff92], a
.asm_12c5d
	add hl, de
	dec c
	jr z, .asm_12ca9
	ld a, [hl]
	cp $00
	jr z, .asm_12c5d
	cp $07
	jr z, .asm_12c5d
	cp $05
	jr z, .asm_12c80
	cp $06
	jr z, .asm_12c80
	jr .asm_12ca3
.asm_12c74
	inc hl
	inc hl
	inc hl
	ld a, [hld]
	dec hl
	dec hl
	ld b, a
	ldh a, [hff90]
	cp b
	jr nc, .asm_12c8e
.asm_12c80
	ld a, l
	ldh [hff91], a
	ld a, h
	ldh [hff92], a
	inc hl
	inc hl
	inc hl
	ld a, [hld]
	dec hl
	dec hl
	ldh [hff90], a
.asm_12c8e
	add hl, de
	dec c
	jr z, .asm_12ca9
	ld a, [hl]
	cp $00
	jr z, .asm_12c8e
	cp $07
	jr z, .asm_12c8e
	cp $05
	jr z, .asm_12c74
	cp $06
	jr z, .asm_12c74
.asm_12ca3
	ld a, l
	ldh [hff91], a
	ld a, h
	ldh [hff92], a
.asm_12ca9
	ldh a, [hff91]
	ld l, a
	ldh a, [hff92]
	ld h, a
	dec hl
	dec hl
	ld a, [hli]
	ldh [hff8b], a
	ld a, [hli]
	ldh [hff8c], a
	ld a, [hli]
	ldh [hff8d], a
	ld a, [hli]
	ldh [hff8e], a
	ld a, [hli]
	ldh [hff8f], a
	ld a, [hli]
	ldh [hff90], a
	pop hl
	pop de
	pop bc
	ret

Func_12cc7:
	push bc
	push de
	push hl
	ld e, l
	ld d, h
	ld a, [hl]
	add a
	ld l, a
	ld h, $00
	ld bc, $66c2
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld c, [hl]
	hlbgcoord 22, 11
	add hl, de
	ld a, [hl]
	cp c
	jr nc, .asm_12ce2
	ld c, a
.asm_12ce2
	ld l, e
	ld h, d
	ld de, $4
	add hl, de
	res 4, [hl]
	dec hl
	dec hl
	ld de, $fffa
	ld a, $01
.asm_12cf1
	ld [hl], a
	add hl, de
	dec c
	jr nz, .asm_12cf1
	pop hl
	pop de
	pop bc
	ret

Func_12cfa:
	push hl
	push bc
	push de
	ld e, l
	ld d, h
	ld a, [hl]
	add a
	ld l, a
	ld h, $00
	ld bc, $66c2
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld c, [hl]
	hlbgcoord 22, 11
	add hl, de
	ld a, [hl]
	cp c
	jr nc, .asm_12d15
	ld c, a
.asm_12d15
	ld l, e
	ld h, d
	ld de, $5
	add hl, de
	ld a, [hl]
	ld de, $fffa
	jr .asm_12d22
.asm_12d21
	ld [hl], a
.asm_12d22
	add hl, de
	dec c
	jr nz, .asm_12d21
	pop de
	pop bc
	pop hl
	ret

Func_12d2a:
	ld l, c
	ld h, b
	ld bc, $6
	jr .asm_12d32
.asm_12d31
	add hl, bc
.asm_12d32
	ld a, [hl]
	cp $09
	jr z, .asm_12d31
	cp $0a
	jr z, .asm_12d31
	cp $0b
	jr c, .asm_12d46
	cp $26
	jr nc, .asm_12d46
	ld c, l
	ld b, h
	ret
.asm_12d46
	jr .asm_12d46

Func_12d48:
	push hl
	push bc
	push de
	ld c, l
	ld b, h
	ld a, [$d670]
	cp $80
.asm_12d52
	jr nc, .asm_12d52
	add a
	ld l, a
	ld h, $00
	ld de, $d5f8
	add hl, de
	ld a, c
	ld [hli], a
	ld [hl], b
	ld a, [$d670]
	inc a
	ld [$d670], a
	pop de
	pop bc
	pop hl
	ret

Func_12d6a:
	push bc
	push de
	ld c, l
	ld b, h
	ld a, [$d670]
	and a
.asm_12d72
	jr z, .asm_12d72
	dec a
	ld [$d670], a
	add a
	ld l, a
	ld h, $00
	ld de, $d5f8
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [$d670]
	and a
	jr z, .asm_12d8d
	pop de
	pop bc
	scf
	ret
.asm_12d8d
	pop de
	pop bc
	and a
	ret

Func_12d91:
	ld l, c
	ld h, b
	ld bc, $24
	add hl, bc
	ld c, l
	ld b, h
	call Func_12d9d
	ret

Func_12d9d:
	push hl
	push bc
	push de
	ldh a, [hff8b]
	ld l, a
	ldh a, [hff8c]
	ld h, a
	push hl
	ldh a, [hff8d]
	ld l, a
	ldh a, [hff8e]
	ld h, a
	push hl
	ldh a, [hff8f]
	ld l, a
	ldh a, [hff90]
	ld h, a
	push hl
	ldh a, [hff91]
	ld l, a
	ldh a, [hff92]
	ld h, a
	push hl
	ld a, d
	ldh [hff90], a
	ld a, e
	ldh [hff91], a
	ld l, c
	ld h, b
	ld de, $ffde
	add hl, de
	xor a
	ld [$d670], a
	call Func_12d48
	jr .asm_12dd5
.asm_12dd1
	ld de, $ffdc
	add hl, de
.asm_12dd5
	ld a, l
	sub $24
	ld a, h
	sbc $d1
	jp c, .asm_12ed6
	ld a, [hl]
	cp $07
	jr z, .asm_12dea
	cp $01
	jr z, .asm_12dea
	jp .asm_12ed6
.asm_12dea
	dec hl
	dec hl
	ld a, [hli]
	inc hl
	cp $09
	jr z, .asm_12e15
	cp $0a
	jr z, .asm_12e15
	cp $0b
	jr c, .asm_12e00
	cp $26
	jr nc, .asm_12e00
	jr .asm_12e15
.asm_12e00
	ld a, $05
	ld [hli], a
	inc hl
	set 4, [hl]
	ldh a, [hff91]
	and a
	jr z, .asm_12e0d
	set 7, [hl]
.asm_12e0d
	inc hl
	ldh a, [hff90]
	ld [hld], a
	dec hl
	dec hl
	jr .asm_12dd1
.asm_12e15
	dec hl
	dec hl
	ld c, l
	ld b, h
	call Func_12d2a
	ldh [hff8b], a
	ld a, c
	ldh [hff8c], a
	ld a, b
	ldh [hff8d], a
	push bc
	ldh a, [hff8b]
	sub $0b
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	ld de, $666c
	add hl, de
	ld a, [hli]
	ld c, a
	ldh [hff8f], a
	pop hl
	ld de, $26
	add hl, de
	ld de, $fffa
.asm_12e3e
	ld a, [hl]
	cp $00
	jr z, .asm_12e4e
	cp $05
	jr z, .asm_12e4e
	cp $06
	jr z, .asm_12e4e
	jp .asm_12ed6
.asm_12e4e
	add hl, de
	dec c
	jr nz, .asm_12e3e
	ldh a, [hff8b]
	add a
	ld l, a
	ld h, $00
	ld de, $66c2
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [hl]
	ldh [hff8e], a
	ld c, a
	ldh a, [hff8c]
	ld l, a
	ldh a, [hff8d]
	ld h, a
	ld de, $2
	add hl, de
	ld de, $fffa
.asm_12e70
	ld a, l
	sub $24
	ld a, h
	sbc $d1
	jr c, .asm_12e8f
	ld a, $05
	ld [hli], a
	inc hl
	res 4, [hl]
	ldh a, [hff91]
	and a
	jr z, .asm_12e85
	set 7, [hl]
.asm_12e85
	inc hl
	ldh a, [hff90]
	ld [hld], a
	dec hl
	dec hl
	add hl, de
	dec c
	jr nz, .asm_12e70
.asm_12e8f
	ldh a, [hff8c]
	ld l, a
	ldh a, [hff8d]
	ld h, a
	inc hl
	inc hl
	inc hl
	inc hl
	set 4, [hl]
	ldh a, [hff8f]
	ld b, a
	ldh a, [hff8e]
	sub b
.asm_12ea1
	jr c, .asm_12ea1
	add $06
.asm_12ea5
	jr c, .asm_12ea5
	ld l, a
	ld h, $00
	ld c, l
	ld b, h
	add hl, hl
	add hl, bc
	add hl, hl
	xor a
	sub l
	ld l, a
	ld a, $00
	sbc h
	ld h, a
	ldh a, [hff8c]
	ld c, a
	ldh a, [hff8d]
	ld b, a
	add hl, bc
	inc hl
	inc hl
	ld a, l
	sub $24
	ld a, h
	sbc $d1
	jr c, .asm_12ed4
	ldh a, [hff8f]
	ld c, a
	ld de, $fffa
.asm_12ecd
	call Func_12d48
	add hl, de
	dec c
	jr nz, .asm_12ecd
.asm_12ed4
	jr .asm_12ed6
.asm_12ed6
	call Func_12d6a
	jp c, .asm_12dd5
	pop hl
	ld a, h
	ldh [hff92], a
	ld a, l
	ldh [hff91], a
	pop hl
	ld a, h
	ldh [hff90], a
	ld a, l
	ldh [hff8f], a
	pop hl
	ld a, h
	ldh [hff8e], a
	ld a, l
	ldh [hff8d], a
	pop hl
	ld a, h
	ldh [hff8c], a
	ld a, l
	ldh [hff8b], a
	pop de
	pop bc
	pop hl
	ret

Func_12efc:
	push hl
	push bc
	push de
	ld l, c
	ld h, b
	inc hl
	inc hl
	ld de, $ffdc
	jr .asm_12f09
.asm_12f08
	add hl, de
.asm_12f09
	ld a, l
	sub $24
	ld a, h
	sbc $d1
	jp c, .asm_12f37
	ld a, [hl]
	cp $01
	jr z, .asm_12f19
	jr .asm_12f08
.asm_12f19
	dec hl
	dec hl
	ld a, [hli]
	inc hl
	cp $09
	jr z, .asm_12f08
	cp $0a
	jr z, .asm_12f08
	cp $0b
	jr c, .asm_12f2f
	cp $26
	jr nc, .asm_12f2f
	jr .asm_12f08
.asm_12f2f
	inc hl
	inc hl
	set 7, [hl]
	dec hl
	dec hl
	jr .asm_12f08

.asm_12f37
	pop de
	pop bc
	pop hl
	ret

Func_12f3b:
	push hl
	ld bc, $2edc
	add hl, bc
	ld bc, $6a98
	add hl, bc
	ld a, [hli]
	ld b, [hl]
	ld c, a
	pop hl
	ret

Func_12f49:
	push hl
	push bc
	push de
	ldh a, [hff8a]
	ld l, a
	push hl
	ldh a, [hff8b]
	ld l, a
	ldh a, [hff8c]
	ld h, a
	push hl
	ld a, c
	ldh [hff8b], a
	ld a, b
	ldh [hff8c], a
	ld l, c
	ld h, b
	ld a, [hli]
	ld e, a
	ld a, [hl]
	ld d, a
	ld a, [de]
	ld c, a
	inc e
	ld a, $00
	ldh [hff8a], a
.asm_12f6a
	ld a, [de]
	ld l, a
	inc e
	ld a, [de]
	ld h, a
	inc e
	push bc
	push de
	call Func_12f91
	pop de
	pop bc
	dec c
	jr nz, .asm_12f6a
	ldh a, [hff8a]
	and a
	jr z, .asm_12f82
	call Func_134b1
.asm_12f82
	pop hl
	ld a, h
	ldh [hff8c], a
	ld a, l
	ldh [hff8b], a
	pop hl
	ld a, l
	ldh [hff8a], a
	pop de
	pop bc
	pop hl
	ret

Func_12f91:
	call Func_12f3b
	ld de, $6
	add hl, de
	inc c
	ld a, c
	cp $06
	jr nc, .asm_12fa7
	push hl
	push bc
	push de
	call Func_12fe4
	pop de
	pop bc
	pop hl
.asm_12fa7
	ld de, $1e
	add hl, de
	dec c
	inc b
	ld a, b
	cp $09
	jr nc, .asm_12fbb
	push hl
	push bc
	push de
	call Func_12fe4
	pop de
	pop bc
	pop hl
.asm_12fbb
	ld de, $ffd6
	add hl, de
	dec c
	dec b
	ld a, c
	cp $06
	jr nc, .asm_12fcf
	push hl
	push bc
	push de
	call Func_12fe4
	pop de
	pop bc
	pop hl
.asm_12fcf
	ld de, $ffe2
	add hl, de
	inc c
	dec b
	ld a, b
	cp $09
	jr nc, .asm_12fe3
	push hl
	push bc
	push de
	call Func_12fe4
	pop de
	pop bc
	pop hl
.asm_12fe3
	ret

Func_12fe4:
	ld a, [hl]
	cp $09
	jr z, .asm_12ffb
	cp $0a
	jp z, Func_13086
	cp $0b
	ret c
	cp $26
	ret nc
	cp $20
	jp nc, Func_13086
	jr .asm_12ffb
.asm_12ffb
	inc hl
	inc hl
	ld a, [hli]
	inc hl
	cp $08
	ret z
	ld a, [hld]
	dec hl
	dec hl
	dec hl
	bit 5, a
	ret nz
	xor a
	ld [$d670], a
	call Func_12d48
	jr .asm_13016
.asm_13012
	ld bc, $6
	add hl, bc
.asm_13016
	ld a, [hl]
	cp $09
	jr z, .asm_13012
	cp $0b
	jr c, .asm_13023
	cp $20
	jr c, .asm_13025
.asm_13023
	jr .asm_13023
.asm_13025
	sub $0b
	push af
	push hl
	push hl
	add a
	ld l, a
	ld h, $00
	ld bc, $66d8
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld c, [hl]
	pop hl
	inc hl
	inc hl
	inc hl
	inc hl
	ld de, $fffa
.asm_1303e
	ld a, l
	sub $24
	ld a, h
	sbc $d1
	jr c, .asm_1304c
	set 5, [hl]
	add hl, de
	dec c
	jr nz, .asm_1303e
.asm_1304c
	ld a, $01
	ldh [hff8a], a
	pop hl
	pop af
	push af
	push hl
	push bc
	push de
	call Func_13111
	pop de
	pop bc
	pop hl
	pop af
.asm_1305d
	call Func_12d6a
	jr nc, .asm_13085
	ld a, [hl]
	cp $09
	jr z, .asm_1306f
	cp $0b
	jr c, .asm_1305d
	cp $20
	jr nc, .asm_1305d
.asm_1306f
	inc hl
	inc hl
	ld a, [hld]
	dec hl
	cp $08
	jr z, .asm_1305d
	inc hl
	inc hl
	inc hl
	inc hl
	ld a, [hld]
	dec hl
	dec hl
	dec hl
	bit 5, a
	jr nz, .asm_1305d
	jr .asm_13016
.asm_13085
	ret

Func_13086:
	inc hl
	inc hl
	ld a, [hli]
	inc hl
	cp $08
	ret z
	ld a, [hld]
	dec hl
	dec hl
	dec hl
	bit 5, a
	ret nz
	xor a
	ld [$d670], a
	call Func_12d48
	jr .asm_130a1
.asm_1309d
	ld bc, $6
	add hl, bc
.asm_130a1
	ld a, [hl]
	cp $0a
	jr z, .asm_1309d
	cp $20
	jr c, .asm_130ae
	cp $26
	jr c, .asm_130b0
.asm_130ae
	jr .asm_130ae
.asm_130b0
	sub $0b
	push af
	push hl
	push hl
	add a
	ld l, a
	ld h, $00
	ld bc, $66d8
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld c, [hl]
	pop hl
	inc hl
	inc hl
	inc hl
	inc hl
	ld de, $fffa
.asm_130c9
	ld a, l
	sub $24
	ld a, h
	sbc $d1
	jr c, .asm_130d7
	set 5, [hl]
	add hl, de
	dec c
	jr nz, .asm_130c9
.asm_130d7
	ld a, $01
	ldh [hff8a], a
	pop hl
	pop af
	push af
	push hl
	push bc
	push de
	call Func_13111
	pop de
	pop bc
	pop hl
	pop af
.asm_130e8
	call Func_12d6a
	jr nc, .asm_13110
	ld a, [hl]
	cp $0a
	jr z, .asm_130fa
	cp $20
	jr c, .asm_130e8
	cp $26
	jr nc, .asm_130e8
.asm_130fa
	inc hl
	inc hl
	ld a, [hld]
	dec hl
	cp $08
	jr z, .asm_130e8
	inc hl
	inc hl
	inc hl
	inc hl
	ld a, [hld]
	dec hl
	dec hl
	dec hl
	bit 5, a
	jr nz, .asm_130e8
	jr .asm_130a1
.asm_13110
	ret

Func_13111:
	ld e, l
	ld d, h
	add a
	ld l, a
	ld h, $00
	ld bc, $711f
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl
; 0x1311f

SECTION "Bank 4@74b1", ROMX[$74b1], BANK[$4]

Func_134b1:
	ld hl, $d266
	ld de, $fffa
	ld b, $00
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	bit 5, [hl]
	call nz, Func_13613
	add hl, de
	ldh a, [hff8b]
	ld l, a
	ldh a, [hff8c]
	ld h, a
	ld a, [hli]
	ld e, a
	ld a, [hl]
	push bc
	ld bc, $8
	add hl, bc
	pop bc
	ld d, a
	ld a, b
	ld [hl], a
	ld a, [de]
	add b
	ld [de], a
	ret

Func_13613:
	inc b
	ld a, [$d5f5]
	ld e, a
	ld a, [$d5f6]
	ld d, a
	dec hl
	dec hl
	dec hl
	dec hl
	ld a, l
	ld [de], a
	inc e
	ld a, h
	ld [de], a
	inc e
	inc hl
	inc hl
	inc hl
	inc hl
	ld a, e
	ld [$d5f5], a
	ld a, d
	ld [$d5f6], a
	ld de, $fffa
	ret

Func_13636:
	ld a, [wcea9]
	cp MIN_SPEEDLEVEL
	jr c, .asm_13647
	cp MAX_SPEEDLEVEL
	jr z, .asm_13649
	jr c, .asm_13649
	ld a, MAX_SPEEDLEVEL
	jr .asm_13649
.asm_13647
	ld a, $01
.asm_13649
	ld [$cef8], a
	dec a
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	ld bc, $6fbb
	add hl, bc
	ld a, l
	ld [$cef3], a
	ld a, h
	ld [$cef4], a
	ld a, $2c
	ld [$cef6], a
	ld a, $01
	ld [$cef7], a
	xor a
	ld [$cef5], a
	ld [$cef9], a
	ret

Func_13671:
	ld hl, $cef7
	ld a, [hld]
	or [hl]
	jr z, .asm_13683
	ld a, [hl]
	sub $01
	ld [hli], a
	ld a, [hl]
	sbc $00
	ld [hli], a
	ld e, $00
	ret
.asm_13683
	ld a, [$cef9]
	inc a
	and $01
	ld [$cef9], a
	jr nz, .asm_136a4
	ld a, [$cef8]
	cp $63
	jr z, .asm_1369f
	jr c, .asm_1369b
	ld a, $63
	jr .asm_1369c
.asm_1369b
	inc a
.asm_1369c
	ld [$cef8], a
.asm_1369f
	ld a, $b4
	ld [$cefa], a
.asm_136a4
	ld hl, $cef3
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ld a, [$cef5]
	ld l, a
	ld h, $00
	add hl, bc
	ld a, $32
	call GetFarByte
	and $0f
	ld e, a
	and a
	jr nz, .asm_136be
	ld e, $10
.asm_136be
	xor a
	ld [$cef6], a
	ld [$cef7], a
	ld hl, $4
	add hl, bc
	ld c, l
	ld b, h
	ld a, $32
	call GetFarByte
	inc hl
	ld d, a
	ld a, $32
	call GetFarByte
	or d
	jr nz, .asm_136de
	ld c, $53
	ld b, $71
.asm_136de
	ld hl, $cef4
	ld a, b
	ld [hld], a
	ld [hl], c
	push de
	push bc
	call Func_1f61
	pop bc
	pop de
	and $03
	ld [$cef5], a
	add c
	ld l, a
	ld a, b
	adc $00
	ld h, a
	ld a, $32
	call GetFarByte
	ld d, a
	swap a
	and $0f
	add a
	ld l, a
	ld h, $00
	ld bc, $778d
	add hl, bc
	ld a, [$cef6]
	add [hl]
	ld [$cef6], a
	inc hl
	ld a, [$cef7]
	adc [hl]
	ld [$cef7], a
	ld a, [wGameLevel]
	and a
	jr z, .asm_1372e ; GAMELEVEL_EASY
	dec a
	jr z, .asm_13733 ; GAMELEVEL_NORMAL
	dec a
	jr z, .asm_13738 ; GAMELEVEL_HARD
	dec a
	jr z, .asm_13738 ; GAMELEVEL_S_HARD
	dec a
	jr z, .asm_13738 ; GAMELEVEL_V_HARD
	dec a
	jr z, .asm_1372e ; GAMELEVEL_SLOW
	jr .asm_13738
.asm_1372e
	ld bc, $77ad
	jr .asm_1373b
.asm_13733
	ld bc, $77cd
	jr .asm_1373b
.asm_13738
	ld bc, $77ed
.asm_1373b
	ld a, d
	and $0f
	add a
	ld l, a
	ld h, $00
	add hl, bc
	ld a, [$cef6]
	add [hl]
	ld [$cef6], a
	inc hl
	ld a, [$cef7]
	adc [hl]
	ld [$cef7], a
	ld a, [wGameLevel]
	and a
	jr z, .asm_13769 ; GAMELEVEL_EASY
	dec a
	jr z, .asm_1376e ; GAMELEVEL_NORMAL
	dec a
	jr z, .asm_13773 ; GAMELEVEL_HARD
	dec a
	jr z, .asm_13773 ; GAMELEVEL_S_HARD
	dec a
	jr z, .asm_13773 ; GAMELEVEL_V_HARD
	dec a
	jr z, .asm_13769 ; GAMELEVEL_SLOW
	jr .asm_13773
.asm_13769
	ld bc, $780d
	jr .asm_13778
.asm_1376e
	ld bc, $782f
	jr .asm_13778
.asm_13773
	ld bc, $7851
	jr .asm_13778
.asm_13778
	ld l, e
	ld h, $00
	add hl, hl
	add hl, bc
	ld a, [$cef6]
	add [hl]
	ld [$cef6], a
	inc hl
	ld a, [$cef7]
	adc [hl]
	ld [$cef7], a
	ret
; 0x1378d

SECTION "Bank 4@7873", ROMX[$7873], BANK[$4]

Func_13873:
	ld a, $01
	ld [$d8b7], a
	ld hl, $d266
	ld de, $fffa
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	bit 4, [hl]
	call nz, Func_139c3
	add hl, de
	ret

Func_139c3:
	xor a
	ld [$d8b7], a
	ld bc, $fffc
	add hl, bc
	ld a, [hli]
	inc hl
	ldh [hff8a], a
	cp $0b
	jr c, .asm_139e9
	cp $26
	jr nc, .asm_139e9
	ld a, [hl]
	cp $05
	jp z, .asm_13a82
	cp $06
	jp z, .asm_13a82
	cp $07
	jp z, .asm_13aa7
.asm_139e7
	jr .asm_139e7
.asm_139e9
	ld a, [hl]
	cp $05
	jr z, .asm_139f8
	cp $06
	jr z, .asm_139f8
	cp $07
	jr z, .asm_13a08
.asm_139f6
	jr .asm_139f6
.asm_139f8
	ld bc, $3
	add hl, bc
	ld a, [hl]
	dec a
	jr z, .asm_13a02
	ld [hld], a
	ret
.asm_13a02
	ld [hld], a
	dec hl
	dec hl
	ld a, $07
	ld [hl], a
.asm_13a08
	ld bc, $24
	add hl, bc
	ld a, [hl]
	ld bc, $ffdc
	add hl, bc
	cp $00
	jr z, .asm_13a58
	cp $07
.asm_13a17
	jr z, .asm_13a17
	cp $05
	jr z, .asm_13a39
	cp $06
	jr z, .asm_13a39
	ld a, [wc7ce]
	and a
	jr nz, .asm_13a2c
	ld a, $09
	ld [wc7cb], a
.asm_13a2c
	ld a, $01
	ld [hli], a
	inc hl
	inc hl
	ld a, $0a
	ld [hld], a
	res 4, [hl]
	set 3, [hl]
	ret
.asm_13a39
	push hl
	ld e, $00
	ld bc, $27
	add hl, bc
	ld a, [hl]
	ld bc, $ffd7
	add hl, bc
	ld c, l
	ld b, h
	ld d, a
	inc d
	farcall Func_12d91
	pop hl
	inc hl
	inc hl
	ld de, $fffa
	jp Func_139c3
.asm_13a58
	ld bc, $22
	add hl, bc
	ld e, l
	ld d, h
	ld bc, $ffdc
	add hl, bc
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hli]
	ld [de], a
	inc de
	ld a, [hl]
	ld [de], a
	xor a
	ld [hld], a
	ld [hld], a
	ld [hld], a
	ld [hld], a
	ld [hld], a
	ld [hl], a
	ld bc, $4
	add hl, bc
	ld de, $fffa
	ret

.asm_13a82
	ld bc, $3
	add hl, bc
	ld a, [hl]
	dec a
	jr z, .asm_13a9a
	ld [hl], a
	ld bc, $fffb
	add hl, bc
	call Func_12cfa
	ld bc, $4
	add hl, bc
	ld de, $fffa
	ret
.asm_13a9a
	ld [hl], a
	ld bc, $fffb
	add hl, bc
	call Func_12cfa
	inc hl
	inc hl
	ld a, $07
	ld [hl], a
.asm_13aa7
	dec hl
	dec hl
	call Func_12c26
	inc hl
	inc hl
	ldh a, [hff8d]
	cp $00
	jr z, .asm_13af6
	cp $07
.asm_13ab6
	jr z, .asm_13ab6
	cp $05
	jr z, .asm_13adc
	cp $06
	jr z, .asm_13adc
	dec hl
	dec hl
	call Func_12cc7
	ld e, [hl]
	ld bc, $4
	add hl, bc
	push hl
	bit 2, [hl]
	jr z, .asm_13ad5
	farcall Func_c1f4b
.asm_13ad5
	pop hl
	res 2, [hl]
	ld de, $fffa
	ret
.asm_13adc
	push hl
	ld e, $00
	dec hl
	dec hl
	ld c, l
	ld b, h
	ldh a, [hff90]
	ld d, a
	inc d
	farcall Func_12d91
	pop hl
	inc hl
	inc hl
	ld de, $fffa
	jp Func_139c3
.asm_13af6
	push hl
	ld d, $00
	inc hl
	inc hl
	ld a, [hl]
	ld bc, $20
	add hl, bc
	bit 7, a
	jr z, .asm_13b06
	ld d, $01
.asm_13b06
	ld c, l
	ld b, h
	ldh a, [hff8a]
	ld e, a
	farcall Func_12186
	pop hl
	push hl
	ld bc, $26
	add hl, bc
	set 2, [hl]
	pop hl
	inc hl
	inc hl
	ld de, $fffa
	ret
; 0x13b20
