Func_70000:
	ld a, [de]
	and $02
	ret nz
	ld a, [hl]
	and $bf
	ld [hl], a
	ld a, c
	cp $07
	jr nz, .asm_70015
	ld hl, wc88b
	inc [hl]
	ld hl, wc8a8
	dec [hl]
.asm_70015
	ld a, [de]
	bit 6, a
	jr nz, .asm_7001e
	or $02
	ld [de], a
	ret
.asm_7001e
	and $bf
	or $82
	ld [de], a
	ld hl, hff8a
	ld a, [hl]
	and a
	ret nz
	inc [hl]
	ld hl, wc88a
	ld a, [hl]
	inc a
	cp $63
	ret nc
	ld [hl], a
	ret

Func_70034:
	ld a, [w6d0b0]
	and $3d
	jp nz, .asm_70115
	ld a, [w6d058]
	and $9f
	jp nz, .asm_70115
	ld a, [w2d000]
	and a
	jp z, .asm_70115
	cp $08
	jp z, .asm_70115
	ld b, a
	ld a, [$d0b1]
	and $3d
	jp nz, .asm_70115
	ld a, [$d059]
	and $9f
	jp nz, .asm_70115
	ld a, [$d001]
	cp b
	jp nz, .asm_70115
	ld a, [$d0b2]
	and $3d
	jp nz, .asm_701d2
	ld a, [$d05a]
	and $9f
	jp nz, .asm_701d2
	ld a, [$d002]
	cp b
	jp nz, .asm_701d2
	ld a, [w2d000]
	ld c, a
	ld de, w6d0b0
	ld hl, w6d058
	call Func_70000
	ld a, [$d001]
	ld c, a
	ld de, $d0b1
	ld hl, $d059
	call Func_70000
	ld a, [$d002]
	ld c, a
	ld de, $d0b2
	ld hl, $d05a
	call Func_70000
	ld a, [$d0b3]
	and $3d
	jp nz, .asm_7026b
	ld a, [$d05b]
	and $9f
	jp nz, .asm_7026b
	ld a, [$d003]
	cp b
	jp nz, .asm_7026b
	ld a, [$d003]
	ld c, a
	ld de, $d0b3
	ld hl, $d05b
	call Func_70000
	ld a, [$d0b4]
	and $3d
	jp nz, .asm_702dd
	ld a, [$d05c]
	and $9f
	jp nz, .asm_702dd
	ld a, [$d004]
	cp b
	jp nz, .asm_702dd
	ld a, [$d004]
	ld c, a
	ld de, $d0b4
	ld hl, $d05c
	call Func_70000
	ld a, [$d0b5]
	and $3d
	jp nz, .asm_702dd
	ld a, [$d05d]
	and $9f
	jp nz, .asm_702dd
	ld a, [$d005]
	cp b
	jp nz, .asm_702dd
	ld a, [$d005]
	ld c, a
	ld de, $d0b5
	ld hl, $d05d
	call Func_70000
	jp .asm_702dd

.asm_70115
	ld a, [$d0b1]
	and $3d
	jp nz, .asm_701d2
	ld a, [$d059]
	and $9f
	jp nz, .asm_701d2
	ld a, [$d001]
	and a
	jp z, .asm_701d2
	cp $08
	jp z, .asm_701d2
	ld b, a
	ld a, [$d0b2]
	and $3d
	jp nz, .asm_701d2
	ld a, [$d05a]
	and $9f
	jp nz, .asm_701d2
	ld a, [$d002]
	cp b
	jp nz, .asm_701d2
	ld a, [$d0b3]
	and $3d
	jp nz, .asm_7026b
	ld a, [$d05b]
	and $9f
	jp nz, .asm_7026b
	ld a, [$d003]
	cp b
	jp nz, .asm_7026b
	ld a, [$d001]
	ld c, a
	ld de, $d0b1
	ld hl, $d059
	call Func_70000
	ld a, [$d002]
	ld c, a
	ld de, $d0b2
	ld hl, $d05a
	call Func_70000
	ld a, [$d003]
	ld c, a
	ld de, $d0b3
	ld hl, $d05b
	call Func_70000
	ld a, [$d0b4]
	and $3d
	jp nz, .asm_702dd
	ld a, [$d05c]
	and $9f
	jp nz, .asm_702dd
	ld a, [$d004]
	cp b
	jp nz, .asm_702dd
	ld a, [$d004]
	ld c, a
	ld de, $d0b4
	ld hl, $d05c
	call Func_70000
	ld a, [$d0b5]
	and $3d
	jp nz, .asm_702dd
	ld a, [$d05d]
	and $9f
	jp nz, .asm_702dd
	ld a, [$d005]
	cp b
	jp nz, .asm_702dd
	ld a, [$d005]
	ld c, a
	ld de, $d0b5
	ld hl, $d05d
	call Func_70000
	jp .asm_702dd

.asm_701d2
	ld a, [$d0b2]
	and $3d
	jp nz, .asm_7026b
	ld a, [$d05a]
	and $9f
	jp nz, .asm_7026b
	ld a, [$d002]
	and a
	jp z, .asm_7026b
	cp $08
	jp z, .asm_7026b
	ld b, a
	ld a, [$d0b3]
	and $3d
	jp nz, .asm_7026b
	ld a, [$d05b]
	and $9f
	jp nz, .asm_7026b
	ld a, [$d003]
	cp b
	jp nz, .asm_7026b
	ld a, [$d0b4]
	and $3d
	jp nz, .asm_702dd
	ld a, [$d05c]
	and $9f
	jp nz, .asm_702dd
	ld a, [$d004]
	cp b
	jp nz, .asm_702dd
	ld a, [$d002]
	ld c, a
	ld de, $d0b2
	ld hl, $d05a
	call Func_70000
	ld a, [$d003]
	ld c, a
	ld de, $d0b3
	ld hl, $d05b
	call Func_70000
	ld a, [$d004]
	ld c, a
	ld de, $d0b4
	ld hl, $d05c
	call Func_70000
	ld a, [$d0b5]
	and $3d
	jp nz, .asm_702dd
	ld a, [$d05d]
	and $9f
	jp nz, .asm_702dd
	ld a, [$d005]
	cp b
	jp nz, .asm_702dd
	ld a, [$d005]
	ld c, a
	ld de, $d0b5
	ld hl, $d05d
	call Func_70000
	jp .asm_702dd

.asm_7026b
	ld a, [$d0b3]
	and $3d
	jp nz, .asm_702dd
	ld a, [$d05b]
	and $9f
	jp nz, .asm_702dd
	ld a, [$d003]
	and a
	jp z, .asm_702dd
	cp $08
	jp z, .asm_702dd
	ld b, a
	ld a, [$d0b4]
	and $3d
	jp nz, .asm_702dd
	ld a, [$d05c]
	and $9f
	jp nz, .asm_702dd
	ld a, [$d004]
	cp b
	jp nz, .asm_702dd
	ld a, [$d0b5]
	and $3d
	jp nz, .asm_702dd
	ld a, [$d05d]
	and $9f
	jp nz, .asm_702dd
	ld a, [$d005]
	cp b
	jp nz, .asm_702dd
	ld a, [$d003]
	ld c, a
	ld de, $d0b3
	ld hl, $d05b
	call Func_70000
	ld a, [$d004]
	ld c, a
	ld de, $d0b4
	ld hl, $d05c
	call Func_70000
	ld a, [$d005]
	ld c, a
	ld de, $d0b5
	ld hl, $d05d
	call Func_70000
.asm_702dd
	ld a, [$d0b8]
	and $3d
	jp nz, .asm_703be
	ld a, [$d060]
	and $9f
	jp nz, .asm_703be
	ld a, [$d008]
	and a
	jp z, .asm_703be
	cp $08
	jp z, .asm_703be
	ld b, a
	ld a, [$d0b9]
	and $3d
	jp nz, .asm_703be
	ld a, [$d061]
	and $9f
	jp nz, .asm_703be
	ld a, [$d009]
	cp b
	jp nz, .asm_703be
	ld a, [$d0ba]
	and $3d
	jp nz, .asm_7047b
	ld a, [$d062]
	and $9f
	jp nz, .asm_7047b
	ld a, [$d00a]
	cp b
	jp nz, .asm_7047b
	ld a, [$d008]
	ld c, a
	ld de, $d0b8
	ld hl, $d060
	call Func_70000
	ld a, [$d009]
	ld c, a
	ld de, $d0b9
	ld hl, $d061
	call Func_70000
	ld a, [$d00a]
	ld c, a
	ld de, $d0ba
	ld hl, $d062
	call Func_70000
	ld a, [$d0bb]
	and $3d
	jp nz, .asm_70514
	ld a, [$d063]
	and $9f
	jp nz, .asm_70514
	ld a, [$d00b]
	cp b
	jp nz, .asm_70514
	ld a, [$d00b]
	ld c, a
	ld de, $d0bb
	ld hl, $d063
	call Func_70000
	ld a, [$d0bc]
	and $3d
	jp nz, .asm_70586
	ld a, [$d064]
	and $9f
	jp nz, .asm_70586
	ld a, [$d00c]
	cp b
	jp nz, .asm_70586
	ld a, [$d00c]
	ld c, a
	ld de, $d0bc
	ld hl, $d064
	call Func_70000
	ld a, [$d0bd]
	and $3d
	jp nz, .asm_70586
	ld a, [$d065]
	and $9f
	jp nz, .asm_70586
	ld a, [$d00d]
	cp b
	jp nz, .asm_70586
	ld a, [$d00d]
	ld c, a
	ld de, $d0bd
	ld hl, $d065
	call Func_70000
	jp .asm_70586

.asm_703be
	ld a, [$d0b9]
	and $3d
	jp nz, .asm_7047b
	ld a, [$d061]
	and $9f
	jp nz, .asm_7047b
	ld a, [$d009]
	and a
	jp z, .asm_7047b
	cp $08
	jp z, .asm_7047b
	ld b, a
	ld a, [$d0ba]
	and $3d
	jp nz, .asm_7047b
	ld a, [$d062]
	and $9f
	jp nz, .asm_7047b
	ld a, [$d00a]
	cp b
	jp nz, .asm_7047b
	ld a, [$d0bb]
	and $3d
	jp nz, .asm_70514
	ld a, [$d063]
	and $9f
	jp nz, .asm_70514
	ld a, [$d00b]
	cp b
	jp nz, .asm_70514
	ld a, [$d009]
	ld c, a
	ld de, $d0b9
	ld hl, $d061
	call Func_70000
	ld a, [$d00a]
	ld c, a
	ld de, $d0ba
	ld hl, $d062
	call Func_70000
	ld a, [$d00b]
	ld c, a
	ld de, $d0bb
	ld hl, $d063
	call Func_70000
	ld a, [$d0bc]
	and $3d
	jp nz, .asm_70586
	ld a, [$d064]
	and $9f
	jp nz, .asm_70586
	ld a, [$d00c]
	cp b
	jp nz, .asm_70586
	ld a, [$d00c]
	ld c, a
	ld de, $d0bc
	ld hl, $d064
	call Func_70000
	ld a, [$d0bd]
	and $3d
	jp nz, .asm_70586
	ld a, [$d065]
	and $9f
	jp nz, .asm_70586
	ld a, [$d00d]
	cp b
	jp nz, .asm_70586
	ld a, [$d00d]
	ld c, a
	ld de, $d0bd
	ld hl, $d065
	call Func_70000
	jp .asm_70586

.asm_7047b
	ld a, [$d0ba]
	and $3d
	jp nz, .asm_70514
	ld a, [$d062]
	and $9f
	jp nz, .asm_70514
	ld a, [$d00a]
	and a
	jp z, .asm_70514
	cp $08
	jp z, .asm_70514
	ld b, a
	ld a, [$d0bb]
	and $3d
	jp nz, .asm_70514
	ld a, [$d063]
	and $9f
	jp nz, .asm_70514
	ld a, [$d00b]
	cp b
	jp nz, .asm_70514
	ld a, [$d0bc]
	and $3d
	jp nz, .asm_70586
	ld a, [$d064]
	and $9f
	jp nz, .asm_70586
	ld a, [$d00c]
	cp b
	jp nz, .asm_70586
	ld a, [$d00a]
	ld c, a
	ld de, $d0ba
	ld hl, $d062
	call Func_70000
	ld a, [$d00b]
	ld c, a
	ld de, $d0bb
	ld hl, $d063
	call Func_70000
	ld a, [$d00c]
	ld c, a
	ld de, $d0bc
	ld hl, $d064
	call Func_70000
	ld a, [$d0bd]
	and $3d
	jp nz, .asm_70586
	ld a, [$d065]
	and $9f
	jp nz, .asm_70586
	ld a, [$d00d]
	cp b
	jp nz, .asm_70586
	ld a, [$d00d]
	ld c, a
	ld de, $d0bd
	ld hl, $d065
	call Func_70000
	jp .asm_70586

.asm_70514
	ld a, [$d0bb]
	and $3d
	jp nz, .asm_70586
	ld a, [$d063]
	and $9f
	jp nz, .asm_70586
	ld a, [$d00b]
	and a
	jp z, .asm_70586
	cp $08
	jp z, .asm_70586
	ld b, a
	ld a, [$d0bc]
	and $3d
	jp nz, .asm_70586
	ld a, [$d064]
	and $9f
	jp nz, .asm_70586
	ld a, [$d00c]
	cp b
	jp nz, .asm_70586
	ld a, [$d0bd]
	and $3d
	jp nz, .asm_70586
	ld a, [$d065]
	and $9f
	jp nz, .asm_70586
	ld a, [$d00d]
	cp b
	jp nz, .asm_70586
	ld a, [$d00b]
	ld c, a
	ld de, $d0bb
	ld hl, $d063
	call Func_70000
	ld a, [$d00c]
	ld c, a
	ld de, $d0bc
	ld hl, $d064
	call Func_70000
	ld a, [$d00d]
	ld c, a
	ld de, $d0bd
	ld hl, $d065
	call Func_70000

.asm_70586
	ld a, [w2d0c0]
	and $3d
	jp nz, .asm_70667
	ld a, [$d068]
	and $9f
	jp nz, .asm_70667
	ld a, [$d010]
	and a
	jp z, .asm_70667
	cp $08
	jp z, .asm_70667
	ld b, a
	ld a, [$d0c1]
	and $3d
	jp nz, .asm_70667
	ld a, [$d069]
	and $9f
	jp nz, .asm_70667
	ld a, [$d011]
	cp b
	jp nz, .asm_70667
	ld a, [$d0c2]
	and $3d
	jp nz, .asm_70724
	ld a, [$d06a]
	and $9f
	jp nz, .asm_70724
	ld a, [$d012]
	cp b
	jp nz, .asm_70724
	ld a, [$d010]
	ld c, a
	ld de, w2d0c0
	ld hl, $d068
	call Func_70000
	ld a, [$d011]
	ld c, a
	ld de, $d0c1
	ld hl, $d069
	call Func_70000
	ld a, [$d012]
	ld c, a
	ld de, $d0c2
	ld hl, $d06a
	call Func_70000
	ld a, [$d0c3]
	and $3d
	jp nz, .asm_707bd
	ld a, [$d06b]
	and $9f
	jp nz, .asm_707bd
	ld a, [$d013]
	cp b
	jp nz, .asm_707bd
	ld a, [$d013]
	ld c, a
	ld de, $d0c3
	ld hl, $d06b
	call Func_70000
	ld a, [$d0c4]
	and $3d
	jp nz, .asm_7082f
	ld a, [$d06c]
	and $9f
	jp nz, .asm_7082f
	ld a, [$d014]
	cp b
	jp nz, .asm_7082f
	ld a, [$d014]
	ld c, a
	ld de, $d0c4
	ld hl, $d06c
	call Func_70000
	ld a, [$d0c5]
	and $3d
	jp nz, .asm_7082f
	ld a, [$d06d]
	and $9f
	jp nz, .asm_7082f
	ld a, [$d015]
	cp b
	jp nz, .asm_7082f
	ld a, [$d015]
	ld c, a
	ld de, $d0c5
	ld hl, $d06d
	call Func_70000
	jp .asm_7082f

.asm_70667
	ld a, [$d0c1]
	and $3d
	jp nz, .asm_70724
	ld a, [$d069]
	and $9f
	jp nz, .asm_70724
	ld a, [$d011]
	and a
	jp z, .asm_70724
	cp $08
	jp z, .asm_70724
	ld b, a
	ld a, [$d0c2]
	and $3d
	jp nz, .asm_70724
	ld a, [$d06a]
	and $9f
	jp nz, .asm_70724
	ld a, [$d012]
	cp b
	jp nz, .asm_70724
	ld a, [$d0c3]
	and $3d
	jp nz, .asm_707bd
	ld a, [$d06b]
	and $9f
	jp nz, .asm_707bd
	ld a, [$d013]
	cp b
	jp nz, .asm_707bd
	ld a, [$d011]
	ld c, a
	ld de, $d0c1
	ld hl, $d069
	call Func_70000
	ld a, [$d012]
	ld c, a
	ld de, $d0c2
	ld hl, $d06a
	call Func_70000
	ld a, [$d013]
	ld c, a
	ld de, $d0c3
	ld hl, $d06b
	call Func_70000
	ld a, [$d0c4]
	and $3d
	jp nz, .asm_7082f
	ld a, [$d06c]
	and $9f
	jp nz, .asm_7082f
	ld a, [$d014]
	cp b
	jp nz, .asm_7082f
	ld a, [$d014]
	ld c, a
	ld de, $d0c4
	ld hl, $d06c
	call Func_70000
	ld a, [$d0c5]
	and $3d
	jp nz, .asm_7082f
	ld a, [$d06d]
	and $9f
	jp nz, .asm_7082f
	ld a, [$d015]
	cp b
	jp nz, .asm_7082f
	ld a, [$d015]
	ld c, a
	ld de, $d0c5
	ld hl, $d06d
	call Func_70000
	jp .asm_7082f

.asm_70724
	ld a, [$d0c2]
	and $3d
	jp nz, .asm_707bd
	ld a, [$d06a]
	and $9f
	jp nz, .asm_707bd
	ld a, [$d012]
	and a
	jp z, .asm_707bd
	cp $08
	jp z, .asm_707bd
	ld b, a
	ld a, [$d0c3]
	and $3d
	jp nz, .asm_707bd
	ld a, [$d06b]
	and $9f
	jp nz, .asm_707bd
	ld a, [$d013]
	cp b
	jp nz, .asm_707bd
	ld a, [$d0c4]
	and $3d
	jp nz, .asm_7082f
	ld a, [$d06c]
	and $9f
	jp nz, .asm_7082f
	ld a, [$d014]
	cp b
	jp nz, .asm_7082f
	ld a, [$d012]
	ld c, a
	ld de, $d0c2
	ld hl, $d06a
	call Func_70000
	ld a, [$d013]
	ld c, a
	ld de, $d0c3
	ld hl, $d06b
	call Func_70000
	ld a, [$d014]
	ld c, a
	ld de, $d0c4
	ld hl, $d06c
	call Func_70000
	ld a, [$d0c5]
	and $3d
	jp nz, .asm_7082f
	ld a, [$d06d]
	and $9f
	jp nz, .asm_7082f
	ld a, [$d015]
	cp b
	jp nz, .asm_7082f
	ld a, [$d015]
	ld c, a
	ld de, $d0c5
	ld hl, $d06d
	call Func_70000
	jp .asm_7082f

