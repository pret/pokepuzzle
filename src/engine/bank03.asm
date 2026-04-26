Func_c000::
	call Func_1426
	call Func_c0b6
	call Func_c087

	ld hl, wVBlankHandler
	ld [hl], $c3 ; jp
	inc hl
	ld [hl], LOW(VBlankHandler)
	inc hl
	ld [hl], HIGH(VBlankHandler)

	ld a, BANK("WRAM6")
	wramswitch
	call Func_d1d5
	call Func_c0c2

	ld a, LCDC_BG | LCDC_OBJS | LCDC_WINDOW | LCDC_WIN_MAP | LCDC_ENABLE
	ldh [hLCDC], a

	ld a, [wGameMode]
	cp GAMEMODE_UNKE
	jr z, .asm_c043
	call Is2PlayerGameMode
	jr z, .two_player_mode

; single player
	call TurnLCDOn
	ld a, GAMESTATE_03
	ldh [hGameState], a
	xor a
	ldh [hVBlankTrampolinePtr + 1], a
	ret

.two_player_mode
	ld a, GAMESTATE_18
	ldh [hGameState], a
	xor a
	ldh [hVBlankTrampolinePtr + 1], a
	ret

.asm_c043
	call TurnLCDOn
	ld a, GAMESTATE_10
	ldh [hGameState], a
	xor a
	ldh [hVBlankTrampolinePtr + 1], a
	ret

Func_c04e:
	call Func_1426
	call Func_c0b6
	call Func_c087

	ld hl, wVBlankHandler
	ld [hl], $c3 ; jp
	inc hl
	ld [hl], LOW(VBlankHandler)
	inc hl
	ld [hl], HIGH(VBlankHandler)

	ld a, $06
	wramswitch
	call Func_c0c2
	ld a, $e3
	ldh [hLCDC], a
	call Is2PlayerGameMode
	jr z, .asm_c07f
	call TurnLCDOn
	ld a, GAMESTATE_03
	ldh [hGameState], a
	xor a
	ldh [hVBlankTrampolinePtr + 1], a
	ret
.asm_c07f
	ld a, GAMESTATE_18
	ldh [hGameState], a
	xor a
	ldh [hVBlankTrampolinePtr + 1], a
	ret
; 0xc087

SECTION "Bank 3@4087", ROMX[$4087], BANK[$3]

Func_c087:
	call Is2PlayerGameMode
	jr z, .asm_c0a8
	cp GAMEMODE_UNKE
	jr z, .asm_c09e
	ld a, STAT_MODE_0
	ldh [rSTAT], a
	xor a
	ldh [rIF], a
	ld a, IE_VBLANK | IE_STAT
	ldh [hIE], a
	ldh [rIE], a
	ret

.asm_c09e
	xor a
	ldh [rIF], a
	ld a, IE_VBLANK | IE_TIMER | IE_SERIAL
	ldh [hIE], a
	ldh [rIE], a
	ret

.asm_c0a8
	ld a, STAT_MODE_0
	ldh [rSTAT], a
	xor a
	ldh [rIF], a
	ld a, IE_VBLANK | IE_STAT | IE_TIMER | IE_SERIAL
	ldh [hIE], a
	ldh [rIE], a
	ret

Func_c0b6:
	ld hl, hLCDC
	bit B_LCDC_ENABLE, [hl]
	ret z ; lcd already off
	res B_LCDC_ENABLE, [hl]
	call DoFrame
	ret

Func_c0c2:
	; set scroll to position (0, 0)
	ld a, 0
	ldh [hSCX], a
	ldh [rSCX], a
	ld [wc868], a
	ld a, 0
	ldh [hSCY], a
	ldh [rSCY], a
	ld [wc869], a

	; set window position to (103, 0)
	ld a, 103
	ldh [hWX], a
	ldh [rWX], a
	ld a, 0
	ldh [hWY], a
	ldh [rWY], a

	; clear OAM
	ld de, wVirtualOAM
	ld bc, OAM_SIZE
	ld a, $00
	call FillMemory
	ld de, $fe00
	ld bc, $a0
	ld a, $00
	call FillMemory

	xor a ; VRAM0
	vramswitch
	; fill BG map with tile $60
	ld de, v0BGMap0
	ld bc, TILEMAP_AREA * 2
	ld a, $60
	call FillMemory
	; fill row 22 with tile $03
	debgcoord 0, 22
	ld bc, TILEMAP_WIDTH
	ld a, $03
	call FillMemory

	ld a, BANK("VRAM1")
	vramswitch
	; set BG map with palette 6
	ld de, v1BGMap0
	ld bc, TILEMAP_AREA * 2
	ld a, 6 | BG_BANK1
	call FillMemory
	; set row 22 with palette 3
	debgcoord 0, 22
	ld bc, TILEMAP_WIDTH
	ld a, 3
	call FillMemory

	ld a, $00
	ld [wc83b], a

	call Func_d2e6

	ld de, wBlockTilemap
	ld bc, $140
	ld a, $60
	call FillMemory

	ld de, $dec0
	ld bc, $140
	ld a, $0e
	call FillMemory

	farcall Func_6c085
	call Func_19bf
	call Func_c17b
	farcall Func_40000
	farcall Func_4043d
	call Func_1c9d
	farcall Func_45cc4
	farcall Func_49265
	call Func_ce26

	ld a, $ff
	ld [wc8a2], a
	ret

Func_c17b:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	copy_data v0Tiles1, BlocksGfx, $1000
	copy_data v0Tiles0, Gfx_e1000, $800
	copy_data $9200, $01, StopCounterGfx, $38, $180
	copy_data $85b0, $01, $46b0, $32, $150 ; 85b0, c86b0

	ld de, s3a000
	ld c, BANK(s3a000)
	ld hl, $5f6a
	ld a, $36
	call Func_93d

	copy_data $9a80, $00, $a000, $03, $14 ; 9a80, a000
	copy_data $9aa0, $00, $a020, $03, $14 ; 9aa0, a020

	ld de, s3a000
	ld c, BANK(s3a000)
	ld hl, $5fb3
	ld a, $36
	call Func_93d

	copy_data $9a80, $01, $a000, $03, $14 ; 9a80, a000
	copy_data $9aa0, $01, $a020, $03, $14 ; 9aa0, a020

	ld a, BANK("VRAM1")
	vramswitch
	xor a
	ldh [hff8a], a
	ld bc, $42f3
	ld de, v1Tiles0 tile $5a
	call Func_1ec2

	ld de, v1Tiles0 tile $59
	ld bc, TILE_SIZE
	ld a, $00 ; black
	call FillMemory

	ld a, [wGameMode]
	cp GAMEMODE_UNKD
.asm_c219
	jr z, .asm_c219
	cp GAMEMODE_UNKF
	jr z, .asm_c253
	cp GAMEMODE_UNKE
	jr z, .asm_c26d

	ld de, s3a000
	ld c, BANK(s3a000)
	ld hl, $4000
	ld a, $39
	call Func_93d

	ldh a, [hSRAMBank]
	push af
	ld a, BANK(s3a000)
	sramswitch
	call Func_ce05
	ld hl, s3a000
	add hl, bc
	ld bc, $28 tiles
	ld de, v0Tiles2 tile $38
	call CopyHLtoDE
	pop af
	sramswitch
	jp .asm_c2b1

.asm_c253
	ld de, v0Tiles1
	ld c, $01
	ld hl, $4000
	ld a, $12
	call Func_93d
	copy_data v1Tiles0, Gfx_482f5, $20 tiles ; 8000, 482f5
	jr .asm_c2b1

.asm_c26d
	ld de, v0Tiles2
	ld c, $01
	ld hl, $54c6
	ld a, $13
	call Func_93d
	copy_data $8aa0, $00, Gfx_4dbac tile $0, BANK(Gfx_4dbac), $2 tiles
	copy_data $8ba0, $00, Gfx_4dbac tile $2, BANK(Gfx_4dbac), $2 tiles
	copy_data $86c0, $00, Gfx_4dbac tile $4, BANK(Gfx_4dbac), $2 tiles
	copy_data $87c0, $00, Gfx_4dbac tile $6, BANK(Gfx_4dbac), $2 tiles
	copy_data $8600, $01, PressStartGfx, BANK(PressStartGfx), $20 tiles
.asm_c2b1
	copy_data $8400, $01, DemoHintGfx tile $0, BANK(DemoHintGfx), $3 tiles
	copy_data $8430, $01, DemoHintGfx tile $3, BANK(DemoHintGfx), $3 tiles
	copy_data $8460, $01, DemoHintGfx tile $6, BANK(DemoHintGfx), $2 tiles
	copy_data $8200, $01, StarGfx, BANK(StarGfx), $20 tiles ; 8200, 484f5

	call Func_ce3b
	call Func_c2f7
	call Is2PlayerGameMode
	call nz, Func_c34b
	call FlushPalettes
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret
; 0xc2f3

SECTION "Bank 3@42f7", ROMX[$42f7], BANK[$3]

Func_c2f7:
	copy_data wPlayerMonPortraitBGMaps, PortraitBGMap_49ae8, $80
	copy_data wOpponentMonPortraitBGMaps, PortraitBGMap_49b68, $80
	copy_data $d960, $06, $5c70, $12, $40 ; d960, 49c70

	ld de, $d8a0
	ld bc, $10
	ld a, $00
	call FillMemory

	ld de, $d8b0
	ld bc, $10
	ld a, $05
	call FillMemory

	ld de, $d940
	ld bc, $10
	ld a, $00
	call FillMemory

	ld de, $d950
	ld bc, $10
	ld a, $05
	call FillMemory

	farcall Func_423f1
	ret

Func_c34b:
	ld a, [wGameMode]
	add a
	ld c, a
	ld b, $00
	ld hl, .PtrTable
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.PtrTable:
	table_width 2
	dw Func_c37a ; GAMEMODE_MARATHON
	dw Func_c40a ; GAMEMODE_TIME_ZONE
	dw Func_c49a ; GAMEMODE_LINE_CLEAR
	dw Func_c49a ; GAMEMODE_PUZZLE
	dw Func_c5c1 ; GAMEMODE_GARBAGE
	dw Func_c67d ; GAMEMODE_CHALLENGE
	dw Func_c77a ; GAMEMODE_2P_VS
	dw Func_c83e ; GAMEMODE_2P_TIME_ZONE
	dw Func_c77a ; GAMEMODE_2P_LINE_CLEAR
	dw NULL ; GAMEMODE_UNK9
	dw NULL ; GAMEMODE_UNKA
	dw NULL ; GAMEMODE_UNKB
	dw NULL ; GAMEMODE_UNKC
	dw Func_c918 ; GAMEMODE_UNKD
	dw Func_cbf0 ; GAMEMODE_UNKE
	dw Func_cc39 ; GAMEMODE_UNKF
	assert_table_length NUM_GAME_MODES

Func_c37a:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	farcall LoadBoardPalettes

	ld a, [wPlayerMon]
	call GetPokemonPalette
	ld l, c
	ld h, b
	ld bc, 1 palettes
	ld de, wc9e6
	call FarCopyHLtoDE

	ld a, [wOpponentMon]
	call GetPokemonPalette
	ld l, c
	ld h, b
	ld bc, 1 palettes
	ld de, wca06
	call FarCopyHLtoDE

	copy_data $c9be, $00, $5a60, $12, $8 ; c9be, 49a60
	copy_data $c9c6, $00, $5a68, $12, $8 ; c9c6, 49a68
	copy_data $c9d6, $00, $5a70, $12, $8 ; c9d6, 49a70
	farcall Func_1008ac
	farcall Func_100948
	ld a, BANK("VRAM1")
	vramswitch
	farcall Func_1008e1
	call Func_cf9b

	; load player Pokémon's portrait graphics
	ld a, [wPlayerMon]
	call GetPokemonPortraitGfx
	ld l, c
	ld h, b
	ld de, s3a000
	ld c, BANK(s3a000)
	call Func_93d
	copy_data v1Tiles1, s3a000, $40 tiles

	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

Func_c40a:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	farcall LoadBoardPalettes

	ld a, [wPlayerMon]
	call GetPokemonPalette
	ld l, c
	ld h, b
	ld bc, 1 palettes
	ld de, wc9e6
	call FarCopyHLtoDE

	ld a, [wOpponentMon]
	call GetPokemonPalette
	ld l, c
	ld h, b
	ld bc, 1 palettes
	ld de, wca06
	call FarCopyHLtoDE

	copy_data $c9be, $00, $5a60, $12, $8 ; c9be, 49a60
	copy_data $c9c6, $00, $5a68, $12, $8 ; c9c6, 49a68
	copy_data $c9d6, $00, $5a70, $12, $8 ; c9d6, 49a70
	farcall Func_1008ac
	farcall Func_100948
	ld a, BANK("VRAM1")
	vramswitch
	farcall Func_1008e1
	call Func_cf9b

	; load player Pokémon's portrait graphics
	ld a, [wPlayerMon]
	call GetPokemonPortraitGfx
	ld l, c
	ld h, b
	ld de, s3a000
	ld c, BANK(s3a000)
	call Func_93d
	copy_data v1Tiles1, s3a000, $40 tiles

	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

