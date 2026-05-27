SETCHARMAP ascii

SECTION "Bank 1a@4a0f", ROMX[$4a0f], BANK[$1a]

Func_68a0f:
	push bc
	call Func_1f38
	ld a, [hl]
	and $f0
	swap a
	add a
	ld c, a
	add a
	add a
	add c
	ld c, a
	call Func_1f38
	ld a, [hl]
	and $0f
	add c
	ld c, a
	ld a, [wcead]
	and a
	ld a, c
	jr nz, .asm_68a31
	add $00
	jr .asm_68a33
.asm_68a31
	add $3f
.asm_68a33
	ldh [hff8a], a
	pop bc
	ret

Func_68a37:
	ldh a, [hff8a]
	ld l, a
	ld h, $00
	add hl, hl
	ld c, l
	ld b, h
	ld hl, $4000
	add hl, bc
	ld a, [hli]
	ld c, a
	ld a, [hl]
	and $1f
	ld b, a
	ld a, [hl]
	and $e0
	swap a
	ld e, a
	ld d, $00
	xor a
	ldh [hff8c], a
	ld a, $08
	ldh [hff8d], a
	ld hl, $4000
	add hl, bc
	push hl
	ld hl, $4aa7
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl
; 0x68a65

SECTION "Bank 1a@4b26", ROMX[$4b26], BANK[$1a]

Func_68b26:
	push bc
	ldh a, [hff8a]
	ld c, a
	ld b, $00
	ld hl, $4895
	add hl, bc
	ld a, [hl]
	ld [wc8dc], a
	xor a
	ld [wc8da], a
	ld [wc8db], a
	pop bc
	ret

Func_68b3d:
	push bc
	ldh a, [hff8a]
	add a
	ld c, a
	ld b, $00
	ld hl, $4913
	add hl, bc
	ld a, [hli]
	ld [wc8dd], a
	ld a, [hl]
	ld [wc8de], a
	pop bc
	ret

Func_68b52:
	ldh a, [hWRAMBank]
	push af
	ld a, $02
	wramswitch

	ld bc, w2d000
	ld de, $0000
.asm_68b61
	call .GetColors
	ld hl, $d180
	call .Func_68c53
	jr c, .asm_68b61

	ld bc, w2d0c0
	ld de, $0000
.asm_68b72
	call .GetColors
	ld hl, $d480
	call .Func_68c53
	jr c, .asm_68b72

	ld de, $0000
.asm_68b80
	ld hl, $d480
	add hl, de
	ld a, [hli]
	ldh [hff8a], a
	ld a, [hli]
	ldh [hff8b], a
	ld a, [hli]
	ldh [hff8c], a
	ld a, [hli]
	ldh [hff8d], a
	ld a, [hli]
	ldh [hff8e], a
	ld a, [hl]
	ldh [hff8f], a
	ld hl, $d180
	add hl, de
	ldh a, [hff8a]
	sub [hl]
	ld c, a
	inc hl
	ldh a, [hff8b]
	sbc [hl]
	ld b, a
	inc hl
	REPT 5
		sra b
		rr c
	ENDR
	ld a, c
	ldh [hff8a], a
	ld a, b
	ldh [hff8b], a

	ldh a, [hff8c]
	sub [hl]
	ld c, a
	inc hl
	ldh a, [hff8d]
	sbc [hl]
	ld b, a
	inc hl
	REPT 5
		sra b
		rr c
	ENDR
	ld a, c
	ldh [hff8c], a
	ld a, b
	ldh [hff8d], a

	ldh a, [hff8e]
	sub [hl]
	ld c, a
	inc hl
	ldh a, [hff8f]
	sbc [hl]
	ld b, a
	inc hl
	REPT 5
		sra b
		rr c
	ENDR
	ld a, c
	ldh [hff8e], a
	ld a, b
	ldh [hff8f], a

	ld hl, $d780
	add hl, de
	ldh a, [hff8a]
	ld [hli], a
	ldh a, [hff8b]
	ld [hli], a
	ldh a, [hff8c]
	ld [hli], a
	ldh a, [hff8d]
	ld [hli], a
	ldh a, [hff8e]
	ld [hli], a
	ldh a, [hff8f]
	ld [hl], a
	ld hl, $8
	add hl, de
	ld d, h
	ld e, l
	ld a, e
	sub $00
	ld a, d
	sbc $03
	; carry set if de < $300
	jp c, .asm_68b80
	pop af
	wramswitch
	ret

