SECTION "Bank 21@40c0", ROMX[$40c0], BANK[$21]

Func_840c0:
	call Func_1939
	ld a, [wc7cf]
	and a
	call nz, Func_84268
	ld a, [wc7e4]
	and a
	call nz, Func_8444a
	ld a, [wc7f9]
	and a
	call nz, Func_84629
	ld a, [wc80f]
	and a
	call nz, Func_847ea
	ret

	ret ; unreferenced?

Func_840e1:
	ld a, [wc7cf]
	cp b
	jr z, .asm_840fa
	ld a, [wc7e4]
	cp b
	jr z, .asm_840fa
	ld a, [wc7f9]
	cp b
	jr z, .asm_840fa
	ld a, [wc80f]
	cp b
	jr z, .asm_840fa
	xor a
.asm_840fa
	ld b, a
	ret
; 0x840fc

SECTION "Bank 21@4173", ROMX[$4173], BANK[$21]

Func_84173:
	ld b, $00
	ld hl, $417f
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	res 0, [hl]
	ret
; 0x8417f

SECTION "Bank 21@4268", ROMX[$4268], BANK[$21]

Func_84268:
	xor a
	ld [wc7cf], a
	ld [wc7d3], a
	call Func_84351
	ld c, $00
	jp Func_84173
; 0x84277

SECTION "Bank 21@4351", ROMX[$4351], BANK[$21]

Func_84351:
	ld a, $08
	ldh [rAUD1ENV], a
	ld a, $80
	ldh [rAUD1HIGH], a
	ret
; 0x8435a

SECTION "Bank 21@444a", ROMX[$444a], BANK[$21]

Func_8444a:
	xor a
	ld [wc7e4], a
	ld [wc7e8], a
	call Func_84530
	ld c, $02
	jp Func_84173
; 0x84459

SECTION "Bank 21@4530", ROMX[$4530], BANK[$21]

Func_84530:
	ld a, $08
	ldh [rAUD2ENV], a
	ld a, $80
	ldh [rAUD2HIGH], a
	ret
; 0x84539

SECTION "Bank 21@4629", ROMX[$4629], BANK[$21]

Func_84629:
	xor a
	ld [wc7f9], a
	ld [wc7fd], a
	call Func_84730
	ld c, $04
	call Func_84173
	jp Func_1462
; 0x8463b

SECTION "Bank 21@4730", ROMX[$4730], BANK[$21]

Func_84730:
	xor a
	ldh [AUD3RAM], a
	ret
; 0x84734

SECTION "Bank 21@47ea", ROMX[$47ea], BANK[$21]

Func_847ea:
	xor a
	ld [wc80f], a
	ld [wc813], a
	call Func_848c0
	ld c, $06
	jp Func_84173
; 0x847f9

SECTION "Bank 21@48c0", ROMX[$48c0], BANK[$21]

Func_848c0:
	ld a, $08
	ldh [rAUD4ENV], a
	ld a, $80
	ldh [rAUD4GO], a
	ret
; 0x848c9