.asm_707bd
	ld a, [$d0c3]
	and $3d
	jp nz, .asm_7082f
	ld a, [$d06b]
	and $9f
	jp nz, .asm_7082f
	ld a, [$d013]
	and a
	jp z, .asm_7082f
	cp $08
	jp z, .asm_7082f
	ld b, a
	ld a, [$d0c4]
	and $3d
	jp nz, .asm_7082f
	ld a, [$d06c]
	and $9f
	jp nz, .asm_7082f
	ld a, [$d014]
	cp b
	jp nz, .asm_7082f
	ld a, [$d0c5]
	and $3d
	jp nz, .asm_7082f
	ld a, [$d06d]
	and $9f
	jp nz, .asm_7082f
	ld a, [$d015]
	cp b
	jp nz, .asm_7082f
	ld a, [$d013]
	ld c, a
	ld de, $d0c3
	ld hl, $d06b
	call Func_70000
	ld a, [$d014]
	ld c, a
	ld de, $d0c4
	ld hl, $d06c
	call Func_70000
	ld a, [$d015]
	ld c, a
	ld de, $d0c5
	ld hl, $d06d
	call Func_70000

.asm_7082f
	ld a, [$d0c8]
	and $3d
	jp nz, .asm_70910
	ld a, [$d070]
	and $9f
	jp nz, .asm_70910
	ld a, [$d018]
	and a
	jp z, .asm_70910
	cp $08
	jp z, .asm_70910
	ld b, a
	ld a, [$d0c9]
	and $3d
	jp nz, .asm_70910
	ld a, [$d071]
	and $9f
	jp nz, .asm_70910
	ld a, [$d019]
	cp b
	jp nz, .asm_70910
	ld a, [$d0ca]
	and $3d
	jp nz, .asm_709cd
	ld a, [$d072]
	and $9f
	jp nz, .asm_709cd
	ld a, [$d01a]
	cp b
	jp nz, .asm_709cd
	ld a, [$d018]
	ld c, a
	ld de, $d0c8
	ld hl, $d070
	call Func_70000
	ld a, [$d019]
	ld c, a
	ld de, $d0c9
	ld hl, $d071
	call Func_70000
	ld a, [$d01a]
	ld c, a
	ld de, $d0ca
	ld hl, $d072
	call Func_70000
	ld a, [$d0cb]
	and $3d
	jp nz, .asm_70a66
	ld a, [$d073]
	and $9f
	jp nz, .asm_70a66
	ld a, [$d01b]
	cp b
	jp nz, .asm_70a66
	ld a, [$d01b]
	ld c, a
	ld de, $d0cb
	ld hl, $d073
	call Func_70000
	ld a, [$d0cc]
	and $3d
	jp nz, .asm_70ad8
	ld a, [$d074]
	and $9f
	jp nz, .asm_70ad8
	ld a, [$d01c]
	cp b
	jp nz, .asm_70ad8
	ld a, [$d01c]
	ld c, a
	ld de, $d0cc
	ld hl, $d074
	call Func_70000
	ld a, [$d0cd]
	and $3d
	jp nz, .asm_70ad8
	ld a, [$d075]
	and $9f
	jp nz, .asm_70ad8
	ld a, [$d01d]
	cp b
	jp nz, .asm_70ad8
	ld a, [$d01d]
	ld c, a
	ld de, $d0cd
	ld hl, $d075
	call Func_70000
	jp .asm_70ad8

.asm_70910
	ld a, [$d0c9]
	and $3d
	jp nz, .asm_709cd
	ld a, [$d071]
	and $9f
	jp nz, .asm_709cd
	ld a, [$d019]
	and a
	jp z, .asm_709cd
	cp $08
	jp z, .asm_709cd
	ld b, a
	ld a, [$d0ca]
	and $3d
	jp nz, .asm_709cd
	ld a, [$d072]
	and $9f
	jp nz, .asm_709cd
	ld a, [$d01a]
	cp b
	jp nz, .asm_709cd
	ld a, [$d0cb]
	and $3d
	jp nz, .asm_70a66
	ld a, [$d073]
	and $9f
	jp nz, .asm_70a66
	ld a, [$d01b]
	cp b
	jp nz, .asm_70a66
	ld a, [$d019]
	ld c, a
	ld de, $d0c9
	ld hl, $d071
	call Func_70000
	ld a, [$d01a]
	ld c, a
	ld de, $d0ca
	ld hl, $d072
	call Func_70000
	ld a, [$d01b]
	ld c, a
	ld de, $d0cb
	ld hl, $d073
	call Func_70000
	ld a, [$d0cc]
	and $3d
	jp nz, .asm_70ad8
	ld a, [$d074]
	and $9f
	jp nz, .asm_70ad8
	ld a, [$d01c]
	cp b
	jp nz, .asm_70ad8
	ld a, [$d01c]
	ld c, a
	ld de, $d0cc
	ld hl, $d074
	call Func_70000
	ld a, [$d0cd]
	and $3d
	jp nz, .asm_70ad8
	ld a, [$d075]
	and $9f
	jp nz, .asm_70ad8
	ld a, [$d01d]
	cp b
	jp nz, .asm_70ad8
	ld a, [$d01d]
	ld c, a
	ld de, $d0cd
	ld hl, $d075
	call Func_70000
	jp .asm_70ad8

.asm_709cd
	ld a, [$d0ca]
	and $3d
	jp nz, .asm_70a66
	ld a, [$d072]
	and $9f
	jp nz, .asm_70a66
	ld a, [$d01a]
	and a
	jp z, .asm_70a66
	cp $08
	jp z, .asm_70a66
	ld b, a
	ld a, [$d0cb]
	and $3d
	jp nz, .asm_70a66
	ld a, [$d073]
	and $9f
	jp nz, .asm_70a66
	ld a, [$d01b]
	cp b
	jp nz, .asm_70a66
	ld a, [$d0cc]
	and $3d
	jp nz, .asm_70ad8
	ld a, [$d074]
	and $9f
	jp nz, .asm_70ad8
	ld a, [$d01c]
	cp b
	jp nz, .asm_70ad8
	ld a, [$d01a]
	ld c, a
	ld de, $d0ca
	ld hl, $d072
	call Func_70000
	ld a, [$d01b]
	ld c, a
	ld de, $d0cb
	ld hl, $d073
	call Func_70000
	ld a, [$d01c]
	ld c, a
	ld de, $d0cc
	ld hl, $d074
	call Func_70000
	ld a, [$d0cd]
	and $3d
	jp nz, .asm_70ad8
	ld a, [$d075]
	and $9f
	jp nz, .asm_70ad8
	ld a, [$d01d]
	cp b
	jp nz, .asm_70ad8
	ld a, [$d01d]
	ld c, a
	ld de, $d0cd
	ld hl, $d075
	call Func_70000
	jp .asm_70ad8

.asm_70a66
	ld a, [$d0cb]
	and $3d
	jp nz, .asm_70ad8
	ld a, [$d073]
	and $9f
	jp nz, .asm_70ad8
	ld a, [$d01b]
	and a
	jp z, .asm_70ad8
	cp $08
	jp z, .asm_70ad8
	ld b, a
	ld a, [$d0cc]
	and $3d
	jp nz, .asm_70ad8
	ld a, [$d074]
	and $9f
	jp nz, .asm_70ad8
	ld a, [$d01c]
	cp b
	jp nz, .asm_70ad8
	ld a, [$d0cd]
	and $3d
	jp nz, .asm_70ad8
	ld a, [$d075]
	and $9f
	jp nz, .asm_70ad8
	ld a, [$d01d]
	cp b
	jp nz, .asm_70ad8
	ld a, [$d01b]
	ld c, a
	ld de, $d0cb
	ld hl, $d073
	call Func_70000
	ld a, [$d01c]
	ld c, a
	ld de, $d0cc
	ld hl, $d074
	call Func_70000
	ld a, [$d01d]
	ld c, a
	ld de, $d0cd
	ld hl, $d075
	call Func_70000

.asm_70ad8
	ld a, [$d0d0]
	and $3d
	jp nz, .asm_70bb9
	ld a, [$d078]
	and $9f
	jp nz, .asm_70bb9
	ld a, [$d020]
	and a
	jp z, .asm_70bb9
	cp $08
	jp z, .asm_70bb9
	ld b, a
	ld a, [$d0d1]
	and $3d
	jp nz, .asm_70bb9
	ld a, [$d079]
	and $9f
	jp nz, .asm_70bb9
	ld a, [$d021]
	cp b
	jp nz, .asm_70bb9
	ld a, [$d0d2]
	and $3d
	jp nz, .asm_70c76
	ld a, [$d07a]
	and $9f
	jp nz, .asm_70c76
	ld a, [$d022]
	cp b
	jp nz, .asm_70c76
	ld a, [$d020]
	ld c, a
	ld de, $d0d0
	ld hl, $d078
	call Func_70000
	ld a, [$d021]
	ld c, a
	ld de, $d0d1
	ld hl, $d079
	call Func_70000
	ld a, [$d022]
	ld c, a
	ld de, $d0d2
	ld hl, $d07a
	call Func_70000
	ld a, [$d0d3]
	and $3d
	jp nz, .asm_70d0f
	ld a, [$d07b]
	and $9f
	jp nz, .asm_70d0f
	ld a, [$d023]
	cp b
	jp nz, .asm_70d0f
	ld a, [$d023]
	ld c, a
	ld de, $d0d3
	ld hl, $d07b
	call Func_70000
	ld a, [$d0d4]
	and $3d
	jp nz, .asm_70d81
	ld a, [$d07c]
	and $9f
	jp nz, .asm_70d81
	ld a, [$d024]
	cp b
	jp nz, .asm_70d81
	ld a, [$d024]
	ld c, a
	ld de, $d0d4
	ld hl, $d07c
	call Func_70000
	ld a, [$d0d5]
	and $3d
	jp nz, .asm_70d81
	ld a, [$d07d]
	and $9f
	jp nz, .asm_70d81
	ld a, [$d025]
	cp b
	jp nz, .asm_70d81
	ld a, [$d025]
	ld c, a
	ld de, $d0d5
	ld hl, $d07d
	call Func_70000
	jp .asm_70d81

.asm_70bb9
	ld a, [$d0d1]
	and $3d
	jp nz, .asm_70c76
	ld a, [$d079]
	and $9f
	jp nz, .asm_70c76
	ld a, [$d021]
	and a
	jp z, .asm_70c76
	cp $08
	jp z, .asm_70c76
	ld b, a
	ld a, [$d0d2]
	and $3d
	jp nz, .asm_70c76
	ld a, [$d07a]
	and $9f
	jp nz, .asm_70c76
	ld a, [$d022]
	cp b
	jp nz, .asm_70c76
	ld a, [$d0d3]
	and $3d
	jp nz, .asm_70d0f
	ld a, [$d07b]
	and $9f
	jp nz, .asm_70d0f
	ld a, [$d023]
	cp b
	jp nz, .asm_70d0f
	ld a, [$d021]
	ld c, a
	ld de, $d0d1
	ld hl, $d079
	call Func_70000
	ld a, [$d022]
	ld c, a
	ld de, $d0d2
	ld hl, $d07a
	call Func_70000
	ld a, [$d023]
	ld c, a
	ld de, $d0d3
	ld hl, $d07b
	call Func_70000
	ld a, [$d0d4]
	and $3d
	jp nz, .asm_70d81
	ld a, [$d07c]
	and $9f
	jp nz, .asm_70d81
	ld a, [$d024]
	cp b
	jp nz, .asm_70d81
	ld a, [$d024]
	ld c, a
	ld de, $d0d4
	ld hl, $d07c
	call Func_70000
	ld a, [$d0d5]
	and $3d
	jp nz, .asm_70d81
	ld a, [$d07d]
	and $9f
	jp nz, .asm_70d81
	ld a, [$d025]
	cp b
	jp nz, .asm_70d81
	ld a, [$d025]
	ld c, a
	ld de, $d0d5
	ld hl, $d07d
	call Func_70000
	jp .asm_70d81

.asm_70c76
	ld a, [$d0d2]
	and $3d
	jp nz, .asm_70d0f
	ld a, [$d07a]
	and $9f
	jp nz, .asm_70d0f
	ld a, [$d022]
	and a
	jp z, .asm_70d0f
	cp $08
	jp z, .asm_70d0f
	ld b, a
	ld a, [$d0d3]
	and $3d
	jp nz, .asm_70d0f
	ld a, [$d07b]
	and $9f
	jp nz, .asm_70d0f
	ld a, [$d023]
	cp b
	jp nz, .asm_70d0f
	ld a, [$d0d4]
	and $3d
	jp nz, .asm_70d81
	ld a, [$d07c]
	and $9f
	jp nz, .asm_70d81
	ld a, [$d024]
	cp b
	jp nz, .asm_70d81
	ld a, [$d022]
	ld c, a
	ld de, $d0d2
	ld hl, $d07a
	call Func_70000
	ld a, [$d023]
	ld c, a
	ld de, $d0d3
	ld hl, $d07b
	call Func_70000
	ld a, [$d024]
	ld c, a
	ld de, $d0d4
	ld hl, $d07c
	call Func_70000
	ld a, [$d0d5]
	and $3d
	jp nz, .asm_70d81
	ld a, [$d07d]
	and $9f
	jp nz, .asm_70d81
	ld a, [$d025]
	cp b
	jp nz, .asm_70d81
	ld a, [$d025]
	ld c, a
	ld de, $d0d5
	ld hl, $d07d
	call Func_70000
	jp .asm_70d81

.asm_70d0f
	ld a, [$d0d3]
	and $3d
	jp nz, .asm_70d81
	ld a, [$d07b]
	and $9f
	jp nz, .asm_70d81
	ld a, [$d023]
	and a
	jp z, .asm_70d81
	cp $08
	jp z, .asm_70d81
	ld b, a
	ld a, [$d0d4]
	and $3d
	jp nz, .asm_70d81
	ld a, [$d07c]
	and $9f
	jp nz, .asm_70d81
	ld a, [$d024]
	cp b
	jp nz, .asm_70d81
	ld a, [$d0d5]
	and $3d
	jp nz, .asm_70d81
	ld a, [$d07d]
	and $9f
	jp nz, .asm_70d81
	ld a, [$d025]
	cp b
	jp nz, .asm_70d81
	ld a, [$d023]
	ld c, a
	ld de, $d0d3
	ld hl, $d07b
	call Func_70000
	ld a, [$d024]
	ld c, a
	ld de, $d0d4
	ld hl, $d07c
	call Func_70000
	ld a, [$d025]
	ld c, a
	ld de, $d0d5
	ld hl, $d07d
	call Func_70000
.asm_70d81
	ld a, [$d0d8]
	and $3d
	jp nz, .asm_70e62
	ld a, [$d080]
	and $9f
	jp nz, .asm_70e62
	ld a, [$d028]
	and a
	jp z, .asm_70e62
	cp $08
	jp z, .asm_70e62
	ld b, a
	ld a, [$d0d9]
	and $3d
	jp nz, .asm_70e62
	ld a, [$d081]
	and $9f
	jp nz, .asm_70e62
	ld a, [$d029]
	cp b
	jp nz, .asm_70e62
	ld a, [$d0da]
	and $3d
	jp nz, .asm_70f1f
	ld a, [$d082]
	and $9f
	jp nz, .asm_70f1f
	ld a, [$d02a]
	cp b
	jp nz, .asm_70f1f
	ld a, [$d028]
	ld c, a
	ld de, $d0d8
	ld hl, $d080
	call Func_70000
	ld a, [$d029]
	ld c, a
	ld de, $d0d9
	ld hl, $d081
	call Func_70000
	ld a, [$d02a]
	ld c, a
	ld de, $d0da
	ld hl, $d082
	call Func_70000
	ld a, [$d0db]
	and $3d
	jp nz, .asm_70fb8
	ld a, [$d083]
	and $9f
	jp nz, .asm_70fb8
	ld a, [$d02b]
	cp b
	jp nz, .asm_70fb8
	ld a, [$d02b]
	ld c, a
	ld de, $d0db
	ld hl, $d083
	call Func_70000
	ld a, [$d0dc]
	and $3d
	jp nz, .asm_7102a
	ld a, [$d084]
	and $9f
	jp nz, .asm_7102a
	ld a, [$d02c]
	cp b
	jp nz, .asm_7102a
	ld a, [$d02c]
	ld c, a
	ld de, $d0dc
	ld hl, $d084
	call Func_70000
	ld a, [$d0dd]
	and $3d
	jp nz, .asm_7102a
	ld a, [$d085]
	and $9f
	jp nz, .asm_7102a
	ld a, [$d02d]
	cp b
	jp nz, .asm_7102a
	ld a, [$d02d]
	ld c, a
	ld de, $d0dd
	ld hl, $d085
	call Func_70000
	jp .asm_7102a

.asm_70e62
	ld a, [$d0d9]
	and $3d
	jp nz, .asm_70f1f
	ld a, [$d081]
	and $9f
	jp nz, .asm_70f1f
	ld a, [$d029]
	and a
	jp z, .asm_70f1f
	cp $08
	jp z, .asm_70f1f
	ld b, a
	ld a, [$d0da]
	and $3d
	jp nz, .asm_70f1f
	ld a, [$d082]
	and $9f
	jp nz, .asm_70f1f
	ld a, [$d02a]
	cp b
	jp nz, .asm_70f1f
	ld a, [$d0db]
	and $3d
	jp nz, .asm_70fb8
	ld a, [$d083]
	and $9f
	jp nz, .asm_70fb8
	ld a, [$d02b]
	cp b
	jp nz, .asm_70fb8
	ld a, [$d029]
	ld c, a
	ld de, $d0d9
	ld hl, $d081
	call Func_70000
	ld a, [$d02a]
	ld c, a
	ld de, $d0da
	ld hl, $d082
	call Func_70000
	ld a, [$d02b]
	ld c, a
	ld de, $d0db
	ld hl, $d083
	call Func_70000
	ld a, [$d0dc]
	and $3d
	jp nz, .asm_7102a
	ld a, [$d084]
	and $9f
	jp nz, .asm_7102a
	ld a, [$d02c]
	cp b
	jp nz, .asm_7102a
	ld a, [$d02c]
	ld c, a
	ld de, $d0dc
	ld hl, $d084
	call Func_70000
	ld a, [$d0dd]
	and $3d
	jp nz, .asm_7102a
	ld a, [$d085]
	and $9f
	jp nz, .asm_7102a
	ld a, [$d02d]
	cp b
	jp nz, .asm_7102a
	ld a, [$d02d]
	ld c, a
	ld de, $d0dd
	ld hl, $d085
	call Func_70000
	jp .asm_7102a

