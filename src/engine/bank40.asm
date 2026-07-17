SECTION "Bank 40@4497", ROMX[$4497], BANK[$40]

Func_100497:
	ldh a, [hWRAMBank]
	push af
	ld a, $00
	wramswitch
	ld a, c
	call GetPokemonDataStruct
	ld hl, PokemonData + (PKMNSTRUCT_PALETTE + 2)
	add hl, bc
	ld a, BANK(PokemonData)
	call GetFarByte
	dec hl
	ld b, a
	ld a, BANK(PokemonData)
	call GetFarByte
	dec hl
	ld c, a
	ld a, BANK(PokemonData)
	call GetFarByte
	dec hl

	ld l, a
	ld h, c

	REPT 1 palettes
		ld a, b
		call GetFarByte
		inc hl
		ld [de], a
		inc de
	ENDR

	pop af
	wramswitch
	ret
; 0x1004fc

SECTION "Bank 40@4561", ROMX[$4561], BANK[$40]

; converts a into a playable Pokémon constant
Func_100561:
	push bc
	push hl
	ld l, a
	ld h, $00
	ld bc, Data_102eed
	add hl, bc
	ld a, BANK(Data_102eed)
	call GetFarByte
	pop hl
	pop bc
	ret
; 0x100572

SECTION "Bank 40@458a", ROMX[$458a], BANK[$40]

Func_10058a:
	push bc
	push hl
	ld l, a
	ld h, $00
	ld c, l
	ld b, h
	add hl, hl
	add hl, hl
	add hl, bc
	add hl, hl
	add hl, bc ; *11
	ld bc, Data_102e07
	add hl, bc
	ld a, BANK(Data_102e07)
	call GetFarByte
	pop hl
	pop bc
	ret
; 0x1005a2

SECTION "Bank 40@4680", ROMX[$4680], BANK[$40]

Func_100680:
	push bc
	push hl
	ld l, c
	ld h, $00
	add hl, hl ; *2
	ld bc, Data_102efa + $1
	add hl, bc
	ld a, BANK(Data_102efa)
	call GetFarByte
	pop hl
	pop bc
	ld c, a
	ret
; 0x100693

SECTION "Bank 40@46a6", ROMX[$46a6], BANK[$40]

Func_1006a6:
	push bc
	push hl
	ld l, c
	ld h, $00
	add hl, hl ; *2
	ld bc, Data_102f0a + $1
	add hl, bc
	ld a, BANK(Data_102f0a)
	call GetFarByte
	pop hl
	pop bc
	ld c, a
	ret
; 0x1006b9

SECTION "Bank 40@46cc", ROMX[$46cc], BANK[$40]

Func_1006cc:
	push bc
	push hl
	ld l, c
	ld h, $00
	add hl, hl ; *2
	ld bc, Data_102f1a + $1
	add hl, bc
	ld a, BANK(Data_102f1a)
	call GetFarByte
	pop hl
	pop bc
	ld c, a
	ret
; 0x1006df

SECTION "Bank 40@46f2", ROMX[$46f2], BANK[$40]

Func_1006f2:
	push bc
	push hl
	ld l, c
	ld h, $00
	add hl, hl ; *2
	ld bc, Data_102f28 + $1
	add hl, bc
	ld a, BANK(Data_102f28)
	call GetFarByte
	pop hl
	pop bc
	ld c, a
	ret
; 0x100705

SECTION "Bank 40@472d", ROMX[$472d], BANK[$40]

Func_10072d:
	ld a, b
	cp $02
	jr z, .asm_100738
	cp $03
	jr z, .asm_100746
	debug_loop
.asm_100738
	; d == 0?
	inc d
	dec d
	jr nz, .asm_100741
	call Func_100680
	jr .got_mon
.asm_100741
	call Func_1006a6
	jr .got_mon
.asm_100746
	; d == 0?
	inc d
	dec d
	jr nz, .asm_10074f
	call Func_1006cc
	jr .got_mon
.asm_10074f
	call Func_1006f2
	jr .got_mon
.got_mon
	ret
; 0x100755

SECTION "Bank 40@4774", ROMX[$4774], BANK[$40]

