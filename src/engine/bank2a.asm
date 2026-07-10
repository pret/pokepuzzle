SECTION "Bank 2a@4971", ROMX[$4971], BANK[$2a]

Func_a8971:
	farcall Func_10c153
	ld a, $71
	ld [wce36], a
	ld a, $0e
	ld [wce34], a
	ld a, GAMESTATE_1A
	ldh [hGameState], a
	xor a
	ldh [$ffbb], a
	ldh a, [hWRAMBank]
	push af
	ld a, $01
	wramswitch
	xor a
	ld [$ddaa], a
	ld [wce3b], a
	pop af
	wramswitch
	ret
; 0xa899e

SECTION "Bank 2a@4a2e", ROMX[$4a2e], BANK[$2a]

Func_a8a2e:
	call Func_2e1c
	ld a, $01
	ld [$ce8c], a
	ld [$ce8e], a
	ld [$ce8d], a
	ld a, $06
	call Func_13a1
	xor a
	ldh [$ffbb], a
	ret

Func_a8a45:
	ld a, $0e
	ld [wce34], a
	ld a, GAMESTATE_1A
	ldh [hGameState], a
	xor a
	ldh [$ffbb], a
	ldh a, [hWRAMBank]
	push af
	ld a, $01
	wramswitch
	ld a, $01
	ld [$ded2], a
	ld a, [$dd9c]
	cp $03
	jr z, .asm_a8a85
	ld a, $7e
	ld [wce36], a
	ld a, [wStage]
	and $0f
	ld [$ddfd], a
	ld [$ddf3], a
	ld a, [wStage]
	and $f0
	swap a
	ld [$ddfc], a
	ld [$ddef], a
	jr .asm_a8aad
.asm_a8a85
	ld a, $91
	ld [wce36], a
	ld a, [wcead]
	and a
	jr nz, .asm_a8a96
	ld a, [wStage]
	ld b, a
	jr .asm_a8a9a
.asm_a8a96
	ld a, [wc833]
	ld b, a
.asm_a8a9a
	and $0f
	ld [$ddfd], a
	ld [$ddf3], a
	ld a, b
	and $f0
	swap a
	ld [$ddfc], a
	ld [$ddef], a
.asm_a8aad
	pop af
	wramswitch
	ret
; 0xa8ab3

SECTION "Bank 2a@4b11", ROMX[$4b11], BANK[$2a]

Func_a8b11:
	farcall Func_6b038
	ld a, b
	and a
	jr nz, .asm_a8b6a
	xor a
	ld [$defc], a
	ld a, $2f
	ld [wce36], a
	ld a, $0e
	ld [wce34], a
	ld a, GAMESTATE_1A
	ldh [hGameState], a
	xor a
	ldh [$ffbb], a
	ldh a, [hWRAMBank]
	push af
	ld a, $01
	wramswitch
	ld a, $01
	ld [$dd93], a
	xor a
	ld [$dd87], a
	inc a
	ld [$dd88], a
	ld hl, $dd95
	dec [hl]
	xor a
	ld [$dd92], a
	ld [$dd90], a
	ld a, $01
	ld [$dd93], a
	ld a, $77
	ld [$ddae], a
	ld a, $20
	ld [$ddaf], a
	xor a
	ld [$ddaa], a
	pop af
	wramswitch
	ret
.asm_a8b6a
	call Func_a8971
	ret
; 0xa8b6e