.asm_70f1f
	ld a, [$d0da]
	and $3d
	jp nz, .asm_70fb8
	ld a, [$d082]
	and $9f
	jp nz, .asm_70fb8
	ld a, [$d02a]
	and a
	jp z, .asm_70fb8
	cp $08
	jp z, .asm_70fb8
	ld b, a
	ld a, [$d0db]
	and $3d
	jp nz, .asm_70fb8
	ld a, [$d083]
	and $9f
	jp nz, .asm_70fb8
	ld a, [$d02b]
	cp b
	jp nz, .asm_70fb8
	ld a, [$d0dc]
	and $3d
	jp nz, .asm_7102a
	ld a, [$d084]
	and $9f
	jp nz, .asm_7102a
	ld a, [$d02c]
	cp b
	jp nz, .asm_7102a
	ld a, [$d02a]
	ld c, a
	ld de, $d0da
	ld hl, $d082
	call Func_70000
	ld a, [$d02b]
	ld c, a
	ld de, $d0db
	ld hl, $d083
	call Func_70000
	ld a, [$d02c]
	ld c, a
	ld de, $d0dc
	ld hl, $d084
	call Func_70000
	ld a, [$d0dd]
	and $3d
	jp nz, .asm_7102a
	ld a, [$d085]
	and $9f
	jp nz, .asm_7102a
	ld a, [$d02d]
	cp b
	jp nz, .asm_7102a
	ld a, [$d02d]
	ld c, a
	ld de, $d0dd
	ld hl, $d085
	call Func_70000
	jp .asm_7102a

.asm_70fb8
	ld a, [$d0db]
	and $3d
	jp nz, .asm_7102a
	ld a, [$d083]
	and $9f
	jp nz, .asm_7102a
	ld a, [$d02b]
	and a
	jp z, .asm_7102a
	cp $08
	jp z, .asm_7102a
	ld b, a
	ld a, [$d0dc]
	and $3d
	jp nz, .asm_7102a
	ld a, [$d084]
	and $9f
	jp nz, .asm_7102a
	ld a, [$d02c]
	cp b
	jp nz, .asm_7102a
	ld a, [$d0dd]
	and $3d
	jp nz, .asm_7102a
	ld a, [$d085]
	and $9f
	jp nz, .asm_7102a
	ld a, [$d02d]
	cp b
	jp nz, .asm_7102a
	ld a, [$d02b]
	ld c, a
	ld de, $d0db
	ld hl, $d083
	call Func_70000
	ld a, [$d02c]
	ld c, a
	ld de, $d0dc
	ld hl, $d084
	call Func_70000
	ld a, [$d02d]
	ld c, a
	ld de, $d0dd
	ld hl, $d085
	call Func_70000
.asm_7102a
	ld a, [$d0e0]
	and $3d
	jp nz, .asm_7110b
	ld a, [$d088]
	and $9f
	jp nz, .asm_7110b
	ld a, [$d030]
	and a
	jp z, .asm_7110b
	cp $08
	jp z, .asm_7110b
	ld b, a
	ld a, [$d0e1]
	and $3d
	jp nz, .asm_7110b
	ld a, [$d089]
	and $9f
	jp nz, .asm_7110b
	ld a, [$d031]
	cp b
	jp nz, .asm_7110b
	ld a, [$d0e2]
	and $3d
	jp nz, .asm_711c8
	ld a, [$d08a]
	and $9f
	jp nz, .asm_711c8
	ld a, [$d032]
	cp b
	jp nz, .asm_711c8
	ld a, [$d030]
	ld c, a
	ld de, $d0e0
	ld hl, $d088
	call Func_70000
	ld a, [$d031]
	ld c, a
	ld de, $d0e1
	ld hl, $d089
	call Func_70000
	ld a, [$d032]
	ld c, a
	ld de, $d0e2
	ld hl, $d08a
	call Func_70000
	ld a, [$d0e3]
	and $3d
	jp nz, .asm_71261
	ld a, [$d08b]
	and $9f
	jp nz, .asm_71261
	ld a, [$d033]
	cp b
	jp nz, .asm_71261
	ld a, [$d033]
	ld c, a
	ld de, $d0e3
	ld hl, $d08b
	call Func_70000
	ld a, [$d0e4]
	and $3d
	jp nz, .asm_712d3
	ld a, [$d08c]
	and $9f
	jp nz, .asm_712d3
	ld a, [$d034]
	cp b
	jp nz, .asm_712d3
	ld a, [$d034]
	ld c, a
	ld de, $d0e4
	ld hl, $d08c
	call Func_70000
	ld a, [$d0e5]
	and $3d
	jp nz, .asm_712d3
	ld a, [$d08d]
	and $9f
	jp nz, .asm_712d3
	ld a, [$d035]
	cp b
	jp nz, .asm_712d3
	ld a, [$d035]
	ld c, a
	ld de, $d0e5
	ld hl, $d08d
	call Func_70000
	jp .asm_712d3

.asm_7110b
	ld a, [$d0e1]
	and $3d
	jp nz, .asm_711c8
	ld a, [$d089]
	and $9f
	jp nz, .asm_711c8
	ld a, [$d031]
	and a
	jp z, .asm_711c8
	cp $08
	jp z, .asm_711c8
	ld b, a
	ld a, [$d0e2]
	and $3d
	jp nz, .asm_711c8
	ld a, [$d08a]
	and $9f
	jp nz, .asm_711c8
	ld a, [$d032]
	cp b
	jp nz, .asm_711c8
	ld a, [$d0e3]
	and $3d
	jp nz, .asm_71261
	ld a, [$d08b]
	and $9f
	jp nz, .asm_71261
	ld a, [$d033]
	cp b
	jp nz, .asm_71261
	ld a, [$d031]
	ld c, a
	ld de, $d0e1
	ld hl, $d089
	call Func_70000
	ld a, [$d032]
	ld c, a
	ld de, $d0e2
	ld hl, $d08a
	call Func_70000
	ld a, [$d033]
	ld c, a
	ld de, $d0e3
	ld hl, $d08b
	call Func_70000
	ld a, [$d0e4]
	and $3d
	jp nz, .asm_712d3
	ld a, [$d08c]
	and $9f
	jp nz, .asm_712d3
	ld a, [$d034]
	cp b
	jp nz, .asm_712d3
	ld a, [$d034]
	ld c, a
	ld de, $d0e4
	ld hl, $d08c
	call Func_70000
	ld a, [$d0e5]
	and $3d
	jp nz, .asm_712d3
	ld a, [$d08d]
	and $9f
	jp nz, .asm_712d3
	ld a, [$d035]
	cp b
	jp nz, .asm_712d3
	ld a, [$d035]
	ld c, a
	ld de, $d0e5
	ld hl, $d08d
	call Func_70000
	jp .asm_712d3

.asm_711c8
	ld a, [$d0e2]
	and $3d
	jp nz, .asm_71261
	ld a, [$d08a]
	and $9f
	jp nz, .asm_71261
	ld a, [$d032]
	and a
	jp z, .asm_71261
	cp $08
	jp z, .asm_71261
	ld b, a
	ld a, [$d0e3]
	and $3d
	jp nz, .asm_71261
	ld a, [$d08b]
	and $9f
	jp nz, .asm_71261
	ld a, [$d033]
	cp b
	jp nz, .asm_71261
	ld a, [$d0e4]
	and $3d
	jp nz, .asm_712d3
	ld a, [$d08c]
	and $9f
	jp nz, .asm_712d3
	ld a, [$d034]
	cp b
	jp nz, .asm_712d3
	ld a, [$d032]
	ld c, a
	ld de, $d0e2
	ld hl, $d08a
	call Func_70000
	ld a, [$d033]
	ld c, a
	ld de, $d0e3
	ld hl, $d08b
	call Func_70000
	ld a, [$d034]
	ld c, a
	ld de, $d0e4
	ld hl, $d08c
	call Func_70000
	ld a, [$d0e5]
	and $3d
	jp nz, .asm_712d3
	ld a, [$d08d]
	and $9f
	jp nz, .asm_712d3
	ld a, [$d035]
	cp b
	jp nz, .asm_712d3
	ld a, [$d035]
	ld c, a
	ld de, $d0e5
	ld hl, $d08d
	call Func_70000
	jp .asm_712d3

.asm_71261
	ld a, [$d0e3]
	and $3d
	jp nz, .asm_712d3
	ld a, [$d08b]
	and $9f
	jp nz, .asm_712d3
	ld a, [$d033]
	and a
	jp z, .asm_712d3
	cp $08
	jp z, .asm_712d3
	ld b, a
	ld a, [$d0e4]
	and $3d
	jp nz, .asm_712d3
	ld a, [$d08c]
	and $9f
	jp nz, .asm_712d3
	ld a, [$d034]
	cp b
	jp nz, .asm_712d3
	ld a, [$d0e5]
	and $3d
	jp nz, .asm_712d3
	ld a, [$d08d]
	and $9f
	jp nz, .asm_712d3
	ld a, [$d035]
	cp b
	jp nz, .asm_712d3
	ld a, [$d033]
	ld c, a
	ld de, $d0e3
	ld hl, $d08b
	call Func_70000
	ld a, [$d034]
	ld c, a
	ld de, $d0e4
	ld hl, $d08c
	call Func_70000
	ld a, [$d035]
	ld c, a
	ld de, $d0e5
	ld hl, $d08d
	call Func_70000
.asm_712d3
	ld a, [$d0e8]
	and $3d
	jp nz, .asm_713b4
	ld a, [$d090]
	and $9f
	jp nz, .asm_713b4
	ld a, [$d038]
	and a
	jp z, .asm_713b4
	cp $08
	jp z, .asm_713b4
	ld b, a
	ld a, [$d0e9]
	and $3d
	jp nz, .asm_713b4
	ld a, [$d091]
	and $9f
	jp nz, .asm_713b4
	ld a, [$d039]
	cp b
	jp nz, .asm_713b4
	ld a, [$d0ea]
	and $3d
	jp nz, .asm_71471
	ld a, [$d092]
	and $9f
	jp nz, .asm_71471
	ld a, [$d03a]
	cp b
	jp nz, .asm_71471
	ld a, [$d038]
	ld c, a
	ld de, $d0e8
	ld hl, $d090
	call Func_70000
	ld a, [$d039]
	ld c, a
	ld de, $d0e9
	ld hl, $d091
	call Func_70000
	ld a, [$d03a]
	ld c, a
	ld de, $d0ea
	ld hl, $d092
	call Func_70000
	ld a, [$d0eb]
	and $3d
	jp nz, .asm_7150a
	ld a, [$d093]
	and $9f
	jp nz, .asm_7150a
	ld a, [$d03b]
	cp b
	jp nz, .asm_7150a
	ld a, [$d03b]
	ld c, a
	ld de, $d0eb
	ld hl, $d093
	call Func_70000
	ld a, [$d0ec]
	and $3d
	jp nz, .asm_7157c
	ld a, [$d094]
	and $9f
	jp nz, .asm_7157c
	ld a, [$d03c]
	cp b
	jp nz, .asm_7157c
	ld a, [$d03c]
	ld c, a
	ld de, $d0ec
	ld hl, $d094
	call Func_70000
	ld a, [$d0ed]
	and $3d
	jp nz, .asm_7157c
	ld a, [$d095]
	and $9f
	jp nz, .asm_7157c
	ld a, [$d03d]
	cp b
	jp nz, .asm_7157c
	ld a, [$d03d]
	ld c, a
	ld de, $d0ed
	ld hl, $d095
	call Func_70000
	jp .asm_7157c

.asm_713b4
	ld a, [$d0e9]
	and $3d
	jp nz, .asm_71471
	ld a, [$d091]
	and $9f
	jp nz, .asm_71471
	ld a, [$d039]
	and a
	jp z, .asm_71471
	cp $08
	jp z, .asm_71471
	ld b, a
	ld a, [$d0ea]
	and $3d
	jp nz, .asm_71471
	ld a, [$d092]
	and $9f
	jp nz, .asm_71471
	ld a, [$d03a]
	cp b
	jp nz, .asm_71471
	ld a, [$d0eb]
	and $3d
	jp nz, .asm_7150a
	ld a, [$d093]
	and $9f
	jp nz, .asm_7150a
	ld a, [$d03b]
	cp b
	jp nz, .asm_7150a
	ld a, [$d039]
	ld c, a
	ld de, $d0e9
	ld hl, $d091
	call Func_70000
	ld a, [$d03a]
	ld c, a
	ld de, $d0ea
	ld hl, $d092
	call Func_70000
	ld a, [$d03b]
	ld c, a
	ld de, $d0eb
	ld hl, $d093
	call Func_70000
	ld a, [$d0ec]
	and $3d
	jp nz, .asm_7157c
	ld a, [$d094]
	and $9f
	jp nz, .asm_7157c
	ld a, [$d03c]
	cp b
	jp nz, .asm_7157c
	ld a, [$d03c]
	ld c, a
	ld de, $d0ec
	ld hl, $d094
	call Func_70000
	ld a, [$d0ed]
	and $3d
	jp nz, .asm_7157c
	ld a, [$d095]
	and $9f
	jp nz, .asm_7157c
	ld a, [$d03d]
	cp b
	jp nz, .asm_7157c
	ld a, [$d03d]
	ld c, a
	ld de, $d0ed
	ld hl, $d095
	call Func_70000
	jp .asm_7157c

.asm_71471
	ld a, [$d0ea]
	and $3d
	jp nz, .asm_7150a
	ld a, [$d092]
	and $9f
	jp nz, .asm_7150a
	ld a, [$d03a]
	and a
	jp z, .asm_7150a
	cp $08
	jp z, .asm_7150a
	ld b, a
	ld a, [$d0eb]
	and $3d
	jp nz, .asm_7150a
	ld a, [$d093]
	and $9f
	jp nz, .asm_7150a
	ld a, [$d03b]
	cp b
	jp nz, .asm_7150a
	ld a, [$d0ec]
	and $3d
	jp nz, .asm_7157c
	ld a, [$d094]
	and $9f
	jp nz, .asm_7157c
	ld a, [$d03c]
	cp b
	jp nz, .asm_7157c
	ld a, [$d03a]
	ld c, a
	ld de, $d0ea
	ld hl, $d092
	call Func_70000
	ld a, [$d03b]
	ld c, a
	ld de, $d0eb
	ld hl, $d093
	call Func_70000
	ld a, [$d03c]
	ld c, a
	ld de, $d0ec
	ld hl, $d094
	call Func_70000
	ld a, [$d0ed]
	and $3d
	jp nz, .asm_7157c
	ld a, [$d095]
	and $9f
	jp nz, .asm_7157c
	ld a, [$d03d]
	cp b
	jp nz, .asm_7157c
	ld a, [$d03d]
	ld c, a
	ld de, $d0ed
	ld hl, $d095
	call Func_70000
	jp .asm_7157c

.asm_7150a
	ld a, [$d0eb]
	and $3d
	jp nz, .asm_7157c
	ld a, [$d093]
	and $9f
	jp nz, .asm_7157c
	ld a, [$d03b]
	and a
	jp z, .asm_7157c
	cp $08
	jp z, .asm_7157c
	ld b, a
	ld a, [$d0ec]
	and $3d
	jp nz, .asm_7157c
	ld a, [$d094]
	and $9f
	jp nz, .asm_7157c
	ld a, [$d03c]
	cp b
	jp nz, .asm_7157c
	ld a, [$d0ed]
	and $3d
	jp nz, .asm_7157c
	ld a, [$d095]
	and $9f
	jp nz, .asm_7157c
	ld a, [$d03d]
	cp b
	jp nz, .asm_7157c
	ld a, [$d03b]
	ld c, a
	ld de, $d0eb
	ld hl, $d093
	call Func_70000
	ld a, [$d03c]
	ld c, a
	ld de, $d0ec
	ld hl, $d094
	call Func_70000
	ld a, [$d03d]
	ld c, a
	ld de, $d0ed
	ld hl, $d095
	call Func_70000
.asm_7157c
	ld a, [$d0f0]
	and $3d
	jp nz, .asm_7165d
	ld a, [$d098]
	and $9f
	jp nz, .asm_7165d
	ld a, [$d040]
	and a
	jp z, .asm_7165d
	cp $08
	jp z, .asm_7165d
	ld b, a
	ld a, [$d0f1]
	and $3d
	jp nz, .asm_7165d
	ld a, [$d099]
	and $9f
	jp nz, .asm_7165d
	ld a, [$d041]
	cp b
	jp nz, .asm_7165d
	ld a, [$d0f2]
	and $3d
	jp nz, .asm_7171a
	ld a, [$d09a]
	and $9f
	jp nz, .asm_7171a
	ld a, [$d042]
	cp b
	jp nz, .asm_7171a
	ld a, [$d040]
	ld c, a
	ld de, $d0f0
	ld hl, $d098
	call Func_70000
	ld a, [$d041]
	ld c, a
	ld de, $d0f1
	ld hl, $d099
	call Func_70000
	ld a, [$d042]
	ld c, a
	ld de, $d0f2
	ld hl, $d09a
	call Func_70000
	ld a, [$d0f3]
	and $3d
	jp nz, .asm_717b3
	ld a, [$d09b]
	and $9f
	jp nz, .asm_717b3
	ld a, [$d043]
	cp b
	jp nz, .asm_717b3
	ld a, [$d043]
	ld c, a
	ld de, $d0f3
	ld hl, $d09b
	call Func_70000
	ld a, [$d0f4]
	and $3d
	jp nz, .asm_71825
	ld a, [$d09c]
	and $9f
	jp nz, .asm_71825
	ld a, [$d044]
	cp b
	jp nz, .asm_71825
	ld a, [$d044]
	ld c, a
	ld de, $d0f4
	ld hl, $d09c
	call Func_70000
	ld a, [$d0f5]
	and $3d
	jp nz, .asm_71825
	ld a, [$d09d]
	and $9f
	jp nz, .asm_71825
	ld a, [$d045]
	cp b
	jp nz, .asm_71825
	ld a, [$d045]
	ld c, a
	ld de, $d0f5
	ld hl, $d09d
	call Func_70000
	jp .asm_71825

.asm_7165d
	ld a, [$d0f1]
	and $3d
	jp nz, .asm_7171a
	ld a, [$d099]
	and $9f
	jp nz, .asm_7171a
	ld a, [$d041]
	and a
	jp z, .asm_7171a
	cp $08
	jp z, .asm_7171a
	ld b, a
	ld a, [$d0f2]
	and $3d
	jp nz, .asm_7171a
	ld a, [$d09a]
	and $9f
	jp nz, .asm_7171a
	ld a, [$d042]
	cp b
	jp nz, .asm_7171a
	ld a, [$d0f3]
	and $3d
	jp nz, .asm_717b3
	ld a, [$d09b]
	and $9f
	jp nz, .asm_717b3
	ld a, [$d043]
	cp b
	jp nz, .asm_717b3
	ld a, [$d041]
	ld c, a
	ld de, $d0f1
	ld hl, $d099
	call Func_70000
	ld a, [$d042]
	ld c, a
	ld de, $d0f2
	ld hl, $d09a
	call Func_70000
	ld a, [$d043]
	ld c, a
	ld de, $d0f3
	ld hl, $d09b
	call Func_70000
	ld a, [$d0f4]
	and $3d
	jp nz, .asm_71825
	ld a, [$d09c]
	and $9f
	jp nz, .asm_71825
	ld a, [$d044]
	cp b
	jp nz, .asm_71825
	ld a, [$d044]
	ld c, a
	ld de, $d0f4
	ld hl, $d09c
	call Func_70000
	ld a, [$d0f5]
	and $3d
	jp nz, .asm_71825
	ld a, [$d09d]
	and $9f
	jp nz, .asm_71825
	ld a, [$d045]
	cp b
	jp nz, .asm_71825
	ld a, [$d045]
	ld c, a
	ld de, $d0f5
	ld hl, $d09d
	call Func_70000
	jp .asm_71825

