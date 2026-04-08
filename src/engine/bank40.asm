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
	call Func_100844
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

Func_10078e:
	ld a, c
	call Func_100844
	ld hl, PokemonData + PKMNSTRUCT_UNK24
	add hl, bc
	ld a, BANK(PokemonData)
	call GetFarByte
	ld c, a
	ret

; loads garbage palette corresponding to a given Pokémon
LoadPokemonGarbagePalette:
	ld a, c
	call Func_100844
	ld hl, PokemonData + PKMNSTRUCT_UNK21
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
	call Func_100844
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
	call Func_93d
	ret
; 0x1007ec

SECTION "Bank 40@4844", ROMX[$4844], BANK[$40]

Func_100844:
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

Func_100854:
	cp $1d
	jr c, .asm_10085a
	ld a, $1c
.asm_10085a
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

Func_10087b:
	ld hl, $5c5a
	ld a, [wcea2]
	call Func_100854
	add hl, bc
	ld a, $40
	call GetFarByte
	inc hl
	ld c, a
	ld a, $40
	call GetFarByte
	inc hl
	ld b, a
	ld a, $40
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
	ld a, [wcea2]
	ld c, a
Func_1008b0:
	ld hl, $5c5d
	ld a, c
	call Func_100854
	add hl, bc
	ld a, $40
	call GetFarByte
	inc hl
	ld c, a
	ld a, $40
	call GetFarByte
	inc hl
	ld b, a
	ld a, $40
	call GetFarByte
	inc hl
	ld l, c
	ld h, b
	ld de, wBackgroundPatternTiles
	ld c, BANK(wBackgroundPatternTiles)
	call Func_93d

	ld a, LOW(wBackgroundPatternTiles)
	ld [wBackgroundPatternTilePtr + 0], a
	ld a, HIGH(wBackgroundPatternTiles)
	ld [wBackgroundPatternTilePtr + 1], a
	ret

Func_1008e1:
	ld hl, $5c6c
	ld a, [wcea2]
	call Func_100854
	add hl, bc
	ld a, [wGameMode]
	call Func_10086d
	add hl, bc
	ld a, $40
	call GetFarByte
	inc hl
	ld c, a
	ld a, $40
	call GetFarByte
	inc hl
	ld b, a
	ld a, $40
	call GetFarByte
	inc hl
	ld l, c
	ld h, b
	inc h
	dec h
	jr z, .asm_100914
	ld de, v1Tiles2 tile $60
	ld c, BANK(v1Tiles2)
	call Func_93d
.asm_100914
	ld hl, $5c6f
	ld a, [wcea2]
	call Func_100854
	add hl, bc
	ld a, [wGameMode]
	call Func_10086d
	add hl, bc
	ld a, $40
	call GetFarByte
	inc hl
	ld c, a
	ld a, $40
	call GetFarByte
	inc hl
	ld b, a
	ld a, $40
	call GetFarByte
	inc hl
	ld l, c
	ld h, b
	inc h
	dec h
	jr z, .asm_100947
	ld de, v0Tiles2 tile $20
	ld c, $01
	call Func_93d
.asm_100947
	ret

Func_100948:
	ld hl, $5c72
	ld a, [wcea2]
	call Func_100854
	add hl, bc
	ld a, [wGameMode]
	call Func_10086d
	add hl, bc
	ld a, $40
	call GetFarByte
	inc hl
	ld c, a
	ld a, $40
	call GetFarByte
	inc hl
	ld b, a
	ld a, $40
	call GetFarByte
	inc hl
	ld l, c
	ld h, b
	inc h
	dec h
	jr z, .asm_10098a
	ld de, w2da80
	ld c, BANK(w2da80)
	call Func_93d
	copy_data_ext v0BGMap1, BANK(v0BGMap1), w2da80, $8, $18, $12
.asm_10098a
	ld hl, $5c75
	ld a, [wcea2]
	call Func_100854
	add hl, bc
	ld a, [wGameMode]
	call Func_10086d
	add hl, bc
	ld a, $40
	call GetFarByte
	inc hl
	ld c, a
	ld a, $40
	call GetFarByte
	inc hl
	ld b, a
	ld a, $40
	call GetFarByte
	inc hl
	ld l, c
	ld h, b
	inc h
	dec h
	jr z, .asm_1009cc
	ld de, w2da80
	ld c, BANK(w2da80)
	call Func_93d
	copy_data_ext v1BGMap1, BANK(v1BGMap1), w2da80, $8, $18, $12
.asm_1009cc
	ret
; 0x1009cd

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
