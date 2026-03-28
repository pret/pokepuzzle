MACRO? bankswitch
	ldh [hROMBank], a
	ld [rROMB0 + $100], a
ENDM

MACRO? enable_sram
	ld a, RAMG_SRAM_ENABLE
	ldh [hSRAMEnabled], a
	ld [rRAMG + $100], a
ENDM

MACRO? disable_sram
	ld a, RAMG_SRAM_DISABLE
	ldh [hSRAMEnabled], a
	ld [rRAMG + $100], a
ENDM

MACRO? sramswitch
	ldh [hSRAMBank], a
	ld [rRAMB + $100], a
ENDM

MACRO? vramswitch
	ldh [hVRAMBank], a
	ldh [rVBK], a
ENDM

MACRO? wramswitch
	ldh [hWRAMBank], a
	ldh [rWBK], a
ENDM

MACRO? farcall
	IF _NARG == 1
		call Farcall
		dab \1
	ELSE
		call Farcall
		dw \1 ; address
		db \2 ; bank
	ENDC
ENDM
