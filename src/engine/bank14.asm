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
	call JpDoFrame
	jp Func_5001f

Func_5006c:
	copy_data wc51a, Pals_e1880, 3 palettes

	ld hl, wBGPals palette 0
	ld de, w2d000
	ld bc, 3 palettes
	call Func_1ea7

	ld hl, wc51a
	ld de, w2d0c0
	ld bc, 3 palettes
	call Func_1ea7

	farcall Func_68b52

	ld a, $34
	ld [wcdb7], a
	ld a, LOW(VBlank_500b9)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_500b9)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_500b9)
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

VBlank_500b9:
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
	ld a, LOW(VBlank_501fb)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_501fb)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_501fb)
	ldh [hVBlankTrampolinePtr + 1], a

	farcall Func_6c085

	ld hl, wcdaf
	inc [hl]
	xor a
	ld [wcdb0], a
	jp Func_50051

.asm_500fa
	ld a, LOW(VBlank_50205)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_50205)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_50205)
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

	ld hl, w2d000
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

	ld a, LOW(VBlank_5020f)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_5020f)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_5020f)
	ldh [hVBlankTrampolinePtr + 1], a

	copy_data wOBPals palette 2, BANK(wOBPals), $549d, $14, 4 palettes ; c4e5, 5149d

	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ld de, s3a000
	ld c, BANK(s3a000)
	ld hl, $4e6c
	ld a, $14
	call Decompress
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
	ld a, LOW(Func_50a2e)
	ld [hli], a
	ld a, HIGH(Func_50a2e)
	ld [hl], a

	xor a
	ld [wcdaf], a
	ld [wcdb0], a
	jp Func_50051

.asm_501b9
	ld a, LOW(VBlank_50249)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_50249)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_50249)
	ldh [hVBlankTrampolinePtr + 1], a

	ld hl, wcdad
	ld a, LOW(Func_5074c)
	ld [hli], a
	ld a, HIGH(Func_5074c)
	ld [hl], a

	xor a
	ld [wcdaf], a
	ld [wcdb0], a
	jp Func_50051

.asm_501d8
	ld a, LOW(VBlank_50249)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_50249)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_50249)
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

VBlank_501fb:
	call Func_19bf
	call UpdateBackgroundPatternTile
	call Func_1d15
	ret

VBlank_50205:
	call UpdateBackgroundPatternTile
	call FlushPalettes
	call Func_1d15
	ret

VBlank_5020f:
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

VBlank_50249:
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

	ld a, LOW(VBlank_502e0)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_502e0)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_502e0)
	ldh [hVBlankTrampolinePtr + 1], a

	ld a, [wGameMode]
	cp GAMEMODE_UNKF
	jr z, .asm_5027e
	ld de, w6d300
	ld c, BANK(w6d300)
	ld hl, $5065
	ld a, $14
	call Decompress
	jp Func_50051

.asm_5027e
	ld de, w6d300
	ld c, BANK(w6d300)
	ld hl, $52a1
	ld a, $14
	call Decompress
	jp Func_50051

.asm_5028e
	ld a, LOW(VBlank_502f7)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_502f7)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_502f7)
	ldh [hVBlankTrampolinePtr + 1], a
	jp Func_50051

.asm_5029d
	ld a, LOW(VBlank_5030e)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_5030e)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_5030e)
	ldh [hVBlankTrampolinePtr + 1], a

	copy_data wOBPals palette 2, BANK(wOBPals), $54bd, $14, 4 palettes ; c4e5, 514bd

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

VBlank_502e0:
	xor a
	vramswitch
	ld c, 31 ; 32 tiles
	ld hl, w6d300
	ld de, v0Tiles0 tile $00
	call GeneralHDMA
	call UpdateBackgroundPatternTile
	call Func_1d15
	ret

VBlank_502f7:
	xor a
	vramswitch
	ld c, 31 ; 32 tiles
	ld hl, $d500
	ld de, v0Tiles0 tile $20
	call GeneralHDMA
	call UpdateBackgroundPatternTile
	call Func_1d15
	ret

VBlank_5030e:
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
	ld a, LOW(VBlank_50420)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_50420)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_50420)
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

VBlank_50420:
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
	ld a, LOW(VBlank_5055a)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_5055a)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_5055a)
	ldh [hVBlankTrampolinePtr + 1], a
	jp Func_50051

.asm_504aa
	ld a, LOW(VBlank_50573)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_50573)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_50573)
	ldh [hVBlankTrampolinePtr + 1], a
	jp Func_50051

.asm_504b9
	ld a, LOW(VBlank_5058c)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_5058c)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_5058c)
	ldh [hVBlankTrampolinePtr + 1], a
	jp Func_50051

.asm_504c8
	ld a, LOW(VBlank_505a5)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_505a5)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_505a5)
	ldh [hVBlankTrampolinePtr + 1], a
	jp Func_50051

.asm_504d7
	ld a, LOW(VBlank_505be)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_505be)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_505be)
	ldh [hVBlankTrampolinePtr + 1], a

	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ld de, s3a000
	ld c, $03
	ld hl, $4e6c
	ld a, $14
	call Decompress
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a

	copy_data wOBPals palette 2, BANK(wOBPals), $549d, $14, 4 palettes ; c4e5, 5149d

	ld a, [wGameMode]
	cp GAMEMODE_PUZZLE
	jr nz, .asm_50529
	xor a
	ld [wcdb1], a

	ld hl, wcdad
	ld a, LOW(Func_505f5)
	ld [hli], a
	ld a, HIGH(Func_505f5)
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
	ld a, LOW(Func_5071b)
	ld [hli], a
	ld a, HIGH(Func_5071b)
	ld [hl], a

	xor a
	ld [wcdaf], a
	ld [wcdb0], a
	jp Func_50051

VBlank_5055a:
	xor a
	vramswitch
	ld a, BANK(Gfx_e1000)
	ld c, $1f
	ld hl, Gfx_e1000
	ld de, v0Tiles0
	call FarGeneralHDMA
	call UpdateBackgroundPatternTile
	call Func_1d15
	ret

VBlank_50573:
	xor a
	vramswitch
	ld a, BANK(Gfx_e1000)
	ld c, $1f
	ld hl, Gfx_e1000 tile $20
	ld de, v0Tiles0 tile $20
	call FarGeneralHDMA
	call UpdateBackgroundPatternTile
	call Func_1d15
	ret

VBlank_5058c:
	xor a
	vramswitch
	ld a, BANK(Gfx_e1000)
	ld c, $1f
	ld hl, Gfx_e1000 tile $40
	ld de, v0Tiles0 tile $40
	call FarGeneralHDMA
	call UpdateBackgroundPatternTile
	call Func_1d15
	ret

VBlank_505a5:
	xor a
	vramswitch
	ld a, BANK(Gfx_e1000)
	ld c, $1f
	ld hl, Gfx_e1000 tile $60
	ld de, v0Tiles0 tile $60
	call FarGeneralHDMA
	call UpdateBackgroundPatternTile
	call Func_1d15
	ret

VBlank_505be:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $03
	sramswitch
	xor a
	vramswitch
	ld c, $15
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
	ret