Func_c49a:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	copy_data $c4b5, $00, $5a60, $12, $8 ; c4b5, 49a60

	ld a, [wPlayerMon]
	call GetPokemonPalette
	ld l, c
	ld h, b
	ld bc, 1 palettes
	ld de, wc9e6
	call FarCopyHLtoDE

	ld a, [wOpponentMon]
	call GetPokemonPalette
	ld l, c
	ld h, b
	ld bc, 1 palettes
	ld de, wca06
	call FarCopyHLtoDE

	copy_data $c9be, $00, $5a60, $12, $8 ; c9be, 49a60
	copy_data $c9c6, $00, $5a68, $12, $8 ; c9c6, 49a68
	copy_data $c9d6, $00, $5a70, $12, $8 ; c9d6, 49a70
	copy_data $c9ee, $00, $5a88, $12, $8 ; c9ee, 49a88
	copy_data $c9f6, $00, $5a90, $12, $8 ; c9f6, 49a90
	farcall LoadBoardPalettes
	farcall Func_1008ac
	farcall Func_100948
	ld a, BANK("VRAM1")
	vramswitch
	farcall Func_1008e1
	ld a, [wPlayerMon]
	call GetPokemonPortraitGfx
	ld l, c
	ld h, b
	ld de, s3a000
	ld c, BANK(s3a000)
	call Func_93d
	copy_data v1Tiles1, s3a000, $40 tiles
	ld a, [wGameMode]
	cp GAMEMODE_LINE_CLEAR
	jr z, .asm_c566
	ld a, [wcead]
	and a
	jr z, .asm_c566
	ld de, s3a000
	ld c, BANK(s3a000)
	ld hl, $459d
	ld a, $39
	call Func_93d
	copy_data $9380, $01, $a000, $03, $50 ; 9380, a000
.asm_c566
	call Func_c570
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

Func_c570:
	ld a, BANK("VRAM1")
	vramswitch

	call Func_1f38
	ld a, [hl]
	and $f0
	swap a
	call ATimes32
	ld hl, Gfx_49cb0
	add hl, bc
	ld a, BANK(Gfx_49cb0)
	ld c, 1 ; 2 tiles
	ld de, v1Tiles2 tile $50
	call FarGeneralHDMA

	call Func_1f38
	ld a, [hl]
	and $0f
	call ATimes32
	ld hl, Gfx_49dd0
	add hl, bc
	ld a, BANK(Gfx_49dd0)
	ld c, 1 ; 2 tiles
	ld de, v1Tiles2 tile $52
	call FarGeneralHDMA

	ld a, [wGameMode]
	cp GAMEMODE_PUZZLE
	ret nz ; exit if not Puzzle mode
	ld a, [wc8da]
	call ATimes96
	ld hl, Gfx_496a0
	add hl, bc
	ld a, BANK(Gfx_496a0)
	ld c, 5 ; 6 tiles
	ld de, v1Tiles2 tile $54
	call FarGeneralHDMA
	ret

Func_c5c1:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	farcall LoadBoardPalettes

	ld a, [wOpponentMon]
	ld c, a
	farcall LoadPokemonGarbagePalette

	ld a, [wPlayerMon]
	call GetPokemonPalette
	ld l, c
	ld h, b
	ld bc, 1 palettes
	ld de, wc9e6
	call FarCopyHLtoDE

	ld a, [wOpponentMon]
	call GetPokemonPalette
	ld l, c
	ld h, b
	ld bc, 1 palettes
	ld de, wca06
	call FarCopyHLtoDE

	copy_data $c9be, $00, $5a60, $12, $8 ; c9be, 49a60
	copy_data $c9c6, $00, $5a68, $12, $8 ; c9c6, 49a68
	copy_data $c9d6, $00, $5a70, $12, $8 ; c9d6, 49a70
	farcall Func_1008ac
	farcall Func_100948
	ld a, $01
	vramswitch
	farcall Func_1008e1
	call Func_cf9b

	; load player Pokémon's portrait graphics
	ld a, [wPlayerMon]
	call GetPokemonPortraitGfx
	ld l, c
	ld h, b
	ld de, s3a000
	ld c, BANK(s3a000)
	call Func_93d
	copy_data v1Tiles1, s3a000, $40 tiles

	ld a, [wOpponentMon]
	ld c, a
	farcall LoadPokemonGarbageGfx

	ld de, s3a000
	ld c, BANK(s3a000)
	ld hl, $454e
	ld a, $39
	call Func_93d
	copy_data $93d0, $01, $a000, $03, $60 ; 93d0, a000
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

Func_c67d:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	farcall LoadBoardPalettes

	ld a, [wOpponentMon]
	ld c, a
	farcall LoadPokemonGarbagePalette

	ld a, [wPlayerMon]
	call GetPokemonPalette
	ld l, c
	ld h, b
	ld bc, 1 palettes
	ld de, wc9e6
	call FarCopyHLtoDE

	ld a, [wOpponentMon]
	call GetPokemonPalette
	ld l, c
	ld h, b
	ld bc, 1 palettes
	ld de, wc9ee
	call FarCopyHLtoDE

	copy_data $c9be, $00, $5a60, $12, $8 ; c9be, 49a60
	copy_data $c9c6, $00, $5a68, $12, $8 ; c9c6, 49a68
	copy_data $c9d6, $00, $5a70, $12, $8 ; c9d6, 49a70
	farcall Func_1008ac
	farcall Func_100948
	copy_data $91a0, $00, $5be8, $12, $40 ; 91a0, 49be8
	copy_data $92a0, $00, $5c28, $12, $40 ; 92a0, 49c28

	ld a, $01
	vramswitch
	farcall Func_1008e1
	call Func_cf9b

	ld a, [wStage]
	dec a
	call ATimes64
	ld hl, StageNumbersGfx
	add hl, bc
	ld a, BANK(StageNumbersGfx)
	ld bc, $4 tiles
	ld de, v1Tiles2 tile $52
	call FarCopyHLtoDE

	ld a, [wStage]
	cp NUM_MAIN_STAGES
	jr c, .asm_c733
	copy_data $9520, $01, $63d0, $12, $4 tiles ; 9520, 4a3d0
.asm_c733
	ld a, [wOpponentMon]
	ld c, a
	farcall LoadPokemonGarbageGfx

	; load player Pokémon's portrait graphics
	ld a, [wPlayerMon]
	call GetPokemonPortraitGfx
	ld l, c
	ld h, b
	ld de, s3a000
	ld c, BANK(s3a000)
	call Func_93d
	copy_data v1Tiles1, s3a000, $40 tiles

	; load opponent Pokémon's portrait graphics
	ld a, [wOpponentMon]
	call GetPokemonPortraitGfx
	ld l, c
	ld h, b
	ld de, s3a000
	ld c, BANK(s3a000)
	call Func_93d
	copy_data $8c00, $01, $a000, $03, $40 tiles ; 8c00, a000

	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

Func_c77a:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	farcall LoadBoardPalettes

	ld a, [wOpponentMon]
	ld c, a
	farcall LoadPokemonGarbagePalette

	ld a, [wPlayerMon]
	call GetPokemonPalette
	ld l, c
	ld h, b
	ld bc, 1 palettes
	ld de, wc9e6
	call FarCopyHLtoDE

	ld a, [wOpponentMon]
	call GetPokemonPalette
	ld l, c
	ld h, b
	ld bc, 1 palettes
	ld de, wc9ee
	call FarCopyHLtoDE

	copy_data $c9d6, $00, $5a70, $12, $8 ; c9d6, 49a70
	copy_data $c9ce, $00, $5aa0, $12, $8 ; c9ce, 49aa0
	copy_data $c9f6, $00, $5aa8, $12, $8 ; c9f6, 49aa8
	farcall Func_1008ac
	xor a
	vramswitch
	farcall Func_100948
	ld a, $01
	vramswitch
	farcall Func_1008e1

	ld a, [wOpponentMon]
	ld c, a
	farcall LoadPokemonGarbageGfx

	; load player Pokémon's portrait graphics
	ld a, [wPlayerMon]
	call GetPokemonPortraitGfx
	ld l, c
	ld h, b
	ld de, s3a000
	ld c, BANK(s3a000)
	call Func_93d
	copy_data v1Tiles1, s3a000, $40 tiles

	; load opponent Pokémon's portrait graphics
	ld a, [wOpponentMon]
	call GetPokemonPortraitGfx
	ld l, c
	ld h, b
	ld de, s3a000
	ld c, BANK(s3a000)
	call Func_93d
	copy_data $8c00, $01, $a000, $03, $40 tiles ; 8c00, a000

	call Func_cf9b
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

Func_c83e:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	farcall LoadBoardPalettes

	ld a, [wOpponentMon]
	ld c, a
	farcall LoadPokemonGarbagePalette

	ld a, [wPlayerMon]
	call GetPokemonPalette
	ld l, c
	ld h, b
	ld bc, 1 palettes
	ld de, wc9e6
	call FarCopyHLtoDE

	ld a, [wOpponentMon]
	call GetPokemonPalette
	ld l, c
	ld h, b
	ld bc, 1 palettes
	ld de, wc9ee
	call FarCopyHLtoDE

	copy_data $c9be, $00, $5a60, $12, $8 ; c9be, 49a60
	copy_data $c9d6, $00, $5a70, $12, $8 ; c9d6, 49a70
	copy_data $c9ce, $00, $5aa0, $12, $8 ; c9ce, 49aa0
	copy_data $c9f6, $00, $5aa8, $12, $8 ; c9f6, 49aa8
	copy_data $c9de, $00, $5ab8, $12, $8 ; c9de, 49ab8
	farcall Func_1008ac
	xor a
	vramswitch
	farcall Func_100948
	ld a, $01
	vramswitch
	farcall Func_1008e1

	ld a, [wOpponentMon]
	ld c, a
	farcall LoadPokemonGarbageGfx

	; load player Pokémon's portrait graphics
	ld a, [wPlayerMon]
	call GetPokemonPortraitGfx
	ld l, c
	ld h, b
	ld de, s3a000
	ld c, BANK(s3a000)
	call Func_93d
	copy_data v1Tiles1, s3a000, $40 tiles

	; load opponent Pokémon's portrait graphics
	ld a, [wOpponentMon]
	call GetPokemonPortraitGfx
	ld l, c
	ld h, b
	ld de, s3a000
	ld c, BANK(s3a000)
	call Func_93d
	copy_data $8c00, $01, $a000, $03, $40 tiles ; 8c00, a000

	call Func_cf9b
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

Func_c918:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ld a, [wceac]
	dec a
	dec a
	jp z, .asm_c93d
	ld a, [wPlayerMon]
	call GetPokemonPalette
	ld l, c
	ld h, b
	ld bc, 1 palettes
	ld de, wc9e6
	call FarCopyHLtoDE
	jr .asm_c948

.asm_c93d
	copy_data $c9e6, $00, $72f9, $10, $8 ; c9e6, 432f9
.asm_c948
	ld c, CHIKORITA
	farcall LoadPokemonGarbagePalette

	copy_data $c9d6, $00, $5a70, $12, $8 ; c9d6, 49a70
	ld c, $1b
	farcall Func_1008b0
	copy_data $91a0, $00, $5be8, $12, $40 ; 91a0, 49be8
	copy_data $92a0, $00, $5c28, $12, $40 ; 92a0, 49c28

	ld a, [wceac]
	cp $02
	jp z, .asm_ca24
	ld a, [wPlayerMon]
	call GetPokemonPortraitGfx
	ld l, c
	ld h, b
	ld de, s3a000
	ld c, BANK(s3a000)
	call Func_93d
	copy_data v1Tiles1, s3a000, $40 tiles

	ld de, s3a000
	ld c, BANK(s3a000)
	ld hl, $51c4
	ld a, $37
	call Func_93d
	copy_data $8c00, $01, $a000, $03, $40 tiles ; 8c00, a000

	ld de, s3a000
	ld c, BANK(s3a000)
	ld hl, $54de
	ld a, $37
	call Func_93d
	copy_data $9200, $01, $a000, $03, $180 ; 9200, a000

	ld de, s3a000
	ld c, BANK(s3a000)
	ld hl, $5629
	ld a, $37
	call Func_93d
	copy_data $9600, $01, $a000, $03, $200 ; 9600, a000

	ld de, s3a000
	ld c, BANK(s3a000)
	ld hl, $57d7
	ld a, $37
	call Func_93d
	ld a, $00
	func_621 $9c00, $00, $4bdb, $03, $3, $8, $18, $12 ; 9c00, cbdb

	ld de, s3a000
	ld c, BANK(s3a000)
	ld hl, $586a
	ld a, $37
	call Func_93d
	ld a, $00
	func_621 $9c00, $01, $4bdb, $03, $3, $8, $18, $12 ; 9c00, cbdb
	jr .asm_ca92

