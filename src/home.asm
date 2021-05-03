; rst vectors
SECTION "rst 00", ROM0[$00]
	rst $38

SECTION "rst 08", ROM0[$08]
	rst $38

SECTION "rst 10", ROM0[$10]
	rst $38

SECTION "rst 18", ROM0[$18]
	rst $38

SECTION "rst 20", ROM0[$20]
	rst $38

SECTION "rst 28", ROM0[$28]
	rst $38

SECTION "rst 30", ROM0[$30]
	rst $38

SECTION "rst 38", ROM0[$38]
	rst $38

; interrupts
SECTION "vblank", ROM0[$40]
	jp $c492 ; VBlankHandler

SECTION "hblank", ROM0[$48]
	jp $c342 ; HBlankHandler

SECTION "timer", ROM0[$50]
	jp $0ef8 ; TimerHandler

SECTION "serial", ROM0[$58]
	jp $0e54 ; SerialHandler

SECTION "joypad", ROM0[$60]
	reti

SECTION "ROM Header", ROM0[$100]
	nop
	jp Start

; manually declare part of the rom header
; because rgblink mistakenly pads these with FF
SECTION "Title Padding", ROM0[$13d]
	db $00, $00

SECTION "SGB Flag", ROM0[$146]
	db $00

SECTION "Start", ROM0[$150]
Start: ; 0150 (0:0150)

SECTION "Func_10c4", ROM0[$10c4]

Func_10c4: ; 10c4 (0:10c4)
	ld de, $2100
	ldh a, [hROMBank]
	push af
	ld a, [wSongBank]
	ldh [hROMBank], a
	ld [de], a
	ld l, c
	ld h, b
	ld a, [hli]
	ld c, a
	ld b, [hl]
	pop af
	ldh [hROMBank], a
	ld [de], a
	jp Func_80000.asm_80023
; 0x10dc

Func_10dc: ; 10dc (0:10dc)
	ldh a, [hROMBank]
	push af
	ld a, BANK(PointerTable_83401)
	ldh [hROMBank], a
	ld [$2100], a
	ld a, [hli]
	ld [wc61e], a
	ld a, [hld]
	ld [wc61e + 1], a
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	ret
; 0x10f5

Func_10f5: ; 10f5 (0:10f5)
	ldh a, [hROMBank]
	push af
	ld a, $20
	ldh [hROMBank], a
	ld [$2100], a
	ld a, [bc]
	ld l, a
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	jp Func_803e6
; 0x110a

Func_110a: ; 110a (0:110a)
	ldh a, [hROMBank]
	push af
	ld a, $20
	ldh [hROMBank], a
	ld [$2100], a
	ld l, c
	ld h, b
	ld a, [hli]
	ld c, a
	ld b, [hl]
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	jp Func_803cd.asm_803e3
; 0x1122

Func_1122: ; 1122 (0:1122)
	ldh a, [hROMBank]
	push af
	ld a, BANK(PointerTable_82230)
	ldh [hROMBank], a
	ld [$2100], a
	ld a, [hli]
	ld [wc624], a
	ld a, [hli]
	ld [wc624 + 1], a
	ld a, [hli]
	ld [wc629], a
	ld a, [hli]
	ld [wc629 + 1], a
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	ret
; 0x1143

Func_1143: ; 1143 (0:1143)
	ldh a, [hROMBank]
	push af
	ld a, $20
	ldh [hROMBank], a
	ld [$2100], a
	ld a, [bc]
	ld e, a
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	ret
; 0x1156

Func_1156: ; 1156 (0:1156)
	ldh a, [hROMBank]
	push af
	ld a, BANK(PointerTable_81a31)
	ldh [hROMBank], a
	ld [$2100], a
	ld a, [hli]
	ld [wc6c3], a
	ld a, [hld]
	ld [wc6c3 + 1], a
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	ret
; 0x116f

Func_116f: ; 116f (0:116f)
	ldh a, [hROMBank]
	push af
	ld a, $20
	ldh [hROMBank], a
	ld [$2100], a
	call wc6c2
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	ret
; 0x1183