; gets color values in bc:
; - [hff8a] = red
; - [hff8b] = green
; - [hff8c] = blue
.GetColors:
	ld a, [bc]
	and COLOR_RED
	ldh [hff8a], a ; red
	ld a, [bc]
	inc bc
	and COLOR_GREEN_LOW
	swap a
	sra a
	ld l, a
	ld a, [bc]
	and COLOR_GREEN_HIGH
	add a
	add a
	add a
	or l
	ldh [hff8b], a ; green
	ld a, [bc]
	inc bc
	and COLOR_BLUE
	sra a
	sra a
	ldh [hff8c], a ; blue
	ret

.Func_68c53:
	add hl, de
	xor a
	ld [hli], a
	ldh a, [hff8a] ; red
	ld [hli], a
	xor a
	ld [hli], a
	ldh a, [hff8b] ; green
	ld [hli], a
	xor a
	ld [hli], a
	ldh a, [hff8c] ; blue
	ld [hli], a
	xor a
	ld [hli], a
	ld [hl], a
	ld hl, $8
	add hl, de
	ld d, h
	ld e, l
	ld a, e
	sub $00
	ld a, d
	sbc $03
	; carry set if de < $300
	ret

Func_68c73::
	ldh a, [hWRAMBank]
	push af
	ld a, $02
	wramswitch
	ld hl, $d780
	add hl, de
	ld a, [hli]
	ldh [hff8a], a
	ld a, [hli]
	ldh [hff8b], a
	ld a, [hli]
	ldh [hff8c], a
	ld a, [hli]
	ldh [hff8d], a
	ld a, [hli]
	ldh [hff8e], a
	ld a, [hl]
	ldh [hff8f], a
	ld hl, $d480
	add hl, de
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ld hl, $d180
	add hl, de
	ldh a, [hff8a]
	add [hl]
	ld [hli], a
	ldh a, [hff8b]
	adc [hl]
	ld [hld], a
	ld a, [hli]
	sub c
	ld a, [hl]
	sbc b
	jr c, .asm_68caf
	ld a, b
	ld [hld], a
	ld a, c
	ld [hli], a
.asm_68caf
	ld b, d
	ld c, e
	sra b
	rr c
	sra b
	rr c
	ld a, [hl]
	ld hl, $d000
	add hl, bc
	ld c, a
	ld a, [hl]
	and $e0
	or c
	ld [hl], a
	ld hl, $d482
	add hl, de
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ld hl, $d182
	add hl, de
	ldh a, [hff8c]
	add [hl]
	ld [hli], a
	ldh a, [hff8d]
	adc [hl]
	ld [hld], a
	ld a, [hli]
	sub c
	ld a, [hl]
	sbc b
	jr c, .asm_68ce1
	ld a, b
	ld [hld], a
	ld a, c
	ld [hli], a
.asm_68ce1
	ld b, d
	ld c, e
	sra b
	rr c
	sra b
	rr c
	ld a, [hl]
	ld hl, $d000
	add hl, bc
	ld b, a
	and $07
	swap a
	add a
	ld c, a
	ld a, [hl]
	and $1f
	or c
	ld [hli], a
	ld a, b
	and $18
	rra
	rra
	rra
	ld c, a
	ld a, [hl]
	and $fc
	or c
	ld [hl], a
	ld hl, $d484
	add hl, de
	ld a, [hli]
	ld b, [hl]
	ld c, a
	ld hl, $d184
	add hl, de
	ldh a, [hff8e]
	add [hl]
	ld [hli], a
	ldh a, [hff8f]
	adc [hl]
	ld [hld], a
	ld a, [hli]
	sub c
	ld a, [hl]
	sbc b
	jr c, .asm_68d25
	ld a, b
	ld [hld], a
	ld a, c
	ld [hli], a
.asm_68d25
	ld b, d
	ld c, e
	sra b
	rr c
	sra b
	rr c
	ld a, [hl]
	ld hl, $d001
	add hl, bc
	add a
	add a
	ld c, a
	ld a, [hl]
	and $83
	or c
	ld [hl], a
	pop af
	wramswitch
	ret
; 0x68d42

SECTION "Bank 1a@4ebb", ROMX[$4ebb], BANK[$1a]