Func_100774:
	ld a, c
	call GetPokemonDataStruct
	ld hl, PokemonData + PKMNSTRUCT_UNK25
	add hl, bc
	ld a, BANK(PokemonData)
	call GetFarByte
	ld [wc8a0], a
	inc hl
	ld a, BANK(PokemonData)
	call GetFarByte
	ld [wc8a1], a
	ret

GetPokemonBoard:
	ld a, c
	call GetPokemonDataStruct
	ld hl, PokemonData + PKMNSTRUCT_BOARD
	add hl, bc
	ld a, BANK(PokemonData)
	call GetFarByte
	ld c, a
	ret

; loads garbage palette corresponding to a given Pokémon
LoadPokemonGarbagePalette:
	ld a, c
	call GetPokemonDataStruct
	ld hl, PokemonData + PKMNSTRUCT_GARBAGE_PALETTE
	add hl, bc
	ld a, BANK(PokemonData)
	call GetFarByte
	inc hl
	ld e, a
	ld a, BANK(PokemonData)
	call GetFarByte
	inc hl
	ld d, a
	ld a, BANK(PokemonData)
	call GetFarByte
	inc hl
	ld l, e
	ld h, d
	ld de, wBGPals palette 4
	ld bc, 1 palettes
	call FarCopyHLtoDE
	ret

; loads garbage gfx corresponding to a given Pokémon
LoadPokemonGarbageGfx:
	ld a, c
	call GetPokemonDataStruct
	ld hl, PokemonData + PKMNSTRUCT_GARBAGE_GFX
	add hl, bc
	ld a, BANK(PokemonData)
	call GetFarByte
	inc hl
	ld e, a
	ld a, BANK(PokemonData)
	call GetFarByte
	inc hl
	ld d, a
	ld a, BANK(PokemonData)
	call GetFarByte
	inc hl
	ld l, e
	ld h, d
	ld de, v1Tiles2
	ld c, BANK(v1Tiles2)
	call Decompress
	ret
; 0x1007ec

SECTION "Bank 40@4844", ROMX[$4844], BANK[$40]

GetPokemonDataStruct:
	push hl
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
	ld c, l
	ld b, h
	pop hl
	ret

; input:
; - a = BOARD_* constant
GetBoardStruct:
	cp NUM_BOARDS
	jr c, .valid_board
	ld a, NUM_BOARDS - 1
.valid_board
	push hl
	ld l, a
	ld h, $00
	ld c, l
	ld b, h
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, bc
	add hl, hl
	add hl, hl
	add hl, bc
	add hl, hl ; *138
	ld c, l
	ld b, h
	pop hl
	ret

Func_10086d:
	push hl
	ld l, a
	ld h, $00
	ld c, l
	ld b, h
	add hl, hl
	add hl, bc
	add hl, hl
	add hl, hl ; *12
	ld c, l
	ld b, h
	pop hl
	ret

LoadBoardPalettes:
	ld hl, Boards + BOARDSTRUCT_PALETTES
	ld a, [wBoard]
	call GetBoardStruct
	add hl, bc
	ld a, BANK(Boards)
	call GetFarByte
	inc hl
	ld c, a
	ld a, BANK(Boards)
	call GetFarByte
	inc hl
	ld b, a
	ld a, BANK(Boards)
	call GetFarByte
	inc hl
	ld l, c
	ld h, b
	ld b, a
	ld de, wBGPals palette 6
	ld c, 2 palettes
.loop_copy
	ld a, b
	call GetFarByte
	inc hl
	ld [de], a
	inc de
	dec c
	jr nz, .loop_copy
	ret

Func_1008ac:
	ld a, [wBoard]
	ld c, a
Func_1008b0:
	ld hl, Boards + BOARDSTRUCT_BG_PATTERN_GFX
	ld a, c
	call GetBoardStruct
	add hl, bc
	ld a, BANK(Boards)
	call GetFarByte
	inc hl
	ld c, a
	ld a, BANK(Boards)
	call GetFarByte
	inc hl
	ld b, a
	ld a, BANK(Boards)
	call GetFarByte
	inc hl
	ld l, c
	ld h, b
	ld de, wBackgroundPatternTiles
	ld c, BANK(wBackgroundPatternTiles)
	call Decompress

	ld a, LOW(wBackgroundPatternTiles)
	ld [wBackgroundPatternTilePtr + 0], a
	ld a, HIGH(wBackgroundPatternTiles)
	ld [wBackgroundPatternTilePtr + 1], a
	ret