Func_505f5:
	ld hl, wcdb1
	ld a, [hl]
	dec a
	jr z, .asm_50616
	dec a
	jr z, .asm_5064e
	ld a, LOW(VBlank_50698)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_50698)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_50698)
	ldh [hVBlankTrampolinePtr + 1], a
	ld hl, wcdb1
	ld a, $01
	ld [hli], a
	xor a
	ld [hli], a
	jp Func_50051

.asm_50616
	ld hl, wcdb2
	inc [hl]
	ld a, [wc8da]
	ld hl, wc8dc
	cp [hl]
	jr z, .asm_5063d
	ld a, [wcdb2]
	and $03
	jp nz, Func_50051
	ld hl, wc8da
	inc [hl]
	ld a, [wc7ce]
	and a
	jr nz, .asm_5063a
	ld a, $c7
	ld [wc7cb], a
.asm_5063a
	jp Func_50051

.asm_5063d
	ld a, [wc8da]
	ld [wc8db], a
	ld hl, wcdb1
	ld a, $02
	ld [hli], a
	xor a
	ld [hli], a
	jp Func_50051

.asm_5064e
	ld hl, wcdb2
	ld a, [hl]
	cp $50
	jr z, .asm_50679
	inc [hl]
	and $04
	jr nz, .asm_5066a
	ld a, LOW(VBlank_5069f)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_5069f)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_5069f)
	ldh [hVBlankTrampolinePtr + 1], a
	jp Func_50051

.asm_5066a
	ld a, LOW(VBlank_506d6)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_506d6)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_506d6)
	ldh [hVBlankTrampolinePtr + 1], a
	jp Func_50051

.asm_50679
	ld a, LOW(VBlank_50717)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_50717)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_50717)
	ldh [hVBlankTrampolinePtr + 1], a

	ld hl, wcdad
	ld a, LOW(Func_5071b)
	ld [hli], a
	ld a, HIGH(Func_5071b)
	ld [hl], a
	xor a
	ld [wcdaf], a
	ld [wcdb0], a
	jp Func_50051

VBlank_50698:
	call Func_1cd6
	call UpdateBackgroundPatternTile
	ret

VBlank_5069f:
	xor a
	vramswitch
	ld a, $03
	ldcoord_a 4, 5, v0BGMap1
	ldcoord_a 5, 5, v0BGMap1
	ldcoord_a 4, 6, v0BGMap1
	ldcoord_a 5, 6, v0BGMap1
	ldcoord_a 4, 7, v0BGMap1
	ldcoord_a 5, 7, v0BGMap1

	ld a, BANK("VRAM1")
	vramswitch
	ld a, 5 | BG_BANK0
	ldcoord_a 4, 5, v1BGMap1
	ldcoord_a 5, 5, v1BGMap1
	ldcoord_a 4, 6, v1BGMap1
	ldcoord_a 5, 6, v1BGMap1
	ldcoord_a 4, 7, v1BGMap1
	ldcoord_a 5, 7, v1BGMap1

	call UpdateBackgroundPatternTile
	ret

VBlank_506d6:
	xor a
	vramswitch
	ld a, $54
	ldcoord_a 4, 5, v0BGMap1
	ld a, $55
	ldcoord_a 5, 5, v0BGMap1
	ld a, $56
	ldcoord_a 4, 6, v0BGMap1
	ld a, $57
	ldcoord_a 5, 6, v0BGMap1
	ld a, $58
	ldcoord_a 4, 7, v0BGMap1
	ld a, $59
	ldcoord_a 5, 7, v0BGMap1

	ld a, BANK("VRAM1")
	vramswitch
	ld a, 5 | BG_BANK1
	ldcoord_a 4, 5, v1BGMap1
	ldcoord_a 5, 5, v1BGMap1
	ldcoord_a 4, 6, v1BGMap1
	ldcoord_a 5, 6, v1BGMap1
	ldcoord_a 4, 7, v1BGMap1
	ldcoord_a 5, 7, v1BGMap1

	call UpdateBackgroundPatternTile
	ret

VBlank_50717:
	call UpdateBackgroundPatternTile
	ret

Func_5071b:
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
	ld a, LOW(Func_50a2e)
	ld [hli], a
	ld a, HIGH(Func_50a2e)
	ld [hl], a

	xor a
	ld [wcdaf], a
	ld [wcdb0], a
	jp Func_50051

Func_5074c:
	ld a, LOW(VBlank_50797)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_50797)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_50797)
	ldh [hVBlankTrampolinePtr + 1], a

	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ld de, s0a000
	ld c, $03
	ld hl, $545f
	ld a, $14
	call Decompress
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a

	ld a, $00
	ld [wcdb1], a
	ld a, $28
	ld [wcdb3], a
	ld a, $30
	ld [wcdb4], a

	ld hl, wcdad
	ld a, LOW(Func_507ce)
	ld [hli], a
	ld a, HIGH(Func_507ce)
	ld [hl], a

	xor a
	ld [wcdaf], a
	ld [wcdb0], a
	jp Func_50051

VBlank_50797:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $03
	sramswitch
	xor a
	vramswitch
	ld c, $03
	ld hl, s3a000
	ld de, v0Tiles0 tile $4c
	call GeneralHDMA
	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	call FlushPalettes
	call UpdateBackgroundPatternTile
	ret

Func_507ce:
	ld hl, wcdb1
	ld a, [hl]
	cp $3d
	jr nc, .asm_50828
	and $02
	add a
	add a
	ld c, a
	ld b, $00
	inc [hl]
	ld hl, $484d
	add hl, bc
	ld a, [hli]
	ld [wOBPals palette 0 color 1 + 0], a
	ld a, [hli]
	ld [wOBPals palette 0 color 2 + 0], a
	ld a, [hl]
	ld [wOBPals palette 0 color 3 + 0], a
	ld a, [wcdb3]
	ld b, a
	ld a, [wcdb4]
	ld c, a
	ld a, [wceb5]
	dec a
	jr z, .asm_50807
	dec a
	jr z, .asm_5080c
	dec a
	jr z, .asm_50811
	ld hl, $5625
	jr .asm_50816
.asm_50807
	ld hl, $5646
	jr .asm_50816
.asm_5080c
	ld hl, $5625
	jr .asm_50816
.asm_50811
	ld hl, $5625
	jr .asm_50816
.asm_50816
	call Func_2f8
	ld hl, $f8f8
	add hl, bc
	ld b, h
	ld c, l
	ld hl, $5667
	call Func_2f8
	jp Func_50051

.asm_50828
	ld a, LOW(VBlank_5085c)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_5085c)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_5085c)
	ldh [hVBlankTrampolinePtr + 1], a
	ld a, $00
	ld [wcdb1], a

	ld hl, wcdad
	ld a, LOW(Func_50863)
	ld [hli], a
	ld a, HIGH(Func_50863)
	ld [hl], a

	xor a
	ld [wcdaf], a
	ld [wcdb0], a
	jp Func_50051
; 0x5084c

SECTION "Bank 14@485c", ROMX[$485c], BANK[$14]

VBlank_5085c:
	call UpdateBackgroundPatternTile
	call Func_1d15
	ret