Func_68ebb:
	xor a
	ld [wcdad + 0], a
	ld [wcdad + 1], a
	ld [wcdaf], a
	ld [wcdb0], a
	ld [wcdb1], a
	ld [wcdb2], a
	ld [wcdb3], a
	ld [wcdb4], a
	ld [wcdb5], a
	ld [wcdb6], a
	ld [wcdb7], a
	ld [wcdb8], a
	ld [wcdb9], a
	ld [wcdba], a
	ld [wcdbb], a
	ld [wcdbc], a
	ld [wcdbd], a
	ld [wcdbe], a
	ld [wcdbf], a
	ld [wcdc0], a
	ret

INCLUDE "data/random_table.asm"

SECTION "Bank 1a@5a7d", ROMX[$5a7d], BANK[$1a]

Func_69a7d:
	xor a
	ldh [hff8e], a
	ldh [hff8f], a
	ldh [hff90], a
	ldh [hff91], a
	ldh [hff94], a
	ldh [hff95], a
	ldh [hff96], a
	ldh [hff97], a
	ld a, b
	or c
	or d
	or e
.asm_69a92
	jr z, .asm_69a92
	ld a, $20
.asm_69a96
	push af
	ldh a, [hff8a]
	sla a
	ldh [hff8a], a
	ldh a, [hff8b]
	rla
	ldh [hff8b], a
	ldh a, [hff8c]
	rla
	ldh [hff8c], a
	ldh a, [hff8d]
	rla
	ldh [hff8d], a
	ldh a, [hff8e]
	rla
	ldh [hff8e], a
	ldh a, [hff8f]
	rla
	ldh [hff8f], a
	ldh a, [hff90]
	rla
	ldh [hff90], a
	ldh a, [hff91]
	rla
	ldh [hff91], a
	ldh a, [hff8e]
	sub e
	ldh a, [hff8f]
	sbc d
	ldh a, [hff90]
	sbc c
	ldh a, [hff91]
	sbc b
	jr c, .asm_69ae2
	ldh a, [hff8e]
	sub e
	ldh [hff8e], a
	ldh a, [hff8f]
	sbc d
	ldh [hff8f], a
	ldh a, [hff90]
	sbc c
	ldh [hff90], a
	ldh a, [hff91]
	sbc b
	ldh [hff91], a
.asm_69ae2
	ccf
	ldh a, [hff94]
	rla
	ldh [hff94], a
	ldh a, [hff95]
	rla
	ldh [hff95], a
	ldh a, [hff96]
	rla
	ldh [hff96], a
	ldh a, [hff97]
	rla
	ldh [hff97], a
	pop af
	dec a
	jr nz, .asm_69a96
	ldh a, [hff94]
	ld e, a
	ldh a, [hff95]
	ld d, a
	ldh a, [hff96]
	ld c, a
	ldh a, [hff97]
	ld b, a
	ret
; 0x69b08

SECTION "Bank 1a@6209", ROMX[$6209], BANK[$1a]

Func_6a209:
	call Func_2380
	ret
; 0x6a20d

SECTION "Bank 1a@62ec", ROMX[$62ec], BANK[$1a]

Func_6a2ec:
	call Func_2470
	ret
; 0x6a2f0

SECTION "Bank 1a@62f4", ROMX[$62f4], BANK[$1a]

Func_6a2f4:
	call Func_25ab
	ret
; 0x6a2f8

SECTION "Bank 1a@666d", ROMX[$666d], BANK[$1a]

Func_6a66d:
	ld a, $01
	ld [wcdc5], a
	call Func_2a3c
	ret
; 0x6a676

SECTION "Bank 1a@67a8", ROMX[$67a8], BANK[$1a]

; beside the checksum, save data must have
; this string in the header to be considered valid
SaveDataMagicString:
	db "POKEPONCGB", $0c, $00

Func_6a7b4::
	ld b, FALSE
	jr Func_6a7bc

	ld b, TRUE
	jr Func_6a7bc ; useless jump

; if b = TRUE, then overwrite save data with a fresh save;
; otherwise, validate both main and backup save data and,
; if neither are valid, then also overwrite with new save data
Func_6a7bc:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $01
	sramswitch
	ld a, b
	and a
	jr nz, .new_game
	ld hl, sSaveDataContent
	ld bc, sSaveDataEnd - sSaveDataContent
	call CalculateChecksum
	; is the checksum valid?
	ld hl, sSaveDataChecksum
	ld a, e
	cp [hl]
	jr nz, .invalid_checksum
	inc hl
	ld a, d
	cp [hl]
	jr nz, .invalid_checksum
	jr .valid_checksum