.asm_7171a
	ld a, [$d0f2]
	and $3d
	jp nz, .asm_717b3
	ld a, [$d09a]
	and $9f
	jp nz, .asm_717b3
	ld a, [$d042]
	and a
	jp z, .asm_717b3
	cp $08
	jp z, .asm_717b3
	ld b, a
	ld a, [$d0f3]
	and $3d
	jp nz, .asm_717b3
	ld a, [$d09b]
	and $9f
	jp nz, .asm_717b3
	ld a, [$d043]
	cp b
	jp nz, .asm_717b3
	ld a, [$d0f4]
	and $3d
	jp nz, .asm_71825
	ld a, [$d09c]
	and $9f
	jp nz, .asm_71825
	ld a, [$d044]
	cp b
	jp nz, .asm_71825
	ld a, [$d042]
	ld c, a
	ld de, $d0f2
	ld hl, $d09a
	call Func_70000
	ld a, [$d043]
	ld c, a
	ld de, $d0f3
	ld hl, $d09b
	call Func_70000
	ld a, [$d044]
	ld c, a
	ld de, $d0f4
	ld hl, $d09c
	call Func_70000
	ld a, [$d0f5]
	and $3d
	jp nz, .asm_71825
	ld a, [$d09d]
	and $9f
	jp nz, .asm_71825
	ld a, [$d045]
	cp b
	jp nz, .asm_71825
	ld a, [$d045]
	ld c, a
	ld de, $d0f5
	ld hl, $d09d
	call Func_70000
	jp .asm_71825

.asm_717b3
	ld a, [$d0f3]
	and $3d
	jp nz, .asm_71825
	ld a, [$d09b]
	and $9f
	jp nz, .asm_71825
	ld a, [$d043]
	and a
	jp z, .asm_71825
	cp $08
	jp z, .asm_71825
	ld b, a
	ld a, [$d0f4]
	and $3d
	jp nz, .asm_71825
	ld a, [$d09c]
	and $9f
	jp nz, .asm_71825
	ld a, [$d044]
	cp b
	jp nz, .asm_71825
	ld a, [$d0f5]
	and $3d
	jp nz, .asm_71825
	ld a, [$d09d]
	and $9f
	jp nz, .asm_71825
	ld a, [$d045]
	cp b
	jp nz, .asm_71825
	ld a, [$d043]
	ld c, a
	ld de, $d0f3
	ld hl, $d09b
	call Func_70000
	ld a, [$d044]
	ld c, a
	ld de, $d0f4
	ld hl, $d09c
	call Func_70000
	ld a, [$d045]
	ld c, a
	ld de, $d0f5
	ld hl, $d09d
	call Func_70000
.asm_71825
	ld a, [w6d0b0]
	and $3d
	jp nz, .asm_71972
	ld a, [w6d058]
	and $9f
	jp nz, .asm_71972
	ld a, [w2d000]
	and a
	jp z, .asm_71972
	cp $08
	jp z, .asm_71972
	ld b, a
	ld a, [$d0b8]
	and $3d
	jp nz, .asm_71972
	ld a, [$d060]
	and $9f
	jp nz, .asm_71972
	ld a, [$d008]
	cp b
	jp nz, .asm_71972
	ld a, [w2d0c0]
	and $3d
	jp nz, .asm_71a9b
	ld a, [$d068]
	and $9f
	jp nz, .asm_71a9b
	ld a, [$d010]
	cp b
	jp nz, .asm_71a9b
	ld a, [w2d000]
	ld c, a
	ld de, w6d0b0
	ld hl, w6d058
	call Func_70000
	ld a, [$d008]
	ld c, a
	ld de, $d0b8
	ld hl, $d060
	call Func_70000
	ld a, [$d010]
	ld c, a
	ld de, w2d0c0
	ld hl, $d068
	call Func_70000
	ld a, [$d0c8]
	and $3d
	jp nz, .asm_71ba0
	ld a, [$d070]
	and $9f
	jp nz, .asm_71ba0
	ld a, [$d018]
	cp b
	jp nz, .asm_71ba0
	ld a, [$d018]
	ld c, a
	ld de, $d0c8
	ld hl, $d070
	call Func_70000
	ld a, [$d0d0]
	and $3d
	jp nz, .asm_71c81
	ld a, [$d078]
	and $9f
	jp nz, .asm_71c81
	ld a, [$d020]
	cp b
	jp nz, .asm_71c81
	ld a, [$d020]
	ld c, a
	ld de, $d0d0
	ld hl, $d078
	call Func_70000
	ld a, [$d0d8]
	and $3d
	jp nz, .asm_71d3e
	ld a, [$d080]
	and $9f
	jp nz, .asm_71d3e
	ld a, [$d028]
	cp b
	jp nz, .asm_71d3e
	ld a, [$d028]
	ld c, a
	ld de, $d0d8
	ld hl, $d080
	call Func_70000
	ld a, [$d0e0]
	and $3d
	jp nz, .asm_71dd7
	ld a, [$d088]
	and $9f
	jp nz, .asm_71dd7
	ld a, [$d030]
	cp b
	jp nz, .asm_71dd7
	ld a, [$d030]
	ld c, a
	ld de, $d0e0
	ld hl, $d088
	call Func_70000
	ld a, [$d0e8]
	and $3d
	jp nz, .asm_71e49
	ld a, [$d090]
	and $9f
	jp nz, .asm_71e49
	ld a, [$d038]
	cp b
	jp nz, .asm_71e49
	ld a, [$d038]
	ld c, a
	ld de, $d0e8
	ld hl, $d090
	call Func_70000
	ld a, [$d0f0]
	and $3d
	jp nz, .asm_71e49
	ld a, [$d098]
	and $9f
	jp nz, .asm_71e49
	ld a, [$d040]
	cp b
	jp nz, .asm_71e49
	ld a, [$d040]
	ld c, a
	ld de, $d0f0
	ld hl, $d098
	call Func_70000
	jp .asm_71e49

.asm_71972
	ld a, [$d0b8]
	and $3d
	jp nz, .asm_71a9b
	ld a, [$d060]
	and $9f
	jp nz, .asm_71a9b
	ld a, [$d008]
	and a
	jp z, .asm_71a9b
	cp $08
	jp z, .asm_71a9b
	ld b, a
	ld a, [w2d0c0]
	and $3d
	jp nz, .asm_71a9b
	ld a, [$d068]
	and $9f
	jp nz, .asm_71a9b
	ld a, [$d010]
	cp b
	jp nz, .asm_71a9b
	ld a, [$d0c8]
	and $3d
	jp nz, .asm_71ba0
	ld a, [$d070]
	and $9f
	jp nz, .asm_71ba0
	ld a, [$d018]
	cp b
	jp nz, .asm_71ba0
	ld a, [$d008]
	ld c, a
	ld de, $d0b8
	ld hl, $d060
	call Func_70000
	ld a, [$d010]
	ld c, a
	ld de, w2d0c0
	ld hl, $d068
	call Func_70000
	ld a, [$d018]
	ld c, a
	ld de, $d0c8
	ld hl, $d070
	call Func_70000
	ld a, [$d0d0]
	and $3d
	jp nz, .asm_71c81
	ld a, [$d078]
	and $9f
	jp nz, .asm_71c81
	ld a, [$d020]
	cp b
	jp nz, .asm_71c81
	ld a, [$d020]
	ld c, a
	ld de, $d0d0
	ld hl, $d078
	call Func_70000
	ld a, [$d0d8]
	and $3d
	jp nz, .asm_71d3e
	ld a, [$d080]
	and $9f
	jp nz, .asm_71d3e
	ld a, [$d028]
	cp b
	jp nz, .asm_71d3e
	ld a, [$d028]
	ld c, a
	ld de, $d0d8
	ld hl, $d080
	call Func_70000
	ld a, [$d0e0]
	and $3d
	jp nz, .asm_71dd7
	ld a, [$d088]
	and $9f
	jp nz, .asm_71dd7
	ld a, [$d030]
	cp b
	jp nz, .asm_71dd7
	ld a, [$d030]
	ld c, a
	ld de, $d0e0
	ld hl, $d088
	call Func_70000
	ld a, [$d0e8]
	and $3d
	jp nz, .asm_71e49
	ld a, [$d090]
	and $9f
	jp nz, .asm_71e49
	ld a, [$d038]
	cp b
	jp nz, .asm_71e49
	ld a, [$d038]
	ld c, a
	ld de, $d0e8
	ld hl, $d090
	call Func_70000
	ld a, [$d0f0]
	and $3d
	jp nz, .asm_71e49
	ld a, [$d098]
	and $9f
	jp nz, .asm_71e49
	ld a, [$d040]
	cp b
	jp nz, .asm_71e49
	ld a, [$d040]
	ld c, a
	ld de, $d0f0
	ld hl, $d098
	call Func_70000
	jp .asm_71e49

.asm_71a9b
	ld a, [w2d0c0]
	and $3d
	jp nz, .asm_71ba0
	ld a, [$d068]
	and $9f
	jp nz, .asm_71ba0
	ld a, [$d010]
	and a
	jp z, .asm_71ba0
	cp $08
	jp z, .asm_71ba0
	ld b, a
	ld a, [$d0c8]
	and $3d
	jp nz, .asm_71ba0
	ld a, [$d070]
	and $9f
	jp nz, .asm_71ba0
	ld a, [$d018]
	cp b
	jp nz, .asm_71ba0
	ld a, [$d0d0]
	and $3d
	jp nz, .asm_71c81
	ld a, [$d078]
	and $9f
	jp nz, .asm_71c81
	ld a, [$d020]
	cp b
	jp nz, .asm_71c81
	ld a, [$d010]
	ld c, a
	ld de, w2d0c0
	ld hl, $d068
	call Func_70000
	ld a, [$d018]
	ld c, a
	ld de, $d0c8
	ld hl, $d070
	call Func_70000
	ld a, [$d020]
	ld c, a
	ld de, $d0d0
	ld hl, $d078
	call Func_70000
	ld a, [$d0d8]
	and $3d
	jp nz, .asm_71d3e
	ld a, [$d080]
	and $9f
	jp nz, .asm_71d3e
	ld a, [$d028]
	cp b
	jp nz, .asm_71d3e
	ld a, [$d028]
	ld c, a
	ld de, $d0d8
	ld hl, $d080
	call Func_70000
	ld a, [$d0e0]
	and $3d
	jp nz, .asm_71dd7
	ld a, [$d088]
	and $9f
	jp nz, .asm_71dd7
	ld a, [$d030]
	cp b
	jp nz, .asm_71dd7
	ld a, [$d030]
	ld c, a
	ld de, $d0e0
	ld hl, $d088
	call Func_70000
	ld a, [$d0e8]
	and $3d
	jp nz, .asm_71e49
	ld a, [$d090]
	and $9f
	jp nz, .asm_71e49
	ld a, [$d038]
	cp b
	jp nz, .asm_71e49
	ld a, [$d038]
	ld c, a
	ld de, $d0e8
	ld hl, $d090
	call Func_70000
	ld a, [$d0f0]
	and $3d
	jp nz, .asm_71e49
	ld a, [$d098]
	and $9f
	jp nz, .asm_71e49
	ld a, [$d040]
	cp b
	jp nz, .asm_71e49
	ld a, [$d040]
	ld c, a
	ld de, $d0f0
	ld hl, $d098
	call Func_70000
	jp .asm_71e49

.asm_71ba0
	ld a, [$d0c8]
	and $3d
	jp nz, .asm_71c81
	ld a, [$d070]
	and $9f
	jp nz, .asm_71c81
	ld a, [$d018]
	and a
	jp z, .asm_71c81
	cp $08
	jp z, .asm_71c81
	ld b, a
	ld a, [$d0d0]
	and $3d
	jp nz, .asm_71c81
	ld a, [$d078]
	and $9f
	jp nz, .asm_71c81
	ld a, [$d020]
	cp b
	jp nz, .asm_71c81
	ld a, [$d0d8]
	and $3d
	jp nz, .asm_71d3e
	ld a, [$d080]
	and $9f
	jp nz, .asm_71d3e
	ld a, [$d028]
	cp b
	jp nz, .asm_71d3e
	ld a, [$d018]
	ld c, a
	ld de, $d0c8
	ld hl, $d070
	call Func_70000
	ld a, [$d020]
	ld c, a
	ld de, $d0d0
	ld hl, $d078
	call Func_70000
	ld a, [$d028]
	ld c, a
	ld de, $d0d8
	ld hl, $d080
	call Func_70000
	ld a, [$d0e0]
	and $3d
	jp nz, .asm_71dd7
	ld a, [$d088]
	and $9f
	jp nz, .asm_71dd7
	ld a, [$d030]
	cp b
	jp nz, .asm_71dd7
	ld a, [$d030]
	ld c, a
	ld de, $d0e0
	ld hl, $d088
	call Func_70000
	ld a, [$d0e8]
	and $3d
	jp nz, .asm_71e49
	ld a, [$d090]
	and $9f
	jp nz, .asm_71e49
	ld a, [$d038]
	cp b
	jp nz, .asm_71e49
	ld a, [$d038]
	ld c, a
	ld de, $d0e8
	ld hl, $d090
	call Func_70000
	ld a, [$d0f0]
	and $3d
	jp nz, .asm_71e49
	ld a, [$d098]
	and $9f
	jp nz, .asm_71e49
	ld a, [$d040]
	cp b
	jp nz, .asm_71e49
	ld a, [$d040]
	ld c, a
	ld de, $d0f0
	ld hl, $d098
	call Func_70000
	jp .asm_71e49

.asm_71c81
	ld a, [$d0d0]
	and $3d
	jp nz, .asm_71d3e
	ld a, [$d078]
	and $9f
	jp nz, .asm_71d3e
	ld a, [$d020]
	and a
	jp z, .asm_71d3e
	cp $08
	jp z, .asm_71d3e
	ld b, a
	ld a, [$d0d8]
	and $3d
	jp nz, .asm_71d3e
	ld a, [$d080]
	and $9f
	jp nz, .asm_71d3e
	ld a, [$d028]
	cp b
	jp nz, .asm_71d3e
	ld a, [$d0e0]
	and $3d
	jp nz, .asm_71dd7
	ld a, [$d088]
	and $9f
	jp nz, .asm_71dd7
	ld a, [$d030]
	cp b
	jp nz, .asm_71dd7
	ld a, [$d020]
	ld c, a
	ld de, $d0d0
	ld hl, $d078
	call Func_70000
	ld a, [$d028]
	ld c, a
	ld de, $d0d8
	ld hl, $d080
	call Func_70000
	ld a, [$d030]
	ld c, a
	ld de, $d0e0
	ld hl, $d088
	call Func_70000
	ld a, [$d0e8]
	and $3d
	jp nz, .asm_71e49
	ld a, [$d090]
	and $9f
	jp nz, .asm_71e49
	ld a, [$d038]
	cp b
	jp nz, .asm_71e49
	ld a, [$d038]
	ld c, a
	ld de, $d0e8
	ld hl, $d090
	call Func_70000
	ld a, [$d0f0]
	and $3d
	jp nz, .asm_71e49
	ld a, [$d098]
	and $9f
	jp nz, .asm_71e49
	ld a, [$d040]
	cp b
	jp nz, .asm_71e49
	ld a, [$d040]
	ld c, a
	ld de, $d0f0
	ld hl, $d098
	call Func_70000
	jp .asm_71e49

.asm_71d3e
	ld a, [$d0d8]
	and $3d
	jp nz, .asm_71dd7
	ld a, [$d080]
	and $9f
	jp nz, .asm_71dd7
	ld a, [$d028]
	and a
	jp z, .asm_71dd7
	cp $08
	jp z, .asm_71dd7
	ld b, a
	ld a, [$d0e0]
	and $3d
	jp nz, .asm_71dd7
	ld a, [$d088]
	and $9f
	jp nz, .asm_71dd7
	ld a, [$d030]
	cp b
	jp nz, .asm_71dd7
	ld a, [$d0e8]
	and $3d
	jp nz, .asm_71e49
	ld a, [$d090]
	and $9f
	jp nz, .asm_71e49
	ld a, [$d038]
	cp b
	jp nz, .asm_71e49
	ld a, [$d028]
	ld c, a
	ld de, $d0d8
	ld hl, $d080
	call Func_70000
	ld a, [$d030]
	ld c, a
	ld de, $d0e0
	ld hl, $d088
	call Func_70000
	ld a, [$d038]
	ld c, a
	ld de, $d0e8
	ld hl, $d090
	call Func_70000
	ld a, [$d0f0]
	and $3d
	jp nz, .asm_71e49
	ld a, [$d098]
	and $9f
	jp nz, .asm_71e49
	ld a, [$d040]
	cp b
	jp nz, .asm_71e49
	ld a, [$d040]
	ld c, a
	ld de, $d0f0
	ld hl, $d098
	call Func_70000
	jp .asm_71e49

.asm_71dd7
	ld a, [$d0e0]
	and $3d
	jp nz, .asm_71e49
	ld a, [$d088]
	and $9f
	jp nz, .asm_71e49
	ld a, [$d030]
	and a
	jp z, .asm_71e49
	cp $08
	jp z, .asm_71e49
	ld b, a
	ld a, [$d0e8]
	and $3d
	jp nz, .asm_71e49
	ld a, [$d090]
	and $9f
	jp nz, .asm_71e49
	ld a, [$d038]
	cp b
	jp nz, .asm_71e49
	ld a, [$d0f0]
	and $3d
	jp nz, .asm_71e49
	ld a, [$d098]
	and $9f
	jp nz, .asm_71e49
	ld a, [$d040]
	cp b
	jp nz, .asm_71e49
	ld a, [$d030]
	ld c, a
	ld de, $d0e0
	ld hl, $d088
	call Func_70000
	ld a, [$d038]
	ld c, a
	ld de, $d0e8
	ld hl, $d090
	call Func_70000
	ld a, [$d040]
	ld c, a
	ld de, $d0f0
	ld hl, $d098
	call Func_70000