Func_50863:
	ld hl, wcdb1
	ld a, [hl]
	inc [hl]
	ld c, a
	ld b, $00
	ld de, wcdb3
	ld hl, .Data_5093c
	add hl, bc
	ld a, [hl]
	cp $80
	jr z, .asm_508ae
	ld a, [de]
	add [hl]
	ld [de], a
	inc de
	ld hl, .Data_5094d
	add hl, bc
	ld a, [de]
	add [hl]
	ld [de], a
	ld hl, wcdb3
	ld a, [hli]
	ld c, [hl]
	ld b, a
	ld a, [wceb5]
	dec a
	jr z, .asm_50899
	dec a
	jr z, .asm_5089e
	dec a
	jr z, .asm_508a3
	ld hl, $5625
	jr .asm_508a8
.asm_50899
	ld hl, $5646
	jr .asm_508a8
.asm_5089e
	ld hl, $5625
	jr .asm_508a8
.asm_508a3
	ld hl, $5625
	jr .asm_508a8
.asm_508a8
	call Func_2f8
	jp Func_50051
.asm_508ae
	ld a, [wceb5]
	dec a
	jr z, .asm_508cc
	dec a
	jr z, .asm_508de
	dec a
	jr z, .asm_508f0
	xor a
	ld [wc86d], a
	ld a, $02
	ld [wGameClockMinutes], a
	xor a
	ld [wGameClockSeconds], a
	ld [wc86a], a
	jr .asm_50900
.asm_508cc
	xor a
	ld [wc86d], a
	ld a, $01
	ld [wGameClockMinutes], a
	xor a
	ld [wGameClockSeconds], a
	ld [wc86a], a
	jr .asm_50900
.asm_508de
	xor a
	ld [wc86d], a
	ld a, $05
	ld [wGameClockMinutes], a
	xor a
	ld [wGameClockSeconds], a
	ld [wc86a], a
	jr .asm_50900
.asm_508f0
	xor a
	ld [wc86d], a
	ld a, $0a
	ld [wGameClockMinutes], a
	xor a
	ld [wGameClockSeconds], a
	ld [wc86a], a
.asm_50900
	ld hl, wc86e
	ld a, [wc86a]
	ld [hli], a
	ld a, [wGameClockSeconds]
	ld [hli], a
	ld a, [wGameClockMinutes]
	ld [hli], a
	ld a, [wc86d]
	ld [hl], a
	farcall Func_4014a
	xor a
	ld [wcdb1], a

	ld a, LOW(VBlank_5095e)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_5095e)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_5095e)
	ldh [hVBlankTrampolinePtr + 1], a

	ld hl, wcdad
	ld a, LOW(Func_50990)
	ld [hli], a
	ld a, HIGH(Func_50990)
	ld [hl], a

	xor a
	ld [wcdaf], a
	ld [wcdb0], a
	jp Func_50051

.Data_5093c:
	db $00, $0f, $0f, $0c, $0a, $09, $07, $02, $04, $05, $01, $02, $02, $02, $01, $01, $80
.Data_5094d:
	db $00, $0f, $0f, $0c, $0a, $09, $07, $02, $04, $05, $01, $02, $02, $02, $01, $01, $80

VBlank_5095e:
	xor a
	vramswitch
	ld hl, wGameClockMinutesTilemap
	ld a, [hli]
	ldcoord_a 2, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 2, 16, v0BGMap1
	ld a, [hli]
	ldcoord_a 3, 16, v0BGMap1
	ld hl, wGameClockSecondsTilemap
	ld a, [hli]
	ldcoord_a 5, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 15, v0BGMap1
	ld a, [hli]
	ldcoord_a 5, 16, v0BGMap1
	ld a, [hli]
	ldcoord_a 6, 16, v0BGMap1
	call UpdateBackgroundPatternTile
	call Func_1d15
	ret

Func_50990:
	copy_data wOBPals palette 0, BANK(wOBPals), $5840, $38, 2 palettes ; c4d5, e1840
	copy_data wOBPals palette 2, BANK(wOBPals), $549d, $14, 4 palettes ; c4e5, 5149d

	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ld de, s0a000
	ld c, $03
	ld hl, $4e6c
	ld a, $14
	call Decompress
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	xor a
	ld [wcdb1], a
	ld [wcdb2], a
	ld [wcdb3], a
	ld [wcdb4], a
	ld [wcdb5], a
	ld a, $b4
	ld [wcdb6], a

	ld a, LOW(VBlank_509f7)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_509f7)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_509f7)
	ldh [hVBlankTrampolinePtr + 1], a

	ld hl, wcdad
	ld a, LOW(Func_50a2e)
	ld [hli], a
	ld a, HIGH(Func_50a2e)
	ld [hl], a

	xor a
	ld [wcdaf], a
	ld [wcdb0], a
	jp Func_50051

VBlank_509f7:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $03
	sramswitch
	xor a
	vramswitch
	ld c, $15
	ld hl, s0a000
	ld de, v0Tiles0 tile $10
	call GeneralHDMA
	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	call FlushPalettes
	call UpdateBackgroundPatternTile
	ret

Func_50a2e:
	call Func_50cf2
	call Func_50d27
	jp nz, Func_50051

	ld a, LOW(VBlank_50a5b)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_50a5b)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_50a5b)
	ldh [hVBlankTrampolinePtr + 1], a

	ld a, $01
	ld [wcd70], a

	ld hl, wcdad
	ld a, LOW(Func_50a62)
	ld [hli], a
	ld a, HIGH(Func_50a62)
	ld [hl], a

	xor a
	ld [wcdaf], a
	ld [wcdb0], a
	jp Func_50051

VBlank_50a5b:
	call UpdateBackgroundPatternTile
	call Func_1d15
	ret

Func_50a62:
	ld bc, $2420
	ld hl, $54dd
	call Func_2f8
	farcall Func_46f3
	call Is2PlayerGameMode
	jr nz, .asm_50a7f
	ld a, [wcd68]
	and a
	jr nz, .asm_50a7f
	jp Func_50051
.asm_50a7f
	ld a, LOW(VBlank_50aaa)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_50aaa)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_50aaa)
	ldh [hVBlankTrampolinePtr + 1], a

	farcall Func_7645b
	farcall Func_764da

	ld hl, wcdad
	ld a, LOW(Func_50ab1)
	ld [hli], a
	ld a, HIGH(Func_50ab1)
	ld [hl], a

	xor a
	ld [wcdaf], a
	ld [wcdb0], a
	jp Func_50051

VBlank_50aaa:
	call UpdateBackgroundPatternTile
	call Func_1d15
	ret

Func_50ab1:
	call Func_50d80
	ld a, [wcdb6]
	cp $64
	jr c, .asm_50ac4
	ld bc, $2420
	ld hl, $54dd
	call Func_2f8
.asm_50ac4
	call Func_50c96
	farcall Func_46f3
	call Func_50cc1
	jr c, .asm_50ad5
	jp Func_50051
.asm_50ad5
	ld a, LOW(VBlank_50af8)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_50af8)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_50af8)
	ldh [hVBlankTrampolinePtr + 1], a
	xor a
	ld [wcdb1], a

	ld hl, wcdad
	ld a, LOW(Func_50aff)
	ld [hli], a
	ld a, HIGH(Func_50aff)
	ld [hl], a

	xor a
	ld [wcdaf], a
	ld [wcdb0], a
	jp Func_50051

VBlank_50af8:
	call UpdateBackgroundPatternTile
	call Func_1d15
	ret

