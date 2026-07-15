SECTION "Bank 41@6aea", ROMX[$6aea], BANK[$41]

Func_106aea:
	xor a
	ld [wcefc], a
	ret

Func_106aef::
	ld a, [wcefc]
	and a
	jr z, .asm_106af7
	scf
	ret
.asm_106af7
	and a
	ret
; 0x106af9

SECTION "Bank 41@6b53", ROMX[$6b53], BANK[$41]

Func_106b53::
	ld a, $2a
	call Func_106b59
	ret

Func_106b59:
	ld [wcefd], a
	ld l, a
	ld h, $00
	ld c, l
	ld b, h
	add hl, hl
	add hl, bc
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	ld bc, PokemonData + PKMNSTRUCT_UNK03
	add hl, bc

	ld a, BANK(PokemonData)
	call GetFarByte
	inc hl
	ld [$cf01], a
	ld a, BANK(PokemonData)
	call GetFarByte
	inc hl
	ld [$cf02], a
	ld a, BANK(PokemonData)
	call GetFarByte
	ld [$cf03], a

	ld a, $70
	ld [$cefe], a
	ld a, $8f
	ld [$ceff], a
	ld a, $01
	ld [$cf00], a
	ld a, $30
	ld [$cf04], a
	xor a
	ld [$cf05], a
	xor a
	ld [$cf06], a
	ld [$cf07], a
	ld a, $01
	ld [$cf08], a
	xor a
	ld [$cf09], a
	call Func_106aea
	ld a, LOW(VBlank_106bbd)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_106bbd)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_106bbd)
	ldh [hVBlankTrampolinePtr + 1], a
	ret

VBlank_106bbd:
	ld hl, v0Tiles1 tile $77
	call Func_106c73
	ld a, LOW(VBlank_106bd0)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_106bd0)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_106bd0)
	ldh [hVBlankTrampolinePtr + 1], a
	ret

VBlank_106bd0:
	ld hl, v0Tiles1 tile $7a
	call Func_106c73
	ld a, LOW(VBlank_106be3)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_106be3)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_106be3)
	ldh [hVBlankTrampolinePtr + 1], a
	ret

VBlank_106be3:
	ld hl, v0Tiles1 tile $7d
	call Func_106c73
	ld a, LOW(VBlank_106bf6)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_106bf6)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_106bf6)
	ldh [hVBlankTrampolinePtr + 1], a
	ret

VBlank_106bf6:
	ld a, [wcefd]
	ld e, a
	farcall Func_c722e
	ld a, LOW(VBlank_106c0d)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_106c0d)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_106c0d)
	ldh [hVBlankTrampolinePtr + 1], a
	ret

VBlank_106c0d:
	push hl
	ld hl, $cefe
	call Func_692
	pop hl
	call Func_106c5c
	ld a, LOW(VBlank_106c25)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_106c25)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_106c25)
	ldh [hVBlankTrampolinePtr + 1], a
	ret

VBlank_106c25:
	push hl
	ld hl, $cefe
	call Func_692
	pop hl
	call Func_106c5c
	ld a, LOW(VBlank_106c3d)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_106c3d)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_106c3d)
	ldh [hVBlankTrampolinePtr + 1], a
	ret

VBlank_106c3d:
	push hl
	ld hl, $cefe
	call Func_692
	pop hl
	call Func_106c5c
	ld a, LOW(VBlank_106c55)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_106c55)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_106c55)
	ldh [hVBlankTrampolinePtr + 1], a
	ret

VBlank_106c55:
	call Func_106aea
	xor a
	ldh [hVBlankTrampolinePtr + 1], a
	ret

Func_106c5c:
	ld hl, $cefe
	ld a, [hl]
	add $30
	ld [hli], a
	ld a, [hl]
	adc $00
	ld [hli], a
	ld hl, $cf01
	ld a, [hl]
	add $30
	ld [hli], a
	ld a, [hl]
	adc $00
	ld [hli], a
	ret

Func_106c73:
	ldh a, [hVRAMBank]
	push af
	ld a, $01
	vramswitch
	ld a, $00
	ld d, $00
	ld c, $30 / 2
.loop
	ld [hli], a
	ld [hl], d
	inc hl
	dec c
	jr nz, .loop
	pop af
	vramswitch
	ret
; 0x106c8e