.asm_71e49
	ld a, [$d0b1]
	and $3d
	jp nz, .asm_71f96
	ld a, [$d059]
	and $9f
	jp nz, .asm_71f96
	ld a, [$d001]
	and a
	jp z, .asm_71f96
	cp $08
	jp z, .asm_71f96
	ld b, a
	ld a, [$d0b9]
	and $3d
	jp nz, .asm_71f96
	ld a, [$d061]
	and $9f
	jp nz, .asm_71f96
	ld a, [$d009]
	cp b
	jp nz, .asm_71f96
	ld a, [$d0c1]
	and $3d
	jp nz, .asm_720bf
	ld a, [$d069]
	and $9f
	jp nz, .asm_720bf
	ld a, [$d011]
	cp b
	jp nz, .asm_720bf
	ld a, [$d001]
	ld c, a
	ld de, $d0b1
	ld hl, $d059
	call Func_70000
	ld a, [$d009]
	ld c, a
	ld de, $d0b9
	ld hl, $d061
	call Func_70000
	ld a, [$d011]
	ld c, a
	ld de, $d0c1
	ld hl, $d069
	call Func_70000
	ld a, [$d0c9]
	and $3d
	jp nz, .asm_721c4
	ld a, [$d071]
	and $9f
	jp nz, .asm_721c4
	ld a, [$d019]
	cp b
	jp nz, .asm_721c4
	ld a, [$d019]
	ld c, a
	ld de, $d0c9
	ld hl, $d071
	call Func_70000
	ld a, [$d0d1]
	and $3d
	jp nz, .asm_722a5
	ld a, [$d079]
	and $9f
	jp nz, .asm_722a5
	ld a, [$d021]
	cp b
	jp nz, .asm_722a5
	ld a, [$d021]
	ld c, a
	ld de, $d0d1
	ld hl, $d079
	call Func_70000
	ld a, [$d0d9]
	and $3d
	jp nz, .asm_72362
	ld a, [$d081]
	and $9f
	jp nz, .asm_72362
	ld a, [$d029]
	cp b
	jp nz, .asm_72362
	ld a, [$d029]
	ld c, a
	ld de, $d0d9
	ld hl, $d081
	call Func_70000
	ld a, [$d0e1]
	and $3d
	jp nz, .asm_723fb
	ld a, [$d089]
	and $9f
	jp nz, .asm_723fb
	ld a, [$d031]
	cp b
	jp nz, .asm_723fb
	ld a, [$d031]
	ld c, a
	ld de, $d0e1
	ld hl, $d089
	call Func_70000
	ld a, [$d0e9]
	and $3d
	jp nz, .asm_7246d
	ld a, [$d091]
	and $9f
	jp nz, .asm_7246d
	ld a, [$d039]
	cp b
	jp nz, .asm_7246d
	ld a, [$d039]
	ld c, a
	ld de, $d0e9
	ld hl, $d091
	call Func_70000
	ld a, [$d0f1]
	and $3d
	jp nz, .asm_7246d
	ld a, [$d099]
	and $9f
	jp nz, .asm_7246d
	ld a, [$d041]
	cp b
	jp nz, .asm_7246d
	ld a, [$d041]
	ld c, a
	ld de, $d0f1
	ld hl, $d099
	call Func_70000
	jp .asm_7246d

.asm_71f96
	ld a, [$d0b9]
	and $3d
	jp nz, .asm_720bf
	ld a, [$d061]
	and $9f
	jp nz, .asm_720bf
	ld a, [$d009]
	and a
	jp z, .asm_720bf
	cp $08
	jp z, .asm_720bf
	ld b, a
	ld a, [$d0c1]
	and $3d
	jp nz, .asm_720bf
	ld a, [$d069]
	and $9f
	jp nz, .asm_720bf
	ld a, [$d011]
	cp b
	jp nz, .asm_720bf
	ld a, [$d0c9]
	and $3d
	jp nz, .asm_721c4
	ld a, [$d071]
	and $9f
	jp nz, .asm_721c4
	ld a, [$d019]
	cp b
	jp nz, .asm_721c4
	ld a, [$d009]
	ld c, a
	ld de, $d0b9
	ld hl, $d061
	call Func_70000
	ld a, [$d011]
	ld c, a
	ld de, $d0c1
	ld hl, $d069
	call Func_70000
	ld a, [$d019]
	ld c, a
	ld de, $d0c9
	ld hl, $d071
	call Func_70000
	ld a, [$d0d1]
	and $3d
	jp nz, .asm_722a5
	ld a, [$d079]
	and $9f
	jp nz, .asm_722a5
	ld a, [$d021]
	cp b
	jp nz, .asm_722a5
	ld a, [$d021]
	ld c, a
	ld de, $d0d1
	ld hl, $d079
	call Func_70000
	ld a, [$d0d9]
	and $3d
	jp nz, .asm_72362
	ld a, [$d081]
	and $9f
	jp nz, .asm_72362
	ld a, [$d029]
	cp b
	jp nz, .asm_72362
	ld a, [$d029]
	ld c, a
	ld de, $d0d9
	ld hl, $d081
	call Func_70000
	ld a, [$d0e1]
	and $3d
	jp nz, .asm_723fb
	ld a, [$d089]
	and $9f
	jp nz, .asm_723fb
	ld a, [$d031]
	cp b
	jp nz, .asm_723fb
	ld a, [$d031]
	ld c, a
	ld de, $d0e1
	ld hl, $d089
	call Func_70000
	ld a, [$d0e9]
	and $3d
	jp nz, .asm_7246d
	ld a, [$d091]
	and $9f
	jp nz, .asm_7246d
	ld a, [$d039]
	cp b
	jp nz, .asm_7246d
	ld a, [$d039]
	ld c, a
	ld de, $d0e9
	ld hl, $d091
	call Func_70000
	ld a, [$d0f1]
	and $3d
	jp nz, .asm_7246d
	ld a, [$d099]
	and $9f
	jp nz, .asm_7246d
	ld a, [$d041]
	cp b
	jp nz, .asm_7246d
	ld a, [$d041]
	ld c, a
	ld de, $d0f1
	ld hl, $d099
	call Func_70000
	jp .asm_7246d

.asm_720bf
	ld a, [$d0c1]
	and $3d
	jp nz, .asm_721c4
	ld a, [$d069]
	and $9f
	jp nz, .asm_721c4
	ld a, [$d011]
	and a
	jp z, .asm_721c4
	cp $08
	jp z, .asm_721c4
	ld b, a
	ld a, [$d0c9]
	and $3d
	jp nz, .asm_721c4
	ld a, [$d071]
	and $9f
	jp nz, .asm_721c4
	ld a, [$d019]
	cp b
	jp nz, .asm_721c4
	ld a, [$d0d1]
	and $3d
	jp nz, .asm_722a5
	ld a, [$d079]
	and $9f
	jp nz, .asm_722a5
	ld a, [$d021]
	cp b
	jp nz, .asm_722a5
	ld a, [$d011]
	ld c, a
	ld de, $d0c1
	ld hl, $d069
	call Func_70000
	ld a, [$d019]
	ld c, a
	ld de, $d0c9
	ld hl, $d071
	call Func_70000
	ld a, [$d021]
	ld c, a
	ld de, $d0d1
	ld hl, $d079
	call Func_70000
	ld a, [$d0d9]
	and $3d
	jp nz, .asm_72362
	ld a, [$d081]
	and $9f
	jp nz, .asm_72362
	ld a, [$d029]
	cp b
	jp nz, .asm_72362
	ld a, [$d029]
	ld c, a
	ld de, $d0d9
	ld hl, $d081
	call Func_70000
	ld a, [$d0e1]
	and $3d
	jp nz, .asm_723fb
	ld a, [$d089]
	and $9f
	jp nz, .asm_723fb
	ld a, [$d031]
	cp b
	jp nz, .asm_723fb
	ld a, [$d031]
	ld c, a
	ld de, $d0e1
	ld hl, $d089
	call Func_70000
	ld a, [$d0e9]
	and $3d
	jp nz, .asm_7246d
	ld a, [$d091]
	and $9f
	jp nz, .asm_7246d
	ld a, [$d039]
	cp b
	jp nz, .asm_7246d
	ld a, [$d039]
	ld c, a
	ld de, $d0e9
	ld hl, $d091
	call Func_70000
	ld a, [$d0f1]
	and $3d
	jp nz, .asm_7246d
	ld a, [$d099]
	and $9f
	jp nz, .asm_7246d
	ld a, [$d041]
	cp b
	jp nz, .asm_7246d
	ld a, [$d041]
	ld c, a
	ld de, $d0f1
	ld hl, $d099
	call Func_70000
	jp .asm_7246d

.asm_721c4
	ld a, [$d0c9]
	and $3d
	jp nz, .asm_722a5
	ld a, [$d071]
	and $9f
	jp nz, .asm_722a5
	ld a, [$d019]
	and a
	jp z, .asm_722a5
	cp $08
	jp z, .asm_722a5
	ld b, a
	ld a, [$d0d1]
	and $3d
	jp nz, .asm_722a5
	ld a, [$d079]
	and $9f
	jp nz, .asm_722a5
	ld a, [$d021]
	cp b
	jp nz, .asm_722a5
	ld a, [$d0d9]
	and $3d
	jp nz, .asm_72362
	ld a, [$d081]
	and $9f
	jp nz, .asm_72362
	ld a, [$d029]
	cp b
	jp nz, .asm_72362
	ld a, [$d019]
	ld c, a
	ld de, $d0c9
	ld hl, $d071
	call Func_70000
	ld a, [$d021]
	ld c, a
	ld de, $d0d1
	ld hl, $d079
	call Func_70000
	ld a, [$d029]
	ld c, a
	ld de, $d0d9
	ld hl, $d081
	call Func_70000
	ld a, [$d0e1]
	and $3d
	jp nz, .asm_723fb
	ld a, [$d089]
	and $9f
	jp nz, .asm_723fb
	ld a, [$d031]
	cp b
	jp nz, .asm_723fb
	ld a, [$d031]
	ld c, a
	ld de, $d0e1
	ld hl, $d089
	call Func_70000
	ld a, [$d0e9]
	and $3d
	jp nz, .asm_7246d
	ld a, [$d091]
	and $9f
	jp nz, .asm_7246d
	ld a, [$d039]
	cp b
	jp nz, .asm_7246d
	ld a, [$d039]
	ld c, a
	ld de, $d0e9
	ld hl, $d091
	call Func_70000
	ld a, [$d0f1]
	and $3d
	jp nz, .asm_7246d
	ld a, [$d099]
	and $9f
	jp nz, .asm_7246d
	ld a, [$d041]
	cp b
	jp nz, .asm_7246d
	ld a, [$d041]
	ld c, a
	ld de, $d0f1
	ld hl, $d099
	call Func_70000
	jp .asm_7246d

.asm_722a5
	ld a, [$d0d1]
	and $3d
	jp nz, .asm_72362
	ld a, [$d079]
	and $9f
	jp nz, .asm_72362
	ld a, [$d021]
	and a
	jp z, .asm_72362
	cp $08
	jp z, .asm_72362
	ld b, a
	ld a, [$d0d9]
	and $3d
	jp nz, .asm_72362
	ld a, [$d081]
	and $9f
	jp nz, .asm_72362
	ld a, [$d029]
	cp b
	jp nz, .asm_72362
	ld a, [$d0e1]
	and $3d
	jp nz, .asm_723fb
	ld a, [$d089]
	and $9f
	jp nz, .asm_723fb
	ld a, [$d031]
	cp b
	jp nz, .asm_723fb
	ld a, [$d021]
	ld c, a
	ld de, $d0d1
	ld hl, $d079
	call Func_70000
	ld a, [$d029]
	ld c, a
	ld de, $d0d9
	ld hl, $d081
	call Func_70000
	ld a, [$d031]
	ld c, a
	ld de, $d0e1
	ld hl, $d089
	call Func_70000
	ld a, [$d0e9]
	and $3d
	jp nz, .asm_7246d
	ld a, [$d091]
	and $9f
	jp nz, .asm_7246d
	ld a, [$d039]
	cp b
	jp nz, .asm_7246d
	ld a, [$d039]
	ld c, a
	ld de, $d0e9
	ld hl, $d091
	call Func_70000
	ld a, [$d0f1]
	and $3d
	jp nz, .asm_7246d
	ld a, [$d099]
	and $9f
	jp nz, .asm_7246d
	ld a, [$d041]
	cp b
	jp nz, .asm_7246d
	ld a, [$d041]
	ld c, a
	ld de, $d0f1
	ld hl, $d099
	call Func_70000
	jp .asm_7246d

.asm_72362
	ld a, [$d0d9]
	and $3d
	jp nz, .asm_723fb
	ld a, [$d081]
	and $9f
	jp nz, .asm_723fb
	ld a, [$d029]
	and a
	jp z, .asm_723fb
	cp $08
	jp z, .asm_723fb
	ld b, a
	ld a, [$d0e1]
	and $3d
	jp nz, .asm_723fb
	ld a, [$d089]
	and $9f
	jp nz, .asm_723fb
	ld a, [$d031]
	cp b
	jp nz, .asm_723fb
	ld a, [$d0e9]
	and $3d
	jp nz, .asm_7246d
	ld a, [$d091]
	and $9f
	jp nz, .asm_7246d
	ld a, [$d039]
	cp b
	jp nz, .asm_7246d
	ld a, [$d029]
	ld c, a
	ld de, $d0d9
	ld hl, $d081
	call Func_70000
	ld a, [$d031]
	ld c, a
	ld de, $d0e1
	ld hl, $d089
	call Func_70000
	ld a, [$d039]
	ld c, a
	ld de, $d0e9
	ld hl, $d091
	call Func_70000
	ld a, [$d0f1]
	and $3d
	jp nz, .asm_7246d
	ld a, [$d099]
	and $9f
	jp nz, .asm_7246d
	ld a, [$d041]
	cp b
	jp nz, .asm_7246d
	ld a, [$d041]
	ld c, a
	ld de, $d0f1
	ld hl, $d099
	call Func_70000
	jp .asm_7246d

.asm_723fb
	ld a, [$d0e1]
	and $3d
	jp nz, .asm_7246d
	ld a, [$d089]
	and $9f
	jp nz, .asm_7246d
	ld a, [$d031]
	and a
	jp z, .asm_7246d
	cp $08
	jp z, .asm_7246d
	ld b, a
	ld a, [$d0e9]
	and $3d
	jp nz, .asm_7246d
	ld a, [$d091]
	and $9f
	jp nz, .asm_7246d
	ld a, [$d039]
	cp b
	jp nz, .asm_7246d
	ld a, [$d0f1]
	and $3d
	jp nz, .asm_7246d
	ld a, [$d099]
	and $9f
	jp nz, .asm_7246d
	ld a, [$d041]
	cp b
	jp nz, .asm_7246d
	ld a, [$d031]
	ld c, a
	ld de, $d0e1
	ld hl, $d089
	call Func_70000
	ld a, [$d039]
	ld c, a
	ld de, $d0e9
	ld hl, $d091
	call Func_70000
	ld a, [$d041]
	ld c, a
	ld de, $d0f1
	ld hl, $d099
	call Func_70000
.asm_7246d
	ld a, [$d0b2]
	and $3d
	jp nz, .asm_725ba
	ld a, [$d05a]
	and $9f
	jp nz, .asm_725ba
	ld a, [$d002]
	and a
	jp z, .asm_725ba
	cp $08
	jp z, .asm_725ba
	ld b, a
	ld a, [$d0ba]
	and $3d
	jp nz, .asm_725ba
	ld a, [$d062]
	and $9f
	jp nz, .asm_725ba
	ld a, [$d00a]
	cp b
	jp nz, .asm_725ba
	ld a, [$d0c2]
	and $3d
	jp nz, .asm_726e3
	ld a, [$d06a]
	and $9f
	jp nz, .asm_726e3
	ld a, [$d012]
	cp b
	jp nz, .asm_726e3
	ld a, [$d002]
	ld c, a
	ld de, $d0b2
	ld hl, $d05a
	call Func_70000
	ld a, [$d00a]
	ld c, a
	ld de, $d0ba
	ld hl, $d062
	call Func_70000
	ld a, [$d012]
	ld c, a
	ld de, $d0c2
	ld hl, $d06a
	call Func_70000
	ld a, [$d0ca]
	and $3d
	jp nz, .asm_727e8
	ld a, [$d072]
	and $9f
	jp nz, .asm_727e8
	ld a, [$d01a]
	cp b
	jp nz, .asm_727e8
	ld a, [$d01a]
	ld c, a
	ld de, $d0ca
	ld hl, $d072
	call Func_70000
	ld a, [$d0d2]
	and $3d
	jp nz, .asm_728c9
	ld a, [$d07a]
	and $9f
	jp nz, .asm_728c9
	ld a, [$d022]
	cp b
	jp nz, .asm_728c9
	ld a, [$d022]
	ld c, a
	ld de, $d0d2
	ld hl, $d07a
	call Func_70000
	ld a, [$d0da]
	and $3d
	jp nz, .asm_72986
	ld a, [$d082]
	and $9f
	jp nz, .asm_72986
	ld a, [$d02a]
	cp b
	jp nz, .asm_72986
	ld a, [$d02a]
	ld c, a
	ld de, $d0da
	ld hl, $d082
	call Func_70000
	ld a, [$d0e2]
	and $3d
	jp nz, .asm_72a1f
	ld a, [$d08a]
	and $9f
	jp nz, .asm_72a1f
	ld a, [$d032]
	cp b
	jp nz, .asm_72a1f
	ld a, [$d032]
	ld c, a
	ld de, $d0e2
	ld hl, $d08a
	call Func_70000
	ld a, [$d0ea]
	and $3d
	jp nz, .asm_72a91
	ld a, [$d092]
	and $9f
	jp nz, .asm_72a91
	ld a, [$d03a]
	cp b
	jp nz, .asm_72a91
	ld a, [$d03a]
	ld c, a
	ld de, $d0ea
	ld hl, $d092
	call Func_70000
	ld a, [$d0f2]
	and $3d
	jp nz, .asm_72a91
	ld a, [$d09a]
	and $9f
	jp nz, .asm_72a91
	ld a, [$d042]
	cp b
	jp nz, .asm_72a91
	ld a, [$d042]
	ld c, a
	ld de, $d0f2
	ld hl, $d09a
	call Func_70000
	jp .asm_72a91