Func_50aff:
	ld a, LOW(VBlank_50b4a)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_50b4a)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_50b4a)
	ldh [hVBlankTrampolinePtr + 1], a

	copy_data wOBPals palette 0, BANK(wOBPals), $5840, $38, 6 palettes ; c4d5, e1840

	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ld de, s0a000
	ld c, $03
	ld hl, $4f95
	ld a, $14
	call Decompress
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	xor a
	ld [wcdb1], a

	ld hl, wcdad
	ld a, LOW(Func_50b81)
	ld [hli], a
	ld a, HIGH(Func_50b81)
	ld [hl], a

	xor a
	ld [wcdaf], a
	ld [wcdb0], a
	jp Func_50051

VBlank_50b4a:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $03
	sramswitch
	xor a
	vramswitch
	ld c, $15
	ld hl, s0a000
	ld de, v0Tiles0 tile $10
	call GeneralHDMA
	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	call FlushPalettes
	call UpdateBackgroundPatternTile
	ret

Func_50b81:
	ld hl, wcdb1
	ld a, [hl]
	dec a
	jr z, .asm_50ba4
	dec a
	jr z, .asm_50bb7
	dec a
	jr z, .asm_50bca
	dec a
	jr z, .asm_50be2
	ld a, LOW(VBlank_50c2e)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_50c2e)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_50c2e)
	ldh [hVBlankTrampolinePtr + 1], a

	ld hl, wcdb1
	inc [hl]
	jp Func_50051

.asm_50ba4
	ld a, LOW(VBlank_50c47)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_50c47)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_50c47)
	ldh [hVBlankTrampolinePtr + 1], a

	ld hl, wcdb1
	inc [hl]
	jp Func_50051

.asm_50bb7
	ld a, LOW(VBlank_50c60)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_50c60)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_50c60)
	ldh [hVBlankTrampolinePtr + 1], a

	ld hl, wcdb1
	inc [hl]
	jp Func_50051

.asm_50bca
	ld a, LOW(VBlank_50c79)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_50c79)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_50c79)
	ldh [hVBlankTrampolinePtr + 1], a

	ld a, $01
	ld [wcd70], a
	ld hl, wcdb1
	inc [hl]
	jp Func_50051

.asm_50be2
	call Is2PlayerGameMode
	jr nz, .asm_50bf0
	ld a, [wcd68]
	and a
	jr nz, .asm_50bf0
	jp Func_50051

.asm_50bf0
	ld a, LOW(VBlank_50c92)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_50c92)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_50c92)
	ldh [hVBlankTrampolinePtr + 1], a

	farcall Func_5475
	ld a, $20
	ld [wc8a4], a
	ld a, [wc8a0]
	ld hl, wc8a2
	cp [hl]
	jr z, .asm_50c16
	ld [hl], a
	ld a, $ff
	ld [wc8a3], a
.asm_50c16
	xor a
	ld [wc896], a
	farcall Func_7645b
	farcall Func_764da
	ld a, GAMESTATE_05
	ldh [hGameState], a
	xor a
	ldh [hVBlankTrampolinePtr + 1], a
	ret

VBlank_50c2e:
	xor a
	vramswitch
	ld a, BANK(Gfx_e1000)
	ld c, $1f
	ld hl, Gfx_e1000 tile $00
	ld de, v0Tiles0
	call FarGeneralHDMA
	call UpdateBackgroundPatternTile
	call Func_1d15
	ret

VBlank_50c47:
	xor a
	vramswitch
	ld a, BANK(Gfx_e1000)
	ld c, $1f
	ld hl, Gfx_e1000 tile $20
	ld de, v0Tiles0 tile $20
	call FarGeneralHDMA
	call UpdateBackgroundPatternTile
	call Func_1d15
	ret

VBlank_50c60:
	xor a
	vramswitch
	ld a, BANK(Gfx_e1000)
	ld c, $1f
	ld hl, Gfx_e1000 tile $40
	ld de, v0Tiles0 tile $40
	call FarGeneralHDMA
	call UpdateBackgroundPatternTile
	call Func_1d15
	ret

VBlank_50c79:
	xor a
	vramswitch
	ld a, BANK(Gfx_e1000)
	ld c, $1f
	ld hl, Gfx_e1000 tile $60
	ld de, v0Tiles0 tile $60
	call FarGeneralHDMA
	call UpdateBackgroundPatternTile
	call Func_1d15
	ret

VBlank_50c92:
	call Func_1d15
	ret

Func_50c96:
	ldh a, [hSCY]
	ld b, a
	ld a, $34
	sub b
	ld c, a
	ldh a, [hSCX]
	ld b, a
	ld a, $30
	sub b
	ld b, a
	ld hl, wcdb6
	ld a, [hl]
	cp $79
	jr nc, .asm_50cba
	cp $3d
	jr nc, .asm_50cb5
	ld hl, $5506
	jr .asm_50cbd
.asm_50cb5
	ld hl, $5517
	jr .asm_50cbd
.asm_50cba
	ld hl, $5528
.asm_50cbd
	call Func_2f8
	ret

Func_50cc1:
	ld hl, wcdb6
	ld a, [hl]
	dec [hl]
	cp $b4
	jr z, .asm_50cd8
	cp $78
	jr z, .asm_50cd8
	cp $3c
	jr z, .asm_50cd8
	cp $00
	jr z, .asm_50ce5
	and a
	ret
.asm_50cd8
	ld a, [wc7ce]
	and a
	jr nz, .asm_50ce3
	ld a, $20
	ld [wc7cc], a
.asm_50ce3
	and a
	ret
.asm_50ce5
	ld a, [wc7ce]
	and a
	jr nz, .asm_50cf0
	ld a, $21
	ld [wc7cc], a
.asm_50cf0
	scf
	ret
; 0x50cf2

SECTION "Bank 14@4cf2", ROMX[$4cf2], BANK[$14]

Func_50cf2:
	ld a, [wcdb5]
	ld e, a
	ld d, $00
	ld hl, $6c57
	add hl, de
	ld a, $31
	call GetFarByte
	add $04
	ld e, a
	ld hl, wcdb5
	ld a, [hl]
	cp $0f
	jr z, .asm_50d11
	inc [hl]
	ld a, e
	ld [wcdb4], a
.asm_50d11
	ldh a, [hSCY]
	ld b, a
	ld a, [wcdb4]
	sub b
	ld c, a
	ldh a, [hSCX]
	ld b, a
	ld a, $24
	sub b
	ld b, a
	ld hl, $54dd
	call Func_2f8
	ret

Func_50d27:
	ld a, [wcdb3]
	ld e, a
	ld d, $00
	ld hl, $6b69
	add hl, de
	ld a, $31
	call GetFarByte
	inc hl
	and a
	push af
	jr z, .asm_50d4f
	add $08
	ld [wcdb1], a
	ld a, $31
	call GetFarByte
	add $10
	ld [wcdb2], a
	ld hl, wcdb3
	inc [hl]
	inc [hl]
.asm_50d4f
	ldh a, [hSCY]
	ld b, a
	ld a, [wcdb2]
	sub b
	ld c, a
	ldh a, [hSCX]
	ld b, a
	ld a, [wcdb1]
	sub b
	ld b, a
	ld hl, $4d67
	call Func_2f8
	pop af
	ret
