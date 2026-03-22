SECTION "Bank 1d@6bcd", ROMX[$6bcd], BANK[$1d]

Func_76bcd:
	ld a, [$cd6f]
	cp $ff
	ret z
	and a
	jr nz, .asm_76be1
	ldh a, [hJoypadPressed]
	and PAD_START
	jr z, .asm_76be1
	ld a, $01
	ld [$cd72], a
.asm_76be1
	ld a, [$c330]
	and $80
	jr z, .asm_76c01
	ld a, [$c32e]
	and $01
	ld [$cd73], a
	ld a, [$c32e]
	sra a
	and $01
	ld [$cd71], a
	xor a
	ld hl, $c32e
	ld [hli], a
	ld [hli], a
	ld [hl], a
.asm_76c01
	ld a, [$cd6f]
	cp $04
	jp z, .asm_76c7e
	cp $03
	jp z, .asm_76c7e
	cp $02
	jp z, .asm_76c53
	cp $01
	jp z, .asm_76c53
	ld a, [$cd71]
	and a
	jr z, .asm_76c27
	ld a, $04
	ld [$cd6f], a
	call Func_76ca2
	ret
.asm_76c27
	ld a, [$cd70]
	and a
	jr z, .asm_76c36
	ld a, $03
	ld [$cd6f], a
	call Func_76ca2
	ret
.asm_76c36
	ld a, [$cd73]
	and a
	jr z, .asm_76c45
	ld a, $02
	ld [$cd6f], a
	call Func_76cb1
	ret
.asm_76c45
	ld a, [$cd72]
	and a
	ret z
	ld a, $01
	ld [$cd6f], a
	call Func_76cb1
	ret

.asm_76c53
	ld a, [$cd71]
	and a
	jr z, .asm_76c62
	ld a, $04
	ld [$cd6f], a
	call Func_76ca2
	ret
.asm_76c62
	ld a, [$cd6f]
	cp $02
	jr z, .asm_76c70
	ld a, [$cd73]
	and a
	jr nz, .asm_76c77
	ret
.asm_76c70
	ld a, $01
	ld [$c898], a
	jr .asm_76c97
.asm_76c77
	ld a, $00
	ld [$c898], a
	jr .asm_76c97
.asm_76c7e
	ld a, [$cd6f]
	cp $04
	jr z, .asm_76c8c
	ld a, [$cd71]
	and a
	jr nz, .asm_76c8c
	ret
.asm_76c8c
	ld a, $01
	ld [$cd68], a
	ld a, $ff
	ld [$cd6f], a
	ret
.asm_76c97
	ld a, $01
	ld [$cd69], a
	ld a, $ff
	ld [$cd6f], a
	ret

Func_76ca2:
	ld hl, $c334
	ld a, $02
	or [hl]
	ld [hl], a
	ld hl, $c336
	ld a, $80
	or [hl]
	ld [hl], a
	ret

Func_76cb1:
	ld hl, $c334
	ld a, $01
	or [hl]
	ld [hl], a
	ld hl, $c336
	ld a, $80
	or [hl]
	ld [hl], a
	ret
; 0x76cc0
