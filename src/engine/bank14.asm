Func_50000::
	farcall Func_68ebb

	ld hl, wcdad
	ld a, LOW(Func_5006c)
	ld [hli], a
	ld a, HIGH(Func_5006c)
	ld [hl], a

	xor a
	ld [wcdaf], a
	ld [wcdb0], a
	xor a
	ld [wcdc1], a
	ld a, $01
	ld [wc896], a
;	fallthrough

Func_5001f:
	call Is2PlayerGameMode
	jr z, .two_player_mode
	ldh a, [hJoypadPressed]
	and PAD_START
	jr z, .asm_50037
	; start pressed
	ld a, $01
	ld [wcd69], a
	jr .asm_50037
.two_player_mode
	farcall Func_76bc7

.asm_50037
	ld a, [wcd69]
	and a
	jr nz, .asm_5003f
	jr .asm_5004a
.asm_5003f
	call Func_526e5
	ld a, GAMESTATE_06
	ldh [hGameState], a
	xor a
	ldh [hVBlankTrampolinePtr + 1], a
	ret

.asm_5004a
	ld hl, wcdad
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

Func_50051:
	ld de, NULL
	farcall Func_40ef8
	farcall TickBackgroundPattern
	farcall Func_40519
	call Func_19bc
	jp Func_5001f

Func_5006c:
	copy_data $c51a, $00, $5880, $38, $18 ; c51a, e1880

	ld hl, wBGPals palette 0
	ld de, $d000
	ld bc, 3 palettes
	call Func_1ea7

	ld hl, $c51a
	ld de, $d0c0
	ld bc, $18
	call Func_1ea7

	farcall Func_68b52

	ld a, $34
	ld [wcdb7], a
	ld a, LOW(Func_500b9)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(Func_500b9)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(Func_500b9)
	ldh [hVBlankTrampolinePtr + 1], a

	ld hl, wcdad
	ld a, LOW(Func_500c6)
	ld [hli], a
	ld a, HIGH(Func_500c6)
	ld [hl], a

	xor a
	ld [wcdaf], a
	ld [wcdb0], a
	jp Func_50051

Func_500b9:
	farcall Func_45cc4
	call UpdateBackgroundPatternTile
	call Func_1d15
	ret

Func_500c6:
	ld a, [wcdaf]
	dec a
	jp z, .asm_500fa
	dec a
	jp z, .asm_50111
	ld hl, wcdb0
	ld a, [hl]
	inc [hl]
	cp $14
	jr z, .asm_500dd
	jp Func_50051
.asm_500dd
	ld a, LOW(Func_501fb)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(Func_501fb)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(Func_501fb)
	ldh [hVBlankTrampolinePtr + 1], a

	farcall Func_6c085

	ld hl, wcdaf
	inc [hl]
	xor a
	ld [wcdb0], a
	jp Func_50051

.asm_500fa
	ld a, LOW(Func_50205)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(Func_50205)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(Func_50205)
	ldh [hVBlankTrampolinePtr + 1], a

	ld hl, wcdaf
	inc [hl]
	xor a
	ld [wcdb0], a
	jp Func_50051

.asm_50111
	ld hl, wcdb0
	ld a, [hl]
	inc [hl]
	cp $20
	jr z, .asm_50138
	ld de, NULL
.asm_5011d
	call Func_1d81
	ld a, e
	add $08
	ld e, a
	cp $60
	jp c, .asm_5011d
	ld hl, $d000
	ld de, wBGPals palette 0
	ld bc, 3 palettes
	call Func_1ea7
	jp Func_50051
.asm_50138
	ld a, [wGameMode]
	cp GAMEMODE_TIME_ZONE
	jp z, .asm_501b9
	cp GAMEMODE_2P_TIME_ZONE
	jp z, .asm_501b9
	cp GAMEMODE_LINE_CLEAR
	jp z, .asm_501d8
	cp GAMEMODE_PUZZLE
	jp z, .asm_501d8
	cp GAMEMODE_UNKF
	jp z, .asm_501d8

	ld a, LOW(Func_5020f)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(Func_5020f)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(Func_5020f)
	ldh [hVBlankTrampolinePtr + 1], a

	copy_data $c4e5, $00, $549d, $14, $20 ; c4e5, 5149d

	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ld de, s3a000
	ld c, BANK(s3a000)
	ld hl, $4e6c
	ld a, $14
	call Func_93d
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a

	ld a, $49
	ld [wcdb1], a
	ld a, $f0
	ld [wcdb2], a
	ld a, $00
	ld [wcdb3], a
	ld a, $e0
	ld [wcdb4], a
	ld a, $00
	ld [wcdb5], a
	ld a, $b4
	ld [wcdb6], a

	ld hl, wcdad
	ld a, $2e
	ld [hli], a
	ld a, $4a
	ld [hl], a

	xor a
	ld [wcdaf], a
	ld [wcdb0], a
	jp Func_50051