; 0x50d67

SECTION "Bank 14@4d80", ROMX[$4d80], BANK[$14]

Func_50d80:
	ld a, [wc864]
	ld b, a
	ld a, [wCursorX]
	ld d, a
	ld a, [wCursorY]
	ld e, a
	ldh a, [hJoypadDown]
	and PAD_LEFT
	jr z, .asm_50dbf
	ld hl, wc881
	ld a, [hl]
	and $c0
	cp $00
	jr z, .asm_50d9f
	ld a, $00
	ld [hl], a
.asm_50d9f
	ld a, [hl]
	inc a
	ld [hl], a
	and $3f
	cp $01
	jr z, .asm_50daf
	ld hl, wc882
	cp [hl]
	jp c, .asm_50e5f
.asm_50daf
	ld a, b
	dec a
	and $07
	cp $07
	jr z, .asm_50dbf
	dec b
	ld a, d
	add $f0
	ld d, a
	jp .asm_50e5f
.asm_50dbf
	ldh a, [hJoypadDown]
	and PAD_RIGHT
	jr z, .asm_50df2
	ld hl, wc881
	ld a, [hl]
	and $c0
	cp $40
	jr z, .asm_50dd2
	ld a, $40
	ld [hl], a
.asm_50dd2
	ld a, [hl]
	inc a
	ld [hl], a
	and $3f
	cp $01
	jr z, .asm_50de2
	ld hl, wc882
	cp [hl]
	jp c, .asm_50e5f
.asm_50de2
	ld a, b
	inc a
	and $07
	cp $05
	jr z, .asm_50df2
	inc b
	ld a, d
	add $10
	ld d, a
	jp .asm_50e5f
.asm_50df2
	ldh a, [hJoypadDown]
	and PAD_UP
	jr z, .asm_50e22
	ld hl, wc881
	ld a, [hl]
	and $c0
	cp $80
	jr z, .asm_50e05
	ld a, $80
	ld [hl], a
.asm_50e05
	ld a, [hl]
	inc a
	ld [hl], a
	and $3f
	cp $01
	jr z, .asm_50e15
	ld hl, wc882
	cp [hl]
	jp c, .asm_50e5f
.asm_50e15
	ld a, b
	sub $08
	jr c, .asm_50e22
	ld b, a
	ld a, e
	add $f0
	ld e, a
	jp .asm_50e5f
.asm_50e22
	ldh a, [hJoypadDown]
	and PAD_DOWN
	jr z, .asm_50e54
	ld hl, wc881
	ld a, [hl]
	and $c0
	cp $c0
	jr z, .asm_50e35
	ld a, $c0
	ld [hl], a
.asm_50e35
	ld a, [hl]
	inc a
	ld [hl], a
	and $3f
	cp $01
	jr z, .asm_50e45
	ld hl, wc882
	cp [hl]
	jp c, .asm_50e5f
.asm_50e45
	ld a, b
	add $08
	cp $48
	jr nc, .asm_50e54
	ld b, a
	ld a, e
	add $10
	ld e, a
	jp .asm_50e5f
.asm_50e54
	ld a, $00
	ld [wc881], a
	ld a, $0b
	ld [wc882], a
	ret

.asm_50e5f
	ld a, b
	ld [wc864], a
	ld a, d
	ld [wCursorX], a
	ld a, e
	ld [wCursorY], a
	ret
; 0x50e6c

SECTION "Bank 14@570a", ROMX[$570a], BANK[$14]

Func_5170a::
	farcall Func_68ebb
	farcall Func_7645b
	ld a, $ff
	ld [wcd6a], a
	call Func_5266c
	call Func_5276b
	ld hl, wcdad
	ld a, LOW(Func_51750)
	ld [hli], a
	ld a, HIGH(Func_51750)
	ld [hl], a
	xor a
	ld [wcdaf], a
	ld [wcdb0], a
Func_51731:
	ld hl, wcdad
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

Func_51738:
	ld de, NULL
	farcall Func_40ef8
	farcall Func_40519
	call JpDoFrame
	jp Func_51731
; 0x5174d

SECTION "Bank 14@5750", ROMX[$5750], BANK[$14]

Func_51750:
	ld a, [wcdaf]
	and a
	jr z, .Func_51768
	dec a
	jp z, .Func_51803
	dec a
	jp z, .Func_51840
	dec a
	jp z, .Func_518a9
	dec a
	jp z, .Func_51ab3
	debug_loop

.Func_51768:
	ld a, [wc7ce]
	and a
	jr nz, .asm_51773
	ld a, $03
	ld [wc7cb], a
.asm_51773
	call Func_1426
	farcall Func_40000
	ld a, [wc896]
	and a
	jr nz, .asm_51788
	farcall Func_40968
.asm_51788
	ld hl, wPlayerMonPortraitBGMaps
	ld de, wPlayerMonTilemap
	ld bc, $20
	call CopyHLtoDE
	ld hl, wOpponentMonPortraitBGMaps
	ld de, wOpponentMonTilemap
	ld bc, $20
	call CopyHLtoDE

	ld hl, Pals_52c1c
	ld de, wOBPals
	ld bc, 1 palettes
	call CopyHLtoDE

	copy_data wOBPals palette 4, BANK(wOBPals), Pals_e1860, BANK(Pals_e1860), 1 palettes

	ld a, $0a
	ld [$c4db], a
	ld a, $00
	ld [$c4dc], a
	ld a, $00
	ld [$c4e3], a
	ld a, $40
	ld [$c4e4], a
	ld a, $e0
	ld [$c4eb], a
	ld a, $00
	ld [$c4ec], a
	ld a, $a5
	ld [$c4f3], a
	ld a, $00
	ld [$c4f4], a

	ld a, LOW(.VBlank_517f6)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(.VBlank_517f6)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(.VBlank_517f6)
	ldh [hVBlankTrampolinePtr + 1], a
	ld hl, wcdaf
	inc [hl]
	xor a
	ld [wcdb0], a
	jp Func_51738

.VBlank_517f6:
	farcall Func_45cc4
	call FlushPalettes
	call Func_1d15
	ret

.Func_51803:
	call Is2PlayerGameMode
	jr z, .hide_blocks
	cp GAMEMODE_PUZZLE
	jr z, .hide_blocks
	cp GAMEMODE_UNKF
	jr z, .hide_blocks
	cp GAMEMODE_UNKD
.asm_51812
	jr z, .asm_51812
	ld a, [wGameLevel]
	cp GAMELEVEL_EASY
	jr z, .dont_hide_blocks
	cp GAMELEVEL_SLOW
	jr z, .dont_hide_blocks
.hide_blocks
	call HideBlocks
.dont_hide_blocks
	ld a, LOW(.VBlank_51839)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(.VBlank_51839)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(.VBlank_51839)
	ldh [hVBlankTrampolinePtr + 1], a
	ld hl, wcdaf
	inc [hl]
	xor a
	ld [wcdb0], a
	jp Func_51738

.VBlank_51839:
	call Func_19bf
	call Func_1d15
	ret

