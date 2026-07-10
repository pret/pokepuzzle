SECTION "Bank 2e@4083", ROMX[$4083], BANK[$2e]

Func_b8083:
	ret
; 0xb8084

SECTION "Bank 2e@4085", ROMX[$4085], BANK[$2e]

Func_b8085:
	ldh a, [hWRAMBank]
	push af
	ld a, $01
	wramswitch
	ld a, [$ddb6]
	cp $04
	jr z, .asm_b80a4
	ld a, [$df04]
	farcall_saveregs Func_100561
	farcall_saveregs Func_100fa5
.asm_b80a4
	pop af
	wramswitch
	ret
; 0xb80aa