Func_1183: ; 1183 (0:1183)
	ld de, $2100
	ldh a, [hROMBank]
	push af
	ld a, [wSongBank]
	ldh [hROMBank], a
	ld [de], a
	ld l, c
	ld h, b
	ld a, [hli]
	ld c, a
	ld b, [hl]
	pop af
	ldh [hROMBank], a
	ld [de], a
	jp Func_80525.asm_80548
; 0x119b

Func_119b: ; 119b (0:119b)
	ldh a, [hROMBank]
	push af
	ld a, BANK(PointerTable_83401)
	ldh [hROMBank], a
	ld [$2100], a
	ld a, [hli]
	ld [wc64e], a
	ld a, [hld]
	ld [wc64e + 1], a
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	ret
; 0x11b4

Func_11b4: ; 11b4 (0:11b4)
	ldh a, [hROMBank]
	push af
	ld a, $20
	ldh [hROMBank], a
	ld [$2100], a
	ld a, [bc]
	ld l, a
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	jp Func_8090b
; 0x11c9

Func_11c9: ; 11c9 (0:11c9)
	ldh a, [hROMBank]
	push af
	ld a, $20
	ldh [hROMBank], a
	ld [$2100], a
	ld l, c
	ld h, b
	ld a, [hli]
	ld c, a
	ld b, [hl]
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	jp Func_808f2.asm_80908
; 0x11e1

Func_11e1: ; 11e1 (0:11e1)
	ldh a, [hROMBank]
	push af
	ld a, BANK(PointerTable_82230)
	ldh [hROMBank], a
	ld [$2100], a
	ld a, [hli]
	ld [wc654], a
	ld a, [hli]
	ld [wc654 + 1], a
	ld a, [hli]
	ld [wc659], a
	ld a, [hli]
	ld [wc659 + 1], a
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	ret
; 0x1202

Func_1202: ; 1202 (0:1202)
	ldh a, [hROMBank]
	push af
	ld a, $20
	ldh [hROMBank], a
	ld [$2100], a
	ld a, [bc]
	ld e, a
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	ret
; 0x1215

Func_1215: ; 1215 (0:1215)
	ldh a, [hROMBank]
	push af
	ld a, BANK(PointerTable_81a3f)
	ldh [hROMBank], a
	ld [$2100], a
	ld a, [hli]
	ld [wc6c6], a
	ld a, [hld]
	ld [wc6c6 + 1], a
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	ret
; 0x122e

Func_122e: ; 122e (0:122e)
	ldh a, [hROMBank]
	push af
	ld a, $20
	ldh [hROMBank], a
	ld [$2100], a
	call wc6c5
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	ret
; 0x1242

Func_1242: ; 1242 (0:1242)
	ld de, $2100
	ldh a, [hROMBank]
	push af
	ld a, [wSongBank]
	ldh [hROMBank], a
	ld [de], a
	ld l, c
	ld h, b
	ld a, [hli]
	ld c, a
	ld b, [hl]
	pop af
	ldh [hROMBank], a
	ld [de], a
	jp Func_80a4a.asm_80a6d
; 0x125a

Func_125a: ; 125a (0:125a)
	ldh a, [hROMBank]
	push af
	ld a, BANK(PointerTable_83401)
	ldh [hROMBank], a
	ld [$2100], a
	ld a, [hli]
	ld [wc67e], a
	ld a, [hld]
	ld [wc67e + 1], a
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	ret
; 0x1273

Func_1273: ; 1273 (0:1273)
	ldh a, [hROMBank]
	push af
	ld a, $20
	ldh [hROMBank], a
	ld [$2100], a
	ld a, [bc]
	ld l, a
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	jp Func_80e34
; 0x1288

Func_1288: ; 1288 (0:1288)
	ldh a, [hROMBank]
	push af
	ld a, $20
	ldh [hROMBank], a
	ld [$2100], a
	ld l, c
	ld h, b
	ld a, [hli]
	ld c, a
	ld b, [hl]
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	jp Func_80e1b.asm_80e31
; 0x12a0

Func_12a0: ; 12a0 (0:12a0)
	ldh a, [hROMBank]
	push af
	ld a, BANK(PointerTable_82230)
	ldh [hROMBank], a
	ld [$2100], a
	ld a, [hli]
	ld [wc684], a
	ld a, [hli]
	ld [wc684 + 1], a
	ld a, [hli]
	ld [wc689], a
	ld a, [hli]
	ld [wc689 + 1], a
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	ret
; 0x12c1