.asm_ca24
	ld de, s3a000
	ld c, BANK(s3a000)
	ld hl, $58b7
	ld a, $37
	call Func_93d
	copy_data v1Tiles1, s3a000, $800

	ld de, s3a000
	ld c, BANK(s3a000)
	ld hl, $5ecb
	ld a, $37
	call Func_93d
	copy_data $9610, $01, $a000, $03, $e0 ; 9610, a000

	ld de, s3a000
	ld c, BANK(s3a000)
	ld hl, $5f8d
	ld a, $37
	call Func_93d
	ld a, $00
	func_621 $9c00, $00, $4bdb, $03, $3, $8, $18, $12 ; 9c00, cbdb

	ld de, s3a000
	ld c, BANK(s3a000)
	ld hl, $6021
	ld a, $37
	call Func_93d
	ld a, $00
	func_621 $9c00, $01, $4bdb, $03, $3, $8, $18, $12 ; 9c00, cbdb

.asm_ca92
	ld a, [wceac]
	dec a
	jp z, .asm_caff
	dec a
	jp z, .asm_cb67
	copy_data $c4c5, $00, $72b9, $10, $10 ; c4c5, 432b9
	copy_data $c9fe, $00, $72b9, $10, $8 ; c9fe, 432b9
	copy_data $ca06, $00, $72d1, $10, $8 ; ca06, 432d1

	ld de, s3a000
	ld c, BANK(s3a000)
	ld hl, $5889
	ld a, $37
	call Func_93d
	ld a, $00
	func_621 $9c22, $00, $4bdb, $03, $3, $6, $0, $1 ; 9c22, cbdb

	ld de, s3a000
	ld c, BANK(s3a000)
	ld hl, $58a0
	ld a, $37
	call Func_93d
	ld a, $00
	func_621 $9c22, $01, $4bdb, $03, $3, $6, $0, $1 ; 9c22, cbdb
	jp .asm_cbcc

.asm_caff
	copy_data $c4c5, $00, $72d9, $10, $10 ; c4c5, 432d9
	copy_data $c9fe, $00, $72d9, $10, $8 ; c9fe, 432d9
	copy_data $ca06, $00, $72f1, $10, $8 ; ca06, 432f1

	ld de, s3a000
	ld c, BANK(s3a000)
	ld hl, $5889
	ld a, $37
	call Func_93d
	ld a, [wGameLevel]
	sub $02
	func_621 $9c22, $00, $4bde, $03, $3, $6, $0, $1 ; 9c22, cbde

	ld de, s3a000
	ld c, BANK(s3a000)
	ld hl, $58a0
	ld a, $37
	call Func_93d
	ld a, [wGameLevel]
	sub $02
	func_621 $9c22, $01, $4bde, $03, $3, $6, $0, $1 ; 9c22, cbde
	jp .asm_cbcc

.asm_cb67
	copy_data $c4c5, $00, $7301, $10, $10 ; c4c5, 43301
	copy_data $c9fe, $00, $7301, $10, $8 ; c9fe, 43301
	copy_data $ca06, $00, $72d1, $10, $8 ; ca06, 432d1

	ld de, s3a000
	ld c, BANK(s3a000)
	ld hl, $604f
	ld a, $37
	call Func_93d
	ld a, [wGameLevel]
	sub $02
	func_621 $9c43, $00, $4be7, $03, $3, $5, $0, $1 ; 9c43, cbe7

	ld de, s3a000
	ld c, BANK(s3a000)
	ld hl, $605f
	ld a, $37
	call Func_93d
	ld a, [wGameLevel]
	sub $02
	func_621 $9c43, $01, $4be7, $03, $3, $5, $0, $1 ; 9c43, cbe7

.asm_cbcc
	ld c, CHIKORITA
	farcall LoadPokemonGarbageGfx
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret
; 0xcbdb

SECTION "Bank 3@4bf0", ROMX[$4bf0], BANK[$3]

Func_cbf0:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ld c, $1c
	farcall Func_1008b0
	ld a, $13
	ld bc, $64d0
	ld hl, $c8f4
	ld [hl], c
	inc hl
	ld [hl], b
	inc hl
	ld [hl], a
	ld hl, $c8f7
	ld [hl], c
	inc hl
	ld [hl], b
	inc hl
	ld [hl], a

	xor a
	vramswitch
	ld a, $13
	ld bc, $63a4
	call Func_cce4

	ld a, $01
	vramswitch
	ld a, $13
	ld bc, $6434
	call Func_cce4

	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

Func_cc39:
	ld a, [wOpponentMon]
	call GetPokemonPalette
	ld l, c
	ld h, b
	ld bc, 1 palettes
	ld de, wc9ee
	call FarCopyHLtoDE

	ld a, [wOpponentMon]
	call GetPokemonPortraitGfx
	ld l, c
	ld h, b
	ld de, s3a000
	ld c, BANK(s3a000)
	call Func_93d
	copy_data $8c00, $01, $a000, $03, $400 ; 8c00, a000

	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	copy_data $c9be, $00, $5a60, $12, $8 ; c9be, 49a60
	copy_data $c9c6, $00, $5a68, $12, $8 ; c9c6, 49a68
	copy_data $c9d6, $00, $5a70, $12, $8 ; c9d6, 49a70
	copy_data $c9f6, $00, $5a78, $12, $8 ; c9f6, 49a78

	xor a
	vramswitch
	ld a, $12
	ld bc, $4705
	call Func_cce4

	ld a, $01
	vramswitch
	ld a, $12
	ld bc, $4795
	call Func_cce4

	ld a, [wGameMode]
	ld l, a
	push hl
	ld a, GAMEMODE_UNK9
	ld [wGameMode], a
	farcall LoadBoardPalettes
	farcall Func_1008ac
	farcall Func_100948
	farcall Func_1008e1
	pop hl
	ld a, l
	ld [wGameMode], a
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

Func_cce4:
	ld h, b
	ld l, c
	push af
	ld bc, $8
	debgcoord 0, 0, v0BGMap1
	call FarCopyHLtoDE
	pop af
	push af
	ld bc, $8
	debgcoord 0, 1, v0BGMap1
	call FarCopyHLtoDE
	pop af
	push af
	ld bc, $8
	debgcoord 0, 2, v0BGMap1
	call FarCopyHLtoDE
	pop af
	push af
	ld bc, $8
	debgcoord 0, 3, v0BGMap1
	call FarCopyHLtoDE
	pop af
	push af
	ld bc, $8
	debgcoord 0, 4, v0BGMap1
	call FarCopyHLtoDE
	pop af
	push af
	ld bc, $8
	debgcoord 0, 5, v0BGMap1
	call FarCopyHLtoDE
	pop af
	push af
	ld bc, $8
	debgcoord 0, 6, v0BGMap1
	call FarCopyHLtoDE
	pop af
	push af
	ld bc, $8
	debgcoord 0, 7, v0BGMap1
	call FarCopyHLtoDE
	pop af
	push af
	ld bc, $8
	debgcoord 0, 8, v0BGMap1
	call FarCopyHLtoDE
	pop af
	push af
	ld bc, $8
	debgcoord 0, 9, v0BGMap1
	call FarCopyHLtoDE
	pop af
	push af
	ld bc, $8
	debgcoord 0, 10, v0BGMap1
	call FarCopyHLtoDE
	pop af
	push af
	ld bc, $8
	debgcoord 0, 11, v0BGMap1
	call FarCopyHLtoDE
	pop af
	push af
	ld bc, $8
	debgcoord 0, 12, v0BGMap1
	call FarCopyHLtoDE
	pop af
	push af
	ld bc, $8
	debgcoord 0, 13, v0BGMap1
	call FarCopyHLtoDE
	pop af
	push af
	ld bc, $8
	debgcoord 0, 14, v0BGMap1
	call FarCopyHLtoDE
	pop af
	push af
	ld bc, $8
	debgcoord 0, 15, v0BGMap1
	call FarCopyHLtoDE
	pop af
	push af
	ld bc, $8
	debgcoord 0, 16, v0BGMap1
	call FarCopyHLtoDE
	pop af
	push af
	ld bc, $8
	debgcoord 0, 17, v0BGMap1
	call FarCopyHLtoDE
	pop af
	ret

; outputs bc = a * 32
ATimes32:
	ld b, a
	ld c, $00
	sra b
	rr c
	sra b
	rr c
	sra b
	rr c
	ret

; outputs bc = a * 64
ATimes64:
	ld b, a
	ld c, $00
	sra b
	rr c
	sra b
	rr c
	ret

; outputs bc = a * 96
ATimes96:
	ld h, a
	ld l, $00
	sra h
	rr l
	sra h
	rr l
	ld b, h
	ld c, l
	sra h
	rr l
	add hl, bc
	ld b, h
	ld c, l
	ret
; 0xcdde

SECTION "Bank 3@4e05", ROMX[$4e05], BANK[$3]

Func_ce05:
	ld a, [wGameMode]
	add a
	ld c, a
	ld b, $00
	ld hl, $4e14
	add hl, bc
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ret
; 0xce14

SECTION "Bank 3@4e26", ROMX[$4e26], BANK[$3]

Func_ce26:
	ld a, [wGameMode]
	cp GAMEMODE_UNKE
	ret z
	ld de, wBGPals palette 0
	ld bc, 3 palettes
	ld a, $00 ; black
	call FillMemory
	call FlushPalettes
	ret

Func_ce3b:
	ld a, [wGameMode]
	cp GAMEMODE_UNKD
.asm_ce40
	jp z, .asm_ce40
	cp GAMEMODE_UNKE
	jp z, .asm_ce7c
	cp GAMEMODE_UNKF
	jp z, .asm_cec1
	copy_data $c4ad, $00, $5818, $38, $8 ; c4ad, e1818
	copy_data $c4d5, $00, $5840, $38, $30 ; c4d5, e1840
	copy_data $c505, $00, $46f5, $12, $10 ; c505, 486f5
	copy_data $c9fe, $00, $5c68, $12, $8 ; c9fe, 49c68
	jp .asm_cf0e

.asm_ce7c
	copy_data $c495, $00, $5880, $38, $18 ; c495, e1880
	copy_data $c49d, $00, $5c34, $13, $4 ; c49d, 4dc34
	copy_data $c4ad, $00, $5c44, $13, $28 ; c4ad, 4dc44
	copy_data $c4d5, $00, $5840, $38, $30 ; c4d5, e1840
	copy_data $c505, $00, $5878, $38, $8 ; c505, e1878
	copy_data $c50d, $00, $46fd, $12, $8 ; c50d, 486fd
	jp .asm_cf0e

.asm_cec1
	copy_data $c4ad, $00, $5818, $38, $8 ; c4ad, e1818
	copy_data $c4b5, $00, $42d5, $12, $20 ; c4b5, 482d5
	copy_data $c4d5, $00, $5840, $38, $30 ; c4d5, e1840
	copy_data $c505, $00, $46f5, $12, $10 ; c505, 486f5
	copy_data $ca06, $00, $5a60, $12, $8 ; ca06, 49a60
	copy_data $ca0e, $00, $5a68, $12, $8 ; ca0e, 49a68
	copy_data $c9fe, $00, $5c68, $12, $8 ; c9fe, 49c68

.asm_cf0e
	ld a, [wGameMode]
	cp GAMEMODE_CHALLENGE
	jr nz, .asm_cf1a
	ld bc, $8
	jr .asm_cf1d
.asm_cf1a
	ld bc, $0
.asm_cf1d
	ld hl, $5a78
	add hl, bc
	ld bc, $8
	ld de, $c9de
	ld a, $12
	call FarCopyHLtoDE
	ld a, [wGameLevel]
	ld c, a
	ld b, $00
	ld hl, $4f49
	add hl, bc
	ld c, [hl]
	ld b, $00
	ld hl, $5ac0
	add hl, bc
	ld a, $12
	ld bc, $8
	ld de, $c9ce
	call FarCopyHLtoDE
	ret
; 0xcf49

SECTION "Bank 3@4f55", ROMX[$4f55], BANK[$3]

; outputs in a:bc pointer to portrait
; graphics of a given Pokémon
GetPokemonPortraitGfx:
	ld l, a
	ld h, $00
	ld c, l
	ld b, h
	add hl, hl
	add hl, bc
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl ; *48
	ld bc, PokemonData + PKMNSTRUCT_PORTRAIT_GFX
	add hl, bc
	ld a, BANK(PokemonData)
	call GetFarByte
	inc hl
	ld c, a
	ld a, BANK(PokemonData)
	call GetFarByte
	inc hl
	ld b, a
	ld a, BANK(PokemonData)
	call GetFarByte
	ret

; outputs in a:bc pointer to palette of a given Pokémon
GetPokemonPalette:
	ld l, a
	ld h, $00
	ld c, l
	ld b, h
	add hl, hl
	add hl, bc
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl ; *48
	ld bc, PokemonData + PKMNSTRUCT_PALETTE
	add hl, bc
	ld a, BANK(PokemonData)
	call GetFarByte
	inc hl
	ld c, a
	ld a, BANK(PokemonData)
	call GetFarByte
	inc hl
	ld b, a
	ld a, BANK(PokemonData)
	call GetFarByte
	ret