.invalid_checksum
	; overwrites sSaveData with sBackupSaveData
	copy_data wScratch, sBackupSaveData, sSaveDataEnd - sSaveData
	copy_data sSaveData, wScratch, sSaveDataEnd - sSaveData

	ld hl, sSaveDataContent
	ld bc, sSaveDataEnd - sSaveDataContent
	call CalculateChecksum
	; is the backup checksum valid?
	ld hl, sSaveDataChecksum
	ld a, e
	cp [hl]
	jr nz, .new_game
	inc hl
	ld a, d
	cp [hl]
	jr nz, .new_game
	; yes it's valid, continue
.valid_checksum
	ld hl, sUnkData
	ld bc, sUnkDataEnd - sUnkData
	call CalculateChecksum
	ld hl, sUnkChecksum
	ld a, e
	cp [hl]
	jp nz, .asm_6a8dc
	inc hl
	ld a, d
	cp [hl]
	jp nz, .asm_6a8dc

	; do the magic values match?
	ld hl, SaveDataMagicString
	ld de, sSaveDataMagic
	ld bc, 12
	call CompareHLtoDE
	jr nz, .new_game ; no

	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

.new_game
	; overwrite data with a new game save file
	ldh a, [hWRAMBank]
	push af
	ld a, $03
	wramswitch

	; zero out the checksums
	xor a
	ldh [hff8a], a
	ldh [hff8b], a
	ldh [hff8c], a
	copy_data sSaveDataChecksum, hff8a, $3
	copy_data sBackupSaveDataChecksum, hff8a, $3

	ld de, $d000
	ld bc, $1000
	ld a, $ff
	call FillMemory

	; fill all SRAM1 with $ff
	ld de, STARTOF("SRAM1")
	ld bc, SIZEOF(SRAM)
	ld a, $ff
	call FillMemory

	; fill all SRAM2 with $ff
	copy_data $a000, $02, $d000, $03, $1000 ; a000, d000
	copy_data $b000, $02, $d000, $03, $1000 ; b000, d000
	pop af
	wramswitch

	; fill in the magic string
	ld hl, SaveDataMagicString
	ld de, sSaveDataMagic
	ld bc, 12
	call CopyHLtoDE

	ld de, sSaveDataUnk52C
	ld bc, $158
	ld a, $00
	call FillMemory

	call Func_6a8f0
	call Func_6a95b
	call Func_6ad0e
	call Func_6ad66
	call Func_6addf
	call Func_6ae21
	call Func_6ae73
	call Func_6aede

	ld de, sSaveDataUnk632
	ld bc, 14
	ld a, $ff
	call FillMemory

	call SetSaveDataChecksumAndBackup
.asm_6a8dc
	xor a
	ld [s1ab36], a
	call Func_20d4
	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

Func_6a8f0:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $01
	sramswitch

	ld de, sSaveDataUnk00E
	ld bc, $24
	ld a, $ff
	call FillMemory

	ld de, sSaveDataUnk03B
	ld bc, $4
	ld a, $00
	call FillMemory

	ld de, sSaveDataUnk03F
	ld bc, $2
	ld a, $00
	call FillMemory

	ld hl, sSaveDataUnk032
	ld a, $00
	ld [hli], a
	ld a, $00
	ld [hli], a
	ld a, $00
	ld [hl], a

	ld hl, sSaveDataUnk035
	ld a, $00
	ld [hli], a
	ld a, $00
	ld [hli], a
	ld a, $00
	ld [hl], a

	ld hl, sSaveDataUnk038
	ld a, $00
	ld [hli], a
	ld a, $00
	ld [hli], a
	ld a, $00
	ld [hl], a

	ld a, $1e
	ld [sSaveDataUnk041], a
	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

Func_6a95b:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $01
	sramswitch

	call Func_6a993
	call Func_6aa8c
	call Func_6ab85
	call Func_6ac7e

	ld de, sSaveDataUnk106
	ld bc, $2
	ld a, $00
	call FillMemory

	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