Func_12c1: ; 12c1 (0:12c1)
	ldh a, [hROMBank]
	push af
	ld a, $20
	ldh [hROMBank], a
	ld [$2100], a
	ld a, [bc]
	ld e, a
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	ret
; 0x12d4

Func_12d4: ; 12d4 (0:12d4)
	ldh a, [hROMBank]
	push af
	ld a, BANK(PointerTable_81a3f)
	ldh [hROMBank], a
	ld [$2100], a
	ld a, [hli]
	ld [wc6c9], a
	ld a, [hld]
	ld [wc6c9 + 1], a
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	ret
; 0x12ed

Func_12ed: ; 12ed (0:12ed)
	ldh a, [hROMBank]
	push af
	ld a, $20
	ldh [hROMBank], a
	ld [$2100], a
	call wc6c8
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	ret
; 0x1301

Func_1301: ; 1301 (0:1301)
	ld de, $2100
	ldh a, [hROMBank]
	push af
	ld a, [wSongBank]
	ldh [hROMBank], a
	ld [de], a
	ld l, c
	ld h, b
	ld a, [hli]
	ld c, a
	ld b, [hl]
	pop af
	ldh [hROMBank], a
	ld [de], a
	jp Func_80f80.asm_80fa3
; 0x1319

Func_1319: ; 1319 (0:1319)
	ldh a, [hROMBank]
	push af
	ld a, BANK(PointerTable_82230)
	ldh [hROMBank], a
	ld [$2100], a
	ld a, [hli]
	ld [wc6b4], a
	ld a, [hli]
	ld [wc6b4 + 1], a
	ld a, [hli]
	ld [wc6b9], a
	ld a, [hli]
	ld [wc6b9 + 1], a
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	ret
; 0x133a

Func_133a: ; 133a (0:133a)
	ldh a, [hROMBank]
	push af
	ld a, $20
	ldh [hROMBank], a
	ld [$2100], a
	ld a, [bc]
	ld e, a
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	ret
; 0x134d

Func_134d: ; 134d (0:134d)
	ldh a, [hROMBank]
	push af
	ld a, BANK(PointerTable_81a3f)
	ldh [hROMBank], a
	ld [$2100], a
	ld a, [hli]
	ld [wc6cc], a
	ld a, [hld]
	ld [wc6cc + 1], a
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	ret
; 0x1366

Func_1366: ; 1366 (0:1366)
	ldh a, [hROMBank]
	push af
	ld a, $20
	ldh [hROMBank], a
	ld [$2100], a
	call wc6cb
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	ret
; 0x137a

Func_137a: ; 137a (0:137a)
	ldh a, [hROMBank]
	push af
	ld a, BANK(Func_81383)
	ldh [hROMBank], a
	ld [$2100], a
	call Func_81383
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	ldh a, [hROMBank]
	push af
	ld a, $21
	ldh [hROMBank], a
	ld [$2100], a
	call $4000
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	ret
; 0x13a1

; play song
; input:
; a: song id
Func_13a1: ; 13a1 (0:13a1)
	push af
	push hl
	ld l, a
	ld a, [wc601]
	and a
	jr nz, .asm_13bd
	ldh a, [hROMBank]
	push af
	ld a, BANK(Func_813ba)
	ldh [hROMBank], a
	ld [$2100], a
	call Func_813ba
	pop af
	ldh [hROMBank], a
	ld [$2100], a
.asm_13bd
	pop hl
	pop af
	ret
; 0x13c0

; get song header
; input:
; hl: header pointer
; output:
; wSongBank: song bank
; hl: song pointer
Func_13c0: ; 13c0 (0:13c0)
	ld de, $2100
	ldh a, [hROMBank] ; hROMBank
	push af
	ld a, BANK(SongPointers)
	ldh [hROMBank], a
	ld [de], a
	ld a, [hld]
	ld [wSongBank], a
	ld a, [hld]
	ld l, [hl]
	ld h, a
	pop af
	ldh [hROMBank], a
	ld [de], a
	ret
; 0x13d7