Func_cf9b:
	ldh a, [hSRAMBank]
	push af
	ld a, $03
	sramswitch
	ldh a, [hVRAMBank]
	push af
	ld a, BANK("VRAM1")
	vramswitch
	call Func_cfbd
	pop af
	vramswitch
	pop af
	sramswitch
	ret

Func_cfbd:
	ld a, [wGameMode]
	and a
	jr z, .asm_cfe1
	dec a
	jr z, .asm_cfe1
	dec a
	jr z, .asm_cfe0
	dec a
	jr z, .asm_cfe0
	dec a
	jr z, .asm_cfe1
	dec a
	jr z, .asm_d002
	dec a
	jr z, .asm_d023
	dec a
	jr z, .asm_d057
	dec a
	jr z, .asm_d023
	dec a
	jr z, .asm_cfe0
.asm_cfde
	jr .asm_cfde
.asm_cfe0
	ret
.asm_cfe1
	ld de, s3a000
	ld c, BANK(s3a000)
	ld hl, $6410
	ld a, $12
	call Func_93d
	ld a, [wGameLevel]
	call ATimes96
	ld hl, s3a000
	add hl, bc
	ld bc, $60
	ld de, v0Tiles2 tile $50
	call CopyHLtoDE
	ret
.asm_d002
	ld de, s3a000
	ld c, BANK(s3a000)
	ld hl, $659f
	ld a, $12
	call Func_93d
	ld a, [wGameLevel]
	call ATimes64
	ld hl, s3a000
	add hl, bc
	ld bc, $40
	ld de, v0Tiles2 tile $4e
	call CopyHLtoDE
	ret
.asm_d023
	ld de, s3a000
	ld c, BANK(s3a000)
	ld hl, $66cf
	ld a, $12
	call Func_93d
	ld a, [wcea7]
	call ATimes32
	ld hl, s3a000
	add hl, bc
	ld bc, $20
	ld de, v0Tiles2 tile $4f
	call CopyHLtoDE
	ld a, [wcea8]
	call ATimes32
	ld hl, s3a000
	add hl, bc
	ld bc, $20
	ld de, v0Tiles2 tile $51
	call CopyHLtoDE
	ret
.asm_d057
	ld de, s3a000
	ld c, BANK(s3a000)
	ld hl, $674d
	ld a, $12
	call Func_93d
	ld a, [wcea7]
	call ATimes32
	ld hl, s3a000
	add hl, bc
	ld bc, $20
	ld de, v0Tiles2 tile $42
	call CopyHLtoDE
	ld a, [wcea8]
	call ATimes32
	ld hl, s3a000
	add hl, bc
	ld bc, $20
	ld de, v0Tiles2 tile $47
	call CopyHLtoDE
	ret
; 0xd08b

SECTION "Bank 3@51d5", ROMX[$51d5], BANK[$3]

Func_d1d5:
	ld a, [wGameMode]
	add a
	ld c, a
	ld b, $00
	ld hl, .PtrTable
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.PtrTable:
	table_width 2
	dw Func_d204 ; GAMEMODE_MARATHON
	dw Func_d204 ; GAMEMODE_TIME_ZONE
	dw Func_d23d ; GAMEMODE_LINE_CLEAR
	dw Func_d289 ; GAMEMODE_PUZZLE
	dw Func_d204 ; GAMEMODE_GARBAGE
	dw Func_d22a ; GAMEMODE_CHALLENGE
	dw Func_d2c7 ; GAMEMODE_2P_VS
	dw Func_d2c7 ; GAMEMODE_2P_TIME_ZONE
	dw Func_d2c7 ; GAMEMODE_2P_LINE_CLEAR
	dw NULL ; GAMEMODE_UNK9
	dw NULL ; GAMEMODE_UNKA
	dw NULL ; GAMEMODE_UNKB
	dw NULL ; GAMEMODE_UNKC
	dw Func_d204 ; GAMEMODE_UNKD
	dw Func_d217 ; GAMEMODE_UNKE
	dw Func_d2da ; GAMEMODE_UNKF
	assert_table_length NUM_GAME_MODES

Func_d204:
	ld a, $01
	ld [wc8da], a
	ld [wc8db], a
	ld [wc8dc], a
	xor a
	ld [wcead], a
	ld [wc880], a
	ret

Func_d217:
	ld a, $01
	ld [wc8da], a
	ld [wc8db], a
	ld [wc8dc], a
	ld [wc880], a
	xor a
	ld [wcead], a
	ret

Func_d22a:
	ld a, $01
	ld [wc8da], a
	ld [wc8db], a
	ld [wc8dc], a
	xor a
	ld [wcead], a
	ld [wc880], a
	ret

Func_d23d:
	ld a, $01
	ld [wc8da], a
	ld [wc8db], a
	ld [wc8dc], a
	xor a
	ld [wcead], a
	ld [wc880], a
	ld hl, wc838
	ld a, [hl]
	and $80
	jr nz, .asm_d265
	ld a, [wStage]
	and $f0
	cp $60
	ret nz
	ld a, GAMEMODE_UNKF
	ld [wGameMode], a
	ret
.asm_d265
	ld a, [hl]
	and $7f
	ld [hl], a

	; init score
	ld hl, wScore
	xor a
	ld [hli], a
	ld [hli], a
	ld [hl], a

	ld hl, wc86a
	xor a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	xor a
	ld [wc836], a
	ld a, [wc838]
	and $7f
	ld b, a
	farcall Func_6b1cd
	ret

Func_d289:
	ld a, $01
	ld [wc880], a
	ld hl, wc838
	ld a, [hl]
	and $80
	jr z, .asm_d2b3
	ret z
	ld a, [hl]
	and $7f
	ld [hl], a
	ld hl, wc86a
	xor a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld [wc8e0], a
	ld a, [wc838]
	and $7f
	ld b, a
	farcall Func_6b1e3
	ret
.asm_d2b3
	ld a, [wcead]
	and a
	ret z
	ld a, [wc838]
	and $7f
	ld b, a
	ld c, $01
	farcall Func_6b2ab
	ret

Func_d2c7:
	ld a, $01
	ld [wc8da], a
	ld [wc8db], a
	ld [wc8dc], a
	xor a
	ld [wcebe], a
	ld [wcebf], a
	ret

Func_d2da:
	ld a, $01
	ld [wc8da], a
	ld [wc8db], a
	ld [wc8dc], a
	ret

Func_d2e6:
	ld a, [wGameMode]
	add a
	ld c, a
	ld b, $00
	ld hl, .PtrTable
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.PtrTable:
	table_width 2
	dw Func_d315 ; GAMEMODE_MARATHON
	dw Func_d367 ; GAMEMODE_TIME_ZONE
	dw Func_d3b9 ; GAMEMODE_LINE_CLEAR
	dw Func_d42a ; GAMEMODE_PUZZLE
	dw Func_d489 ; GAMEMODE_GARBAGE
	dw Func_d4e1 ; GAMEMODE_CHALLENGE
	dw Func_d577 ; GAMEMODE_2P_VS
	dw Func_d590 ; GAMEMODE_2P_TIME_ZONE
	dw Func_d5cc ; GAMEMODE_2P_LINE_CLEAR
	dw NULL ; GAMEMODE_UNK9
	dw NULL ; GAMEMODE_UNKA
	dw NULL ; GAMEMODE_UNKB
	dw NULL ; GAMEMODE_UNKC
	dw Func_d4e1 ; GAMEMODE_UNKD
	dw Func_d612 ; GAMEMODE_UNKE
	dw Func_d631 ; GAMEMODE_UNKF
	assert_table_length NUM_GAME_MODES

Func_d315:
	ld hl, wc86a
	xor a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a

	; init score
	ld hl, wScore
	xor a
	ld [hli], a
	ld [hli], a
	ld [hl], a

	call Func_d9c8
	call Func_d6cf
	call Func_d95e
	call Func_d9b0

	call Func_dfea
	farcall PrepareCopyInitialBlockConfiguration ; unnecessary farcall
	farcall CopyInitialBlockConfiguration ; unnecessary farcall

	ld a, [wStage]
	farcall_saveregs Func_100561
	ld [wPlayerMon], a
	ld [wOpponentMon], a
	ld a, [wOpponentMon]
	ld c, a
	farcall GetPokemonBoard
	ld a, c
	ld [wBoard], a
	ld a, [wOpponentMon]
	ld c, a
	farcall Func_100774
	ret

Func_d367:
	ld hl, wc86a
	xor a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a

	; init score
	ld hl, wScore
	xor a
	ld [hli], a
	ld [hli], a
	ld [hl], a

	call Func_d9c8
	call Func_d6cf
	call Func_d95e
	call Func_d9b0

	call Func_dfea
	farcall PrepareCopyInitialBlockConfiguration ; unnecessary farcall
	farcall CopyInitialBlockConfiguration ; unnecessary farcall

	ld a, [wStage]
	farcall_saveregs Func_100561
	ld [wPlayerMon], a
	ld [wOpponentMon], a
	ld a, [wOpponentMon]
	ld c, a
	farcall GetPokemonBoard
	ld a, c
	ld [wBoard], a
	ld a, [wOpponentMon]
	ld c, a
	farcall Func_100774
	ret

Func_d3b9:
	xor a
	ld [wGameLevel], a
	call Func_dd1a
	call Func_d6cf
	call Func_d95e
	call Func_d9b0
	call Func_e2ae
	add a ; *2
	ld c, a
	ld b, $00
	ld hl, $6deb
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wStage]
	and $0f
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [hl]
	ld l, a
	ld h, $00
	add hl, hl
	ld c, l
	ld b, h
	add hl, hl
	add hl, bc ; *6
	ld bc, InitialBlockColumnHeights_LineClear
	add hl, bc
	call CreateInitialRandomBlockConfiguration
	farcall PrepareCopyInitialBlockConfiguration ; unnecessary farcall
	farcall CopyInitialBlockConfiguration ; unnecessary farcall

	ld a, [wStage]
	swap a
	and $0f
	ld c, a
	farcall Func_100680
	ld a, c
	ld [wPlayerMon], a
	ld [wOpponentMon], a
	ld a, [wOpponentMon]
	ld c, a
	farcall GetPokemonBoard
	ld a, c
	ld [wBoard], a
	ld a, [wOpponentMon]
	ld c, a
	farcall Func_100774
	ret

Func_d42a:
	xor a
	ld [wSpeedLevel], a
	ld [wGameLevel], a
	call Func_d9c8
	call Func_d6cf
	call Func_d95e
	call Func_d9b0
	farcall Func_68a0f
	farcall Func_68a37
	farcall Func_68b26
	call Func_1f38
	ld a, [hl]
	ld [wc834], a
	swap a
	and $0f
	ld c, a
	ld a, [wGameMode]
	ld b, a
	ld a, [wcead]
	ld d, a
	farcall Func_10072d
	ld a, c
	ld [wPlayerMon], a
	ld [wOpponentMon], a
	ld a, [wOpponentMon]
	ld c, a
	farcall GetPokemonBoard
	ld a, c
	ld [wBoard], a
	ld a, [wOpponentMon]
	ld c, a
	farcall Func_100774
	ret

Func_d489:
	farcall Func_13636
	ld hl, wc86a
	xor a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a

	; init score
	ld hl, wScore
	xor a
	ld [hli], a
	ld [hli], a
	ld [hl], a

	call Func_dc49
	call Func_d6cf
	call Func_d95e
	call Func_d9b0

	call Func_dfea
	farcall PrepareCopyInitialBlockConfiguration ; unnecessary farcall
	farcall CopyInitialBlockConfiguration ; unnecessary farcall

	ld a, [wStage]
	farcall_saveregs Func_100561
	ld [wPlayerMon], a
	ld [wOpponentMon], a
	ld a, [wOpponentMon]
	ld c, a
	farcall GetPokemonBoard
	ld a, c
	ld [wBoard], a
	ld a, [wOpponentMon]
	ld c, a
	farcall Func_100774
	ret

Func_d4e1:
	ld hl, wc86a
	xor a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	call Func_da78
	call Func_d6cf
	call Func_d95e
	call Func_d9b0

	call Func_dfea
	farcall PrepareCopyInitialBlockConfiguration ; unnecessary farcall
	farcall CopyInitialBlockConfiguration ; unnecessary farcall

	ld a, [wStage]
	farcall_saveregs Func_10058a
	ld [wOpponentMon], a
	ld a, [wOpponentMon]
	ld c, a
	farcall GetPokemonBoard
	ld a, c
	ld [wBoard], a
	ld a, [wOpponentMon]
	ld c, a
	farcall Func_100774
	farcall Func_9b2d
	xor a
	ld [$cd3e], a
	ld a, $67
	ld [$cd3f], a
	xor a
	ld [$cd36], a
	ld [$cd37], a
	ld [$cd40], a
	ld [$cd41], a
	call Func_d548
	ret