.Func_51840:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ld de, s3b000
	ld c, $03
	ld hl, $6bdb
	ld a, $14
	call Decompress
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a

	ld a, LOW(.VBlank_51874)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(.VBlank_51874)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(.VBlank_51874)
	ldh [hVBlankTrampolinePtr + 1], a
	ld hl, wcdaf
	inc [hl]
	xor a
	ld [wcdb0], a
	jp Func_51738

.VBlank_51874:
	ld a, BANK("VRAM1")
	vramswitch
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, BANK(s3b000)
	sramswitch
	ld c, 8
	ld hl, s3b000
	ld de, v0Tiles1 tile $20
	call GeneralHDMA
	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	call Func_1d15
	ret

.Func_518a9:
	ld a, [wc898]
	and a
	jp nz, .asm_518c8
	ld a, [wc896]
	and a
	jr nz, .asm_518ca
	ld a, [wGameMode]
	cp GAMEMODE_PUZZLE
	jr z, .asm_518da
	cp GAMEMODE_UNKF
	jr z, .asm_518e2
	call Is2PlayerGameMode
	jr z, .asm_518d1
	jr .asm_518d6
.asm_518c8
	jr .asm_5193d
.asm_518ca
	ld a, [wGameMode]
	cp GAMEMODE_UNKF
	jr z, .asm_518de
.asm_518d1
	ld b, $00
	jp .asm_518e4
.asm_518d6
	ld b, $01
	jr .asm_518e4
.asm_518da
	ld b, $02
	jr .asm_518e4
.asm_518de
	ld b, $03
	jr .asm_518e4
.asm_518e2
	ld b, $04
.asm_518e4
	ld a, LOW(.VBlank_51986)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(.VBlank_51986)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(.VBlank_51986)
	ldh [hVBlankTrampolinePtr + 1], a
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ld a, b
	push af
	push af
	ld hl, .PtrTable_51959
	call Func_1f01
	ld de, s3b000
	ld c, $03
	call Decompress
	pop af
	ld hl, .PtrTable_51968
	call Func_1f01
	ld de, $b400
	ld c, $03
	call Decompress
	pop af
	ld hl, .PtrTable_51977
	call Func_1f01
	ld [wcdc0], a
	ld a, l
	ld [wcdb4], a
	ld a, h
	ld [wcdb5], a
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a

	ld hl, wcdaf
	inc [hl]
	xor a
	ld [wcdb0], a
	jp Func_51738

.asm_5193d
	ld a, LOW(.VBlank_5198c)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(.VBlank_5198c)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(.VBlank_5198c)
	ldh [hVBlankTrampolinePtr + 1], a
	ld a, $01
	ld [wcdb4], a
	ld hl, wcdaf
	inc [hl]
	xor a
	ld [wcdb0], a
	jp Func_51738

.PtrTable_51959:
	dwb $6c24, $14 ; $0
	dwb $6c5d, $14 ; $1
	dwb $6c97, $14 ; $2
	dwb $6c24, $14 ; $3
	dwb $6c5d, $14 ; $4

.PtrTable_51968:
	dwb $6c49, $14 ; $0
	dwb $6c7c, $14 ; $1
	dwb $6cc5, $14 ; $2
	dwb $6c49, $14 ; $3
	dwb $6c7c, $14 ; $4

.PtrTable_51977:
	db $01, $00, $62 ; $0
	db $02, $01, $6f ; $1
	db $03, $02, $7a ; $2
	db $01, $03, $62 ; $3
	db $02, $04, $6f ; $4

.VBlank_51986:
	farcall Func_49220
.VBlank_5198c:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $03
	sramswitch
	xor a
	vramswitch
	ld a, HIGH(s3b000)
	ldh [rHDMA1], a
	ld a, LOW(s3b000)
	ldh [rHDMA2], a
	ld a, $9b
	ldh [rHDMA3], a
	ld a, $00
	ldh [rHDMA4], a
	xor a
	ldh [rHDMA5], a
	ld a, $b0
	ldh [rHDMA1], a
	ld a, $10
	ldh [rHDMA2], a
	ld a, $20
	ldh [rHDMA4], a
	xor a
	ldh [rHDMA5], a
	ld a, $b0
	ldh [rHDMA1], a
	ld a, $20
	ldh [rHDMA2], a
	ld a, $40
	ldh [rHDMA4], a
	xor a
	ldh [rHDMA5], a
	ld a, $b0
	ldh [rHDMA1], a
	ld a, $30
	ldh [rHDMA2], a
	ld a, $60
	ldh [rHDMA4], a
	xor a
	ldh [rHDMA5], a
	ld a, $b0
	ldh [rHDMA1], a
	ld a, $40
	ldh [rHDMA2], a
	ld a, $80
	ldh [rHDMA4], a
	xor a
	ldh [rHDMA5], a
	ld a, $b0
	ldh [rHDMA1], a
	ld a, $50
	ldh [rHDMA2], a
	ld a, $a0
	ldh [rHDMA4], a
	xor a
	ldh [rHDMA5], a
	ld a, $b0
	ldh [rHDMA1], a
	ld a, $60
	ldh [rHDMA2], a
	ld a, $c0
	ldh [rHDMA4], a
	xor a
	ldh [rHDMA5], a
	ld a, $b0
	ldh [rHDMA1], a
	ld a, $70
	ldh [rHDMA2], a
	ld a, $e0
	ldh [rHDMA4], a
	xor a
	ldh [rHDMA5], a

	ld a, $01
	vramswitch
	ld a, $b4
	ldh [rHDMA1], a
	ld a, $00
	ldh [rHDMA2], a
	ld a, $9b
	ldh [rHDMA3], a
	ld a, $00
	ldh [rHDMA4], a
	xor a
	ldh [rHDMA5], a
	ld a, $b4
	ldh [rHDMA1], a
	ld a, $10
	ldh [rHDMA2], a
	ld a, $20
	ldh [rHDMA4], a
	xor a
	ldh [rHDMA5], a
	ld a, $b4
	ldh [rHDMA1], a
	ld a, $20
	ldh [rHDMA2], a
	ld a, $40
	ldh [rHDMA4], a
	xor a
	ldh [rHDMA5], a
	ld a, $b4
	ldh [rHDMA1], a
	ld a, $30
	ldh [rHDMA2], a
	ld a, $60
	ldh [rHDMA4], a
	xor a
	ldh [rHDMA5], a
	ld a, $b4
	ldh [rHDMA1], a
	ld a, $40
	ldh [rHDMA2], a
	ld a, $80
	ldh [rHDMA4], a
	xor a
	ldh [rHDMA5], a
	ld a, $b4
	ldh [rHDMA1], a
	ld a, $50
	ldh [rHDMA2], a
	ld a, $a0
	ldh [rHDMA4], a
	xor a
	ldh [rHDMA5], a
	ld a, $b4
	ldh [rHDMA1], a
	ld a, $60
	ldh [rHDMA2], a
	ld a, $c0
	ldh [rHDMA4], a
	xor a
	ldh [rHDMA5], a
	ld a, $b4
	ldh [rHDMA1], a
	ld a, $70
	ldh [rHDMA2], a
	ld a, $e0
	ldh [rHDMA4], a
	xor a
	ldh [rHDMA5], a
	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a

	call Func_1d15
	ret

