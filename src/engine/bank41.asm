SECTION "Bank 41@6aea", ROMX[$6aea], BANK[$41]

Func_106aea:
	xor a
	ld [wcefc], a
	ret

Func_106aef::
	ld a, [wcefc]
	and a
	jr z, .no_carry
	scf
	ret
.no_carry
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
	ld [wCopySource + 0], a
	ld a, BANK(PokemonData)
	call GetFarByte
	inc hl
	ld [wCopySource + 1], a
	ld a, BANK(PokemonData)
	call GetFarByte
	ld [wCopySourceBank], a
	ld a, LOW(v1Tiles1 tile $77)
	ld [wCopyDest + 0], a
	ld a, HIGH(v1Tiles1 tile $77)
	ld [wCopyDest + 1], a
	ld a, BANK(v1Tiles1)
	ld [wCopyDestBank], a
	ld a, 3 tiles
	ld [wCopyLen + 0], a
	xor a
	ld [wCopyLen + 1], a
	xor a
	ld [wCopyInterval + 0], a
	ld [wCopyInterval + 1], a
	ld a, 1
	ld [wCopyIterations + 0], a
	xor a
	ld [wCopyIterations + 1], a

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
	ld hl, wCopyDest
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
	ld hl, wCopyDest
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
	ld hl, wCopyDest
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
	ld hl, wCopyDest
	ld a, [hl]
	add LOW(3 tiles)
	ld [hli], a
	ld a, [hl]
	adc HIGH(3 tiles)
	ld [hli], a
	ld hl, wCopySource
	ld a, [hl]
	add LOW(3 tiles)
	ld [hli], a
	ld a, [hl]
	adc HIGH(3 tiles)
	ld [hli], a
	ret

Func_106c73:
	ldh a, [hVRAMBank]
	push af
	ld a, BANK("VRAM1")
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