Func_d548:
	ld a, [wGameLevel]
	cp $00
	ret z
	ld a, [wStage]
	cp $0e
	ret nc
	ld l, a
	ld h, $00
	ld bc, $5569
	add hl, bc
	ld a, [hl]
	ld [wcdc4], a
	farcall Func_6a66d
	call SetSaveDataChecksumAndBackup
	ret
; 0xd569

SECTION "Bank 3@5577", ROMX[$5577], BANK[$3]

Func_d577:
	ld hl, wc86a
	xor a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	xor a
	ld [wGameLevel], a
	call Func_db52
	call Func_d6cf
	call Func_d95e
	call Func_d9b0
	ret

Func_d590:
	ld hl, wc86a
	xor a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a

	; init score
	ld hl, wScore
	xor a
	ld [hli], a
	ld [hli], a
	ld [hl], a

	ld hl, $c845
	xor a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	xor a
	ld [wGameLevel], a
	call Func_db52
	xor a
	ld [wca23 + 0], a
	ld [wca23 + 1], a
	call Func_d6cf
	call Func_d95e
	call Func_d9b0
	ld a, [wcea7]
	ld c, a
	ld b, $00
	ld hl, $67ac
	add hl, bc
	ld a, [hl]
	ld [wca18], a
	ret

Func_d5cc:
	ld hl, wc86a
	xor a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	xor a
	ld [wGameLevel], a
	ld hl, wcea7
	ld a, [hl]
	push af
	ld [hl], $01
	call Func_db52
	pop af
	ld [wcea7], a
	xor a
	ld [wca23 + 0], a
	ld [wca23 + 1], a
	call Func_d6cf
	call Func_d95e
	call Func_d9b0
	ld a, [wcea7]
	ld c, a
	ld b, $00
	ld hl, $678e
	add hl, bc
	ld a, [hli]
	ld [wc8e5], a
	ld a, $00
	ld [wc8e4], a
	ld hl, $6784
	add hl, bc
	ld a, [hl]
	ld [wca18], a
	ret

Func_d612:
	xor a
	ld [wSpeedLevel], a
	ld [wGameLevel], a
	ld [wPlayerMon], a ; CHIKORITA

	call Func_d9c8
	call Func_d6cf
	call Func_d95e
	call Func_d9b0
	ld c, $00
	farcall Func_100774
	ret

Func_d631:
	xor a
	ld [wGameLevel], a
	call Func_de32
	call Func_d6cf
	call Func_d95e
	call Func_d9b0
	ld a, $14
	add a
	ld l, a
	add a
	add l
	ld l, a
	ld h, $00
	ld bc, InitialBlockColumnHeights_LineClear
	add hl, bc
	call CreateInitialRandomBlockConfiguration
	farcall PrepareCopyInitialBlockConfiguration ; unnecessary farcall
	farcall CopyInitialBlockConfiguration ; unnecessary farcall

	ld a, CHIKORITA
	ld [wPlayerMon], a

	ld a, [wceac]
	and a
	jr z, .asm_d66c
	ld a, $07
	jr .asm_d670
.asm_d66c
	ld a, $06
	jr .asm_d670
.asm_d670
	ld c, a
	farcall Func_100680
	ld a, c
	ld [wOpponentMon], a
	ld c, a
	farcall GetPokemonBoard
	ld a, c
	ld [wBoard], a
	ld a, [wOpponentMon]
	ld c, a
	farcall Func_100774
	xor a
	ld [$cd36], a
	ld [$cd37], a
	ld a, $f4
	ld [$cd38], a
	ld [$cd3a], a
	ld a, $01
	ld [$cd39], a
	ld [$cd3b], a
	xor a
	ld [$cd3c], a
	ld [$cd3d], a
	ld [$cd3e], a
	ld a, $67
	ld [$cd3f], a
	ld a, $0c
	ld [wcd42], a
	ld a, $00
	ld [$cd43], a
	ld a, $64
	ld [wcd44], a
	ld a, $00
	ld [$cd45], a
	xor a ; CHIKORITA
	ld [wPlayerMon], a
	ret
; 0xd6cf

SECTION "Bank 3@56cf", ROMX[$56cf], BANK[$3]

Func_d6cf:
	ld de, wBlocks
	ld bc, $700
	ld a, $00
	call FillMemory

	; clears wBlockTilemap and wBlockAttrmap
	ld de, wBlockTilemap
	ld bc, 2 * (BOARD_VIRTUAL_AREA * 4)
	ld a, $00
	call FillMemory

	ld de, wccb3
	ld bc, $55
	ld a, $00
	call FillMemory

	ld de, wcae8
	ld bc, $101
	ld a, $00
	call FillMemory

	ld de, $cbe9
	ld bc, $ca
	ld a, $00
	call FillMemory

	ld de, wca29
	ld bc, $66
	ld a, $00
	call FillMemory

	ld de, wca8f
	ld bc, $3a
	ld a, $00
	call FillMemory

	ld de, $dc58
	ld bc, $100
	ld a, $00
	call FillMemory

	xor a
	ld [wcac9], a
	ld [wcaca], a
	ld a, $00
	ld [wc8fa], a
	ld [wc8fb], a
	ld [wc8fc], a
	ld [wc8fd], a
	ld [wc8fe], a
	ld [wc8ff], a
	ld a, $ff
	ld [wc900], a
	ld a, $00
	ld [wc901], a
	ld [wc902], a
	ld [wc903], a
	ld [wc904], a
	ld [wc905], a
	ld [wc906], a
	ld a, $80
	ld [wcacf], a
	ld a, $ff
	ld [wcad0 + 0], a
	ld a, $0f
	ld [wcad0 + 1], a
	ld a, $00
	ld [wcade], a
	ld a, $00
	ld [wcad2], a
	ld [wcad2], a
	ld a, $ff
	ld [wcad4], a
	ld [wcad5], a
	ld a, $00
	ld [wcad6], a
	ld [wcad7], a
	ld [wcad8], a
	ld [wcad9], a
	ld [wcada], a
	ld a, $00
	ld [wcadf], a
	ld [wcae1], a
	ld [wcae2], a
	ld [wcae4 + 0], a
	ld [wcae0], a
	ld a, $ff
	ld [wc9af], a
	ld a, $00
	ld [wc9b0], a
	ld [wc9b1], a
	ld a, $00
	ld [wPlayerMonPortraitAnimPtr + 0], a
	ld [wPlayerMonPortraitAnimPtr + 1], a
	ld [wPlayerMonPortraitAnimTimer], a
	ld [wc9b6], a
	ld [wOpponentMonPortraitAnimPtr + 0], a
	ld [wOpponentMonPortraitAnimPtr + 1], a
	ld [wc9b9], a
	ld [wOpponentMonPortraitAnimTimer], a
	ld [wc9bb], a
	ld a, [wcebe]
	ld [wc9bc], a
	ld a, [wcebf]
	ld [wc9bd], a
	ld a, $00
	ld [wc868], a
	ld [wc869], a
	ld a, [wc86a]
	ld [wc86e], a
	ld a, [wGameClockSeconds]
	ld [wc86f], a
	ld a, [wGameClockMinutes]
	ld [wc870], a
	ld a, [wc86d]
	ld [wc871], a
	ld a, $00
	ld [wc879], a
	ld [wc87a], a
	ld [wc876], a
	ld a, $00
	ld [wc87b], a
	ld [wc87c + 0], a
	ld [wc87c + 1], a
	ld [wc87e], a
	ld [wc87f], a
	ld a, $00
	ld [wc881], a
	ld a, $0b
	ld [wc882], a
	ld a, $00
	ld [wc883], a
	ld [wc884], a
	ld a, $00
	ld [wc885], a
	ld a, $00
	ld [wc886], a
	ld [wc887], a
	ld [wc888], a
	ld a, $00
	ld [wc889], a
	ld [wc88a], a
	ld [wc88b], a
	ld [wc88c], a
	ld [wc88d], a
	ld [wc88e], a
	ld [wc88f], a
	ld [wc890], a
	ld [wc891], a
	ld [wc892], a
	ld [wc893], a
	ld [wc894], a
	ld [wc895], a
	ld [wc834], a
	ld [wc896], a
	ld [wc897], a
	ld [wc898], a
	ld [wc899], a
	ld [wc89d], a
	ld [wc89e], a
	ld [wc89f], a
	ld [wca27 + 0], a
	ld [wca27 + 1], a
	ld a, $00
	ld [wc8a6], a
	ld [wc8a7], a
	ld [wc8a8], a
	ld [wc8a9], a
	ld [wc8df], a
	ld a, $00
	ld [wc8aa], a
	ld [wc8ab], a
	ld [wc8ac], a
	ld [wc8ad], a
	ld [wc8ae], a
	ld [wc8af], a
	ld [wc8b0], a
	ld [wc8b1], a
	ld [wc8b2], a
	ld [wc8b3], a
	ld a, $00
	ld [wc8b4], a
	ld [wc8b5], a
	ld [wc8b6], a
	ld [wc8b7], a
	ld [wc8b8], a
	ld [wc8b9], a
	ld [wc8ba], a
	ld [wc8bb], a
	ld [wc8bc], a
	ld [wc8bd], a
	ld a, $00
	ld [wc8be], a
	ld [wc8bf], a
	ld [wc8c0], a
	ld [wc8c1], a
	ld [wc8c2], a
	ld [wc8c3], a
	ld [wc8c4], a
	ld [wc8c5], a
	ld [wc8c6], a
	ld [wc8c7], a
	ld a, $00
	ld [wc8c8], a
	ld [wc8c9], a
	ld [wc8ca], a
	ld [wc8cb], a
	ld [wc8cc], a
	ld [wc8cd], a
	ld [wc8ce], a
	ld [wc8cf], a
	ld [wc8d0], a
	ld [wc8d1], a
	ld a, $00
	ld [wc8d3], a
	ld [wc8d2], a
	ld a, $00
	ld [wc8d4], a
	ld [wc8d5], a
	ld [wc8d6], a
	ld a, $00
	ld [wc8d7], a
	ld [wc8d8], a
	ld [wc8d9], a
	ld a, $00
	ld [wc8e2 + 0], a
	ld [wc8e2 + 1], a
	ld a, $ff
	ld [wc8e6], a
	ld a, $00
	ld [wc8e8], a
	ld [wc8e9], a
	ld [wc8ea], a
	ld [wc8eb], a
	ld hl, wc877
	xor a
	ld [hli], a
	ld [hl], a
	xor a
	ld [wc8a5], a
	xor a
	ld [wcd67], a
	ld [wcd68], a
	ld [wcd69], a
	ld [wcd6a], a
	ret

Func_d95e:
	ld a, $00
	ld [wcdea], a
	ld [wcdeb], a
	ld [wcdec], a
	ld [wcded], a
	ld [wcdee], a
	ld [wcdef], a
	ld [wcdf0], a
	ld [wcdf1], a
	ld a, $00
	ld [wcdf6], a
	ld [wcdf7], a
	ld [wce28], a
	ld [wce29], a
	ld [wce2a], a
	ld [wce2b], a
	ld [wce2c], a
	ld [wce2d], a
	ld [wce2e], a
	ld [wce2f], a
	ld [wce30], a
	ld [wce31], a
	ld [wce32], a
	ld [wce33], a

	ld de, wcdf8
	ld bc, $30
	ld a, $00
	call FillMemory
	ret

Func_d9b0:
	ld a, $29
	ld [wc865], a
	ld a, $50
	ld [wc866], a
	ld a, $22
	ld [wc864], a
	ld a, $00
	ld [wc867], a
	ld [wc8ed], a
	ret

Func_d9c8:
	call Func_dfb7
	ld c, a
	ld b, $00
	ld hl, $6390
	add hl, bc
	ld a, [hl]
	ld [wca18], a
	ld hl, $6393
	add hl, bc
	ld a, [hl]
	ld [wca19], a
	ld hl, Data_e396
	add hl, bc
	ld a, [hl]
	add a
	call Func_e2b6
	inc a
	ld [wca1a], a
	ld hl, Data_e39c
	add hl, bc
	ld a, [hl]
	call Func_e2b6
	ld [wca1c], a
	ld d, a
	ld hl, Data_e399
	add hl, bc
	ld a, [hl]
	call Func_e2b6
	sub d
	add $01
	ld [wca1b], a
	ld hl, Data_e39f
	add hl, bc
	ld a, [hl]
	call Func_e2b6
	ld [wca1d], a
	ld a, $00
	ld [wca1e], a
	ld [wca1f], a
	ld [wca20], a
	ld [wca23 + 0], a
	ld [wca23 + 1], a
	ld [wca25 + 0], a
	ld [wca25 + 1], a
	ld [wca27 + 0], a
	ld [wca27 + 1], a
	ld [wca21], a
	ld [wca22], a

	ld hl, Data_e3a2
	ld de, w6d9a0
	ld bc, (MAX_SPEEDLEVEL + 1) * 2
	call CopyHLtoDE

	ld hl, Data_e46a
	ld de, w6da68
	ld bc, (MAX_SPEEDLEVEL + 1) * 2
	call CopyHLtoDE

	ld bc, w6db30
	ld de, Data_e532
	ld a, $36
	call Func_def5

	ld bc, w6dc08
	ld de, $6648
	ld a, $14
	call Func_def5

	ld bc, w6db9c
	ld de, $66b8
	ld a, $36
	call Func_def5

	ld bc, w6dc30
	ld de, $6744
	ld a, $14
	call Func_def5
	ret