.asm_501b9
	ld a, LOW(Func_50249)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(Func_50249)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(Func_50249)
	ldh [hVBlankTrampolinePtr + 1], a

	ld hl, wcdad
	ld a, $4c
	ld [hli], a
	ld a, $47
	ld [hl], a

	xor a
	ld [wcdaf], a
	ld [wcdb0], a
	jp Func_50051

.asm_501d8
	ld a, LOW(Func_50249)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(Func_50249)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(Func_50249)
	ldh [hVBlankTrampolinePtr + 1], a

	xor a
	ld [wcdb1], a

	ld hl, wcdad
	ld a, LOW(Func_50250)
	ld [hli], a
	ld a, HIGH(Func_50250)
	ld [hl], a

	xor a
	ld [wcdaf], a
	ld [wcdb0], a
	jp Func_50051

Func_501fb:
	call Func_19bf
	call UpdateBackgroundPatternTile
	call Func_1d15
	ret

Func_50205:
	call UpdateBackgroundPatternTile
	call FlushPalettes
	call Func_1d15
	ret

Func_5020f:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, BANK(s3a000)
	sramswitch
	xor a
	vramswitch
	ld c, 21 ; 22 tiles
	ld hl, s3a000
	ld de, v0Tiles0 tile $10
	call GeneralHDMA
	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a

	call FlushPalettes
	call UpdateBackgroundPatternTile
	call Func_1d15
	ret

Func_50249:
	call UpdateBackgroundPatternTile
	call Func_1d15
	ret

Func_50250:
	ld hl, wcdb1
	ld a, [hl]
	inc [hl]
	dec a
	jr z, .asm_5028e
	dec a
	jr z, .asm_5029d

	ld a, LOW(Func_502e0)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(Func_502e0)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(Func_502e0)
	ldh [hVBlankTrampolinePtr + 1], a

	ld a, [wGameMode]
	cp GAMEMODE_UNKF
	jr z, .asm_5027e
	ld de, w6d300
	ld c, BANK(w6d300)
	ld hl, $5065
	ld a, $14
	call Func_93d
	jp Func_50051

.asm_5027e
	ld de, w6d300
	ld c, BANK(w6d300)
	ld hl, $52a1
	ld a, $14
	call Func_93d
	jp Func_50051

.asm_5028e
	ld a, LOW(Func_502f7)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(Func_502f7)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(Func_502f7)
	ldh [hVBlankTrampolinePtr + 1], a
	jp Func_50051

.asm_5029d
	ld a, LOW(Func_5030e)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(Func_5030e)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(Func_5030e)
	ldh [hVBlankTrampolinePtr + 1], a

	copy_data $c4e5, $00, $54bd, $14, $20 ; c4e5, 514bd

	ld de, $d300
	ld bc, $400
	ld a, $00
	call FillMemory

	xor a
	ld [wcdb1], a
	ld a, $28
	ld [wcdb2], a
	ld a, $e0
	ld [wcdb3], a

	ld hl, wcdad
	ld a, LOW(Func_50315)
	ld [hli], a
	ld a, HIGH(Func_50315)
	ld [hl], a

	xor a
	ld [wcdaf], a
	ld [wcdb0], a
	jp Func_50051

Func_502e0:
	xor a
	vramswitch
	ld c, 31 ; 32 tiles
	ld hl, w6d300
	ld de, v0Tiles0 tile $00
	call GeneralHDMA
	call UpdateBackgroundPatternTile
	call Func_1d15
	ret

Func_502f7:
	xor a
	vramswitch
	ld c, 31 ; 32 tiles
	ld hl, $d500
	ld de, v0Tiles0 tile $20
	call GeneralHDMA
	call UpdateBackgroundPatternTile
	call Func_1d15
	ret

Func_5030e:
	call FlushPalettes
	call UpdateBackgroundPatternTile
	ret

Func_50315:
	ld hl, wcdb1
	ld c, [hl]
	ld b, $00
	ld hl, $4427
	add hl, bc
	ld a, [hl]
	cp $80
	jp z, .asm_503fd
	ld a, [wcdb3]
	add [hl]
	ld [wcdb3], a
	ld hl, wcdb1
	inc [hl]
	ld a, [wGameMode]
	cp GAMEMODE_UNKF
	jr nz, .asm_50363
	ld a, [wceac]
	and a
	jr z, .asm_50350
	ld a, [wcdb2]
	add $10
	ld b, a
	ld a, [wcdb3]
	ld c, a
	ld hl, $5678
	call Func_2f8
	jp Func_50051

.asm_50350
	ld a, [wcdb2]
	add $10
	ld b, a
	ld a, [wcdb3]
	ld c, a
	ld hl, $56b1
	call Func_2f8
	jp Func_50051