Func_6a993:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $01
	sramswitch

	ld a, $d0
	ld [sSaveDataUnk076 + $0], a
	ld a, $07
	ld [sSaveDataUnk076 + $1], a
	ld a, $00
	ld [sSaveDataUnk076 + $2], a
	ld hl, .sen_string
	jr .copy_sen_string
.sen_string
	db "SEN"
.copy_sen_string
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $03], a
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $04], a
	ld a, [hl]
	sub 'A'
	ld [sSaveDataUnk076 + $05], a

	ld a, $e8
	ld [sSaveDataUnk076 + $06], a
	ld a, $03
	ld [sSaveDataUnk076 + $07], a
	ld a, $00
	ld [sSaveDataUnk076 + $08], a
	ld hl, .chi_string
	jr .copy_chi_string
.chi_string
	db "CHI"
.copy_chi_string
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $09], a
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $0a], a
	ld a, [hl]
	sub 'A'
	ld [sSaveDataUnk076 + $0b], a

	ld a, $20
	ld [sSaveDataUnk076 + $0c], a
	ld a, $03
	ld [sSaveDataUnk076 + $0d], a
	ld a, $00
	ld [sSaveDataUnk076 + $0e], a
	ld hl, .mur_string
	jr .copy_mur_string
.mur_string
	db "MUR"
.copy_mur_string
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $0f], a
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $10], a
	ld a, [hl]
	sub 'A'
	ld [sSaveDataUnk076 + $11], a

	ld a, $90
	ld [sSaveDataUnk076 + $12], a
	ld a, $01
	ld [sSaveDataUnk076 + $13], a
	ld a, $00
	ld [sSaveDataUnk076 + $14], a
	ld hl, .nis_string
	jr .copy_nis_string
.nis_string
	db "NIS"
.copy_nis_string
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $15], a
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $16], a
	ld a, [hl]
	sub 'A'
	ld [sSaveDataUnk076 + $17], a

	ld a, $c8
	ld [sSaveDataUnk076 + $18], a
	ld a, $00
	ld [sSaveDataUnk076 + $19], a
	ld a, $00
	ld [sSaveDataUnk076 + $1a], a
	ld hl, .yam_string
	jr .copy_yam_string
.yam_string
	db "YAM"
.copy_yam_string
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $1b], a
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $1c], a
	ld a, [hl]
	sub 'A'
	ld [sSaveDataUnk076 + $1d], a

	ld de, sSaveDataUnk0E2
	ld bc, $3
	ld a, $00
	call FillMemory

	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

Func_6aa8c:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $01
	sramswitch

	ld a, $dc
	ld [sSaveDataUnk076 + $24], a
	ld a, $05
	ld [sSaveDataUnk076 + $25], a
	ld a, $00
	ld [sSaveDataUnk076 + $26], a
	ld hl, .ymu_string
	jr .copy_ymu_string
.ymu_string
	db "YMU"
.copy_ymu_string
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $27], a
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $28], a
	ld a, [hl]
	sub 'A'
	ld [sSaveDataUnk076 + $29], a

	ld a, $20
	ld [sSaveDataUnk076 + $2a], a
	ld a, $03
	ld [sSaveDataUnk076 + $2b], a
	ld a, $00
	ld [sSaveDataUnk076 + $2c], a
	ld hl, .ima_string
	jr .copy_ima_string
.ima_string
	db "IMA"
.copy_ima_string
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $2d], a
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $2e], a
	ld a, [hl]
	sub 'A'
	ld [sSaveDataUnk076 + $2f], a

	ld a, $f4
	ld [sSaveDataUnk076 + $30], a
	ld a, $01
	ld [sSaveDataUnk076 + $31], a
	ld a, $00
	ld [sSaveDataUnk076 + $32], a
	ld hl, .ymg_string
	jr .copy_ymg_string
.ymg_string
	db "YMG"
.copy_ymg_string
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $33], a
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $34], a
	ld a, [hl]
	sub 'A'
	ld [sSaveDataUnk076 + $35], a

	ld a, $2c
	ld [sSaveDataUnk076 + $36], a
	ld a, $01
	ld [sSaveDataUnk076 + $37], a
	ld a, $00
	ld [sSaveDataUnk076 + $38], a
	ld hl, .nsm_string
	jr .copy_nsm_string
.nsm_string
	db "NSM"
