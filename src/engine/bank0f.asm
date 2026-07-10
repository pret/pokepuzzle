SECTION "Bank F@5775", ROMX[$5775], BANK[$0f]

Func_3d775:
	ld a, $17
	ld [wce34], a
	ld a, GAMESTATE_1A
	ldh [hGameState], a
	xor a
	ldh [$ffbb], a
	ret
; 0x3d782

