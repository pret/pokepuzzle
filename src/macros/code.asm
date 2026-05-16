MACRO? lb ; r, hi, lo
	ld \1, ((\2) & $ff) << 8 | ((\3) & $ff)
ENDM

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

MACRO? farcall_saveregs
	IF _NARG == 1
		call Farcall_SaveRegs
		dab \1
	ELSE
		call Farcall_SaveRegs
		dw \1 ; address
		db \2 ; bank
	ENDC
ENDM

MACRO? copy_data
	call CopyData
	IF _NARG == 3
		dab \1 ; destination
		dab \2 ; source
		dw  \3 ; length
	ELSE
		dwb \1, \2 ; destination
		dwb \3, \4 ; source
		dw  \5 ; length
	ENDC
ENDM

MACRO? safe_copy_data
	call SafeCopyData
	dwb \1, \2 ; destination
	dab \3 ; source
	db  \4 ; length
	db  \5 ; interval
	db  \6 ; iterations
ENDM

; \1 = destination
; \2 = source
; \3 = x
; \4 = y
; \5 = width
; \6 = height
MACRO? copy_box
	call Func_802
	dwb (\1) + (\3) + (\4) * TILEMAP_WIDTH, BANK(\1)
	dab \2
	dw  \5
	dw  TILEMAP_WIDTH - (\5)
	dw  \6 ; height
ENDM

MACRO? func_621
	call Func_621
	dwb \1, \2 ; destination
	dwb \3, \4 ; source
	db  \5 ; ?
	dw  \6 ; length
	dw  \7 ; interval
	dw  \8 ; iterations
ENDM

MACRO? fill_mem
	call Func_58d
	IF _NARG == 2
		db \1 ; num iterations
		db $00
		dw \2 ; length
	ELSE
		db \1 ; num iterations
		db \2 ; interval
		dw \3 ; length
	ENDC
ENDM

MACRO? decompress
	IF _NARG == 2
		call Func_967
		dab \1 ; table
		db  \2
	ELSE
		call Func_967
		dwb \1, \2 ; table
		db  \3
	ENDC
ENDM

MACRO? debug_loop
:
	jr :-
ENDM