.copy_nsm_string
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $39], a
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $3a], a
	ld a, [hl]
	sub 'A'
	ld [sSaveDataUnk076 + $3b], a

	ld a, $96
	ld [sSaveDataUnk076 + $3c], a
	ld a, $00
	ld [sSaveDataUnk076 + $3d], a
	ld a, $00
	ld [sSaveDataUnk076 + $3e], a
	ld hl, .hig_string
	jr .copy_hig_string
.hig_string
	db "HIG"
.copy_hig_string
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $3f], a
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $40], a
	ld a, [hl]
	sub 'A'
	ld [sSaveDataUnk076 + $41], a

	ld de, sSaveDataUnk0E5
	ld bc, $3
	ld a, $00
	call FillMemory

	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

Func_6ab85:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $01
	sramswitch

	ld a, $e8
	ld [sSaveDataUnk076 + $48], a
	ld a, $03
	ld [sSaveDataUnk076 + $49], a
	ld a, $00
	ld [sSaveDataUnk076 + $4a], a
	ld hl, .wat_string
	jr .copy_wat_string
.wat_string
	db "WAT"
.copy_wat_string
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $4b], a
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $4c], a
	ld a, [hl]
	sub 'A'
	ld [sSaveDataUnk076 + $4d], a

	ld a, $58
	ld [sSaveDataUnk076 + $4e], a
	ld a, $02
	ld [sSaveDataUnk076 + $4f], a
	ld a, $00
	ld [sSaveDataUnk076 + $50], a
	ld hl, .ish_string
	jr .copy_ish_string
.ish_string
	db "ISH"
.copy_ish_string
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $51], a
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $52], a
	ld a, [hl]
	sub 'A'
	ld [sSaveDataUnk076 + $53], a

	ld a, $2c
	ld [sSaveDataUnk076 + $54], a
	ld a, $01
	ld [sSaveDataUnk076 + $55], a
	ld a, $00
	ld [sSaveDataUnk076 + $56], a
	ld hl, .kas_string
	jr .copy_kas_string
.kas_string
	db "KAS"
.copy_kas_string
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $57], a
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $58], a
	ld a, [hl]
	sub 'A'
	ld [sSaveDataUnk076 + $59], a

	ld a, $c8
	ld [sSaveDataUnk076 + $5a], a
	ld a, $00
	ld [sSaveDataUnk076 + $5b], a
	ld a, $00
	ld [sSaveDataUnk076 + $5c], a
	ld hl, .mor_string
	jr .copy_mor_string
.mor_string
	db "MOR"
.copy_mor_string
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $5d], a
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $5e], a
	ld a, [hl]
	sub 'A'
	ld [sSaveDataUnk076 + $5f], a

	ld a, $64
	ld [sSaveDataUnk076 + $60], a
	ld a, $00
	ld [sSaveDataUnk076 + $61], a
	ld a, $00
	ld [sSaveDataUnk076 + $62], a
	ld hl, .mrs_string
	jr .copy_mrs_string
.mrs_string
	db "MRS"
.copy_mrs_string
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $63], a
	ld a, [hli]
	sub 'A'
	ld [sSaveDataUnk076 + $64], a
	ld a, [hl]
	sub 'A'
	ld [sSaveDataUnk076 + $65], a

	ld de, sSaveDataUnk0E8
	ld bc, $3
	ld a, $00
	call FillMemory

	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

Func_6ac7e:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $01
	sramswitch
	ld a, $88
	ld [sSaveDataUnk0EB + $00], a
	ld a, $13
	ld [sSaveDataUnk0EB + $01], a
	ld a, $00
	ld [sSaveDataUnk0EB + $02], a
	ld a, $00
	ld [sSaveDataUnk0EB + $03], a
	ld a, $d0
	ld [sSaveDataUnk0EB + $04], a
	ld a, $07
	ld [sSaveDataUnk0EB + $05], a
	ld a, $00
	ld [sSaveDataUnk0EB + $06], a
	ld a, $00
	ld [sSaveDataUnk0EB + $07], a
	ld a, $e8
	ld [sSaveDataUnk0EB + $08], a
	ld a, $03
	ld [sSaveDataUnk0EB + $09], a
	ld a, $00
	ld [sSaveDataUnk0EB + $0a], a
	ld a, $00
	ld [sSaveDataUnk0EB + $0b], a
	ld a, $f4
	ld [sSaveDataUnk0EB + $0c], a
	ld a, $01
	ld [sSaveDataUnk0EB + $0d], a
	ld a, $00
	ld [sSaveDataUnk0EB + $0e], a
	ld a, $00
	ld [sSaveDataUnk0EB + $0f], a
	ld a, $c8
	ld [sSaveDataUnk0EB + $10], a
	ld a, $00
	ld [sSaveDataUnk0EB + $11], a
	ld a, $00
	ld [sSaveDataUnk0EB + $12], a
	ld a, $00
	ld [sSaveDataUnk0EB + $13], a

	ld de, sSaveDataUnk103
	ld bc, $3
	ld a, $00
	call FillMemory

	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