Func_da78:
	call Func_dfcd
	ld c, a
	ld b, $00
	ld hl, $67a2
	add hl, bc
	ld a, [hl]
	ld [wca18], a
	ld hl, $67b6
	add hl, bc
	ld a, [hl]
	ld [wca19], a
	ld hl, Data_e7c0
	add hl, bc
	ld a, [hl]
	add a
	call Func_e2b6
	inc a
	ld [wca1a], a
	ld hl, Data_e7d4
	add hl, bc
	ld a, [hl]
	call Func_e2b6
	ld [wca1c], a
	ld d, a
	ld hl, Data_e7ca
	add hl, bc
	ld a, [hl]
	call Func_e2b6
	sub d
	add $01
	ld [wca1b], a
	ld hl, Data_e7fc
	add hl, bc
	ld a, [hl]
	call Func_e2b6
	ld [wca1d], a
	ld hl, Data_e806
	ld de, wca1f
	add hl, bc
	ld a, [hl]
	call Func_e2b6
	ld [de], a
	ld a, $00
	ld [wca1e], a
	ld hl, $681a
	ld de, wca20
	add hl, bc
	ld a, [hl]
	ld [de], a
	ld hl, $6810
	add hl, bc
	ld a, [hl]
	ld [wca23 + 1], a
	xor a
	ld [wca23 + 0], a
	ld [wca25 + 0], a
	ld [wca25 + 1], a
	ld [wca27 + 0], a
	ld [wca27 + 1], a
	ld hl, $67e8
	ld de, wca21
	add hl, bc
	ld a, [hl]
	ld [de], a
	ld hl, $67f2
	ld de, wca22
	add hl, bc
	ld a, [hl]
	ld [de], a
	ld hl, $67de
	ld de, wSpeedLevel
	add hl, bc
	ld a, [hl]
	ld [de], a
	ld hl, Data_e3a2
	ld de, w6d9a0
	ld bc, (MAX_SPEEDLEVEL + 1) * 2
	call CopyHLtoDE
	ld hl, $6824
	ld de, w6da68
	ld bc, (MAX_SPEEDLEVEL + 1) * 2
	call CopyHLtoDE
	ld bc, w6db30
	ld de, $6888
	ld a, $36
	call Func_df1c
	ld bc, w6dc08
	ld de, $6b26
	ld a, $14
	call Func_df1c
	ld bc, w6db9c
	ld de, $6c3e
	ld a, $36
	call Func_df1c
	ld bc, w6dc30
	ld de, $6d10
	ld a, $14
	call Func_df1c
	ret

Func_db52:
	ld a, [wcea7]
	ld c, a
	ld b, $00
	ld hl, $67a2
	add hl, bc
	ld a, [hl]
	ld [wca18], a
	ld hl, $67b6
	add hl, bc
	ld a, [hl]
	ld [wca19], a
	ld hl, Data_e7c0
	add hl, bc
	ld a, [hl]
	add a
	call Func_e2b6
	inc a
	ld [wca1a], a
	ld hl, Data_e7d4
	add hl, bc
	ld a, [hl]
	call Func_e2b6
	ld [wca1c], a
	ld d, a
	ld hl, Data_e7ca
	add hl, bc
	ld a, [hl]
	call Func_e2b6
	sub d
	add $01
	ld [wca1b], a
	ld hl, Data_e7fc
	add hl, bc
	ld a, [hl]
	call Func_e2b6
	ld [wca1d], a
	ld hl, Data_e806
	ld de, wca1f
	add hl, bc
	ld a, [hl]
	call Func_e2b6
	ld [de], a
	ld a, $00
	ld [wca1e], a
	ld hl, $681a
	ld de, wca20
	add hl, bc
	ld a, [hl]
	ld [de], a
	ld hl, $6810
	add hl, bc
	ld a, [hl]
	ld [wca23 + 1], a
	xor a
	ld [wca23 + 0], a
	ld [wca27 + 0], a
	ld [wca27 + 1], a
	push bc
	ld a, [wca23 + 1]
	ldh [hff8b], a
	ld a, $00
	ldh [hff8a], a
	ldh [hff8c], a
	ldh [hff8d], a
	ld de, $14
	ld bc, NULL
	farcall Func_69a7d
	ld a, e
	ld [wca25 + 0], a
	ld a, d
	ld [wca25 + 1], a
	pop bc
	ld hl, $67e8
	ld de, wca21
	add hl, bc
	ld a, [hl]
	ld [de], a
	ld hl, $67f2
	ld de, wca22
	add hl, bc
	ld a, [hl]
	ld [de], a
	ld hl, $67de
	ld de, wSpeedLevel
	add hl, bc
	ld a, [hl]
	ld [de], a
	ld hl, Data_e3a2
	ld de, w6d9a0
	ld bc, (MAX_SPEEDLEVEL + 1) * 2
	call CopyHLtoDE
	ld hl, $6824
	ld de, w6da68
	ld bc, (MAX_SPEEDLEVEL + 1) * 2
	call CopyHLtoDE
	ld bc, w6db30
	ld de, $6888
	ld a, $36
	call Func_df43
	ld bc, w6dc08
	ld de, $6b26
	ld a, $14
	call Func_df43
	ld bc, w6db9c
	ld de, $6c3e
	ld a, $36
	call Func_df43
	ld bc, w6dc30
	ld de, $6d10
	ld a, $14
	call Func_df43
	ret

Func_dc49:
	call Func_dfcd
	ld c, a
	ld b, $00
	ld hl, $67a2
	add hl, bc
	ld a, [hl]
	ld [wca18], a
	ld hl, $67b6
	add hl, bc
	ld a, [hl]
	ld [wca19], a
	ld hl, Data_e7c0
	add hl, bc
	ld a, [hl]
	add a
	call Func_e2b6
	inc a
	ld [wca1a], a
	ld hl, Data_e7d4
	add hl, bc
	ld a, [hl]
	call Func_e2b6
	ld [wca1c], a
	ld d, a
	ld hl, Data_e7ca
	add hl, bc
	ld a, [hl]
	call Func_e2b6
	sub d
	add $01
	ld [wca1b], a
	ld hl, Data_e7fc
	add hl, bc
	ld a, [hl]
	call Func_e2b6
	ld [wca1d], a
	ld hl, Data_e806
	ld de, wca1f
	add hl, bc
	ld a, [hl]
	call Func_e2b6
	ld [de], a
	ld a, $00
	ld [wca1e], a
	ld hl, $681a
	ld de, wca20
	add hl, bc
	ld a, [hl]
	ld [de], a
	ld hl, $6810
	add hl, bc
	ld a, [hl]
	ld [wca23 + 1], a
	xor a
	ld [wca23 + 0], a
	ld [wca25 + 0], a
	ld [wca25 + 1], a
	ld [wca27 + 0], a
	ld [wca27 + 1], a
	ld hl, $67e8
	ld de, wca21
	add hl, bc
	ld a, [hl]
	ld [de], a
	ld hl, $67f2
	ld de, wca22
	add hl, bc
	ld a, [hl]
	ld [de], a
	ld hl, Data_e3a2
	ld de, w6d9a0
	ld bc, (MAX_SPEEDLEVEL + 1) * 2
	call CopyHLtoDE
	ld hl, Data_e46a
	ld de, w6da68
	ld bc, (MAX_SPEEDLEVEL + 1) * 2
	call CopyHLtoDE
	ld bc, w6db30
	ld de, $6888
	ld a, $36
	call Func_df1c
	ld bc, w6dc08
	ld de, $6b26
	ld a, $14
	call Func_df1c
	ld bc, w6db9c
	ld de, $6c3e
	ld a, $36
	call Func_df1c
	ld bc, w6dc30
	ld de, $6d10
	ld a, $14
	call Func_df1c
	ret
; 0xdd1a

SECTION "Bank 3@5d1a", ROMX[$5d1a], BANK[$3]

Func_dd1a:
	call Func_dfe2
	add a ; *2
	ld c, a
	ld b, $00
	ld hl, $6dd5
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wStage]
	and $0f
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [hl]
	ld [wca18], a
	call Func_e2ae
	ld c, a
	ld b, $00
	ld hl, $6da4
	add hl, bc
	ld a, [hl]
	ld [wca19], a
	call Func_e2ae
	ld c, a
	ld b, $00
	ld hl, Data_ed88
	add hl, bc
	ld a, [hl]
	call Func_e2b6
	add a
	inc a ; *2 + 1
	ld [wca1a], a
	call Func_e2ae
	ld c, a
	ld b, $00
	ld hl, Data_ed96
	add hl, bc
	ld a, [hl]
	call Func_e2b6
	ld [wca1c], a
	ld d, a
	call Func_e2ae
	ld c, a
	ld b, $00
	ld hl, Data_ed8f
	add hl, bc
	ld a, [hl]
	call Func_e2b6
	sub d
	add $01
	ld [wca1b], a
	call Func_e2ae
	ld c, a
	ld b, $00
	ld hl, Data_ed9d
	add hl, bc
	ld a, [hl]
	call Func_e2b6
	ld [wca1d], a
	call Func_e2ae
	add a
	ld c, a
	ld b, $00
	ld hl, $6dab
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wStage]
	and $0f
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [hl]
	ld [wSpeedLevel], a
	call Func_e2ae
	add a
	ld c, a
	ld b, $00
	ld hl, $6e0b
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wStage]
	and $0f
	ld c, a
	ld b, $00
	add hl, bc
	ld a, [hl]
	add $0a
	ld [wc8e5], a
	ld a, $00
	ld [wc8e4], a
	ld a, $00
	ld [wca1e], a
	ld [wca1f], a
	ld [wca20], a
	ld [wca23 + 0], a
	ld [wca23 + 1], a
	ld [wca25 + 0], a
	ld [wca25 + 1], a
	ld [wca27 + 0], a
	ld [wca27 + 1], a
	ld [wca21], a
	ld [wca22], a

	ld hl, Data_e3a2
	ld de, w6d9a0
	ld bc, (MAX_SPEEDLEVEL + 1) * 2
	call CopyHLtoDE

	ld hl, $6e35
	ld de, w6da68
	ld bc, (MAX_SPEEDLEVEL + 1) * 2
	call CopyHLtoDE

	ld bc, w6db30
	ld de, $6efb
	ld a, $36
	call Func_df6a

	ld bc, w6dc08
	ld de, $70f1
	ld a, $14
	call Func_df6a

	ld bc, w6db9c
	ld de, $71c1
	ld a, $36
	call Func_df6a

	ld bc, w6dc30
	ld de, $7275
	ld a, $14
	call Func_df6a
	ret

Func_de32:
	ld a, $06
	ld [wca18], a
	ld bc, $6
	ld hl, $6da4
	add hl, bc
	ld a, [hl]
	ld [wca19], a
	ld bc, $6
	ld hl, Data_ed88
	add hl, bc
	ld a, [hl]
	call Func_e2b6
	add a
	inc a
	ld [wca1a], a
	ld bc, $6
	ld hl, Data_ed96
	add hl, bc
	ld a, [hl]
	call Func_e2b6
	ld [wca1c], a
	ld d, a
	ld bc, $6
	ld hl, Data_ed8f
	add hl, bc
	ld a, [hl]
	call Func_e2b6
	sub d
	add $01
	ld [wca1b], a
	ld bc, $6
	ld hl, Data_ed9d
	add hl, bc
	ld a, [hl]
	call Func_e2b6
	ld [wca1d], a
	ld a, $28
	ld [wSpeedLevel], a
	ld a, $00
	ld [wc8e5], a
	ld [wc8e4], a
	ld a, $00
	ld [wca1e], a
	ld [wca1f], a
	ld [wca20], a
	ld [wca23 + 0], a
	ld [wca23 + 1], a
	ld [wca25 + 0], a
	ld [wca25 + 1], a
	ld [wca27 + 0], a
	ld [wca27 + 1], a
	ld [wca21], a
	ld [wca22], a
	ld hl, Data_e3a2
	ld de, w6d9a0
	ld bc, (MAX_SPEEDLEVEL + 1) * 2
	call CopyHLtoDE
	ld hl, $6e35
	ld de, w6da68
	ld bc, (MAX_SPEEDLEVEL + 1) * 2
	call CopyHLtoDE
	ld bc, w6db30
	ld de, $6efb
	ld a, $36
	call Func_df91
	ld bc, w6dc08
	ld de, $70f1
	ld a, $14
	call Func_df91
	ld bc, w6db9c
	ld de, $71c1
	ld a, $36
	call Func_df91
	ld bc, w6dc30
	ld de, $7275
	ld a, $14
	call Func_df91
	ret

