SECTION "Bank 59@78d5", ROMX[$78d5], BANK[$59]

PtrTable_1678d5:
	dw .Data_1678d5
	dw NULL

.Data_1678d5:
	dwb v0Tiles1 tile $50, $00
	dwb v0Tiles1 tile $51, $00
	dwb v0Tiles1 tile $52, $00
	dwb v0Tiles1 tile $53, $00
	dwb v0Tiles1 tile $54, $00
	dwb v0Tiles1 tile $55, $00
	dwb v0Tiles1 tile $56, $00
	dwb v0Tiles1 tile $57, $00
	dwb v0Tiles1 tile $58, $00
	dab NULL

SECTION "Bank 59@7957", ROMX[$7957], BANK[$59]

Data_167957:
	db $f8
	dab PtrTable_1678d5

	db $f9

	db $f2
	dab .asm_16796f
	dab .asm_16797a
	dab .asm_16797a
	dab .asm_16797a
	dab .asm_16797a
	dab .asm_16797a

.asm_16796f
	db $fd
	db $50
	db $74
	db $35
	db $4f
	db $82
	db $46
	db $4e
	db $26
	db $26
	db $ff

.asm_16797a
	db $fb
	db $13
	db $30
	db $43
	db $30
	db $ff