.Func_51ab3:
	ld a, LOW(.VBlank_51ae2)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(.VBlank_51ae2)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(.VBlank_51ae2)
	ldh [hVBlankTrampolinePtr + 1], a
	ld a, [wcdc1]
	ld [wcdb3], a
	xor a
	ld [wcdb1], a
	ld [wcdb6], a
	ld [wcdb7], a
	ld hl, wcdad
	ld a, LOW(.Func_51ae6)
	ld [hli], a
	ld a, HIGH(.Func_51ae6)
	ld [hl], a
	xor a
	ld [wcdaf], a
	ld [wcdb0], a
	jp Func_51738

.VBlank_51ae2:
	call Func_1d15
	ret

.Func_51ae6:
	ld a, [wcdb6]
	ld b, a
	ld a, [wcdb3]
	ld [wcd6d], a
	farcall Func_76996
	ld a, [wcd6d]
	ld [wcdb3], a
	ld a, b
	and a
	jp z, .asm_51b3a
	ld a, [wcd6d]
	dec a
	jp nz, .asm_51c67
	ld a, [wGameMode]
	cp GAMEMODE_UNKF
	jr z, .asm_51b12
	jp .asm_51c67
.asm_51b12
	ld a, [wceac]
	and a
	jp z, .asm_51c67
	ld a, [wc7ce]
	and a
	jr nz, .asm_51b24
	ld a, $28
	ld [wc7cd], a
.asm_51b24
	jr .asm_51b78
	ld a, [wceac]
	and a
	jp nz, .asm_51c67
	ld a, [wc7ce]
	and a
	jr nz, .asm_51b38
	ld a, $28
	ld [wc7cd], a
.asm_51b38
	jr .asm_51b78
.asm_51b3a
	ldh a, [hJoypadDown]
	and PAD_SELECT
	jr z, .asm_51b78
	ldh a, [hJoypadPressed]
	and PAD_SELECT
	jr z, .asm_51b51
	ld a, [wc7ce]
	and a
	jr nz, .asm_51b51
	ld a, $04
	ld [wc7cb], a
.asm_51b51
	ld a, LOW(.VBlank_51c5d)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(.VBlank_51c5d)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(.VBlank_51c5d)
	ldh [hVBlankTrampolinePtr + 1], a

	ld a, $01
	ld [wcdb6], a
	jp Func_51738

	ld hl, wcdad
	ld a, LOW(Func_520af)
	ld [hli], a
	ld a, HIGH(Func_520af)
	ld [hl], a
	xor a
	ld [wcdaf], a
	ld [wcdb0], a
	jp Func_51738

.asm_51b78
	ld hl, wcdb1
	inc [hl]
	xor a
	ld [wcdb6], a
	ld a, [wc898]
	and a
	jr nz, .asm_51bd4
	ld a, LOW(.VBlank_51c53)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(.VBlank_51c53)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(.VBlank_51c53)
	ldh [hVBlankTrampolinePtr + 1], a
	ld hl, wcdb7
	ld a, [hl]
	and a
	jr nz, .asm_51b9b
	ld a, $28
.asm_51b9b
	dec a
	ld [hl], a
	ld a, [wcdb5]
	ldh [hff8a], a
	ld a, [wcdb3]
	ldh [hff8e], a
	ld a, [wcdb7]
	ldh [hff8f], a
	ld a, $18
	ldh [hff90], a
	ld a, $56
	ldh [hff91], a
	call Func_52785
	ld hl, wcdb1
	ld a, [hl]
	and $10
	jr nz, .asm_51bd4
	ld a, [wcdb3]
	add a
	add a
	ld e, a
	add a
	add e ; *12
	ld e, a
	lb bc, 16, 85 ; (x, y)
	ld a, e
	add c
	ld c, a
	ld hl, $6d66
	call Func_2f8
.asm_51bd4
	ld hl, wcdb1
	ld a, [hl]
	sra a
	call Func_526ba
	lb bc, 36, 64 ; (x, y)
	add c
	ld c, a
	ld hl, $6d51
	call Func_2f8
	ld a, [wc898]
	and a
	jr nz, .asm_51c50
	ldh a, [hJoypadHeld]
	and PAD_UP
	jr z, .asm_51c20
	ld hl, wcdb3
	ld a, [hl]
	and a
	jr z, .asm_51c09
	dec [hl]
	ld a, [wc7ce]
	and a
	jr nz, .asm_51c07
	ld a, $02
	ld [wc7cb], a
.asm_51c07
	jr .asm_51c50
.asm_51c09
	ldh a, [hJoypadPressed]
	and PAD_UP
	jr z, .asm_51c20
	ld a, [wcdb4]
	ld [hl], a
	ld a, [wc7ce]
	and a
	jr nz, .asm_51c1e
	ld a, $02
	ld [wc7cb], a
.asm_51c1e
	jr .asm_51c50
.asm_51c20
	ldh a, [hJoypadHeld]
	and PAD_DOWN
	jr z, .asm_51c50
	ld hl, wcdb3
	ld a, [wcdb4]
	cp [hl]
	jr z, .asm_51c3d
	inc [hl]
	ld a, [wc7ce]
	and a
	jr nz, .asm_51c3b
	ld a, $02
	ld [wc7cb], a
.asm_51c3b
	jr .asm_51c50
.asm_51c3d
	ldh a, [hJoypadPressed]
	and PAD_DOWN
	jr z, .asm_51c50
	ld a, [wc7ce]
	and a
	jr nz, .asm_51c4e
	ld a, $02
	ld [wc7cb], a
.asm_51c4e
	xor a
	ld [hl], a
.asm_51c50
	jp Func_51738

.VBlank_51c53:
	farcall Func_49220
	call Func_1d15
	ret

.VBlank_51c5d:
	farcall Func_4922f
	call Func_1d15
	ret

.asm_51c67
	ld a, [wcdb3]
	add a
	ld c, a
	ld b, $00
	ld a, [wcdb4]
	dec a
	jr z, .asm_51c7c
	dec a
	jr z, .asm_51c81
	dec a
	jr z, .asm_51c86
.asm_51c7a
	jr .asm_51c7a
.asm_51c7c
	ld hl, .PtrTable_51c8e
	jr .asm_51c89
.asm_51c81
	ld hl, .PtrTable_51c92
	jr .asm_51c89
.asm_51c86
	ld hl, .PtrTable_51c98
.asm_51c89
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.PtrTable_51c8e:
	dw .Func_51ca0
	dw .Func_51d45

.PtrTable_51c92:
	dw .Func_51ca0
	dw .Func_51d45
	dw $5d94

.PtrTable_51c98:
	dw .Func_51ca0
	dw .Func_51cca
	dw .Func_51d45
	dw $5d94

.Func_51ca0:
	ld hl, wcdad
	ld a, $c2
	ld [hli], a
	ld a, $5d
	ld [hl], a
	xor a
	ld [wcdaf], a
	ld [wcdb0], a
	ld a, $b8
	ldh [hVBlankTrampolinePtr], a
	ld a, $14
	ldh [hVBlankTrampolineBank], a
	ld a, $5d
	ldh [$ffbb], a
	ld a, [wc7ce]
	and a
	jr nz, .asm_51cc7
	ld a, $03
	ld [wc7cb], a
.asm_51cc7
	jp Func_51738