Func_1008e1:
	ld hl, Boards + BOARDSTRUCT_GAME_MODES + BOARDGAMEMODESTRUCT_UNK0
	ld a, [wBoard]
	call GetBoardStruct
	add hl, bc
	ld a, [wGameMode]
	call Func_10086d
	add hl, bc
	ld a, BANK(Boards)
	call GetFarByte
	inc hl
	ld c, a
	ld a, BANK(Boards)
	call GetFarByte
	inc hl
	ld b, a
	ld a, BANK(Boards)
	call GetFarByte
	inc hl
	ld l, c
	ld h, b
	inc h
	dec h
	jr z, .asm_100914
	ld de, v1Tiles2 tile $60
	ld c, BANK(v1Tiles2)
	call Decompress
.asm_100914
	ld hl, Boards + BOARDSTRUCT_GAME_MODES + BOARDGAMEMODESTRUCT_UNK3
	ld a, [wBoard]
	call GetBoardStruct
	add hl, bc
	ld a, [wGameMode]
	call Func_10086d
	add hl, bc
	ld a, BANK(Boards)
	call GetFarByte
	inc hl
	ld c, a
	ld a, BANK(Boards)
	call GetFarByte
	inc hl
	ld b, a
	ld a, BANK(Boards)
	call GetFarByte
	inc hl
	ld l, c
	ld h, b
	inc h
	dec h
	jr z, .asm_100947
	ld de, v1Tiles2 tile $20
	ld c, BANK(v1Tiles2)
	call Decompress
.asm_100947
	ret

Func_100948:
	ld hl, Boards + BOARDSTRUCT_GAME_MODES + BOARDGAMEMODESTRUCT_UNK6
	ld a, [wBoard]
	call GetBoardStruct
	add hl, bc
	ld a, [wGameMode]
	call Func_10086d
	add hl, bc
	ld a, BANK(Boards)
	call GetFarByte
	inc hl
	ld c, a
	ld a, BANK(Boards)
	call GetFarByte
	inc hl
	ld b, a
	ld a, BANK(Boards)
	call GetFarByte
	inc hl
	ld l, c
	ld h, b
	inc h
	dec h
	jr z, .asm_10098a
	ld de, w2da80
	ld c, BANK(w2da80)
	call Decompress
	copy_box v0BGMap1, w2da80, 0, 0, PUZZLE_HUD_WIDTH, PUZZLE_HUD_HEIGHT
.asm_10098a
	ld hl, Boards + BOARDSTRUCT_GAME_MODES + BOARDGAMEMODESTRUCT_UNK9
	ld a, [wBoard]
	call GetBoardStruct
	add hl, bc
	ld a, [wGameMode]
	call Func_10086d
	add hl, bc
	ld a, BANK(Boards)
	call GetFarByte
	inc hl
	ld c, a
	ld a, BANK(Boards)
	call GetFarByte
	inc hl
	ld b, a
	ld a, BANK(Boards)
	call GetFarByte
	inc hl
	ld l, c
	ld h, b
	inc h
	dec h
	jr z, .asm_1009cc
	ld de, w2da80
	ld c, BANK(w2da80)
	call Decompress
	copy_box v1BGMap1, w2da80, 0, 0, PUZZLE_HUD_WIDTH, PUZZLE_HUD_HEIGHT
.asm_1009cc
	ret
; 0x1009cd

SECTION "Bank 40@4fa5", ROMX[$4fa5], BANK[$40]

Func_100fa5:
	push bc
	ld c, a
	ldh a, [hWRAMBank]
	push af
	ld a, $01
	wramswitch
	ld a, c
	ld c, $00
	call Func_100fbd
	pop af
	wramswitch
	pop bc
	ret

Func_100fbd:
	cp $02
	jp z, Func_100feb
	cp $03
	jp z, Func_101001
	cp $00
	jp z, Func_101017
	cp $0d
	jp z, Func_10102d
	cp $0e
	jp z, Func_101043
	cp $0f
	jp z, Func_101059
	cp $0c
	jp z, Func_10106f
	cp $11
	jp z, Func_101085
	cp $08
	jp z, Func_10109b
	ret

Func_100feb:
	ld a, c
	push af
	rrca
	jr nc, .asm_100ff7
	ld a, [$deeb]
	set 2, a
	jr .asm_100ffc