.asm_725ba
	ld a, [$d0ba]
	and $3d
	jp nz, .asm_726e3
	ld a, [$d062]
	and $9f
	jp nz, .asm_726e3
	ld a, [$d00a]
	and a
	jp z, .asm_726e3
	cp $08
	jp z, .asm_726e3
	ld b, a
	ld a, [$d0c2]
	and $3d
	jp nz, .asm_726e3
	ld a, [$d06a]
	and $9f
	jp nz, .asm_726e3
	ld a, [$d012]
	cp b
	jp nz, .asm_726e3
	ld a, [$d0ca]
	and $3d
	jp nz, .asm_727e8
	ld a, [$d072]
	and $9f
	jp nz, .asm_727e8
	ld a, [$d01a]
	cp b
	jp nz, .asm_727e8
	ld a, [$d00a]
	ld c, a
	ld de, $d0ba
	ld hl, $d062
	call Func_70000
	ld a, [$d012]
	ld c, a
	ld de, $d0c2
	ld hl, $d06a
	call Func_70000
	ld a, [$d01a]
	ld c, a
	ld de, $d0ca
	ld hl, $d072
	call Func_70000
	ld a, [$d0d2]
	and $3d
	jp nz, .asm_728c9
	ld a, [$d07a]
	and $9f
	jp nz, .asm_728c9
	ld a, [$d022]
	cp b
	jp nz, .asm_728c9
	ld a, [$d022]
	ld c, a
	ld de, $d0d2
	ld hl, $d07a
	call Func_70000
	ld a, [$d0da]
	and $3d
	jp nz, .asm_72986
	ld a, [$d082]
	and $9f
	jp nz, .asm_72986
	ld a, [$d02a]
	cp b
	jp nz, .asm_72986
	ld a, [$d02a]
	ld c, a
	ld de, $d0da
	ld hl, $d082
	call Func_70000
	ld a, [$d0e2]
	and $3d
	jp nz, .asm_72a1f
	ld a, [$d08a]
	and $9f
	jp nz, .asm_72a1f
	ld a, [$d032]
	cp b
	jp nz, .asm_72a1f
	ld a, [$d032]
	ld c, a
	ld de, $d0e2
	ld hl, $d08a
	call Func_70000
	ld a, [$d0ea]
	and $3d
	jp nz, .asm_72a91
	ld a, [$d092]
	and $9f
	jp nz, .asm_72a91
	ld a, [$d03a]
	cp b
	jp nz, .asm_72a91
	ld a, [$d03a]
	ld c, a
	ld de, $d0ea
	ld hl, $d092
	call Func_70000
	ld a, [$d0f2]
	and $3d
	jp nz, .asm_72a91
	ld a, [$d09a]
	and $9f
	jp nz, .asm_72a91
	ld a, [$d042]
	cp b
	jp nz, .asm_72a91
	ld a, [$d042]
	ld c, a
	ld de, $d0f2
	ld hl, $d09a
	call Func_70000
	jp .asm_72a91

.asm_726e3
	ld a, [$d0c2]
	and $3d
	jp nz, .asm_727e8
	ld a, [$d06a]
	and $9f
	jp nz, .asm_727e8
	ld a, [$d012]
	and a
	jp z, .asm_727e8
	cp $08
	jp z, .asm_727e8
	ld b, a
	ld a, [$d0ca]
	and $3d
	jp nz, .asm_727e8
	ld a, [$d072]
	and $9f
	jp nz, .asm_727e8
	ld a, [$d01a]
	cp b
	jp nz, .asm_727e8
	ld a, [$d0d2]
	and $3d
	jp nz, .asm_728c9
	ld a, [$d07a]
	and $9f
	jp nz, .asm_728c9
	ld a, [$d022]
	cp b
	jp nz, .asm_728c9
	ld a, [$d012]
	ld c, a
	ld de, $d0c2
	ld hl, $d06a
	call Func_70000
	ld a, [$d01a]
	ld c, a
	ld de, $d0ca
	ld hl, $d072
	call Func_70000
	ld a, [$d022]
	ld c, a
	ld de, $d0d2
	ld hl, $d07a
	call Func_70000
	ld a, [$d0da]
	and $3d
	jp nz, .asm_72986
	ld a, [$d082]
	and $9f
	jp nz, .asm_72986
	ld a, [$d02a]
	cp b
	jp nz, .asm_72986
	ld a, [$d02a]
	ld c, a
	ld de, $d0da
	ld hl, $d082
	call Func_70000
	ld a, [$d0e2]
	and $3d
	jp nz, .asm_72a1f
	ld a, [$d08a]
	and $9f
	jp nz, .asm_72a1f
	ld a, [$d032]
	cp b
	jp nz, .asm_72a1f
	ld a, [$d032]
	ld c, a
	ld de, $d0e2
	ld hl, $d08a
	call Func_70000
	ld a, [$d0ea]
	and $3d
	jp nz, .asm_72a91
	ld a, [$d092]
	and $9f
	jp nz, .asm_72a91
	ld a, [$d03a]
	cp b
	jp nz, .asm_72a91
	ld a, [$d03a]
	ld c, a
	ld de, $d0ea
	ld hl, $d092
	call Func_70000
	ld a, [$d0f2]
	and $3d
	jp nz, .asm_72a91
	ld a, [$d09a]
	and $9f
	jp nz, .asm_72a91
	ld a, [$d042]
	cp b
	jp nz, .asm_72a91
	ld a, [$d042]
	ld c, a
	ld de, $d0f2
	ld hl, $d09a
	call Func_70000
	jp .asm_72a91

.asm_727e8
	ld a, [$d0ca]
	and $3d
	jp nz, .asm_728c9
	ld a, [$d072]
	and $9f
	jp nz, .asm_728c9
	ld a, [$d01a]
	and a
	jp z, .asm_728c9
	cp $08
	jp z, .asm_728c9
	ld b, a
	ld a, [$d0d2]
	and $3d
	jp nz, .asm_728c9
	ld a, [$d07a]
	and $9f
	jp nz, .asm_728c9
	ld a, [$d022]
	cp b
	jp nz, .asm_728c9
	ld a, [$d0da]
	and $3d
	jp nz, .asm_72986
	ld a, [$d082]
	and $9f
	jp nz, .asm_72986
	ld a, [$d02a]
	cp b
	jp nz, .asm_72986
	ld a, [$d01a]
	ld c, a
	ld de, $d0ca
	ld hl, $d072
	call Func_70000
	ld a, [$d022]
	ld c, a
	ld de, $d0d2
	ld hl, $d07a
	call Func_70000
	ld a, [$d02a]
	ld c, a
	ld de, $d0da
	ld hl, $d082
	call Func_70000
	ld a, [$d0e2]
	and $3d
	jp nz, .asm_72a1f
	ld a, [$d08a]
	and $9f
	jp nz, .asm_72a1f
	ld a, [$d032]
	cp b
	jp nz, .asm_72a1f
	ld a, [$d032]
	ld c, a
	ld de, $d0e2
	ld hl, $d08a
	call Func_70000
	ld a, [$d0ea]
	and $3d
	jp nz, .asm_72a91
	ld a, [$d092]
	and $9f
	jp nz, .asm_72a91
	ld a, [$d03a]
	cp b
	jp nz, .asm_72a91
	ld a, [$d03a]
	ld c, a
	ld de, $d0ea
	ld hl, $d092
	call Func_70000
	ld a, [$d0f2]
	and $3d
	jp nz, .asm_72a91
	ld a, [$d09a]
	and $9f
	jp nz, .asm_72a91
	ld a, [$d042]
	cp b
	jp nz, .asm_72a91
	ld a, [$d042]
	ld c, a
	ld de, $d0f2
	ld hl, $d09a
	call Func_70000
	jp .asm_72a91

.asm_728c9
	ld a, [$d0d2]
	and $3d
	jp nz, .asm_72986
	ld a, [$d07a]
	and $9f
	jp nz, .asm_72986
	ld a, [$d022]
	and a
	jp z, .asm_72986
	cp $08
	jp z, .asm_72986
	ld b, a
	ld a, [$d0da]
	and $3d
	jp nz, .asm_72986
	ld a, [$d082]
	and $9f
	jp nz, .asm_72986
	ld a, [$d02a]
	cp b
	jp nz, .asm_72986
	ld a, [$d0e2]
	and $3d
	jp nz, .asm_72a1f
	ld a, [$d08a]
	and $9f
	jp nz, .asm_72a1f
	ld a, [$d032]
	cp b
	jp nz, .asm_72a1f
	ld a, [$d022]
	ld c, a
	ld de, $d0d2
	ld hl, $d07a
	call Func_70000
	ld a, [$d02a]
	ld c, a
	ld de, $d0da
	ld hl, $d082
	call Func_70000
	ld a, [$d032]
	ld c, a
	ld de, $d0e2
	ld hl, $d08a
	call Func_70000
	ld a, [$d0ea]
	and $3d
	jp nz, .asm_72a91
	ld a, [$d092]
	and $9f
	jp nz, .asm_72a91
	ld a, [$d03a]
	cp b
	jp nz, .asm_72a91
	ld a, [$d03a]
	ld c, a
	ld de, $d0ea
	ld hl, $d092
	call Func_70000
	ld a, [$d0f2]
	and $3d
	jp nz, .asm_72a91
	ld a, [$d09a]
	and $9f
	jp nz, .asm_72a91
	ld a, [$d042]
	cp b
	jp nz, .asm_72a91
	ld a, [$d042]
	ld c, a
	ld de, $d0f2
	ld hl, $d09a
	call Func_70000
	jp .asm_72a91

.asm_72986
	ld a, [$d0da]
	and $3d
	jp nz, .asm_72a1f
	ld a, [$d082]
	and $9f
	jp nz, .asm_72a1f
	ld a, [$d02a]
	and a
	jp z, .asm_72a1f
	cp $08
	jp z, .asm_72a1f
	ld b, a
	ld a, [$d0e2]
	and $3d
	jp nz, .asm_72a1f
	ld a, [$d08a]
	and $9f
	jp nz, .asm_72a1f
	ld a, [$d032]
	cp b
	jp nz, .asm_72a1f
	ld a, [$d0ea]
	and $3d
	jp nz, .asm_72a91
	ld a, [$d092]
	and $9f
	jp nz, .asm_72a91
	ld a, [$d03a]
	cp b
	jp nz, .asm_72a91
	ld a, [$d02a]
	ld c, a
	ld de, $d0da
	ld hl, $d082
	call Func_70000
	ld a, [$d032]
	ld c, a
	ld de, $d0e2
	ld hl, $d08a
	call Func_70000
	ld a, [$d03a]
	ld c, a
	ld de, $d0ea
	ld hl, $d092
	call Func_70000
	ld a, [$d0f2]
	and $3d
	jp nz, .asm_72a91
	ld a, [$d09a]
	and $9f
	jp nz, .asm_72a91
	ld a, [$d042]
	cp b
	jp nz, .asm_72a91
	ld a, [$d042]
	ld c, a
	ld de, $d0f2
	ld hl, $d09a
	call Func_70000
	jp .asm_72a91

.asm_72a1f
	ld a, [$d0e2]
	and $3d
	jp nz, .asm_72a91
	ld a, [$d08a]
	and $9f
	jp nz, .asm_72a91
	ld a, [$d032]
	and a
	jp z, .asm_72a91
	cp $08
	jp z, .asm_72a91
	ld b, a
	ld a, [$d0ea]
	and $3d
	jp nz, .asm_72a91
	ld a, [$d092]
	and $9f
	jp nz, .asm_72a91
	ld a, [$d03a]
	cp b
	jp nz, .asm_72a91
	ld a, [$d0f2]
	and $3d
	jp nz, .asm_72a91
	ld a, [$d09a]
	and $9f
	jp nz, .asm_72a91
	ld a, [$d042]
	cp b
	jp nz, .asm_72a91
	ld a, [$d032]
	ld c, a
	ld de, $d0e2
	ld hl, $d08a
	call Func_70000
	ld a, [$d03a]
	ld c, a
	ld de, $d0ea
	ld hl, $d092
	call Func_70000
	ld a, [$d042]
	ld c, a
	ld de, $d0f2
	ld hl, $d09a
	call Func_70000
.asm_72a91
	ld a, [$d0b3]
	and $3d
	jp nz, .asm_72bde
	ld a, [$d05b]
	and $9f
	jp nz, .asm_72bde
	ld a, [$d003]
	and a
	jp z, .asm_72bde
	cp $08
	jp z, .asm_72bde
	ld b, a
	ld a, [$d0bb]
	and $3d
	jp nz, .asm_72bde
	ld a, [$d063]
	and $9f
	jp nz, .asm_72bde
	ld a, [$d00b]
	cp b
	jp nz, .asm_72bde
	ld a, [$d0c3]
	and $3d
	jp nz, .asm_72d07
	ld a, [$d06b]
	and $9f
	jp nz, .asm_72d07
	ld a, [$d013]
	cp b
	jp nz, .asm_72d07
	ld a, [$d003]
	ld c, a
	ld de, $d0b3
	ld hl, $d05b
	call Func_70000
	ld a, [$d00b]
	ld c, a
	ld de, $d0bb
	ld hl, $d063
	call Func_70000
	ld a, [$d013]
	ld c, a
	ld de, $d0c3
	ld hl, $d06b
	call Func_70000
	ld a, [$d0cb]
	and $3d
	jp nz, .asm_72e0c
	ld a, [$d073]
	and $9f
	jp nz, .asm_72e0c
	ld a, [$d01b]
	cp b
	jp nz, .asm_72e0c
	ld a, [$d01b]
	ld c, a
	ld de, $d0cb
	ld hl, $d073
	call Func_70000
	ld a, [$d0d3]
	and $3d
	jp nz, .asm_72eed
	ld a, [$d07b]
	and $9f
	jp nz, .asm_72eed
	ld a, [$d023]
	cp b
	jp nz, .asm_72eed
	ld a, [$d023]
	ld c, a
	ld de, $d0d3
	ld hl, $d07b
	call Func_70000
	ld a, [$d0db]
	and $3d
	jp nz, .asm_72faa
	ld a, [$d083]
	and $9f
	jp nz, .asm_72faa
	ld a, [$d02b]
	cp b
	jp nz, .asm_72faa
	ld a, [$d02b]
	ld c, a
	ld de, $d0db
	ld hl, $d083
	call Func_70000
	ld a, [$d0e3]
	and $3d
	jp nz, .asm_73043
	ld a, [$d08b]
	and $9f
	jp nz, .asm_73043
	ld a, [$d033]
	cp b
	jp nz, .asm_73043
	ld a, [$d033]
	ld c, a
	ld de, $d0e3
	ld hl, $d08b
	call Func_70000
	ld a, [$d0eb]
	and $3d
	jp nz, .asm_730b5
	ld a, [$d093]
	and $9f
	jp nz, .asm_730b5
	ld a, [$d03b]
	cp b
	jp nz, .asm_730b5
	ld a, [$d03b]
	ld c, a
	ld de, $d0eb
	ld hl, $d093
	call Func_70000
	ld a, [$d0f3]
	and $3d
	jp nz, .asm_730b5
	ld a, [$d09b]
	and $9f
	jp nz, .asm_730b5
	ld a, [$d043]
	cp b
	jp nz, .asm_730b5
	ld a, [$d043]
	ld c, a
	ld de, $d0f3
	ld hl, $d09b
	call Func_70000
	jp .asm_730b5

.asm_72bde
	ld a, [$d0bb]
	and $3d
	jp nz, .asm_72d07
	ld a, [$d063]
	and $9f
	jp nz, .asm_72d07
	ld a, [$d00b]
	and a
	jp z, .asm_72d07
	cp $08
	jp z, .asm_72d07
	ld b, a
	ld a, [$d0c3]
	and $3d
	jp nz, .asm_72d07
	ld a, [$d06b]
	and $9f
	jp nz, .asm_72d07
	ld a, [$d013]
	cp b
	jp nz, .asm_72d07
	ld a, [$d0cb]
	and $3d
	jp nz, .asm_72e0c
	ld a, [$d073]
	and $9f
	jp nz, .asm_72e0c
	ld a, [$d01b]
	cp b
	jp nz, .asm_72e0c
	ld a, [$d00b]
	ld c, a
	ld de, $d0bb
	ld hl, $d063
	call Func_70000
	ld a, [$d013]
	ld c, a
	ld de, $d0c3
	ld hl, $d06b
	call Func_70000
	ld a, [$d01b]
	ld c, a
	ld de, $d0cb
	ld hl, $d073
	call Func_70000
	ld a, [$d0d3]
	and $3d
	jp nz, .asm_72eed
	ld a, [$d07b]
	and $9f
	jp nz, .asm_72eed
	ld a, [$d023]
	cp b
	jp nz, .asm_72eed
	ld a, [$d023]
	ld c, a
	ld de, $d0d3
	ld hl, $d07b
	call Func_70000
	ld a, [$d0db]
	and $3d
	jp nz, .asm_72faa
	ld a, [$d083]
	and $9f
	jp nz, .asm_72faa
	ld a, [$d02b]
	cp b
	jp nz, .asm_72faa
	ld a, [$d02b]
	ld c, a
	ld de, $d0db
	ld hl, $d083
	call Func_70000
	ld a, [$d0e3]
	and $3d
	jp nz, .asm_73043
	ld a, [$d08b]
	and $9f
	jp nz, .asm_73043
	ld a, [$d033]
	cp b
	jp nz, .asm_73043
	ld a, [$d033]
	ld c, a
	ld de, $d0e3
	ld hl, $d08b
	call Func_70000
	ld a, [$d0eb]
	and $3d
	jp nz, .asm_730b5
	ld a, [$d093]
	and $9f
	jp nz, .asm_730b5
	ld a, [$d03b]
	cp b
	jp nz, .asm_730b5
	ld a, [$d03b]
	ld c, a
	ld de, $d0eb
	ld hl, $d093
	call Func_70000
	ld a, [$d0f3]
	and $3d
	jp nz, .asm_730b5
	ld a, [$d09b]
	and $9f
	jp nz, .asm_730b5
	ld a, [$d043]
	cp b
	jp nz, .asm_730b5
	ld a, [$d043]
	ld c, a
	ld de, $d0f3
	ld hl, $d09b
	call Func_70000
	jp .asm_730b5

.asm_72d07
	ld a, [$d0c3]
	and $3d
	jp nz, .asm_72e0c
	ld a, [$d06b]
	and $9f
	jp nz, .asm_72e0c
	ld a, [$d013]
	and a
	jp z, .asm_72e0c
	cp $08
	jp z, .asm_72e0c
	ld b, a
	ld a, [$d0cb]
	and $3d
	jp nz, .asm_72e0c
	ld a, [$d073]
	and $9f
	jp nz, .asm_72e0c
	ld a, [$d01b]
	cp b
	jp nz, .asm_72e0c
	ld a, [$d0d3]
	and $3d
	jp nz, .asm_72eed
	ld a, [$d07b]
	and $9f
	jp nz, .asm_72eed
	ld a, [$d023]
	cp b
	jp nz, .asm_72eed
	ld a, [$d013]
	ld c, a
	ld de, $d0c3
	ld hl, $d06b
	call Func_70000
	ld a, [$d01b]
	ld c, a
	ld de, $d0cb
	ld hl, $d073
	call Func_70000
	ld a, [$d023]
	ld c, a
	ld de, $d0d3
	ld hl, $d07b
	call Func_70000
	ld a, [$d0db]
	and $3d
	jp nz, .asm_72faa
	ld a, [$d083]
	and $9f
	jp nz, .asm_72faa
	ld a, [$d02b]
	cp b
	jp nz, .asm_72faa
	ld a, [$d02b]
	ld c, a
	ld de, $d0db
	ld hl, $d083
	call Func_70000
	ld a, [$d0e3]
	and $3d
	jp nz, .asm_73043
	ld a, [$d08b]
	and $9f
	jp nz, .asm_73043
	ld a, [$d033]
	cp b
	jp nz, .asm_73043
	ld a, [$d033]
	ld c, a
	ld de, $d0e3
	ld hl, $d08b
	call Func_70000
	ld a, [$d0eb]
	and $3d
	jp nz, .asm_730b5
	ld a, [$d093]
	and $9f
	jp nz, .asm_730b5
	ld a, [$d03b]
	cp b
	jp nz, .asm_730b5
	ld a, [$d03b]
	ld c, a
	ld de, $d0eb
	ld hl, $d093
	call Func_70000
	ld a, [$d0f3]
	and $3d
	jp nz, .asm_730b5
	ld a, [$d09b]
	and $9f
	jp nz, .asm_730b5
	ld a, [$d043]
	cp b
	jp nz, .asm_730b5
	ld a, [$d043]
	ld c, a
	ld de, $d0f3
	ld hl, $d09b
	call Func_70000
	jp .asm_730b5