.asm_50363
	ld a, [wcdb2]
	add $10
	ld b, a
	ld a, [wcdb3]
	sub $08
	ld c, a
	ld hl, $55f4
	call Func_2f8

	ld a, [wcdb2]
	ld b, a
	ld a, [wcdb3]
	add $08
	ld c, a
	call Func_1f38
	ld a, [hl]
	and $f0
	swap a
	inc a
	add a
	ld e, a
	ld d, $00
	ld hl, $4476
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call Func_2f8

	ld a, [wcdb2]
	add $0b
	ld b, a
	ld a, [wcdb3]
	add $08
	ld c, a
	ld hl, $55e3
	call Func_2f8

	call Func_1f38
	ld a, [hl]
	and $0f
	cp $09
	jr c, .asm_503d9
	ld a, [wcdb2]
	add $16
	ld b, a
	ld a, [wcdb3]
	add $08
	ld c, a
	ld hl, $554a
	call Func_2f8

	ld a, [wcdb2]
	add $1f
	ld b, a
	ld a, [wcdb3]
	add $08
	ld c, a
	ld hl, $5539
	call Func_2f8
	jp Func_50051

.asm_503d9
	ld a, [wcdb2]
	add $16
	ld b, a
	ld a, [wcdb3]
	add $08
	ld c, a
	call Func_1f38
	ld a, [hl]
	and $0f
	inc a
	add a
	ld e, a
	ld d, $00
	ld hl, $4476
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	call Func_2f8
	jp Func_50051

.asm_503fd
	ld a, LOW(Func_50420)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(Func_50420)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(Func_50420)
	ldh [hVBlankTrampolinePtr + 1], a

	xor a
	ld [wcdb1], a

	ld hl, wcdad
	ld a, LOW(Func_5048a)
	ld [hli], a
	ld a, HIGH(Func_5048a)
	ld [hl], a

	xor a
	ld [wcdaf], a
	ld [wcdb0], a
	jp Func_50051

Func_50420:
	call UpdateBackgroundPatternTile
	call Func_1d15
	ret
; 0x50427

SECTION "Bank 14@448a", ROMX[$448a], BANK[$14]

Func_5048a:
	ld hl, wcdb1
	ld a, [hl]
	inc [hl]
	dec a
	jr z, .asm_504aa
	dec a
	jr z, .asm_504b9
	dec a
	jr z, .asm_504c8
	dec a
	jr z, .asm_504d7
	ld a, $5a
	ldh [hVBlankTrampolinePtr], a
	ld a, $14
	ldh [hVBlankTrampolineBank], a
	ld a, $45
	ldh [$ffbb], a
	jp Func_50051

.asm_504aa
	ld a, $73
	ldh [hVBlankTrampolinePtr], a
	ld a, $14
	ldh [hVBlankTrampolineBank], a
	ld a, $45
	ldh [$ffbb], a
	jp Func_50051

.asm_504b9
	ld a, $8c
	ldh [hVBlankTrampolinePtr], a
	ld a, $14
	ldh [hVBlankTrampolineBank], a
	ld a, $45
	ldh [$ffbb], a
	jp Func_50051

.asm_504c8
	ld a, $a5
	ldh [hVBlankTrampolinePtr], a
	ld a, $14
	ldh [hVBlankTrampolineBank], a
	ld a, $45
	ldh [$ffbb], a
	jp Func_50051

.asm_504d7
	ld a, $be
	ldh [hVBlankTrampolinePtr], a
	ld a, $14
	ldh [hVBlankTrampolineBank], a
	ld a, $45
	ldh [$ffbb], a

	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ld de, s0a000
	ld c, $03
	ld hl, $4e6c
	ld a, $14
	call Func_93d
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a

	copy_data $c4e5, $00, $549d, $14, $20 ; c4e5, 5149d

	ld a, [wGameMode]
	cp $03
	jr nz, .asm_50529
	xor a
	ld [wcdb1], a
	ld hl, wcdad
	ld a, $f5
	ld [hli], a
	ld a, $45
	ld [hl], a
	xor a
	ld [wcdaf], a
	ld [wcdb0], a
	jp Func_50051

.asm_50529
	ld a, $49
	ld [wcdb1], a
	ld a, $f0
	ld [wcdb2], a
	ld a, $00
	ld [wcdb3], a
	ld a, $e0
	ld [wcdb4], a
	ld a, $00
	ld [wcdb5], a
	ld a, $b4
	ld [wcdb6], a

	ld hl, wcdad
	ld a, $1b
	ld [hli], a
	ld a, $47
	ld [hl], a

	xor a
	ld [wcdaf], a
	ld [wcdb0], a
	jp Func_50051
; 0x5055a

SECTION "Bank 14@66e5", ROMX[$66e5], BANK[$14]

Func_526e5:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	copy_data $bfe0, $03, $cdad, $00, $14 ; bfe0, cdad
	copy_data $bfed, $03, $ffba, $00, $3 ; bfed, ffba
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret
; 0x5270c