.asm_100ff7
	ld a, [$deeb]
	res 2, a
.asm_100ffc
	ld [$deeb], a
	pop af
	ret

Func_101001:
	ld a, c
	push af
	rrca
	jr nc, .asm_10100d
	ld a, [$deeb]
	set 3, a
	jr .asm_101012
.asm_10100d
	ld a, [$deeb]
	res 3, a
.asm_101012
	ld [$deeb], a
	pop af
	ret

Func_101017:
	ld a, c
	push af
	rrca
	jr nc, .asm_101023
	ld a, [$deeb]
	set 4, a
	jr .asm_101028
.asm_101023
	ld a, [$deeb]
	res 4, a
.asm_101028
	ld [$deeb], a
	pop af
	ret

Func_10102d:
	ld a, c
	push af
	rrca
	jr nc, .asm_101039
	ld a, [$deea]
	set 0, a
	jr .asm_10103e
.asm_101039
	ld a, [$deea]
	res 0, a
.asm_10103e
	ld [$deea], a
	pop af
	ret

Func_101043:
	ld a, c
	push af
	rrca
	jr nc, .asm_10104f
	ld a, [$deea]
	set 1, a
	jr .asm_101054
.asm_10104f
	ld a, [$deea]
	res 1, a
.asm_101054
	ld [$deea], a
	pop af
	ret

Func_101059:
	ld a, c
	push af
	rrca
	jr nc, .asm_101065
	ld a, [$deea]
	set 2, a
	jr .asm_10106a
.asm_101065
	ld a, [$deea]
	res 2, a
.asm_10106a
	ld [$deea], a
	pop af
	ret

Func_10106f:
	ld a, c
	push af
	rrca
	jr nc, .asm_10107b
	ld a, [$deea]
	set 3, a
	jr .asm_101080
.asm_10107b
	ld a, [$deea]
	res 3, a
.asm_101080
	ld [$deea], a
	pop af
	ret

Func_101085:
	ld a, c
	push af
	rrca
	jr nc, .asm_101091
	ld a, [$deea]
	set 4, a
	jr .asm_101096
.asm_101091
	ld a, [$deea]
	res 4, a
.asm_101096
	ld [$deea], a
	pop af
	ret

Func_10109b:
	ld a, c
	push af
	rrca
	jr nc, .asm_1010a7
	ld a, [$deea]
	set 5, a
	jr .asm_1010ac
.asm_1010a7
	ld a, [$deea]
	res 5, a
.asm_1010ac
	ld [$deea], a
	pop af
	ret

Func_1010b1:
	push bc
	ld c, a
	ldh a, [hWRAMBank]
	push af
	ld a, $01
	wramswitch
	ld a, c
	call Func_1010c9
	ld c, a
	pop af
	wramswitch
	ld a, c
	pop bc
	ret

Func_1010c9:
	cp $02
	jp z, Func_1010f9
	cp $03
	jp z, Func_1010ff
	cp $00
	jp z, Func_101105
	cp $0d
	jp z, Func_10110b
	cp $0e
	jp z, Func_101111
	cp $0f
	jp z, Func_101117
	cp $0c
	jp z, Func_10111d
	cp $11
	jp z, Func_101123
	cp $08
	jp z, Func_101129
	ld a, $01
	ret

Func_1010f9:
	ld a, [$deeb]
	and $04
	ret

Func_1010ff:
	ld a, [$deeb]
	and $08
	ret

Func_101105:
	ld a, [$deeb]
	and $10
	ret

Func_10110b:
	ld a, [$deea]
	and $01
	ret

Func_101111:
	ld a, [$deea]
	and $02
	ret

Func_101117:
	ld a, [$deea]
	and $04
	ret

Func_10111d:
	ld a, [$deea]
	and $08
	ret

Func_101123:
	ld a, [$deea]
	and $10
	ret

Func_101129:
	ld a, [$deea]
	and $20
	ret

Func_10112f:
	ld c, $00
	ld a, $02
	call Func_101160
	ld a, $03
	call Func_101160
	ld a, $00
	call Func_101160
	ld a, $0d
	call Func_101160
	ld a, $0e
	call Func_101160
	ld a, $0f
	call Func_101160
	ld a, $0c
	call Func_101160
	ld a, $11
	call Func_101160
	ld a, $08
	call Func_101160
	ld a, c
	ret

