SECTION "Bank 40@530e", ROMX[$530e], BANK[$40]

Func_10130e:
	cp $0f
	jr z, .asm_101327
	cp $10
	jr z, .asm_101327
	cp $11
	jr z, .asm_101327
	cp $12
	jr z, .asm_101327
	cp $13
	jr z, .asm_101327
	cp $14
	jr z, .asm_101327
	ret
.asm_101327
	ld a, $08
	ret
; 0x10132a