Func_6ad0e:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $01
	sramswitch

	ld de, sSaveDataUnk108
	ld bc, $15
	ld a, $ff
	call FillMemory

	ld de, sSaveDataUnk11D
	ld bc, $5a
	ld a, $00
	call FillMemory

	ld de, sSaveDataUnk177
	ld bc, $2
	ld a, $00
	call FillMemory

	ld de, sSaveDataUnk179
	ld bc, $2
	ld a, $ff
	call FillMemory

	ld de, sSaveDataUnk17B
	ld bc, $2
	ld a, $ff
	call FillMemory

	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

Func_6ad66:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $01
	sramswitch

	ld de, sSaveDataUnk17D
	ld bc, $27
	ld a, $ff
	call FillMemory

	ld de, sSaveDataUnk1A4
	ld bc, $8
	ld a, $ff
	call FillMemory

	ld de, sSaveDataUnk1AC
	ld bc, $1a4
	ld a, $00
	call FillMemory

	ld de, sSaveDataUnk350
	ld bc, $8c
	ld a, $00
	call FillMemory

	ld de, sSaveDataUnk3DC
	ld bc, $3
	ld a, $03
	call FillMemory

	ld de, sSaveDataUnk3DF
	ld bc, $24
	ld a, $ff
	call FillMemory

	ld de, sSaveDataUnk403
	ld bc, $3
	ld a, $03
	call FillMemory

	ld de, sSaveDataUnk406
	ld bc, $24
	ld a, $ff
	call FillMemory

	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

Func_6addf:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $01
	sramswitch

	ld de, sSaveDataUnk42A
	ld bc, $16
	ld a, $ff
	call FillMemory

	ld de, sSaveDataUnk440
	ld bc, $f
	ld a, $ff
	call FillMemory

	ld de, sSaveDataUnk44F
	ld bc, $d
	ld a, $ff
	call FillMemory

	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

Func_6ae21:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $01
	sramswitch

	ld de, sSaveDataUnk45C
	ld bc, $b6
	ld a, $ff
	call FillMemory

	ld hl, .Data
	ld de, sSaveDataUnk512
	ld bc, $1a
	call CopyHLtoDE

	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

.Data:
	db $02, $10, $1e, $0e, $1c, $1d, $ff, $ff, $ff, $ff, $0f, $27, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

Func_6ae73:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	ldh a, [hSRAMBank]
	push af
	ld a, $01
	sramswitch

	ld de, sSaveDataUnk042
	ld bc, $24
	ld a, $ff
	call FillMemory

	ld de, sSaveDataUnk06F
	ld bc, $4
	ld a, $00
	call FillMemory

	ld de, sSaveDataUnk073
	ld bc, $2
	ld a, $00
	call FillMemory

	ld hl, sSaveDataUnk066
	ld a, $00
	ld [hli], a
	ld a, $00
	ld [hli], a
	ld a, $00
	ld [hl], a

	ld hl, sSaveDataUnk069
	ld a, $00
	ld [hli], a
	ld a, $00
	ld [hli], a
	ld a, $00
	ld [hl], a

	ld hl, sSaveDataUnk06C
	ld a, $00
	ld [hli], a
	ld a, $00
	ld [hli], a
	ld a, $00
	ld [hl], a

	ld a, $1e
	ld [sSaveDataUnk075], a

	pop af
	sramswitch
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret

Func_6aede:
	ld a, $02
	ld [sSaveDataUnk644], a
	xor a
	ld [sSaveDataUnk645], a
	xor a
	ld [sSaveDataUnk674 + $0], a
	ld [sSaveDataUnk674 + $1], a
	ld [sSaveDataUnk674 + $2], a
	ld [sSaveDataUnk674 + $3], a
	ld [sSaveDataUnk674 + $4], a
	ld [sSaveDataUnk674 + $5], a
	ld [sSaveDataUnk674 + $6], a
	ld [sSaveDataUnk674 + $7], a
	call Func_6b30e
	ret