Func_101160:
	call Func_1010b1
	and a
	jr z, .asm_101167
	inc c
.asm_101167
	ret
; 0x101168

SECTION "Bank 40@530e", ROMX[$530e], BANK[$40]

Func_10130e:
	cp STAGE_15
	jr z, .asm_101327
	cp STAGE_16
	jr z, .asm_101327
	cp STAGE_17
	jr z, .asm_101327
	cp STAGE_18
	jr z, .asm_101327
	cp STAGE_19
	jr z, .asm_101327
	cp STAGE_20
	jr z, .asm_101327
	ret
.asm_101327
	ld a, $08
	ret

INCLUDE "data/pokemon.asm"
; 0x10180a

SECTION "Bank 40@5c5a", ROMX[$5c5a], BANK[$40]

INCLUDE "data/boards.asm"

SECTION "Bank 40@6e07", ROMX[$6e07], BANK[$40]

Data_102e07:
	db CYNDAQUIL, $48, $4d, $0b, $c3, $7b, $0b, $fd, $59, $2f, $1b
	db PIDGEY,    $a4, $4e, $0b, $d3, $7b, $0b, $37, $5a, $2f, $1c ; STAGE_01
	db KAKUNA,    $e5, $4f, $0b, $e3, $7b, $0b, $6d, $5a, $2f, $1d ; STAGE_02
	db CLEFAIRY,  $46, $51, $0b, $f3, $7b, $0b, $aa, $5a, $2f, $1e ; STAGE_03
	db GASTLY,    $c2, $52, $0b, $03, $7c, $0b, $e7, $5a, $2f, $20 ; STAGE_04
	db STEELIX,   $8f, $55, $0b, $23, $7c, $0b, $61, $5b, $2f, $1f ; STAGE_05
	db PRIMEAPE,  $15, $54, $0b, $13, $7c, $0b, $24, $5b, $2f, $21 ; STAGE_06
	db SEEL,      $f6, $56, $0b, $33, $7c, $0b, $9a, $5b, $2f, $22 ; STAGE_07
	db DRAGONAIR, $30, $58, $0b, $43, $7c, $0b, $d7, $5b, $2f, $23 ; STAGE_08
	db JYNX,      $7d, $59, $0b, $53, $7c, $0b, $14, $5c, $2f, $24 ; STAGE_09
	db CROBAT,    $48, $4d, $0b, $c3, $7b, $0b, $fd, $59, $2f, $25 ; STAGE_10
	db HITMONTOP, $48, $4d, $0b, $c3, $7b, $0b, $fd, $59, $2f, $26 ; STAGE_11
	db MURKROW,   $48, $4d, $0b, $c3, $7b, $0b, $fd, $59, $2f, $27 ; STAGE_12
	db DRAGONITE, $48, $4d, $0b, $c3, $7b, $0b, $fd, $59, $2f, $28 ; STAGE_13

SECTION "Bank 40@6eed", ROMX[$6eed], BANK[$40]

Data_102eed:
	db CHIKORITA
	db CYNDAQUIL
	db TOTODILE
	db MARILL
	db PIKACHU
	db TOGEPI
	db SENTRET
	db BELLOSSOM
	db PICHU
	db IGGLYBUFF
	db ELEKID
	db CLEFFA
	db MAGBY

Data_102efa:
	db $1b, PIDGEY
	db $1c, KAKUNA
	db $1d, CLEFAIRY
	db $20, STEELIX
	db $1f, PRIMEAPE
	db $21, SEEL
	db $22, DRAGONAIR
	db $1e, GASTLY

Data_102f0a:
	db $1b, PIDGEY
	db $1c, KAKUNA
	db $1d, CLEFAIRY
	db $20, STEELIX
	db $1f, PRIMEAPE
	db $21, SEEL
	db $22, DRAGONAIR
	db $1e, GASTLY

Data_102f1a:
	db $29, CHIKORITA
	db $29, CYNDAQUIL
	db $29, TOGEPI
	db $29, PIKACHU
	db $29, TOTODILE
	db $29, IGGLYBUFF
	db $29, ELEKID

Data_102f28:
	db $29, BELLOSSOM
	db $29, MAGBY
	db $29, SENTRET
	db $29, PICHU
	db $29, MARILL
	db $29, CLEFFA
	db $29, PIKACHU