.asm_72e0c
	ld a, [$d0cb]
	and $3d
	jp nz, .asm_72eed
	ld a, [$d073]
	and $9f
	jp nz, .asm_72eed
	ld a, [$d01b]
	and a
	jp z, .asm_72eed
	cp $08
	jp z, .asm_72eed
	ld b, a
	ld a, [$d0d3]
	and $3d
	jp nz, .asm_72eed
	ld a, [$d07b]
	and $9f
	jp nz, .asm_72eed
	ld a, [$d023]
	cp b
	jp nz, .asm_72eed
	ld a, [$d0db]
	and $3d
	jp nz, .asm_72faa
	ld a, [$d083]
	and $9f
	jp nz, .asm_72faa
	ld a, [$d02b]
	cp b
	jp nz, .asm_72faa
	ld a, [$d01b]
	ld c, a
	ld de, $d0cb
	ld hl, $d073
	call Func_70000
	ld a, [$d023]
	ld c, a
	ld de, $d0d3
	ld hl, $d07b
	call Func_70000
	ld a, [$d02b]
	ld c, a
	ld de, $d0db
	ld hl, $d083
	call Func_70000
	ld a, [$d0e3]
	and $3d
	jp nz, .asm_73043
	ld a, [$d08b]
	and $9f
	jp nz, .asm_73043
	ld a, [$d033]
	cp b
	jp nz, .asm_73043
	ld a, [$d033]
	ld c, a
	ld de, $d0e3
	ld hl, $d08b
	call Func_70000
	ld a, [$d0eb]
	and $3d
	jp nz, .asm_730b5
	ld a, [$d093]
	and $9f
	jp nz, .asm_730b5
	ld a, [$d03b]
	cp b
	jp nz, .asm_730b5
	ld a, [$d03b]
	ld c, a
	ld de, $d0eb
	ld hl, $d093
	call Func_70000
	ld a, [$d0f3]
	and $3d
	jp nz, .asm_730b5
	ld a, [$d09b]
	and $9f
	jp nz, .asm_730b5
	ld a, [$d043]
	cp b
	jp nz, .asm_730b5
	ld a, [$d043]
	ld c, a
	ld de, $d0f3
	ld hl, $d09b
	call Func_70000
	jp .asm_730b5

.asm_72eed
	ld a, [$d0d3]
	and $3d
	jp nz, .asm_72faa
	ld a, [$d07b]
	and $9f
	jp nz, .asm_72faa
	ld a, [$d023]
	and a
	jp z, .asm_72faa
	cp $08
	jp z, .asm_72faa
	ld b, a
	ld a, [$d0db]
	and $3d
	jp nz, .asm_72faa
	ld a, [$d083]
	and $9f
	jp nz, .asm_72faa
	ld a, [$d02b]
	cp b
	jp nz, .asm_72faa
	ld a, [$d0e3]
	and $3d
	jp nz, .asm_73043
	ld a, [$d08b]
	and $9f
	jp nz, .asm_73043
	ld a, [$d033]
	cp b
	jp nz, .asm_73043
	ld a, [$d023]
	ld c, a
	ld de, $d0d3
	ld hl, $d07b
	call Func_70000
	ld a, [$d02b]
	ld c, a
	ld de, $d0db
	ld hl, $d083
	call Func_70000
	ld a, [$d033]
	ld c, a
	ld de, $d0e3
	ld hl, $d08b
	call Func_70000
	ld a, [$d0eb]
	and $3d
	jp nz, .asm_730b5
	ld a, [$d093]
	and $9f
	jp nz, .asm_730b5
	ld a, [$d03b]
	cp b
	jp nz, .asm_730b5
	ld a, [$d03b]
	ld c, a
	ld de, $d0eb
	ld hl, $d093
	call Func_70000
	ld a, [$d0f3]
	and $3d
	jp nz, .asm_730b5
	ld a, [$d09b]
	and $9f
	jp nz, .asm_730b5
	ld a, [$d043]
	cp b
	jp nz, .asm_730b5
	ld a, [$d043]
	ld c, a
	ld de, $d0f3
	ld hl, $d09b
	call Func_70000
	jp .asm_730b5

.asm_72faa
	ld a, [$d0db]
	and $3d
	jp nz, .asm_73043
	ld a, [$d083]
	and $9f
	jp nz, .asm_73043
	ld a, [$d02b]
	and a
	jp z, .asm_73043
	cp $08
	jp z, .asm_73043
	ld b, a
	ld a, [$d0e3]
	and $3d
	jp nz, .asm_73043
	ld a, [$d08b]
	and $9f
	jp nz, .asm_73043
	ld a, [$d033]
	cp b
	jp nz, .asm_73043
	ld a, [$d0eb]
	and $3d
	jp nz, .asm_730b5
	ld a, [$d093]
	and $9f
	jp nz, .asm_730b5
	ld a, [$d03b]
	cp b
	jp nz, .asm_730b5
	ld a, [$d02b]
	ld c, a
	ld de, $d0db
	ld hl, $d083
	call Func_70000
	ld a, [$d033]
	ld c, a
	ld de, $d0e3
	ld hl, $d08b
	call Func_70000
	ld a, [$d03b]
	ld c, a
	ld de, $d0eb
	ld hl, $d093
	call Func_70000
	ld a, [$d0f3]
	and $3d
	jp nz, .asm_730b5
	ld a, [$d09b]
	and $9f
	jp nz, .asm_730b5
	ld a, [$d043]
	cp b
	jp nz, .asm_730b5
	ld a, [$d043]
	ld c, a
	ld de, $d0f3
	ld hl, $d09b
	call Func_70000
	jp .asm_730b5

.asm_73043
	ld a, [$d0e3]
	and $3d
	jp nz, .asm_730b5
	ld a, [$d08b]
	and $9f
	jp nz, .asm_730b5
	ld a, [$d033]
	and a
	jp z, .asm_730b5
	cp $08
	jp z, .asm_730b5
	ld b, a
	ld a, [$d0eb]
	and $3d
	jp nz, .asm_730b5
	ld a, [$d093]
	and $9f
	jp nz, .asm_730b5
	ld a, [$d03b]
	cp b
	jp nz, .asm_730b5
	ld a, [$d0f3]
	and $3d
	jp nz, .asm_730b5
	ld a, [$d09b]
	and $9f
	jp nz, .asm_730b5
	ld a, [$d043]
	cp b
	jp nz, .asm_730b5
	ld a, [$d033]
	ld c, a
	ld de, $d0e3
	ld hl, $d08b
	call Func_70000
	ld a, [$d03b]
	ld c, a
	ld de, $d0eb
	ld hl, $d093
	call Func_70000
	ld a, [$d043]
	ld c, a
	ld de, $d0f3
	ld hl, $d09b
	call Func_70000
.asm_730b5
	ld a, [$d0b4]
	and $3d
	jp nz, .asm_73202
	ld a, [$d05c]
	and $9f
	jp nz, .asm_73202
	ld a, [$d004]
	and a
	jp z, .asm_73202
	cp $08
	jp z, .asm_73202
	ld b, a
	ld a, [$d0bc]
	and $3d
	jp nz, .asm_73202
	ld a, [$d064]
	and $9f
	jp nz, .asm_73202
	ld a, [$d00c]
	cp b
	jp nz, .asm_73202
	ld a, [$d0c4]
	and $3d
	jp nz, .asm_7332b
	ld a, [$d06c]
	and $9f
	jp nz, .asm_7332b
	ld a, [$d014]
	cp b
	jp nz, .asm_7332b
	ld a, [$d004]
	ld c, a
	ld de, $d0b4
	ld hl, $d05c
	call Func_70000
	ld a, [$d00c]
	ld c, a
	ld de, $d0bc
	ld hl, $d064
	call Func_70000
	ld a, [$d014]
	ld c, a
	ld de, $d0c4
	ld hl, $d06c
	call Func_70000
	ld a, [$d0cc]
	and $3d
	jp nz, .asm_73430
	ld a, [$d074]
	and $9f
	jp nz, .asm_73430
	ld a, [$d01c]
	cp b
	jp nz, .asm_73430
	ld a, [$d01c]
	ld c, a
	ld de, $d0cc
	ld hl, $d074
	call Func_70000
	ld a, [$d0d4]
	and $3d
	jp nz, .asm_73511
	ld a, [$d07c]
	and $9f
	jp nz, .asm_73511
	ld a, [$d024]
	cp b
	jp nz, .asm_73511
	ld a, [$d024]
	ld c, a
	ld de, $d0d4
	ld hl, $d07c
	call Func_70000
	ld a, [$d0dc]
	and $3d
	jp nz, .asm_735ce
	ld a, [$d084]
	and $9f
	jp nz, .asm_735ce
	ld a, [$d02c]
	cp b
	jp nz, .asm_735ce
	ld a, [$d02c]
	ld c, a
	ld de, $d0dc
	ld hl, $d084
	call Func_70000
	ld a, [$d0e4]
	and $3d
	jp nz, .asm_73667
	ld a, [$d08c]
	and $9f
	jp nz, .asm_73667
	ld a, [$d034]
	cp b
	jp nz, .asm_73667
	ld a, [$d034]
	ld c, a
	ld de, $d0e4
	ld hl, $d08c
	call Func_70000
	ld a, [$d0ec]
	and $3d
	jp nz, .asm_736d9
	ld a, [$d094]
	and $9f
	jp nz, .asm_736d9
	ld a, [$d03c]
	cp b
	jp nz, .asm_736d9
	ld a, [$d03c]
	ld c, a
	ld de, $d0ec
	ld hl, $d094
	call Func_70000
	ld a, [$d0f4]
	and $3d
	jp nz, .asm_736d9
	ld a, [$d09c]
	and $9f
	jp nz, .asm_736d9
	ld a, [$d044]
	cp b
	jp nz, .asm_736d9
	ld a, [$d044]
	ld c, a
	ld de, $d0f4
	ld hl, $d09c
	call Func_70000
	jp .asm_736d9

.asm_73202
	ld a, [$d0bc]
	and $3d
	jp nz, .asm_7332b
	ld a, [$d064]
	and $9f
	jp nz, .asm_7332b
	ld a, [$d00c]
	and a
	jp z, .asm_7332b
	cp $08
	jp z, .asm_7332b
	ld b, a
	ld a, [$d0c4]
	and $3d
	jp nz, .asm_7332b
	ld a, [$d06c]
	and $9f
	jp nz, .asm_7332b
	ld a, [$d014]
	cp b
	jp nz, .asm_7332b
	ld a, [$d0cc]
	and $3d
	jp nz, .asm_73430
	ld a, [$d074]
	and $9f
	jp nz, .asm_73430
	ld a, [$d01c]
	cp b
	jp nz, .asm_73430
	ld a, [$d00c]
	ld c, a
	ld de, $d0bc
	ld hl, $d064
	call Func_70000
	ld a, [$d014]
	ld c, a
	ld de, $d0c4
	ld hl, $d06c
	call Func_70000
	ld a, [$d01c]
	ld c, a
	ld de, $d0cc
	ld hl, $d074
	call Func_70000
	ld a, [$d0d4]
	and $3d
	jp nz, .asm_73511
	ld a, [$d07c]
	and $9f
	jp nz, .asm_73511
	ld a, [$d024]
	cp b
	jp nz, .asm_73511
	ld a, [$d024]
	ld c, a
	ld de, $d0d4
	ld hl, $d07c
	call Func_70000
	ld a, [$d0dc]
	and $3d
	jp nz, .asm_735ce
	ld a, [$d084]
	and $9f
	jp nz, .asm_735ce
	ld a, [$d02c]
	cp b
	jp nz, .asm_735ce
	ld a, [$d02c]
	ld c, a
	ld de, $d0dc
	ld hl, $d084
	call Func_70000
	ld a, [$d0e4]
	and $3d
	jp nz, .asm_73667
	ld a, [$d08c]
	and $9f
	jp nz, .asm_73667
	ld a, [$d034]
	cp b
	jp nz, .asm_73667
	ld a, [$d034]
	ld c, a
	ld de, $d0e4
	ld hl, $d08c
	call Func_70000
	ld a, [$d0ec]
	and $3d
	jp nz, .asm_736d9
	ld a, [$d094]
	and $9f
	jp nz, .asm_736d9
	ld a, [$d03c]
	cp b
	jp nz, .asm_736d9
	ld a, [$d03c]
	ld c, a
	ld de, $d0ec
	ld hl, $d094
	call Func_70000
	ld a, [$d0f4]
	and $3d
	jp nz, .asm_736d9
	ld a, [$d09c]
	and $9f
	jp nz, .asm_736d9
	ld a, [$d044]
	cp b
	jp nz, .asm_736d9
	ld a, [$d044]
	ld c, a
	ld de, $d0f4
	ld hl, $d09c
	call Func_70000
	jp .asm_736d9

.asm_7332b
	ld a, [$d0c4]
	and $3d
	jp nz, .asm_73430
	ld a, [$d06c]
	and $9f
	jp nz, .asm_73430
	ld a, [$d014]
	and a
	jp z, .asm_73430
	cp $08
	jp z, .asm_73430
	ld b, a
	ld a, [$d0cc]
	and $3d
	jp nz, .asm_73430
	ld a, [$d074]
	and $9f
	jp nz, .asm_73430
	ld a, [$d01c]
	cp b
	jp nz, .asm_73430
	ld a, [$d0d4]
	and $3d
	jp nz, .asm_73511
	ld a, [$d07c]
	and $9f
	jp nz, .asm_73511
	ld a, [$d024]
	cp b
	jp nz, .asm_73511
	ld a, [$d014]
	ld c, a
	ld de, $d0c4
	ld hl, $d06c
	call Func_70000
	ld a, [$d01c]
	ld c, a
	ld de, $d0cc
	ld hl, $d074
	call Func_70000
	ld a, [$d024]
	ld c, a
	ld de, $d0d4
	ld hl, $d07c
	call Func_70000
	ld a, [$d0dc]
	and $3d
	jp nz, .asm_735ce
	ld a, [$d084]
	and $9f
	jp nz, .asm_735ce
	ld a, [$d02c]
	cp b
	jp nz, .asm_735ce
	ld a, [$d02c]
	ld c, a
	ld de, $d0dc
	ld hl, $d084
	call Func_70000
	ld a, [$d0e4]
	and $3d
	jp nz, .asm_73667
	ld a, [$d08c]
	and $9f
	jp nz, .asm_73667
	ld a, [$d034]
	cp b
	jp nz, .asm_73667
	ld a, [$d034]
	ld c, a
	ld de, $d0e4
	ld hl, $d08c
	call Func_70000
	ld a, [$d0ec]
	and $3d
	jp nz, .asm_736d9
	ld a, [$d094]
	and $9f
	jp nz, .asm_736d9
	ld a, [$d03c]
	cp b
	jp nz, .asm_736d9
	ld a, [$d03c]
	ld c, a
	ld de, $d0ec
	ld hl, $d094
	call Func_70000
	ld a, [$d0f4]
	and $3d
	jp nz, .asm_736d9
	ld a, [$d09c]
	and $9f
	jp nz, .asm_736d9
	ld a, [$d044]
	cp b
	jp nz, .asm_736d9
	ld a, [$d044]
	ld c, a
	ld de, $d0f4
	ld hl, $d09c
	call Func_70000
	jp .asm_736d9

.asm_73430
	ld a, [$d0cc]
	and $3d
	jp nz, .asm_73511
	ld a, [$d074]
	and $9f
	jp nz, .asm_73511
	ld a, [$d01c]
	and a
	jp z, .asm_73511
	cp $08
	jp z, .asm_73511
	ld b, a
	ld a, [$d0d4]
	and $3d
	jp nz, .asm_73511
	ld a, [$d07c]
	and $9f
	jp nz, .asm_73511
	ld a, [$d024]
	cp b
	jp nz, .asm_73511
	ld a, [$d0dc]
	and $3d
	jp nz, .asm_735ce
	ld a, [$d084]
	and $9f
	jp nz, .asm_735ce
	ld a, [$d02c]
	cp b
	jp nz, .asm_735ce
	ld a, [$d01c]
	ld c, a
	ld de, $d0cc
	ld hl, $d074
	call Func_70000
	ld a, [$d024]
	ld c, a
	ld de, $d0d4
	ld hl, $d07c
	call Func_70000
	ld a, [$d02c]
	ld c, a
	ld de, $d0dc
	ld hl, $d084
	call Func_70000
	ld a, [$d0e4]
	and $3d
	jp nz, .asm_73667
	ld a, [$d08c]
	and $9f
	jp nz, .asm_73667
	ld a, [$d034]
	cp b
	jp nz, .asm_73667
	ld a, [$d034]
	ld c, a
	ld de, $d0e4
	ld hl, $d08c
	call Func_70000
	ld a, [$d0ec]
	and $3d
	jp nz, .asm_736d9
	ld a, [$d094]
	and $9f
	jp nz, .asm_736d9
	ld a, [$d03c]
	cp b
	jp nz, .asm_736d9
	ld a, [$d03c]
	ld c, a
	ld de, $d0ec
	ld hl, $d094
	call Func_70000
	ld a, [$d0f4]
	and $3d
	jp nz, .asm_736d9
	ld a, [$d09c]
	and $9f
	jp nz, .asm_736d9
	ld a, [$d044]
	cp b
	jp nz, .asm_736d9
	ld a, [$d044]
	ld c, a
	ld de, $d0f4
	ld hl, $d09c
	call Func_70000
	jp .asm_736d9

.asm_73511
	ld a, [$d0d4]
	and $3d
	jp nz, .asm_735ce
	ld a, [$d07c]
	and $9f
	jp nz, .asm_735ce
	ld a, [$d024]
	and a
	jp z, .asm_735ce
	cp $08
	jp z, .asm_735ce
	ld b, a
	ld a, [$d0dc]
	and $3d
	jp nz, .asm_735ce
	ld a, [$d084]
	and $9f
	jp nz, .asm_735ce
	ld a, [$d02c]
	cp b
	jp nz, .asm_735ce
	ld a, [$d0e4]
	and $3d
	jp nz, .asm_73667
	ld a, [$d08c]
	and $9f
	jp nz, .asm_73667
	ld a, [$d034]
	cp b
	jp nz, .asm_73667
	ld a, [$d024]
	ld c, a
	ld de, $d0d4
	ld hl, $d07c
	call Func_70000
	ld a, [$d02c]
	ld c, a
	ld de, $d0dc
	ld hl, $d084
	call Func_70000
	ld a, [$d034]
	ld c, a
	ld de, $d0e4
	ld hl, $d08c
	call Func_70000
	ld a, [$d0ec]
	and $3d
	jp nz, .asm_736d9
	ld a, [$d094]
	and $9f
	jp nz, .asm_736d9
	ld a, [$d03c]
	cp b
	jp nz, .asm_736d9
	ld a, [$d03c]
	ld c, a
	ld de, $d0ec
	ld hl, $d094
	call Func_70000
	ld a, [$d0f4]
	and $3d
	jp nz, .asm_736d9
	ld a, [$d09c]
	and $9f
	jp nz, .asm_736d9
	ld a, [$d044]
	cp b
	jp nz, .asm_736d9
	ld a, [$d044]
	ld c, a
	ld de, $d0f4
	ld hl, $d09c
	call Func_70000
	jp .asm_736d9

