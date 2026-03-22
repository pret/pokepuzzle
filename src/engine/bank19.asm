Func_64000::
	call Func_1426
	farcall Func_840c0
	call TurnLCDOff

	ld a, $01
	wramswitch
	ld a, STAT_LYC | $80
	ldh [rSTAT], a
	xor a
	ldh [hSCX], a
	ldh [hSCY], a
	call Func_504

	ld a, 15
	ldh [hJoypadRepeatDelay], a
	ld a, 3
	ldh [hJoypadRepeatInterval], a

	xor a
	ld [$df62], a
	ld [$df87], a
	ld [$df88], a
	ld [$ce3a], a
	call Func_64a59
	farcall Func_46dda
	ld a, [wGameMode]
	ld [$df8a], a
	cp $0f
	jr nz, .asm_6404b
	ld a, $02
	ld [$df8a], a
.asm_6404b
	ld a, [wGameLevel]
	ld a, [wSpeedLevel]
	ld a, [$c86d]
	ld a, [$c86c]
	ld a, [$c86b]
	ld a, [$c842]
	ld a, [$c843]
	ld a, [$c844]
	ld a, [wceab]
	ld a, $1c
	ld [$cdc4], a

	farcall Func_6a66d
	call SetSaveDataChecksumAndBackup

	ld a, $00
	vramswitch
	ld de, v0BGMap0
	ld bc, $400
	call ClearMemory
	ld de, v0BGMap1
	ld bc, $400
	call ClearMemory

	ld a, $01
	vramswitch
	ld de, v0BGMap0
	ld bc, $400
	call ClearMemory
	ld de, v0BGMap1
	ld bc, $400
	call ClearMemory

	call Func_64101

	ld hl, Func_640d8
	ld de, wHBlankHandler
	ld bc, $29
	call CopyHLtoDE

	ldh a, [rSTAT]
	or STAT_LYC
	ldh [rSTAT], a

	xor a
	ldh [rLYC], a
	xor a
	ldh [rIF], a
	ld a, IE_VBLANK | IE_STAT
	ldh [hIE], a
	ldh [rIE], a

	ld a, MUSIC_MAIN_MENU
	call Func_13a1
	call Func_2dc3

	ld a, LCDC_BG_ON | LCDC_OBJ_ON | LCDC_ON
	ldh [hLCDC], a
	ldh [rLCDC], a

	ld hl, $ce34
	inc [hl]
	ret

Func_640d8:
	push af
	push hl

    ; turn on OBJ
	ld hl, rLCDC
	set B_LCDC_OBJS, [hl]

	ld a, [$ce3c]
	and a
	jr nz, .asm_640f8
	ld a, [$ce41]
	and a
	jr z, .asm_640ed
	res B_LCDC_OBJS, [hl]
.asm_640ed
	ld a, $5f
	ldh [rLYC], a
	ld a, $02
	ld [$ce3c], a
	jr .asm_640fe
.asm_640f8
	xor a
	ldh [rLYC], a
	ld [$ce3c], a
.asm_640fe
	pop hl
	pop af
	reti

Func_64101:
	call Func_64114
	ld a, $00
	vramswitch
	call Func_641ab
	call Func_64230
	call Func_6419d
	ret

Func_64114:
	ld de, v0Tiles1
	ld c, $00
	ld hl, $553c
	ld a, $19
	call Func_93d
	ld b, $00
	ld de, v0Tiles1 tile $3c
	ld a, $00
	fill_mem $40, $4, $100
	ld de, v0Tiles2
	ld c, $00
	ld hl, $56e3
	ld a, $19
	call Func_93d

	ld de, s3a000
	ld c, BANK(s3a000)
	ld hl, $5001
	ld a, $19
	call Func_93d
	copy_data_ext v0BGMap0, $0, s3a000, $14, $c, $12

	ld de, s3a000
	ld c, BANK(s3a000)
	ld hl, $50e1
	ld a, $19
	call Func_93d
	copy_data_ext v1BGMap0, $1, s3a000, $14, $c, $12

	ld de, wBGPals
	ld c, $00
	ld hl, $5df6
	ld a, $19
	call Func_93d

	ld de, wOBPals
	ld c, $00
	ld hl, $5e33
	ld a, $19
	call Func_93d

	copy_data $c4c9, $00, $5e5f, $19, $4 ; c4c9, 65e5f

	call Func_6419d
	ret

Func_6419d:
	ld de, s3a000
	ld c, BANK(s3a000)
	ld hl, $553c
	ld a, $19
	call Func_93d
	ret

Func_641ab:
	ld b, $59
	ld de, $7957
	farcall Func_10c011
.asm_641b6
	ld a, [$cf0c]
	and a
	call nz, Func_347d
	farcall_saveregs Func_10c22b
	jr c, .asm_641b6
	ld a, [$cf0c]
	and a
	call nz, Func_347d
	ld b, $59
	ld de, $7980
	farcall Func_10c011
.asm_641d7
	ld a, [$cf0c]
	and a
	call nz, Func_347d
	farcall_saveregs Func_10c22b
	jr c, .asm_641d7
	ld a, [$cf0c]
	and a
	call nz, Func_347d
	ld b, $59
	ld de, $79ab
	farcall Func_10c011
.asm_641f8
	ld a, [$cf0c]
	and a
	call nz, Func_347d
	farcall_saveregs Func_10c22b
	jr c, .asm_641f8
	ld a, [$cf0c]
	and a
	call nz, Func_347d
	ld b, $59
	ld de, $79d7
	farcall Func_10c011
.asm_64219
	ld a, [$cf0c]
	and a
	call nz, Func_347d
	farcall_saveregs Func_10c22b
	jr c, .asm_64219
	ld a, [$cf0c]
	and a
	call nz, Func_347d
	ret

Func_64230:
	call Func_64237
	call Func_64298
	ret

Func_64237:
	ld a, [$df8a]
	ld de, s3a000
	ld c, BANK(s3a000)
	decompress PtrTable_64274, $3
	copy_data_ext $986b, $00, s3a000, $8, $18, $9
	ld a, [$df8a]
	ld de, s3b000
	ld c, BANK(s3a000)
	decompress PtrTable_64286, $3
	copy_data_ext $986b, $01, s3b000, $8, $18, $9
	ret

PtrTable_64274:
; 0x64274

SECTION "Bank 19@4286", ROMX[$4286], BANK[$19]

PtrTable_64286:
; 0x64286

SECTION "Bank 19@4298", ROMX[$4298], BANK[$19]

Func_64298:
	call Func_6429c
	ret

Func_6429c:
	ld a, [$df8a]
	ld e, a
	ld d, $00
	ld hl, $42ab
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl
; 0x642ab

SECTION "Bank 19@4a59", ROMX[$4a59], BANK[$19]

Func_64a59:
	ld b, 64
	ld c, 72
	ld hl, $5e73
	call Func_2f8
	ret
; 0x64a64