.Func_51cca:
	ld de, wcae8
	ld bc, $101
	ld a, $00
	call FillMemory

	ld de, wccb3
	ld bc, $55
	ld a, $00
	call FillMemory

	ld de, w2d000
	ld bc, $700
	ld a, $00
	call FillMemory

	ld hl, $d048
	ld a, $01
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	farcall Func_68a0f
	farcall Func_68a37
	farcall Func_68b26
	farcall Func_6c085
	ld a, [wc8dc]
	ld [wc8da], a
	xor a
	ld [wc8db], a
	call Func_5266c
	ld hl, wcdad
	ld a, $c2
	ld [hli], a
	ld a, $5d
	ld [hl], a
	xor a
	ld [wcdaf], a
	ld [wcdb0], a
	ld a, $b8
	ldh [hVBlankTrampolinePtr], a
	ld a, $14
	ldh [hVBlankTrampolineBank], a
	ld a, $5d
	ldh [$ffbb], a
	ld a, [wc7ce]
	and a
	jr nz, .asm_51d42
	ld a, $03
	ld [wc7cb], a
.asm_51d42
	jp Func_51738

.Func_51d45:
	call Func_1d3c
	call Is2PlayerGameMode
	jr z, .asm_51d65
	cp GAMEMODE_PUZZLE
	jr z, .asm_51d6d
	cp GAMEMODE_LINE_CLEAR
	jr z, .asm_51d75
	cp GAMEMODE_MARATHON
	jr z, .asm_51d7d
	cp GAMEMODE_CHALLENGE
	jr z, .asm_51d8c
.asm_51d5d
	farcall Func_2e1c
	jr .asm_51da0
.asm_51d65
	farcall Func_a8a2e
	jr .asm_51da0
.asm_51d6d
	ld b, $00
	farcall Func_6b44f
.asm_51d75
	farcall Func_a8a45
	jr .asm_51da0
.asm_51d7d
	ld a, [wGameLevel]
	cp GAMELEVEL_SLOW
	jr nz, .asm_51d5d
	farcall Func_7e014
	jr .asm_51da0
.asm_51d8c
	farcall Func_a8b11
	jr .asm_51da0
	farcall Func_46ba5
	farcall Func_3d775
.asm_51da0
	ld a, LOW(.VBlank_51db8)
	ldh [hVBlankTrampolinePtr], a
	ld a, BANK(.VBlank_51db8)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(.VBlank_51db8)
	ldh [$ffbb], a
	ld a, [wc7ce]
	and a
	jr nz, .asm_51db7
	ld a, $03
	ld [wc7cb], a
.asm_51db7
	ret

.VBlank_51db8:
	farcall Func_4922f
	call Func_1d15
	ret
; 0x51dc2

SECTION "Bank 14@60af", ROMX[$60af], BANK[$14]

Func_520af:
	ld hl, wcdaf
	ld a, [hl]
	add a
	ld c, a
	ld b, $00
	ld hl, $60bf
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl
; 0x520bf

SECTION "Bank 14@664f", ROMX[$664f], BANK[$14]

; set block tiles/attributes same as background,
; effectively hiding them
HideBlocks:
	ld hl, wBlockTilemap
	ld bc, BOARD_VIRTUAL_AREA * 4 - 1
.loop_tilemap
	ld a, $60 ; background tile
	ld [hli], a
	dec bc
	ld a, b
	or c
	jr nz, .loop_tilemap
	ld hl, wBoardAttrmap
	ld bc, BOARD_VIRTUAL_AREA * 4 - 1
.loop_attrmap
	ld a, 6 | BG_BANK1
	ld [hli], a
	dec bc
	ld a, b
	or c
	jr nz, .loop_attrmap
	ret

; backs up wBlockTilemap and wBoardAttrmap
Func_5266c:
	ldh a, [hWRAMBank]
	push af
	ld bc, (BOARD_VIRTUAL_AREA * 4) * 2
.loop
	ld hl, wBlockTilemap - $1
	ld a, BANK(wBlockTilemap)
	wramswitch
	add hl, bc
	ld e, [hl]
	ld hl, w2da80 - $1
	ld a, BANK(w2da80)
	wramswitch
	add hl, bc
	ld [hl], e
	dec bc
	ld a, b
	or c
	jr nz, .loop
	pop af
	wramswitch
	ret
; 0x52693

SECTION "Bank 14@66ba", ROMX[$66ba], BANK[$14]

Func_526ba:
	and $1f
	ld c, a
	ld b, $00
	ld hl, $66c5
	add hl, bc
	ld a, [hl]
	ret
; 0x526c5

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

SECTION "Bank 14@676b", ROMX[$676b], BANK[$14]

Func_5276b:
	ld bc, 8 palettes
	ld hl, wOBPals
	ld de, wc55a
	call CopyHLtoDE
	ret
; 0x52778

SECTION "Bank 14@6785", ROMX[$6785], BANK[$14]

Func_52785:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $03
	sramswitch
	ldh a, [hff8a]
	add a
	ld c, a
	ld b, $00
	ld hl, $684a
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	xor a
	ldh [hff8c], a
	ldh [hff8d], a
.asm_527ab
	push hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	or h
	jp z, .asm_5283c
	xor a
	ldh [hff94], a
	ld a, [hli]
	ld c, a
	ld de, $6894
.asm_527bb
	ldh a, [hff8e]
	ld b, a
	ldh a, [hff8d]
	cp b
	jp nz, .asm_527e6
	push hl
	push bc
	ldh a, [hff94]
	ld b, a
	ldh a, [hff8f]
	add b
	add a
	ld c, a
	ld b, $00
	farcall Func_69d1c
	ld a, b
	ldh [hff92], a
	ld a, c
	ldh [hff93], a
	pop bc
	pop hl
	ldh a, [hff94]
	add $03
	ldh [hff94], a
	jr .asm_527eb
.asm_527e6
	xor a
	ldh [hff92], a
	ldh [hff93], a
.asm_527eb
	ld a, [hli]
	cp $ff
	jp z, .asm_5282b
	ld [$b003], a
	ld a, [de]
	ld [s3b000], a
	inc de
	ldh a, [hff8c]
	ld b, a
	ldh a, [hff92]
	add b
	ld b, a
	ld a, [de]
	add b
	ld [$b001], a
	inc de
	ldh a, [hff93]
	ld b, a
	ld a, [de]
	add b
	ld [$b002], a
	inc de
	inc de
	ld a, [de]
	add c
	ld [$b004], a
	inc de
	push bc
	push de
	push hl
	ldh a, [hff90]
	ld b, a
	ldh a, [hff91]
	ld c, a
	ld hl, s3b000
	call Func_2f8
	pop hl
	pop de
	pop bc
	jp .asm_527bb

.asm_5282b
	pop hl
	inc hl
	inc hl
	ldh a, [hff8c]
	add $0c
	ldh [hff8c], a
	ldh a, [hff8d]
	inc a
	ldh [hff8d], a
	jp .asm_527ab

.asm_5283c
	pop hl
	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret
; 0x5284a

SECTION "Bank 14@6c1c", ROMX[$6c1c], BANK[$14]

Pals_52c1c:
	rgb  0,  0,  0
	rgb 31, 24,  0
	rgb 31, 31, 17
	rgb  0,  0,  0
; 0x52c24