.asm_735ce
	ld a, [$d0dc]
	and $3d
	jp nz, .asm_73667
	ld a, [$d084]
	and $9f
	jp nz, .asm_73667
	ld a, [$d02c]
	and a
	jp z, .asm_73667
	cp $08
	jp z, .asm_73667
	ld b, a
	ld a, [$d0e4]
	and $3d
	jp nz, .asm_73667
	ld a, [$d08c]
	and $9f
	jp nz, .asm_73667
	ld a, [$d034]
	cp b
	jp nz, .asm_73667
	ld a, [$d0ec]
	and $3d
	jp nz, .asm_736d9
	ld a, [$d094]
	and $9f
	jp nz, .asm_736d9
	ld a, [$d03c]
	cp b
	jp nz, .asm_736d9
	ld a, [$d02c]
	ld c, a
	ld de, $d0dc
	ld hl, $d084
	call Func_70000
	ld a, [$d034]
	ld c, a
	ld de, $d0e4
	ld hl, $d08c
	call Func_70000
	ld a, [$d03c]
	ld c, a
	ld de, $d0ec
	ld hl, $d094
	call Func_70000
	ld a, [$d0f4]
	and $3d
	jp nz, .asm_736d9
	ld a, [$d09c]
	and $9f
	jp nz, .asm_736d9
	ld a, [$d044]
	cp b
	jp nz, .asm_736d9
	ld a, [$d044]
	ld c, a
	ld de, $d0f4
	ld hl, $d09c
	call Func_70000
	jp .asm_736d9

.asm_73667
	ld a, [$d0e4]
	and $3d
	jp nz, .asm_736d9
	ld a, [$d08c]
	and $9f
	jp nz, .asm_736d9
	ld a, [$d034]
	and a
	jp z, .asm_736d9
	cp $08
	jp z, .asm_736d9
	ld b, a
	ld a, [$d0ec]
	and $3d
	jp nz, .asm_736d9
	ld a, [$d094]
	and $9f
	jp nz, .asm_736d9
	ld a, [$d03c]
	cp b
	jp nz, .asm_736d9
	ld a, [$d0f4]
	and $3d
	jp nz, .asm_736d9
	ld a, [$d09c]
	and $9f
	jp nz, .asm_736d9
	ld a, [$d044]
	cp b
	jp nz, .asm_736d9
	ld a, [$d034]
	ld c, a
	ld de, $d0e4
	ld hl, $d08c
	call Func_70000
	ld a, [$d03c]
	ld c, a
	ld de, $d0ec
	ld hl, $d094
	call Func_70000
	ld a, [$d044]
	ld c, a
	ld de, $d0f4
	ld hl, $d09c
	call Func_70000
.asm_736d9
	ld a, [$d0b5]
	and $3d
	jp nz, .asm_73826
	ld a, [$d05d]
	and $9f
	jp nz, .asm_73826
	ld a, [$d005]
	and a
	jp z, .asm_73826
	cp $08
	jp z, .asm_73826
	ld b, a
	ld a, [$d0bd]
	and $3d
	jp nz, .asm_73826
	ld a, [$d065]
	and $9f
	jp nz, .asm_73826
	ld a, [$d00d]
	cp b
	jp nz, .asm_73826
	ld a, [$d0c5]
	and $3d
	jp nz, .asm_7394f
	ld a, [$d06d]
	and $9f
	jp nz, .asm_7394f
	ld a, [$d015]
	cp b
	jp nz, .asm_7394f
	ld a, [$d005]
	ld c, a
	ld de, $d0b5
	ld hl, $d05d
	call Func_70000
	ld a, [$d00d]
	ld c, a
	ld de, $d0bd
	ld hl, $d065
	call Func_70000
	ld a, [$d015]
	ld c, a
	ld de, $d0c5
	ld hl, $d06d
	call Func_70000
	ld a, [$d0cd]
	and $3d
	jp nz, .asm_73a54
	ld a, [$d075]
	and $9f
	jp nz, .asm_73a54
	ld a, [$d01d]
	cp b
	jp nz, .asm_73a54
	ld a, [$d01d]
	ld c, a
	ld de, $d0cd
	ld hl, $d075
	call Func_70000
	ld a, [$d0d5]
	and $3d
	jp nz, .asm_73b35
	ld a, [$d07d]
	and $9f
	jp nz, .asm_73b35
	ld a, [$d025]
	cp b
	jp nz, .asm_73b35
	ld a, [$d025]
	ld c, a
	ld de, $d0d5
	ld hl, $d07d
	call Func_70000
	ld a, [$d0dd]
	and $3d
	jp nz, .asm_73bf2
	ld a, [$d085]
	and $9f
	jp nz, .asm_73bf2
	ld a, [$d02d]
	cp b
	jp nz, .asm_73bf2
	ld a, [$d02d]
	ld c, a
	ld de, $d0dd
	ld hl, $d085
	call Func_70000
	ld a, [$d0e5]
	and $3d
	jp nz, .asm_73c8b
	ld a, [$d08d]
	and $9f
	jp nz, .asm_73c8b
	ld a, [$d035]
	cp b
	jp nz, .asm_73c8b
	ld a, [$d035]
	ld c, a
	ld de, $d0e5
	ld hl, $d08d
	call Func_70000
	ld a, [$d0ed]
	and $3d
	jp nz, .asm_73cfd
	ld a, [$d095]
	and $9f
	jp nz, .asm_73cfd
	ld a, [$d03d]
	cp b
	jp nz, .asm_73cfd
	ld a, [$d03d]
	ld c, a
	ld de, $d0ed
	ld hl, $d095
	call Func_70000
	ld a, [$d0f5]
	and $3d
	jp nz, .asm_73cfd
	ld a, [$d09d]
	and $9f
	jp nz, .asm_73cfd
	ld a, [$d045]
	cp b
	jp nz, .asm_73cfd
	ld a, [$d045]
	ld c, a
	ld de, $d0f5
	ld hl, $d09d
	call Func_70000
	jp .asm_73cfd

.asm_73826
	ld a, [$d0bd]
	and $3d
	jp nz, .asm_7394f
	ld a, [$d065]
	and $9f
	jp nz, .asm_7394f
	ld a, [$d00d]
	and a
	jp z, .asm_7394f
	cp $08
	jp z, .asm_7394f
	ld b, a
	ld a, [$d0c5]
	and $3d
	jp nz, .asm_7394f
	ld a, [$d06d]
	and $9f
	jp nz, .asm_7394f
	ld a, [$d015]
	cp b
	jp nz, .asm_7394f
	ld a, [$d0cd]
	and $3d
	jp nz, .asm_73a54
	ld a, [$d075]
	and $9f
	jp nz, .asm_73a54
	ld a, [$d01d]
	cp b
	jp nz, .asm_73a54
	ld a, [$d00d]
	ld c, a
	ld de, $d0bd
	ld hl, $d065
	call Func_70000
	ld a, [$d015]
	ld c, a
	ld de, $d0c5
	ld hl, $d06d
	call Func_70000
	ld a, [$d01d]
	ld c, a
	ld de, $d0cd
	ld hl, $d075
	call Func_70000
	ld a, [$d0d5]
	and $3d
	jp nz, .asm_73b35
	ld a, [$d07d]
	and $9f
	jp nz, .asm_73b35
	ld a, [$d025]
	cp b
	jp nz, .asm_73b35
	ld a, [$d025]
	ld c, a
	ld de, $d0d5
	ld hl, $d07d
	call Func_70000
	ld a, [$d0dd]
	and $3d
	jp nz, .asm_73bf2
	ld a, [$d085]
	and $9f
	jp nz, .asm_73bf2
	ld a, [$d02d]
	cp b
	jp nz, .asm_73bf2
	ld a, [$d02d]
	ld c, a
	ld de, $d0dd
	ld hl, $d085
	call Func_70000
	ld a, [$d0e5]
	and $3d
	jp nz, .asm_73c8b
	ld a, [$d08d]
	and $9f
	jp nz, .asm_73c8b
	ld a, [$d035]
	cp b
	jp nz, .asm_73c8b
	ld a, [$d035]
	ld c, a
	ld de, $d0e5
	ld hl, $d08d
	call Func_70000
	ld a, [$d0ed]
	and $3d
	jp nz, .asm_73cfd
	ld a, [$d095]
	and $9f
	jp nz, .asm_73cfd
	ld a, [$d03d]
	cp b
	jp nz, .asm_73cfd
	ld a, [$d03d]
	ld c, a
	ld de, $d0ed
	ld hl, $d095
	call Func_70000
	ld a, [$d0f5]
	and $3d
	jp nz, .asm_73cfd
	ld a, [$d09d]
	and $9f
	jp nz, .asm_73cfd
	ld a, [$d045]
	cp b
	jp nz, .asm_73cfd
	ld a, [$d045]
	ld c, a
	ld de, $d0f5
	ld hl, $d09d
	call Func_70000
	jp .asm_73cfd

.asm_7394f
	ld a, [$d0c5]
	and $3d
	jp nz, .asm_73a54
	ld a, [$d06d]
	and $9f
	jp nz, .asm_73a54
	ld a, [$d015]
	and a
	jp z, .asm_73a54
	cp $08
	jp z, .asm_73a54
	ld b, a
	ld a, [$d0cd]
	and $3d
	jp nz, .asm_73a54
	ld a, [$d075]
	and $9f
	jp nz, .asm_73a54
	ld a, [$d01d]
	cp b
	jp nz, .asm_73a54
	ld a, [$d0d5]
	and $3d
	jp nz, .asm_73b35
	ld a, [$d07d]
	and $9f
	jp nz, .asm_73b35
	ld a, [$d025]
	cp b
	jp nz, .asm_73b35
	ld a, [$d015]
	ld c, a
	ld de, $d0c5
	ld hl, $d06d
	call Func_70000
	ld a, [$d01d]
	ld c, a
	ld de, $d0cd
	ld hl, $d075
	call Func_70000
	ld a, [$d025]
	ld c, a
	ld de, $d0d5
	ld hl, $d07d
	call Func_70000
	ld a, [$d0dd]
	and $3d
	jp nz, .asm_73bf2
	ld a, [$d085]
	and $9f
	jp nz, .asm_73bf2
	ld a, [$d02d]
	cp b
	jp nz, .asm_73bf2
	ld a, [$d02d]
	ld c, a
	ld de, $d0dd
	ld hl, $d085
	call Func_70000
	ld a, [$d0e5]
	and $3d
	jp nz, .asm_73c8b
	ld a, [$d08d]
	and $9f
	jp nz, .asm_73c8b
	ld a, [$d035]
	cp b
	jp nz, .asm_73c8b
	ld a, [$d035]
	ld c, a
	ld de, $d0e5
	ld hl, $d08d
	call Func_70000
	ld a, [$d0ed]
	and $3d
	jp nz, .asm_73cfd
	ld a, [$d095]
	and $9f
	jp nz, .asm_73cfd
	ld a, [$d03d]
	cp b
	jp nz, .asm_73cfd
	ld a, [$d03d]
	ld c, a
	ld de, $d0ed
	ld hl, $d095
	call Func_70000
	ld a, [$d0f5]
	and $3d
	jp nz, .asm_73cfd
	ld a, [$d09d]
	and $9f
	jp nz, .asm_73cfd
	ld a, [$d045]
	cp b
	jp nz, .asm_73cfd
	ld a, [$d045]
	ld c, a
	ld de, $d0f5
	ld hl, $d09d
	call Func_70000
	jp .asm_73cfd

.asm_73a54
	ld a, [$d0cd]
	and $3d
	jp nz, .asm_73b35
	ld a, [$d075]
	and $9f
	jp nz, .asm_73b35
	ld a, [$d01d]
	and a
	jp z, .asm_73b35
	cp $08
	jp z, .asm_73b35
	ld b, a
	ld a, [$d0d5]
	and $3d
	jp nz, .asm_73b35
	ld a, [$d07d]
	and $9f
	jp nz, .asm_73b35
	ld a, [$d025]
	cp b
	jp nz, .asm_73b35
	ld a, [$d0dd]
	and $3d
	jp nz, .asm_73bf2
	ld a, [$d085]
	and $9f
	jp nz, .asm_73bf2
	ld a, [$d02d]
	cp b
	jp nz, .asm_73bf2
	ld a, [$d01d]
	ld c, a
	ld de, $d0cd
	ld hl, $d075
	call Func_70000
	ld a, [$d025]
	ld c, a
	ld de, $d0d5
	ld hl, $d07d
	call Func_70000
	ld a, [$d02d]
	ld c, a
	ld de, $d0dd
	ld hl, $d085
	call Func_70000
	ld a, [$d0e5]
	and $3d
	jp nz, .asm_73c8b
	ld a, [$d08d]
	and $9f
	jp nz, .asm_73c8b
	ld a, [$d035]
	cp b
	jp nz, .asm_73c8b
	ld a, [$d035]
	ld c, a
	ld de, $d0e5
	ld hl, $d08d
	call Func_70000
	ld a, [$d0ed]
	and $3d
	jp nz, .asm_73cfd
	ld a, [$d095]
	and $9f
	jp nz, .asm_73cfd
	ld a, [$d03d]
	cp b
	jp nz, .asm_73cfd
	ld a, [$d03d]
	ld c, a
	ld de, $d0ed
	ld hl, $d095
	call Func_70000
	ld a, [$d0f5]
	and $3d
	jp nz, .asm_73cfd
	ld a, [$d09d]
	and $9f
	jp nz, .asm_73cfd
	ld a, [$d045]
	cp b
	jp nz, .asm_73cfd
	ld a, [$d045]
	ld c, a
	ld de, $d0f5
	ld hl, $d09d
	call Func_70000
	jp .asm_73cfd

.asm_73b35
	ld a, [$d0d5]
	and $3d
	jp nz, .asm_73bf2
	ld a, [$d07d]
	and $9f
	jp nz, .asm_73bf2
	ld a, [$d025]
	and a
	jp z, .asm_73bf2
	cp $08
	jp z, .asm_73bf2
	ld b, a
	ld a, [$d0dd]
	and $3d
	jp nz, .asm_73bf2
	ld a, [$d085]
	and $9f
	jp nz, .asm_73bf2
	ld a, [$d02d]
	cp b
	jp nz, .asm_73bf2
	ld a, [$d0e5]
	and $3d
	jp nz, .asm_73c8b
	ld a, [$d08d]
	and $9f
	jp nz, .asm_73c8b
	ld a, [$d035]
	cp b
	jp nz, .asm_73c8b
	ld a, [$d025]
	ld c, a
	ld de, $d0d5
	ld hl, $d07d
	call Func_70000
	ld a, [$d02d]
	ld c, a
	ld de, $d0dd
	ld hl, $d085
	call Func_70000
	ld a, [$d035]
	ld c, a
	ld de, $d0e5
	ld hl, $d08d
	call Func_70000
	ld a, [$d0ed]
	and $3d
	jp nz, .asm_73cfd
	ld a, [$d095]
	and $9f
	jp nz, .asm_73cfd
	ld a, [$d03d]
	cp b
	jp nz, .asm_73cfd
	ld a, [$d03d]
	ld c, a
	ld de, $d0ed
	ld hl, $d095
	call Func_70000
	ld a, [$d0f5]
	and $3d
	jp nz, .asm_73cfd
	ld a, [$d09d]
	and $9f
	jp nz, .asm_73cfd
	ld a, [$d045]
	cp b
	jp nz, .asm_73cfd
	ld a, [$d045]
	ld c, a
	ld de, $d0f5
	ld hl, $d09d
	call Func_70000
	jp .asm_73cfd

.asm_73bf2
	ld a, [$d0dd]
	and $3d
	jp nz, .asm_73c8b
	ld a, [$d085]
	and $9f
	jp nz, .asm_73c8b
	ld a, [$d02d]
	and a
	jp z, .asm_73c8b
	cp $08
	jp z, .asm_73c8b
	ld b, a
	ld a, [$d0e5]
	and $3d
	jp nz, .asm_73c8b
	ld a, [$d08d]
	and $9f
	jp nz, .asm_73c8b
	ld a, [$d035]
	cp b
	jp nz, .asm_73c8b
	ld a, [$d0ed]
	and $3d
	jp nz, .asm_73cfd
	ld a, [$d095]
	and $9f
	jp nz, .asm_73cfd
	ld a, [$d03d]
	cp b
	jp nz, .asm_73cfd
	ld a, [$d02d]
	ld c, a
	ld de, $d0dd
	ld hl, $d085
	call Func_70000
	ld a, [$d035]
	ld c, a
	ld de, $d0e5
	ld hl, $d08d
	call Func_70000
	ld a, [$d03d]
	ld c, a
	ld de, $d0ed
	ld hl, $d095
	call Func_70000
	ld a, [$d0f5]
	and $3d
	jp nz, .asm_73cfd
	ld a, [$d09d]
	and $9f
	jp nz, .asm_73cfd
	ld a, [$d045]
	cp b
	jp nz, .asm_73cfd
	ld a, [$d045]
	ld c, a
	ld de, $d0f5
	ld hl, $d09d
	call Func_70000
	jp .asm_73cfd

.asm_73c8b
	ld a, [$d0e5]
	and $3d
	jp nz, .asm_73cfd
	ld a, [$d08d]
	and $9f
	jp nz, .asm_73cfd
	ld a, [$d035]
	and a
	jp z, .asm_73cfd
	cp $08
	jp z, .asm_73cfd
	ld b, a
	ld a, [$d0ed]
	and $3d
	jp nz, .asm_73cfd
	ld a, [$d095]
	and $9f
	jp nz, .asm_73cfd
	ld a, [$d03d]
	cp b
	jp nz, .asm_73cfd
	ld a, [$d0f5]
	and $3d
	jp nz, .asm_73cfd
	ld a, [$d09d]
	and $9f
	jp nz, .asm_73cfd
	ld a, [$d045]
	cp b
	jp nz, .asm_73cfd
	ld a, [$d035]
	ld c, a
	ld de, $d0e5
	ld hl, $d08d
	call Func_70000
	ld a, [$d03d]
	ld c, a
	ld de, $d0ed
	ld hl, $d095
	call Func_70000
	ld a, [$d045]
	ld c, a
	ld de, $d0f5
	ld hl, $d09d
	call Func_70000
.asm_73cfd
	ret
; 0x73cfe