; get next song byte
; input:
; hl: song pointer
; wSongBank: song bank
; output:
; e: song byte
Func_13d7: ; 13d7 (0:13d7)
	ldh a, [hROMBank]
	push af
	ld a, [wSongBank]
	ldh [hROMBank], a
	ld [$2100], a
	ld a, [hli]
	ld e, a
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	ret
; 0x13eb

; update sound
Func_13eb: ; 13eb (0:13eb)
	ldh a, [hROMBank]
	push af
	ld a, $21
	ldh [hROMBank], a
	ld [$2100], a
	call $4012
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	ldh a, [hROMBank]
	push af
	ld a, BANK(Func_814c5)
	ldh [hROMBank], a
	ld [$2100], a
	call Func_814c5 ; update sound
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	ret
; 0x1412

; get next song byte via bc
; input:
; bc: song pointer
; wSongBank: song bank
; output:
; e: song byte
Func_1412: ; 1412 (0:1412)
	ld hl, $2100
	ldh a, [hROMBank]
	push af
	ld a, [wSongBank]
	ldh [hROMBank], a
	ld [hl], a
	ld a, [bc]
	inc bc
	ld e, a
	pop af
	ldh [hROMBank], a
	ld [hl], a
	ret
; 0x1426

Func_1426: ; 1426 (0:1426)
	ldh a, [hROMBank]
	push af
	ld a, $21
	ldh [hROMBank], a
	ld [$2100], a
	call $40c0
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	ldh a, [hROMBank]
	push af
	ld a, BANK(Func_8143e)
	ldh [hROMBank], a
	ld [$2100], a
	call Func_8143e
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	ret
; 0x144d

Func_144d: ; 144d (0:144d)
	ld e, a
	ldh a, [hROMBank]
	push af
	ld a, BANK(Func_816fd)
	ldh [hROMBank], a
	ld [$2100], a
	call Func_816fd
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	ret
; 0x1462

Func_1462: ; 1462 (0:1462)
	ldh a, [hROMBank]
	push af
	ld a, BANK(Func_81817)
	ldh [hROMBank], a
	ld [$2100], a
	call Func_81817
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	ret
; 0x1476

Func_1476: ; 1476 (0:1476)
	ldh a, [hROMBank]
	push af
	ld a, BANK(DataTable_82f71)
	ldh [hROMBank], a
	ld [$2100], a
.asm_1480
	ld a, [hli]
	ld [$ff00+c], a
	inc c
	dec b
	jr nz, .asm_1480
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	ret
; 0x148d

Func_148d: ; 148d (0:148d)
	ldh a, [hROMBank]
	push af
	ld a, BANK(Func_81468)
	ldh [hROMBank], a
	ld [$2100], a
	call Func_81468
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	ret
; 0x14a1

Func_14a1: ; 14a1 (0:14a1)
	ldh a, [hROMBank]
	push af
	ld a, BANK(Func_81482)
	ldh [hROMBank], a
	ld [$2100], a
	call Func_81482
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	ret
; 0x14b5

Func_14b5: ; 14b5 (0:14b5)
	ldh a, [hROMBank]
	push af
	ld a, BANK(Func_81490)
	ldh [hROMBank], a
	ld [$2100], a
	call Func_81490
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	ret
; 0x14c9

Func_14c9: ; 14c9 (0:14c9)
	ldh a, [hROMBank]
	push af
	ld a, BANK(Func_814a9)
	ldh [hROMBank], a
	ld [$2100], a
	call Func_814a9
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	ret
; 0x14dd

Func_14dd: ; 14dd (0:14dd)
	ld a, [wc601]
	and a
	jr z, .asm_14e5
	scf
	ret
.asm_14e5
	ld a, [wc5fd]
	and a
	ret nz
	ld a, [wChannel1Pointer + 1]
	and a
	ret nz
	ld a, [wChannel2Pointer + 1]
	and a
	ret nz
	ld a, [wChannel3Pointer + 1]
	and a
	ret nz
	ld a, [wChannel4Pointer + 1]
	and a
	ret nz
	scf
	ret
; 0x1500

Func_1500: ; 1500 (0:1500)
	ldh a, [hROMBank]
	push af
	ld a, BANK(Func_81857)
	ldh [hROMBank], a
	ld [$2100], a
	call Func_81857
	pop af
	ldh [hROMBank], a
	ld [$2100], a
	ret
; 0x1514
