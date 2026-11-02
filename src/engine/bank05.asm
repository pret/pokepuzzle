SECTION "Bank 05@4294", ROMX[$4294], BANK[$05]

Func_14294::
	ld a, $ac
	ld [wcf13 + 0], a
	ld a, $98
	ld [wcf13 + 1], a
	ldh a, [hJoypadPressed]
	and PAD_A
	jr nz, .asm_142d4
	ldh a, [hffb7]
	and $1f
	cp $00
	jr z, .asm_142b2
	cp $10
	jr z, .Func_142c3
	scf
	ret
.asm_142b2
	ld a, $24 ; tile
	ld [wcf15], a
	ld a, 6 | BG_BANK0 ; attributes
	ld [wcf16], a
	ld a, SHOW_TEXT_TILE
	ld [wPendingTextGfxOperation], a
	scf
	ret
.Func_142c3
	ld a, $20 ; tile
	ld [wcf15], a
	ld a, 6 | BG_BANK0 ; attributes
	ld [wcf16], a
	ld a, SHOW_TEXT_TILE
	ld [wPendingTextGfxOperation], a
	scf
	ret
.asm_142d4
	call .Func_142c3
	ld a, LOW(1)
	ld [wTextDelayTimer + 0], a
	ld a, HIGH(1)
	ld [wTextDelayTimer + 1], a
	and a
	ret
; 0x142e3