; input:
; - a  = how many words to copy over
; - de = source
; - bc = dest
Func_def5:
	ldh [hff8a], a
	xor a
	ldh [hff8b], a
.loop
	ld a, [de]
	inc de
	ld l, a
	ld a, [de]
	inc de
	ld h, a
	call Func_dfb7
	add a ; *2
	add l
	ld l, a
	ld a, h
	adc 0
	ld h, a

	; copy word to bc
	ld a, [hli]
	ld [bc], a
	inc bc
	ld a, [hl]
	ld [bc], a
	inc bc

	ld hl, hff8b
	inc [hl]
	ld a, [hl]
	ld hl, hff8a
	cp [hl]
	jr c, .loop
	ret

Func_df1c:
	ldh [hff8a], a
	xor a
	ldh [hff8b], a
.asm_df21
	ld a, [de]
	inc de
	ld l, a
	ld a, [de]
	inc de
	ld h, a
	call Func_dfcd
	add a
	add l
	ld l, a
	ld a, h
	adc $00
	ld h, a
	ld a, [hli]
	ld [bc], a
	inc bc
	ld a, [hl]
	ld [bc], a
	inc bc
	ld hl, hff8b
	inc [hl]
	ld a, [hl]
	ld hl, hff8a
	cp [hl]
	jr c, .asm_df21
	ret

Func_df43:
	ldh [hff8a], a
	xor a
	ldh [hff8b], a
.asm_df48
	ld a, [de]
	inc de
	ld l, a
	ld a, [de]
	inc de
	ld h, a
	ld a, [wcea7]
	add a
	add l
	ld l, a
	ld a, h
	adc $00
	ld h, a
	ld a, [hli]
	ld [bc], a
	inc bc
	ld a, [hl]
	ld [bc], a
	inc bc
	ld hl, hff8b
	inc [hl]
	ld a, [hl]
	ld hl, hff8a
	cp [hl]
	jr c, .asm_df48
	ret

Func_df6a:
	ldh [hff8a], a
	xor a
	ldh [hff8b], a
.asm_df6f
	ld a, [de]
	inc de
	ld l, a
	ld a, [de]
	inc de
	ld h, a
	call Func_dfe2
	add a
	add l
	ld l, a
	ld a, h
	adc $00
	ld h, a
	ld a, [hli]
	ld [bc], a
	inc bc
	ld a, [hl]
	ld [bc], a
	inc bc
	ld hl, hff8b
	inc [hl]
	ld a, [hl]
	ld hl, hff8a
	cp [hl]
	jr c, .asm_df6f
	ret

Func_df91:
	ldh [hff8a], a
	xor a
	ldh [hff8b], a
.asm_df96
	ld a, [de]
	inc de
	ld l, a
	ld a, [de]
	inc de
	ld h, a
	ld a, $06
	add a
	add l
	ld l, a
	ld a, h
	adc $00
	ld h, a
	ld a, [hli]
	ld [bc], a
	inc bc
	ld a, [hl]
	ld [bc], a
	inc bc
	ld hl, hff8b
	inc [hl]
	ld a, [hl]
	ld hl, hff8a
	cp [hl]
	jr c, .asm_df96
	ret

Func_dfb7:
	push bc
	push hl
	ld a, [wGameLevel]
	ld c, a
	ld b, $00
	ld hl, .Table
	add hl, bc
	ld a, [hl]
	pop hl
	pop bc
	ret

.Table:
	table_width 1
    db $00 ; GAMELEVEL_EASY
	db $01 ; GAMELEVEL_NORMAL
	db $02 ; GAMELEVEL_HARD
	db $02 ; GAMELEVEL_S_HARD
	db $02 ; GAMELEVEL_V_HARD
	db $00 ; GAMELEVEL_SLOW
	assert_table_length NUM_GAME_LEVELS

Func_dfcd:
	push bc
	push hl
	ld a, [wGameLevel]
	ld c, a
	ld b, $00
	ld hl, $5fdd
	add hl, bc
	ld a, [hl]
	pop hl
	pop bc
	ret
; 0xdfdd

SECTION "Bank 3@5fe2", ROMX[$5fe2], BANK[$3]

Func_dfe2:
	push bc
	push hl
	call Func_e2ae
	pop hl
	pop bc
	ret

Func_dfea:
	call Random
	call Func_e0b9
	; a = random number in range [0, 13]
	add a
	ld c, a
	add a
	add c ; *6
	ld c, a
	ld b, $00
	ld hl, InitialBlockColumnHeights_Regular
	add hl, bc
	jr CreateInitialRandomBlockConfiguration ; useless jump

; this is an algorithm to construct the initial board configuration
; hl must point to 6-byte data that says what the heights of each columns are
; these are shuffled around first, so the column heights are in random order
; then each column is iterated and each block placed (bottom up, left to right)
; such that no 2 adjacent blocks share the same type
; the output is in sInitialBlockConfiguration
CreateInitialRandomBlockConfiguration:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, BANK(sInitialBlockConfiguration)
	sramswitch

	push hl
	ld de, sInitialBlockConfiguration
	ld bc, $55
	ld a, $00
	call FillMemory
	pop hl

	ld a, [hli]
	ldh [hff8a], a
	ld a, [hli]
	ldh [hff8b], a
	ld a, [hli]
	ldh [hff8c], a
	ld a, [hli]
	ldh [hff8d], a
	ld a, [hli]
	ldh [hff8e], a
	ld a, [hl]
	ldh [hff8f], a

	; shuffle hff8a
	ld a, BOARD_WIDTH
	ldh [hff90], a
.loop_shuffle
	; swap 2 random column heights
	call Random_0to5
	ld e, a
	ld d, $00
	ld hl, hff8a
	add hl, de
	ld b, h
	ld c, l
	call Random_0to5
	ld e, a
	ld d, $00
	ld hl, hff8a
	add hl, de
	ld d, [hl]
	ld a, [bc]
	ld e, a
	ld [hl], e
	ld a, d
	ld [bc], a
	ld hl, hff90
	dec [hl]
	jr nz, .loop_shuffle

	; column heights are shuffled
	; iterate through each column
	ld a, BOARD_WIDTH
	ldh [hff90], a
	ld bc, hff8a
	ld de, 8 * 8 ; 8 per row, 8 columns max
.loop_columns
	push de
.loop_blocks
	ld a, [bc] ; remaining column height
	and a
	jp z, .next_column ; no more blocks to place

	; if wca18 == 6, then get random number in [0, 5]
	; otherwise, get random number in [0, 4]
	ld a, [wca18]
	cp $06
	jr z, .asm_e072
	call Random_0to4
	jr .try_next_block
.asm_e072
	call Random_0to5
.try_next_block
	inc a
	; a is a random (allowed) block type
	ld hl, wca18
	cp [hl]
	jr c, .got_block_type
	jr z, .got_block_type
	; wrap back to heart block
	ld a, BLOCK_HEART
.got_block_type
	; we're going to try to place it at sInitialBlockConfiguration + $8 + de
	; is it adjacent to the same block type?
	; if so, try with next block type in order
	; check above it
	ld hl, sInitialBlockConfiguration + $8 - $8
	add hl, de
	cp [hl]
	jr z, .try_next_block
	; check below it
	ld hl, sInitialBlockConfiguration + $8 + $8
	add hl, de
	cp [hl]
	jr z, .try_next_block
	; check to left
	ld hl, sInitialBlockConfiguration + $8 - $1
	add hl, de
	cp [hl]
	jr z, .try_next_block
	; no need to check right, since we're going left to right
	; place this block
	ld hl, sInitialBlockConfiguration + $8
	add hl, de
	ld [hl], a
	; go to row above
	ld a, e
	sub $8
	ld e, a
	; decrement remaining blocks in column
	ld a, [bc]
	dec a
	ld [bc], a
	jr .loop_blocks

.next_column
	pop de
	inc bc
	inc de
	ld hl, hff90
	dec [hl]
	jr nz, .loop_columns

	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

Func_e0b9:
	push hl
	ld hl, .Data
	add l
	ld l, a
	ld a, h
	adc 0
	ld h, a
	ld a, [hl]
	pop hl
	ret

.Data:
	db $0, $1, $2, $3, $4, $5, $6, $7, $8, $9, $a, $b, $c, $d, $0, $0
	db $0, $1, $2, $3, $4, $5, $6, $7, $8, $9, $a, $b, $c, $d, $1, $1
	db $0, $1, $2, $3, $4, $5, $6, $7, $8, $9, $a, $b, $c, $d, $2, $2
	db $0, $1, $2, $3, $4, $5, $6, $7, $8, $9, $a, $b, $c, $d, $3, $3
	db $0, $1, $2, $3, $4, $5, $6, $7, $8, $9, $a, $b, $c, $d, $4, $4
	db $0, $1, $2, $3, $4, $5, $6, $7, $8, $9, $a, $b, $c, $d, $5, $5
	db $0, $1, $2, $3, $4, $5, $6, $7, $8, $9, $a, $b, $c, $d, $6, $6
	db $0, $1, $2, $3, $4, $5, $6, $7, $8, $9, $a, $b, $c, $d, $7, $7
	db $0, $1, $2, $3, $4, $5, $6, $7, $8, $9, $a, $b, $c, $d, $8, $8
	db $0, $1, $2, $3, $4, $5, $6, $7, $8, $9, $a, $b, $c, $d, $9, $9
	db $0, $1, $2, $3, $4, $5, $6, $7, $8, $9, $a, $b, $c, $d, $a, $a
	db $0, $1, $2, $3, $4, $5, $6, $7, $8, $9, $a, $b, $c, $d, $b, $b
	db $0, $1, $2, $3, $4, $5, $6, $7, $8, $9, $a, $b, $c, $d, $c, $c
	db $0, $1, $2, $3, $4, $5, $6, $7, $8, $9, $a, $b, $c, $d, $d, $d
	db $0, $1, $2, $3, $4, $5, $6, $7, $8, $9, $a, $b, $c, $d, $0, $1
	db $0, $1, $2, $3, $4, $5, $6, $7, $8, $9, $a, $b, $c, $d, $2, $3

; copies sInitialBlockConfiguration over to sBlockConfigurationToCopy
PrepareCopyInitialBlockConfiguration:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	copy_data sBlockConfigurationToCopy + 0 * BOARD_WIDTH, BANK(sBlockConfigurationToCopy), sInitialBlockConfiguration + $08, BANK(sInitialBlockConfiguration), BOARD_WIDTH
	copy_data sBlockConfigurationToCopy + 1 * BOARD_WIDTH, BANK(sBlockConfigurationToCopy), sInitialBlockConfiguration + $10, BANK(sInitialBlockConfiguration), BOARD_WIDTH
	copy_data sBlockConfigurationToCopy + 2 * BOARD_WIDTH, BANK(sBlockConfigurationToCopy), sInitialBlockConfiguration + $18, BANK(sInitialBlockConfiguration), BOARD_WIDTH
	copy_data sBlockConfigurationToCopy + 3 * BOARD_WIDTH, BANK(sBlockConfigurationToCopy), sInitialBlockConfiguration + $20, BANK(sInitialBlockConfiguration), BOARD_WIDTH
	copy_data sBlockConfigurationToCopy + 4 * BOARD_WIDTH, BANK(sBlockConfigurationToCopy), sInitialBlockConfiguration + $28, BANK(sInitialBlockConfiguration), BOARD_WIDTH
	copy_data sBlockConfigurationToCopy + 5 * BOARD_WIDTH, BANK(sBlockConfigurationToCopy), sInitialBlockConfiguration + $30, BANK(sInitialBlockConfiguration), BOARD_WIDTH
	copy_data sBlockConfigurationToCopy + 6 * BOARD_WIDTH, BANK(sBlockConfigurationToCopy), sInitialBlockConfiguration + $38, BANK(sInitialBlockConfiguration), BOARD_WIDTH
	copy_data sBlockConfigurationToCopy + 7 * BOARD_WIDTH, BANK(sBlockConfigurationToCopy), sInitialBlockConfiguration + $40, BANK(sInitialBlockConfiguration), BOARD_WIDTH
	copy_data sBlockConfigurationToCopy + 8 * BOARD_WIDTH, BANK(sBlockConfigurationToCopy), sInitialBlockConfiguration + $48, BANK(sInitialBlockConfiguration), BOARD_WIDTH
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