Func_6af04::
	ld c, 1 ; byte
	ld de, s1ab36
	ld hl, hff8a
	call CopySRAM1
	ldh a, [hff8a]
	ld b, a
	ret
; 0x6af13

SECTION "Bank 1a@71cd", ROMX[$71cd], BANK[$1a]

Func_6b1cd:
	ld a, b
	ld [wcdc3], a
	ld de, wcdc4
	ld bc, $7
	ld a, $00
	call FillMemory
	call Func_6a209
	call SetSaveDataChecksumAndBackup
	ret

Func_6b1e3:
	ld a, b
	ld [wcdc3], a
	ld de, wcdc4
	ld bc, $d
	ld a, $00
	call FillMemory
	call Func_6a2ec
	call SetSaveDataChecksumAndBackup
	ret
; 0x6b1f9

SECTION "Bank 1a@72ab", ROMX[$72ab], BANK[$1a]

Func_6b2ab:
	push bc
	ld a, b
	ld [wcdc3], a
	call Func_24ac
	pop bc
	ld a, b
	ld [wcdc3], a
	ld a, c
	ld [$cdcc], a
	ld [$c8e1], a
	call Func_6a2ec
	call SetSaveDataChecksumAndBackup
	ret
; 0x6b2c6

SECTION "Bank 1a@730e", ROMX[$730e], BANK[$1a]

Func_6b30e:
	call Func_6b31e
	call Func_6b338
	call Func_6b39d
	call Func_6b3b7
	call Func_6b3d1
	ret

Func_6b31e:
	ldh a, [hWRAMBank]
	push af
	ld a, $01
	wramswitch
	ld c, 1 ; byte
	ld hl, w1da9e
	ld de, sSaveDataUnk644
	call CopySRAM1
	pop af
	wramswitch
	ret

Func_6b338:
	ldh a, [hWRAMBank]
	push af
	ld de, NULL
.loop
	push de
	ld a, e
	add a
	add e ; *3
	ld c, a
	ld b, d
	ld hl, .WRAMAddresses + $2
	add hl, bc
	ld a, [hld]
	cp $ff
	jr z, .done
	wramswitch
	ld a, [hld]
	ld l, [hl]
	ld h, a
	push hl
	ld a, e
	add a
	ld e, a ; *2
	ld d, $00
	ld hl, .SRAMAddresses
	add hl, de
	ld a, [hli]
	ld d, [hl]
	ld e, a
	ld c, 1 ; byte
	pop hl
	call CopySRAM1
	pop de
	inc e
	jr .loop
.done
	pop de
	pop af
	wramswitch
	ret

.SRAMAddresses:
	dw sSaveDataUnk674 + $0
	dw sSaveDataUnk674 + $1
	dw sSaveDataUnk674 + $2
	dw sSaveDataUnk674 + $3
	dw sSaveDataUnk674 + $4
	dw sSaveDataUnk674 + $5
	dw sSaveDataUnk674 + $6
	dw sSaveDataUnk674 + $7

.WRAMAddresses:
	dab w1da96
	dab w1da97
	dab w1da98
	dab w1da99
	dab w1da9a
	dab w1da9b
	dab w1da9c
	dab w1da9d
	db $ff, $ff, $ff

Func_6b39d:
	ldh a, [hWRAMBank]
	push af
	ld a, $01
	wramswitch
	ld c, 1 ; byte
	ld hl, w1da9f
	ld de, sSaveDataUnk645
	call CopySRAM1
	pop af
	wramswitch
	ret

Func_6b3b7:
	ldh a, [hWRAMBank]
	push af
	ld a, $01
	wramswitch
	ld c, 1 ; byte
	ld hl, w1daa0
	ld de, sSaveDataUnk641
	call CopySRAM1
	pop af
	wramswitch
	ret

Func_6b3d1:
	ldh a, [hSRAMEnabled]
	push af
	enable_sram
	copy_data wce38, sSaveDataUnk642, $2
	pop af
	ldh [hSRAMEnabled], a
	ld [$100], a
	ret
; 0x6b3ed