; copies sBlockConfigurationToCopy over to wBlocks
CopyInitialBlockConfiguration:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	copy_data wBlocks + 0 * BOARD_VIRTUAL_WIDTH, BANK(wBlocks), sBlockConfigurationToCopy + 0 * BOARD_WIDTH, BANK(sBlockConfigurationToCopy), BOARD_WIDTH
	copy_data wBlocks + 1 * BOARD_VIRTUAL_WIDTH, BANK(wBlocks), sBlockConfigurationToCopy + 1 * BOARD_WIDTH, BANK(sBlockConfigurationToCopy), BOARD_WIDTH
	copy_data wBlocks + 2 * BOARD_VIRTUAL_WIDTH, BANK(wBlocks), sBlockConfigurationToCopy + 2 * BOARD_WIDTH, BANK(sBlockConfigurationToCopy), BOARD_WIDTH
	copy_data wBlocks + 3 * BOARD_VIRTUAL_WIDTH, BANK(wBlocks), sBlockConfigurationToCopy + 3 * BOARD_WIDTH, BANK(sBlockConfigurationToCopy), BOARD_WIDTH
	copy_data wBlocks + 4 * BOARD_VIRTUAL_WIDTH, BANK(wBlocks), sBlockConfigurationToCopy + 4 * BOARD_WIDTH, BANK(sBlockConfigurationToCopy), BOARD_WIDTH
	copy_data wBlocks + 5 * BOARD_VIRTUAL_WIDTH, BANK(wBlocks), sBlockConfigurationToCopy + 5 * BOARD_WIDTH, BANK(sBlockConfigurationToCopy), BOARD_WIDTH
	copy_data wBlocks + 6 * BOARD_VIRTUAL_WIDTH, BANK(wBlocks), sBlockConfigurationToCopy + 6 * BOARD_WIDTH, BANK(sBlockConfigurationToCopy), BOARD_WIDTH
	copy_data wBlocks + 7 * BOARD_VIRTUAL_WIDTH, BANK(wBlocks), sBlockConfigurationToCopy + 7 * BOARD_WIDTH, BANK(sBlockConfigurationToCopy), BOARD_WIDTH
	copy_data wBlocks + 8 * BOARD_VIRTUAL_WIDTH, BANK(wBlocks), sBlockConfigurationToCopy + 8 * BOARD_WIDTH, BANK(sBlockConfigurationToCopy), BOARD_WIDTH
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

; outputs a = (wStage & 0xf0) >> 4
Func_e2ae:
	ld a, [wStage]
	and $f0
	swap a
	ret

; input:
; - a = ?
; output:
; - a = ?
Func_e2b6:
	push bc
	ld b, a
	ld a, [wGameLevel]
	cp GAMELEVEL_SLOW
	jr nz, .not_slow
; slow
	ld a, [wceb4]
	dec a
	jr z, .quadruple ; == 1
	dec a
	jr z, .double ; == 2
	jr .triple
.not_slow
	ld a, b
	pop bc
	ret
.double
	ld a, b
	add a ; *2
	pop bc
	ret
.triple
	ld a, b
	add a
	add b ; *3
	pop bc
	ret
.quadruple
	ld a, b
	add a
	add a ; *4
	pop bc
	ret
; 0xe2db

SECTION "Bank 3@6396", ROMX[$6396], BANK[$3]

Data_e396:
	db $18, $14, $10

Data_e399:
	db $1a, $14, $0e

Data_e39c:
	db $08, $07, $06

Data_e39f:
	db $0e, $0b, $07

Data_e3a2:
	table_width 2
	dw $0000 ;  0
	dw $002e ;  1
	dw $0031 ;  2
	dw $0037 ;  3
	dw $0039 ;  4
	dw $003d ;  5
	dw $0042 ;  6
	dw $0047 ;  7
	dw $004c ;  8
	dw $0051 ;  9
	dw $005a ; 10
	dw $0062 ; 11
	dw $0069 ; 12
	dw $0077 ; 13
	dw $0080 ; 14
	dw $0088 ; 15
	dw $0092 ; 16
	dw $009b ; 17
	dw $00a6 ; 18
	dw $00b1 ; 19
	dw $00bd ; 20
	dw $00ca ; 21
	dw $00d7 ; 22
	dw $00e6 ; 23
	dw $00f5 ; 24
	dw $0106 ; 25
	dw $0119 ; 26
	dw $012b ; 27
	dw $0141 ; 28
	dw $015a ; 29
	dw $0177 ; 30
	dw $0196 ; 31
	dw $01ba ; 32
	dw $01e0 ; 33
	dw $0207 ; 34
	dw $022e ; 35
	dw $0264 ; 36
	dw $029a ; 37
	dw $02c5 ; 38
	dw $0302 ; 39
	dw $033b ; 40
	dw $037d ; 41
	dw $03b6 ; 42
	dw $040f ; 43
	dw $045d ; 44
	dw $04b7 ; 45
	dw $04fc ; 46
	dw $054a ; 47
	dw $05a1 ; 48
	dw $0604 ; 49
	dw $063b ; 50
	dw $066e ; 51
	dw $06a1 ; 52
	dw $06d4 ; 53
	dw $0707 ; 54
	dw $073a ; 55
	dw $076d ; 56
	dw $07a0 ; 57
	dw $07d3 ; 58
	dw $0806 ; 59
	dw $0839 ; 60
	dw $086c ; 61
	dw $089f ; 62
	dw $08d2 ; 63
	dw $0905 ; 64
	dw $0938 ; 65
	dw $096b ; 66
	dw $099e ; 67
	dw $09d1 ; 68
	dw $0a04 ; 69
	dw $0a37 ; 70
	dw $0a6a ; 71
	dw $0a9d ; 72
	dw $0ad0 ; 73
	dw $0b03 ; 74
	dw $0b37 ; 75
	dw $0b6a ; 76
	dw $0b9d ; 77
	dw $0bd0 ; 78
	dw $0c03 ; 79
	dw $0c36 ; 80
	dw $0c69 ; 81
	dw $0c9c ; 82
	dw $0ccf ; 83
	dw $0d02 ; 84
	dw $0d35 ; 85
	dw $0d68 ; 86
	dw $0d9b ; 87
	dw $0dce ; 88
	dw $0e01 ; 89
	dw $0e34 ; 90
	dw $0e67 ; 91
	dw $0e9a ; 92
	dw $0ecd ; 93
	dw $0f00 ; 94
	dw $0f33 ; 95
	dw $0f66 ; 96
	dw $0f99 ; 97
	dw $0fcc ; 98
	dw $1000 ; 99
	assert_table_length MAX_SPEEDLEVEL + 1

Data_e46a:
	table_width 2
	dw $0000 ;  0
	dw $0009 ;  1
	dw $000c ;  2
	dw $000c ;  3
	dw $000c ;  4
	dw $000c ;  5
	dw $000c ;  6
	dw $000e ;  7
	dw $000e ;  8
	dw $0010 ;  9
	dw $0010 ; 10
	dw $0018 ; 11
	dw $0018 ; 12
	dw $0018 ; 13
	dw $0018 ; 14
	dw $0018 ; 15
	dw $0016 ; 16
	dw $0014 ; 17
	dw $0012 ; 18
	dw $0010 ; 19
	dw $0010 ; 20
	dw $0024 ; 21
	dw $0024 ; 22
	dw $0024 ; 23
	dw $0024 ; 24
	dw $0024 ; 25
	dw $0024 ; 26
	dw $0024 ; 27
	dw $0024 ; 28
	dw $0024 ; 29
	dw $0024 ; 30
	dw $0027 ; 31
	dw $0027 ; 32
	dw $0027 ; 33
	dw $0027 ; 34
	dw $0027 ; 35
	dw $0027 ; 36
	dw $0027 ; 37
	dw $0027 ; 38
	dw $0027 ; 39
	dw $0027 ; 40
	dw $002d ; 41
	dw $002d ; 42
	dw $002d ; 43
	dw $002d ; 44
	dw $002d ; 45
	dw $002d ; 46
	dw $002d ; 47
	dw $002d ; 48
	dw $002d ; 49
	dw $002d ; 50
	dw $002d ; 51
	dw $002d ; 52
	dw $002d ; 53
	dw $002d ; 54
	dw $002d ; 55
	dw $002d ; 56
	dw $002d ; 57
	dw $002d ; 58
	dw $002d ; 59
	dw $002d ; 60
	dw $002d ; 61
	dw $002d ; 62
	dw $002d ; 63
	dw $002d ; 64
	dw $002d ; 65
	dw $002d ; 66
	dw $002d ; 67
	dw $002d ; 68
	dw $002d ; 69
	dw $002d ; 70
	dw $002d ; 71
	dw $002d ; 72
	dw $002d ; 73
	dw $002d ; 74
	dw $002d ; 75
	dw $002d ; 76
	dw $002d ; 77
	dw $002d ; 78
	dw $002d ; 79
	dw $002d ; 80
	dw $002d ; 81
	dw $002d ; 82
	dw $002d ; 83
	dw $002d ; 84
	dw $002d ; 85
	dw $002d ; 86
	dw $002d ; 87
	dw $002d ; 88
	dw $002d ; 89
	dw $002d ; 90
	dw $002d ; 91
	dw $002d ; 92
	dw $002d ; 93
	dw $002d ; 94
	dw $002d ; 95
	dw $002d ; 96
	dw $002d ; 97
	dw $002d ; 98
	dw $002d ; 99
	assert_table_length MAX_SPEEDLEVEL + 1

Data_e532:
	dw $65a0
	dw $65a0
	dw $65a0
	dw $65a0
	dw $65a6
	dw $65ac
	dw $65b2
	dw $65b8
	dw $65be
	dw $65c4
	dw $65ca
	dw $65d0
	dw $65d6
	dw $65dc
	dw $65e2
	dw $65e8
	dw $65ee
	dw $65f4
	dw $65fa
	dw $6600
	dw $6606
	dw $660c
	dw $6612
	dw $6618
	dw $661e
	dw $6624
	dw $662a
	dw $6630
	dw $6636
	dw $663c
	dw $6642
	dw $6642
	dw $6642
	dw $6642
	dw $6642
	dw $6642
	dw $6642
	dw $6642
	dw $6642
	dw $6642
	dw $6642
	dw $6642
	dw $6642
	dw $6642
	dw $6642
	dw $6642
	dw $6642
	dw $6642
	dw $6642
	dw $6642
	dw $6642
	dw $6642
	dw $6642
	dw $6642
	dw $6642
; 0xe5a0

SECTION "Bank 3@67c0", ROMX[$67c0], BANK[$3]

Data_e7c0:
	db $18, $18, $17, $16, $15, $14, $13, $12, $11, $10

Data_e7ca:
	db $1a, $18, $16, $14, $13, $12, $11, $10, $0f, $0e

Data_e7d4:
	db $08, $08, $07, $07, $07, $07, $07, $06, $06, $06
; 0xe7de

SECTION "Bank 3@67fc", ROMX[$67fc], BANK[$3]

Data_e7fc:
	db $0e, $0d, $0c, $0b, $0a, $09, $08, $08, $07, $07

Data_e806:
	db $30, $2a, $24, $1e, $18, $13, $0f, $0c, $09, $05
; 0xe810

SECTION "Bank 3@6d88", ROMX[$6d88], BANK[$3]

Data_ed88:
	db $18, $16, $14, $13, $12, $11, $11

Data_ed8f:
	db $18, $16, $14, $12, $10, $0f, $0f

Data_ed96:
	db $08, $07, $07, $07, $06, $06, $06

Data_ed9d:
	db $0e, $0c, $0b, $0a, $09, $08, $08
; 0xeda4

SECTION "Bank 3@72d5", ROMX[$72d5], BANK[$3]

InitialBlockColumnHeights_Regular:
	db 5, 3, 4, 4, 4, 4
	db 3, 3, 5, 5, 4, 4
	db 4, 4, 4, 3, 3, 6
	db 4, 5, 4, 5, 2, 4
	db 5, 4, 5, 0, 5, 5
	db 5, 0, 5, 5, 5, 4
	db 4, 5, 5, 0, 5, 5
	db 3, 5, 4, 4, 4, 4
	db 4, 4, 4, 5, 3, 4
	db 5, 2, 5, 5, 5, 2
	db 5, 3, 5, 5, 1, 5
	db 4, 5, 5, 5, 5, 0
	db 5, 1, 2, 6, 5, 5
	db 4, 6, 2, 5, 5, 2

InitialBlockColumnHeights_LineClear:
	db 3, 4, 2, 3, 4, 2
	db 5, 2, 2, 2, 4, 3
	db 3, 4, 5, 5, 4, 3
	db 3, 3, 4, 4, 4, 6
	db 5, 4, 5, 5, 6, 5
	db 5, 3, 3, 4, 3, 3
	db 5, 4, 4, 3, 5, 3
	db 3, 4, 5, 6, 4, 2
	db 4, 3, 5, 6, 3, 6
	db 5, 4, 3, 6, 5, 6
	db 4, 2, 4, 4, 3, 4
	db 5, 3, 5, 4, 3, 4
	db 6, 5, 4, 3, 4, 5
	db 4, 4, 6, 6, 5, 5
	db 7, 6, 4, 5, 5, 6
	db 4, 3, 3, 4, 3, 4
	db 4, 5, 4, 4, 3, 4
	db 4, 5, 6, 1, 6, 5
	db 4, 5, 4, 7, 7, 3
	db 7, 4, 5, 7, 5, 5
	db 7, 5, 7, 3, 6, 5
