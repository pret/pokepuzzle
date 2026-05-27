SECTION "Bank 1d@4cb5", ROMX[$4cb5], BANK[$1d]

Func_74cb5:
	ld bc, NULL
.asm_74cb8
	push bc
	ld hl, w6d058
	add hl, bc
	ld a, [hl]
	and $03
	jr nz, .asm_74cd5
	ld hl, w6d0b0
	add hl, bc
	ld a, [hl]
	and $08
	jr nz, .asm_74cd5
	ld a, [hl]
	and $fe
	ld [hl], a
	farcall Func_6efb5
.asm_74cd5
	pop bc
	inc c
	ld a, c
	cp $48
	jr c, .asm_74cb8
	ret
; 0x74cdd

SECTION "Bank 1d@4d05", ROMX[$4d05], BANK[$1d]

Func_74d05:
	xor a
	ld hl, $d608
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	inc l
	inc l
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	inc l
	inc l
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	inc l
	inc l
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	inc l
	inc l
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	inc l
	inc l
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	inc l
	inc l
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	inc l
	inc l
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	inc l
	inc l
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	inc l
	inc l
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	inc l
	inc l
	ld a, [w6d0b0]
	and $02
	jr z, .asm_74d94
	ld a, [$d057]
	and $03
	jr z, .asm_74d6d
	ld bc, rIE
	call Func_759cc
.asm_74d6d
	ld a, [$d059]
	and $03
	jr z, .asm_74d7a
	ld bc, $1
	call Func_759cc
.asm_74d7a
	ld a, [$d050]
	and $03
	jr z, .asm_74d87
	ld bc, $fff8
	call Func_759cc
.asm_74d87
	ld a, [$d060]
	and $03
	jr z, .asm_74d94
	ld bc, $8
	call Func_759cc
.asm_74d94
	ld a, [$d0b1]
	and $02
	jr z, .asm_74dcf
	ld a, [w6d058]
	and $03
	jr z, .asm_74da8
	ld bc, NULL
	call Func_759cc
.asm_74da8
	ld a, [$d05a]
	and $03
	jr z, .asm_74db5
	ld bc, $2
	call Func_759cc
.asm_74db5
	ld a, [$d051]
	and $03
	jr z, .asm_74dc2
	ld bc, $fff9
	call Func_759cc
.asm_74dc2
	ld a, [$d061]
	and $03
	jr z, .asm_74dcf
	ld bc, $9
	call Func_759cc
.asm_74dcf
	ld a, [$d0b2]
	and $02
	jr z, .asm_74e0a
	ld a, [$d059]
	and $03
	jr z, .asm_74de3
	ld bc, $1
	call Func_759cc
.asm_74de3
	ld a, [$d05b]
	and $03
	jr z, .asm_74df0
	ld bc, $3
	call Func_759cc
.asm_74df0
	ld a, [$d052]
	and $03
	jr z, .asm_74dfd
	ld bc, $fffa
	call Func_759cc
.asm_74dfd
	ld a, [$d062]
	and $03
	jr z, .asm_74e0a
	ld bc, $a
	call Func_759cc
.asm_74e0a
	ld a, [$d0b3]
	and $02
	jr z, .asm_74e45
	ld a, [$d05a]
	and $03
	jr z, .asm_74e1e
	ld bc, $2
	call Func_759cc
.asm_74e1e
	ld a, [$d05c]
	and $03
	jr z, .asm_74e2b
	ld bc, $4
	call Func_759cc
.asm_74e2b
	ld a, [$d053]
	and $03
	jr z, .asm_74e38
	ld bc, $fffb
	call Func_759cc
.asm_74e38
	ld a, [$d063]
	and $03
	jr z, .asm_74e45
	ld bc, $b
	call Func_759cc
.asm_74e45
	ld a, [$d0b4]
	and $02
	jr z, .asm_74e80
	ld a, [$d05b]
	and $03
	jr z, .asm_74e59
	ld bc, $3
	call Func_759cc
.asm_74e59
	ld a, [$d05d]
	and $03
	jr z, .asm_74e66
	ld bc, $5
	call Func_759cc
.asm_74e66
	ld a, [$d054]
	and $03
	jr z, .asm_74e73
	ld bc, $fffc
	call Func_759cc
.asm_74e73
	ld a, [$d064]
	and $03
	jr z, .asm_74e80
	ld bc, $c
	call Func_759cc
.asm_74e80
	ld a, [$d0b5]
	and $02
	jr z, .asm_74ebb
	ld a, [$d05c]
	and $03
	jr z, .asm_74e94
	ld bc, $4
	call Func_759cc
.asm_74e94
	ld a, [$d05e]
	and $03
	jr z, .asm_74ea1
	ld bc, $6
	call Func_759cc
.asm_74ea1
	ld a, [$d055]
	and $03
	jr z, .asm_74eae
	ld bc, $fffd
	call Func_759cc
.asm_74eae
	ld a, [$d065]
	and $03
	jr z, .asm_74ebb
	ld bc, $d
	call Func_759cc
.asm_74ebb
	ld a, [$d0b8]
	and $02
	jr z, .asm_74ef6
	ld a, [$d05f]
	and $03
	jr z, .asm_74ecf
	ld bc, $7
	call Func_759cc
.asm_74ecf
	ld a, [$d061]
	and $03
	jr z, .asm_74edc
	ld bc, $9
	call Func_759cc
.asm_74edc
	ld a, [w6d058]
	and $03
	jr z, .asm_74ee9
	ld bc, NULL
	call Func_759cc
.asm_74ee9
	ld a, [$d068]
	and $03
	jr z, .asm_74ef6
	ld bc, $10
	call Func_759cc
.asm_74ef6
	ld a, [$d0b9]
	and $02
	jr z, .asm_74f31
	ld a, [$d060]
	and $03
	jr z, .asm_74f0a
	ld bc, $8
	call Func_759cc
.asm_74f0a
	ld a, [$d062]
	and $03
	jr z, .asm_74f17
	ld bc, $a
	call Func_759cc
.asm_74f17
	ld a, [$d059]
	and $03
	jr z, .asm_74f24
	ld bc, $1
	call Func_759cc
.asm_74f24
	ld a, [$d069]
	and $03
	jr z, .asm_74f31
	ld bc, $11
	call Func_759cc
.asm_74f31
	ld a, [$d0ba]
	and $02
	jr z, .asm_74f6c
	ld a, [$d061]
	and $03
	jr z, .asm_74f45
	ld bc, $9
	call Func_759cc
.asm_74f45
	ld a, [$d063]
	and $03
	jr z, .asm_74f52
	ld bc, $b
	call Func_759cc
.asm_74f52
	ld a, [$d05a]
	and $03
	jr z, .asm_74f5f
	ld bc, $2
	call Func_759cc
.asm_74f5f
	ld a, [$d06a]
	and $03
	jr z, .asm_74f6c
	ld bc, $12
	call Func_759cc
.asm_74f6c
	ld a, [$d0bb]
	and $02
	jr z, .asm_74fa7
	ld a, [$d062]
	and $03
	jr z, .asm_74f80
	ld bc, $a
	call Func_759cc
.asm_74f80
	ld a, [$d064]
	and $03
	jr z, .asm_74f8d
	ld bc, $c
	call Func_759cc
.asm_74f8d
	ld a, [$d05b]
	and $03
	jr z, .asm_74f9a
	ld bc, $3
	call Func_759cc
.asm_74f9a
	ld a, [$d06b]
	and $03
	jr z, .asm_74fa7
	ld bc, $13
	call Func_759cc
.asm_74fa7
	ld a, [$d0bc]
	and $02
	jr z, .asm_74fe2
	ld a, [$d063]
	and $03
	jr z, .asm_74fbb
	ld bc, $b
	call Func_759cc
.asm_74fbb
	ld a, [$d065]
	and $03
	jr z, .asm_74fc8
	ld bc, $d
	call Func_759cc
.asm_74fc8
	ld a, [$d05c]
	and $03
	jr z, .asm_74fd5
	ld bc, $4
	call Func_759cc
.asm_74fd5
	ld a, [$d06c]
	and $03
	jr z, .asm_74fe2
	ld bc, $14
	call Func_759cc
.asm_74fe2
	ld a, [$d0bd]
	and $02
	jr z, .asm_7501d
	ld a, [$d064]
	and $03
	jr z, .asm_74ff6
	ld bc, $c
	call Func_759cc
.asm_74ff6
	ld a, [$d066]
	and $03
	jr z, .asm_75003
	ld bc, $e
	call Func_759cc
.asm_75003
	ld a, [$d05d]
	and $03
	jr z, .asm_75010
	ld bc, $5
	call Func_759cc
.asm_75010
	ld a, [$d06d]
	and $03
	jr z, .asm_7501d
	ld bc, $15
	call Func_759cc
.asm_7501d
	ld a, [w2d0c0]
	and $02
	jr z, .asm_75058
	ld a, [$d067]
	and $03
	jr z, .asm_75031
	ld bc, $f
	call Func_759cc
.asm_75031
	ld a, [$d069]
	and $03
	jr z, .asm_7503e
	ld bc, $11
	call Func_759cc
.asm_7503e
	ld a, [$d060]
	and $03
	jr z, .asm_7504b
	ld bc, $8
	call Func_759cc
.asm_7504b
	ld a, [$d070]
	and $03
	jr z, .asm_75058
	ld bc, $18
	call Func_759cc
.asm_75058
	ld a, [$d0c1]
	and $02
	jr z, .asm_75093
	ld a, [$d068]
	and $03
	jr z, .asm_7506c
	ld bc, $10
	call Func_759cc
.asm_7506c
	ld a, [$d06a]
	and $03
	jr z, .asm_75079
	ld bc, $12
	call Func_759cc
.asm_75079
	ld a, [$d061]
	and $03
	jr z, .asm_75086
	ld bc, $9
	call Func_759cc
.asm_75086
	ld a, [$d071]
	and $03
	jr z, .asm_75093
	ld bc, $19
	call Func_759cc
.asm_75093
	ld a, [$d0c2]
	and $02
	jr z, .asm_750ce
	ld a, [$d069]
	and $03
	jr z, .asm_750a7
	ld bc, $11
	call Func_759cc
.asm_750a7
	ld a, [$d06b]
	and $03
	jr z, .asm_750b4
	ld bc, $13
	call Func_759cc
.asm_750b4
	ld a, [$d062]
	and $03
	jr z, .asm_750c1
	ld bc, $a
	call Func_759cc
.asm_750c1
	ld a, [$d072]
	and $03
	jr z, .asm_750ce
	ld bc, $1a
	call Func_759cc
.asm_750ce
	ld a, [$d0c3]
	and $02
	jr z, .asm_75109
	ld a, [$d06a]
	and $03
	jr z, .asm_750e2
	ld bc, $12
	call Func_759cc
.asm_750e2
	ld a, [$d06c]
	and $03
	jr z, .asm_750ef
	ld bc, $14
	call Func_759cc
.asm_750ef
	ld a, [$d063]
	and $03
	jr z, .asm_750fc
	ld bc, $b
	call Func_759cc
.asm_750fc
	ld a, [$d073]
	and $03
	jr z, .asm_75109
	ld bc, $1b
	call Func_759cc
.asm_75109
	ld a, [$d0c4]
	and $02
	jr z, .asm_75144
	ld a, [$d06b]
	and $03
	jr z, .asm_7511d
	ld bc, $13
	call Func_759cc
.asm_7511d
	ld a, [$d06d]
	and $03
	jr z, .asm_7512a
	ld bc, $15
	call Func_759cc
.asm_7512a
	ld a, [$d064]
	and $03
	jr z, .asm_75137
	ld bc, $c
	call Func_759cc
.asm_75137
	ld a, [$d074]
	and $03
	jr z, .asm_75144
	ld bc, $1c
	call Func_759cc
.asm_75144
	ld a, [$d0c5]
	and $02
	jr z, .asm_7517f
	ld a, [$d06c]
	and $03
	jr z, .asm_75158
	ld bc, $14
	call Func_759cc
.asm_75158
	ld a, [$d06e]
	and $03
	jr z, .asm_75165
	ld bc, $16
	call Func_759cc
.asm_75165
	ld a, [$d065]
	and $03
	jr z, .asm_75172
	ld bc, $d
	call Func_759cc
.asm_75172
	ld a, [$d075]
	and $03
	jr z, .asm_7517f
	ld bc, $1d
	call Func_759cc
.asm_7517f
	ld a, [$d0c8]
	and $02
	jr z, .asm_751ba
	ld a, [$d06f]
	and $03
	jr z, .asm_75193
	ld bc, $17
	call Func_759cc
.asm_75193
	ld a, [$d071]
	and $03
	jr z, .asm_751a0
	ld bc, $19
	call Func_759cc
.asm_751a0
	ld a, [$d068]
	and $03
	jr z, .asm_751ad
	ld bc, $10
	call Func_759cc
.asm_751ad
	ld a, [$d078]
	and $03
	jr z, .asm_751ba
	ld bc, $20
	call Func_759cc
.asm_751ba
	ld a, [$d0c9]
	and $02
	jr z, .asm_751f5
	ld a, [$d070]
	and $03
	jr z, .asm_751ce
	ld bc, $18
	call Func_759cc
.asm_751ce
	ld a, [$d072]
	and $03
	jr z, .asm_751db
	ld bc, $1a
	call Func_759cc
.asm_751db
	ld a, [$d069]
	and $03
	jr z, .asm_751e8
	ld bc, $11
	call Func_759cc
.asm_751e8
	ld a, [$d079]
	and $03
	jr z, .asm_751f5
	ld bc, $21
	call Func_759cc
.asm_751f5
	ld a, [$d0ca]
	and $02
	jr z, .asm_75230
	ld a, [$d071]
	and $03
	jr z, .asm_75209
	ld bc, $19
	call Func_759cc
.asm_75209
	ld a, [$d073]
	and $03
	jr z, .asm_75216
	ld bc, $1b
	call Func_759cc
.asm_75216
	ld a, [$d06a]
	and $03
	jr z, .asm_75223
	ld bc, $12
	call Func_759cc
.asm_75223
	ld a, [$d07a]
	and $03
	jr z, .asm_75230
	ld bc, $22
	call Func_759cc
.asm_75230
	ld a, [$d0cb]
	and $02
	jr z, .asm_7526b
	ld a, [$d072]
	and $03
	jr z, .asm_75244
	ld bc, $1a
	call Func_759cc
.asm_75244
	ld a, [$d074]
	and $03
	jr z, .asm_75251
	ld bc, $1c
	call Func_759cc
.asm_75251
	ld a, [$d06b]
	and $03
	jr z, .asm_7525e
	ld bc, $13
	call Func_759cc
.asm_7525e
	ld a, [$d07b]
	and $03
	jr z, .asm_7526b
	ld bc, $23
	call Func_759cc
.asm_7526b
	ld a, [$d0cc]
	and $02
	jr z, .asm_752a6
	ld a, [$d073]
	and $03
	jr z, .asm_7527f
	ld bc, $1b
	call Func_759cc
.asm_7527f
	ld a, [$d075]
	and $03
	jr z, .asm_7528c
	ld bc, $1d
	call Func_759cc
.asm_7528c
	ld a, [$d06c]
	and $03
	jr z, .asm_75299
	ld bc, $14
	call Func_759cc
.asm_75299
	ld a, [$d07c]
	and $03
	jr z, .asm_752a6
	ld bc, $24
	call Func_759cc
.asm_752a6
	ld a, [$d0cd]
	and $02
	jr z, .asm_752e1
	ld a, [$d074]
	and $03
	jr z, .asm_752ba
	ld bc, $1c
	call Func_759cc
.asm_752ba
	ld a, [$d076]
	and $03
	jr z, .asm_752c7
	ld bc, $1e
	call Func_759cc
.asm_752c7
	ld a, [$d06d]
	and $03
	jr z, .asm_752d4
	ld bc, $15
	call Func_759cc
.asm_752d4
	ld a, [$d07d]
	and $03
	jr z, .asm_752e1
	ld bc, $25
	call Func_759cc
.asm_752e1
	ld a, [$d0d0]
	and $02
	jr z, .asm_7531c
	ld a, [$d077]
	and $03
	jr z, .asm_752f5
	ld bc, $1f
	call Func_759cc
.asm_752f5
	ld a, [$d079]
	and $03
	jr z, .asm_75302
	ld bc, $21
	call Func_759cc
.asm_75302
	ld a, [$d070]
	and $03
	jr z, .asm_7530f
	ld bc, $18
	call Func_759cc
.asm_7530f
	ld a, [$d080]
	and $03
	jr z, .asm_7531c
	ld bc, $28
	call Func_759cc
.asm_7531c
	ld a, [$d0d1]
	and $02
	jr z, .asm_75357
	ld a, [$d078]
	and $03
	jr z, .asm_75330
	ld bc, $20
	call Func_759cc
.asm_75330
	ld a, [$d07a]
	and $03
	jr z, .asm_7533d
	ld bc, $22
	call Func_759cc
.asm_7533d
	ld a, [$d071]
	and $03
	jr z, .asm_7534a
	ld bc, $19
	call Func_759cc
.asm_7534a
	ld a, [$d081]
	and $03
	jr z, .asm_75357
	ld bc, $29
	call Func_759cc
.asm_75357
	ld a, [$d0d2]
	and $02
	jr z, .asm_75392
	ld a, [$d079]
	and $03
	jr z, .asm_7536b
	ld bc, $21
	call Func_759cc
.asm_7536b
	ld a, [$d07b]
	and $03
	jr z, .asm_75378
	ld bc, $23
	call Func_759cc
.asm_75378
	ld a, [$d072]
	and $03
	jr z, .asm_75385
	ld bc, $1a
	call Func_759cc
.asm_75385
	ld a, [$d082]
	and $03
	jr z, .asm_75392
	ld bc, $2a
	call Func_759cc
.asm_75392
	ld a, [$d0d3]
	and $02
	jr z, .asm_753cd
	ld a, [$d07a]
	and $03
	jr z, .asm_753a6
	ld bc, $22
	call Func_759cc
.asm_753a6
	ld a, [$d07c]
	and $03
	jr z, .asm_753b3
	ld bc, $24
	call Func_759cc
.asm_753b3
	ld a, [$d073]
	and $03
	jr z, .asm_753c0
	ld bc, $1b
	call Func_759cc
.asm_753c0
	ld a, [$d083]
	and $03
	jr z, .asm_753cd
	ld bc, $2b
	call Func_759cc
.asm_753cd
	ld a, [$d0d4]
	and $02
	jr z, .asm_75408
	ld a, [$d07b]
	and $03
	jr z, .asm_753e1
	ld bc, $23
	call Func_759cc
.asm_753e1
	ld a, [$d07d]
	and $03
	jr z, .asm_753ee
	ld bc, $25
	call Func_759cc
.asm_753ee
	ld a, [$d074]
	and $03
	jr z, .asm_753fb
	ld bc, $1c
	call Func_759cc
.asm_753fb
	ld a, [$d084]
	and $03
	jr z, .asm_75408
	ld bc, $2c
	call Func_759cc
.asm_75408
	ld a, [$d0d5]
	and $02
	jr z, .asm_75443
	ld a, [$d07c]
	and $03
	jr z, .asm_7541c
	ld bc, $24
	call Func_759cc
.asm_7541c
	ld a, [$d07e]
	and $03
	jr z, .asm_75429
	ld bc, $26
	call Func_759cc
.asm_75429
	ld a, [$d075]
	and $03
	jr z, .asm_75436
	ld bc, $1d
	call Func_759cc
.asm_75436
	ld a, [$d085]
	and $03
	jr z, .asm_75443
	ld bc, $2d
	call Func_759cc
.asm_75443
	ld a, [$d0d8]
	and $02
	jr z, .asm_7547e
	ld a, [$d07f]
	and $03
	jr z, .asm_75457
	ld bc, $27
	call Func_759cc
.asm_75457
	ld a, [$d081]
	and $03
	jr z, .asm_75464
	ld bc, $29
	call Func_759cc
.asm_75464
	ld a, [$d078]
	and $03
	jr z, .asm_75471
	ld bc, $20
	call Func_759cc
.asm_75471
	ld a, [$d088]
	and $03
	jr z, .asm_7547e
	ld bc, $30
	call Func_759cc
.asm_7547e
	ld a, [$d0d9]
	and $02
	jr z, .asm_754b9
	ld a, [$d080]
	and $03
	jr z, .asm_75492
	ld bc, $28
	call Func_759cc
.asm_75492
	ld a, [$d082]
	and $03
	jr z, .asm_7549f
	ld bc, $2a
	call Func_759cc
.asm_7549f
	ld a, [$d079]
	and $03
	jr z, .asm_754ac
	ld bc, $21
	call Func_759cc
.asm_754ac
	ld a, [$d089]
	and $03
	jr z, .asm_754b9
	ld bc, $31
	call Func_759cc
.asm_754b9
	ld a, [$d0da]
	and $02
	jr z, .asm_754f4
	ld a, [$d081]
	and $03
	jr z, .asm_754cd
	ld bc, $29
	call Func_759cc
.asm_754cd
	ld a, [$d083]
	and $03
	jr z, .asm_754da
	ld bc, $2b
	call Func_759cc
.asm_754da
	ld a, [$d07a]
	and $03
	jr z, .asm_754e7
	ld bc, $22
	call Func_759cc
.asm_754e7
	ld a, [$d08a]
	and $03
	jr z, .asm_754f4
	ld bc, $32
	call Func_759cc
.asm_754f4
	ld a, [$d0db]
	and $02
	jr z, .asm_7552f
	ld a, [$d082]
	and $03
	jr z, .asm_75508
	ld bc, $2a
	call Func_759cc
.asm_75508
	ld a, [$d084]
	and $03
	jr z, .asm_75515
	ld bc, $2c
	call Func_759cc
.asm_75515
	ld a, [$d07b]
	and $03
	jr z, .asm_75522
	ld bc, $23
	call Func_759cc
.asm_75522
	ld a, [$d08b]
	and $03
	jr z, .asm_7552f
	ld bc, $33
	call Func_759cc
.asm_7552f
	ld a, [$d0dc]
	and $02
	jr z, .asm_7556a
	ld a, [$d083]
	and $03
	jr z, .asm_75543
	ld bc, $2b
	call Func_759cc
.asm_75543
	ld a, [$d085]
	and $03
	jr z, .asm_75550
	ld bc, $2d
	call Func_759cc
.asm_75550
	ld a, [$d07c]
	and $03
	jr z, .asm_7555d
	ld bc, $24
	call Func_759cc
.asm_7555d
	ld a, [$d08c]
	and $03
	jr z, .asm_7556a
	ld bc, $34
	call Func_759cc
.asm_7556a
	ld a, [$d0dd]
	and $02
	jr z, .asm_755a5
	ld a, [$d084]
	and $03
	jr z, .asm_7557e
	ld bc, $2c
	call Func_759cc
.asm_7557e
	ld a, [$d086]
	and $03
	jr z, .asm_7558b
	ld bc, $2e
	call Func_759cc
.asm_7558b
	ld a, [$d07d]
	and $03
	jr z, .asm_75598
	ld bc, $25
	call Func_759cc
.asm_75598
	ld a, [$d08d]
	and $03
	jr z, .asm_755a5
	ld bc, $35
	call Func_759cc
.asm_755a5
	ld a, [$d0e0]
	and $02
	jr z, .asm_755e0
	ld a, [$d087]
	and $03
	jr z, .asm_755b9
	ld bc, $2f
	call Func_759cc
.asm_755b9
	ld a, [$d089]
	and $03
	jr z, .asm_755c6
	ld bc, $31
	call Func_759cc
.asm_755c6
	ld a, [$d080]
	and $03
	jr z, .asm_755d3
	ld bc, $28
	call Func_759cc
.asm_755d3
	ld a, [$d090]
	and $03
	jr z, .asm_755e0
	ld bc, $38
	call Func_759cc
.asm_755e0
	ld a, [$d0e1]
	and $02
	jr z, .asm_7561b
	ld a, [$d088]
	and $03
	jr z, .asm_755f4
	ld bc, $30
	call Func_759cc
.asm_755f4
	ld a, [$d08a]
	and $03
	jr z, .asm_75601
	ld bc, $32
	call Func_759cc
.asm_75601
	ld a, [$d081]
	and $03
	jr z, .asm_7560e
	ld bc, $29
	call Func_759cc
.asm_7560e
	ld a, [$d091]
	and $03
	jr z, .asm_7561b
	ld bc, $39
	call Func_759cc
.asm_7561b
	ld a, [$d0e2]
	and $02
	jr z, .asm_75656
	ld a, [$d089]
	and $03
	jr z, .asm_7562f
	ld bc, $31
	call Func_759cc
.asm_7562f
	ld a, [$d08b]
	and $03
	jr z, .asm_7563c
	ld bc, $33
	call Func_759cc
.asm_7563c
	ld a, [$d082]
	and $03
	jr z, .asm_75649
	ld bc, $2a
	call Func_759cc
.asm_75649
	ld a, [$d092]
	and $03
	jr z, .asm_75656
	ld bc, $3a
	call Func_759cc
.asm_75656
	ld a, [$d0e3]
	and $02
	jr z, .asm_75691
	ld a, [$d08a]
	and $03
	jr z, .asm_7566a
	ld bc, $32
	call Func_759cc
.asm_7566a
	ld a, [$d08c]
	and $03
	jr z, .asm_75677
	ld bc, $34
	call Func_759cc
.asm_75677
	ld a, [$d083]
	and $03
	jr z, .asm_75684
	ld bc, $2b
	call Func_759cc
.asm_75684
	ld a, [$d093]
	and $03
	jr z, .asm_75691
	ld bc, $3b
	call Func_759cc
.asm_75691
	ld a, [$d0e4]
	and $02
	jr z, .asm_756cc
	ld a, [$d08b]
	and $03
	jr z, .asm_756a5
	ld bc, $33
	call Func_759cc
.asm_756a5
	ld a, [$d08d]
	and $03
	jr z, .asm_756b2
	ld bc, $35
	call Func_759cc
.asm_756b2
	ld a, [$d084]
	and $03
	jr z, .asm_756bf
	ld bc, $2c
	call Func_759cc
.asm_756bf
	ld a, [$d094]
	and $03
	jr z, .asm_756cc
	ld bc, $3c
	call Func_759cc
.asm_756cc
	ld a, [$d0e5]
	and $02
	jr z, .asm_75707
	ld a, [$d08c]
	and $03
	jr z, .asm_756e0
	ld bc, $34
	call Func_759cc
.asm_756e0
	ld a, [$d08e]
	and $03
	jr z, .asm_756ed
	ld bc, $36
	call Func_759cc
.asm_756ed
	ld a, [$d085]
	and $03
	jr z, .asm_756fa
	ld bc, $2d
	call Func_759cc
.asm_756fa
	ld a, [$d095]
	and $03
	jr z, .asm_75707
	ld bc, $3d
	call Func_759cc
.asm_75707
	ld a, [$d0e8]
	and $02
	jr z, .asm_75742
	ld a, [$d08f]
	and $03
	jr z, .asm_7571b
	ld bc, $37
	call Func_759cc
.asm_7571b
	ld a, [$d091]
	and $03
	jr z, .asm_75728
	ld bc, $39
	call Func_759cc
.asm_75728
	ld a, [$d088]
	and $03
	jr z, .asm_75735
	ld bc, $30
	call Func_759cc
.asm_75735
	ld a, [$d098]
	and $03
	jr z, .asm_75742
	ld bc, $40
	call Func_759cc
.asm_75742
	ld a, [$d0e9]
	and $02
	jr z, .asm_7577d
	ld a, [$d090]
	and $03
	jr z, .asm_75756
	ld bc, $38
	call Func_759cc
.asm_75756
	ld a, [$d092]
	and $03
	jr z, .asm_75763
	ld bc, $3a
	call Func_759cc
.asm_75763
	ld a, [$d089]
	and $03
	jr z, .asm_75770
	ld bc, $31
	call Func_759cc
.asm_75770
	ld a, [$d099]
	and $03
	jr z, .asm_7577d
	ld bc, $41
	call Func_759cc
.asm_7577d
	ld a, [$d0ea]
	and $02
	jr z, .asm_757b8
	ld a, [$d091]
	and $03
	jr z, .asm_75791
	ld bc, $39
	call Func_759cc
.asm_75791
	ld a, [$d093]
	and $03
	jr z, .asm_7579e
	ld bc, $3b
	call Func_759cc
.asm_7579e
	ld a, [$d08a]
	and $03
	jr z, .asm_757ab
	ld bc, $32
	call Func_759cc
.asm_757ab
	ld a, [$d09a]
	and $03
	jr z, .asm_757b8
	ld bc, $42
	call Func_759cc
.asm_757b8
	ld a, [$d0eb]
	and $02
	jr z, .asm_757f3
	ld a, [$d092]
	and $03
	jr z, .asm_757cc
	ld bc, $3a
	call Func_759cc
.asm_757cc
	ld a, [$d094]
	and $03
	jr z, .asm_757d9
	ld bc, $3c
	call Func_759cc
.asm_757d9
	ld a, [$d08b]
	and $03
	jr z, .asm_757e6
	ld bc, $33
	call Func_759cc
.asm_757e6
	ld a, [$d09b]
	and $03
	jr z, .asm_757f3
	ld bc, $43
	call Func_759cc
.asm_757f3
	ld a, [$d0ec]
	and $02
	jr z, .asm_7582e
	ld a, [$d093]
	and $03
	jr z, .asm_75807
	ld bc, $3b
	call Func_759cc
.asm_75807
	ld a, [$d095]
	and $03
	jr z, .asm_75814
	ld bc, $3d
	call Func_759cc
.asm_75814
	ld a, [$d08c]
	and $03
	jr z, .asm_75821
	ld bc, $34
	call Func_759cc
.asm_75821
	ld a, [$d09c]
	and $03
	jr z, .asm_7582e
	ld bc, $44
	call Func_759cc
.asm_7582e
	ld a, [$d0ed]
	and $02
	jr z, .asm_75869
	ld a, [$d094]
	and $03
	jr z, .asm_75842
	ld bc, $3c
	call Func_759cc
.asm_75842
	ld a, [$d096]
	and $03
	jr z, .asm_7584f
	ld bc, $3e
	call Func_759cc
.asm_7584f
	ld a, [$d08d]
	and $03
	jr z, .asm_7585c
	ld bc, $35
	call Func_759cc
.asm_7585c
	ld a, [$d09d]
	and $03
	jr z, .asm_75869
	ld bc, $45
	call Func_759cc
.asm_75869
	ld a, [$d0f0]
	and $02
	jr z, .asm_758a4
	ld a, [$d097]
	and $03
	jr z, .asm_7587d
	ld bc, $3f
	call Func_759cc
.asm_7587d
	ld a, [$d099]
	and $03
	jr z, .asm_7588a
	ld bc, $41
	call Func_759cc
.asm_7588a
	ld a, [$d090]
	and $03
	jr z, .asm_75897
	ld bc, $38
	call Func_759cc
.asm_75897
	ld a, [$d0a0]
	and $03
	jr z, .asm_758a4
	ld bc, $48
	call Func_759cc
.asm_758a4
	ld a, [$d0f1]
	and $02
	jr z, .asm_758df
	ld a, [$d098]
	and $03
	jr z, .asm_758b8
	ld bc, $40
	call Func_759cc
.asm_758b8
	ld a, [$d09a]
	and $03
	jr z, .asm_758c5
	ld bc, $42
	call Func_759cc
.asm_758c5
	ld a, [$d091]
	and $03
	jr z, .asm_758d2
	ld bc, $39
	call Func_759cc
.asm_758d2
	ld a, [$d0a1]
	and $03
	jr z, .asm_758df
	ld bc, $49
	call Func_759cc
.asm_758df
	ld a, [$d0f2]
	and $02
	jr z, .asm_7591a
	ld a, [$d099]
	and $03
	jr z, .asm_758f3
	ld bc, $41
	call Func_759cc
.asm_758f3
	ld a, [$d09b]
	and $03
	jr z, .asm_75900
	ld bc, $43
	call Func_759cc
.asm_75900
	ld a, [$d092]
	and $03
	jr z, .asm_7590d
	ld bc, $3a
	call Func_759cc
.asm_7590d
	ld a, [$d0a2]
	and $03
	jr z, .asm_7591a
	ld bc, $4a
	call Func_759cc
.asm_7591a
	ld a, [$d0f3]
	and $02
	jr z, .asm_75955
	ld a, [$d09a]
	and $03
	jr z, .asm_7592e
	ld bc, $42
	call Func_759cc
.asm_7592e
	ld a, [$d09c]
	and $03
	jr z, .asm_7593b
	ld bc, $44
	call Func_759cc
.asm_7593b
	ld a, [$d093]
	and $03
	jr z, .asm_75948
	ld bc, $3b
	call Func_759cc
.asm_75948
	ld a, [$d0a3]
	and $03
	jr z, .asm_75955
	ld bc, $4b
	call Func_759cc
.asm_75955
	ld a, [$d0f4]
	and $02
	jr z, .asm_75990
	ld a, [$d09b]
	and $03
	jr z, .asm_75969
	ld bc, $43
	call Func_759cc
.asm_75969
	ld a, [$d09d]
	and $03
	jr z, .asm_75976
	ld bc, $45
	call Func_759cc
.asm_75976
	ld a, [$d094]
	and $03
	jr z, .asm_75983
	ld bc, $3c
	call Func_759cc
.asm_75983
	ld a, [$d0a4]
	and $03
	jr z, .asm_75990
	ld bc, $4c
	call Func_759cc
.asm_75990
	ld a, [$d0f5]
	and $02
	jr z, .asm_759cb
	ld a, [$d09c]
	and $03
	jr z, .asm_759a4
	ld bc, $44
	call Func_759cc
.asm_759a4
	ld a, [$d09e]
	and $03
	jr z, .asm_759b1
	ld bc, $46
	call Func_759cc
.asm_759b1
	ld a, [$d095]
	and $03
	jr z, .asm_759be
	ld bc, $3d
	call Func_759cc
.asm_759be
	ld a, [$d0a5]
	and $03
	jr z, .asm_759cb
	ld bc, $4d
	call Func_759cc
.asm_759cb
	ret

Func_759cc:
	ld a, c
	ld [$d6b0], a
	ld hl, $d608
	add hl, bc
	ld a, [hl]
	and a
	jp nz, .asm_75a54
	ld hl, w6d0b0
	add hl, bc
	ld a, [hl]
	and $08
	jp nz, .asm_75a54
	ld hl, w6d058
	add hl, bc
	ld a, [hl]
	and $03
	ldh [hff8d], a
	ld bc, NULL
.asm_759ef
	ld hl, $d6b0
	add hl, bc
	ld e, [hl]
	ld d, $00
	ld hl, $d608
	add hl, de
	ld [hl], $01
	ld hl, $d660
	add hl, bc
	ld [hl], $03
.asm_75a02
	ld hl, $d660
	add hl, bc
	ld e, [hl]
	sla e
	ld d, $00
	ld hl, $5a55
	add hl, de
	ld a, [hli]
	ld d, [hl]
	ld e, a
	ld hl, $d6b0
	add hl, bc
	ld a, [hl]
	add e
	ld e, a
	ld a, d
	adc $00
	ld d, a
	ld hl, $d608
	add hl, de
	ld a, [hl]
	dec a
	jr z, .asm_75a43
	ld hl, w6d0b0
	add hl, de
	ld a, [hl]
	and $08
	jr nz, .asm_75a43
	ld hl, w6d058
	add hl, de
	ld a, [hl]
	and $03
	ld hl, hff8d
	cp [hl]
	jr nz, .asm_75a43
	inc c
	ld hl, $d6b0
	add hl, bc
	ld [hl], e
	jr .asm_759ef
.asm_75a43
	ld hl, $d660
	add hl, bc
	ld a, [hl]
	dec a
	ld [hl], a
	and $80
	jr z, .asm_75a02
	dec c
	ld a, c
	and $80
	jr z, .asm_75a43
.asm_75a54
	ret
; 0x75a55

SECTION "Bank 1d@5a5d", ROMX[$5a5d], BANK[$1d]

Func_75a5d:
	ld de, NULL
.asm_75a60
	ld hl, wccb3
	add hl, de
	ld a, [hli]
	and a
	jr z, .asm_75a71
	inc e
	ld a, e
	cp $0c
	jr nz, .asm_75a60
	ld c, $00
	ret
.asm_75a71
	ld hl, $ccfb
	add hl, de
	ld a, [$cd07]
	ld [hl], a
	ld c, a
	ld b, $00
	ld hl, $d200
	add hl, bc
	ld a, [w6d0b0]
	and $02
	jr z, .asm_75a96
	ld a, $00
	ld [hl], a
	inc l
	ld a, [w6d0b0]
	and $fd
	or $08
	ld [w6d0b0], a
	inc b
.asm_75a96
	nop
	ld a, [$d0b1]
	and $02
	jr z, .asm_75aad
	ld a, $01
	ld [hl], a
	inc l
	ld a, [$d0b1]
	and $fd
	or $08
	ld [$d0b1], a
	inc b
.asm_75aad
	nop
	ld a, [$d0b2]
	and $02
	jr z, .asm_75ac4
	ld a, $02
	ld [hl], a
	inc l
	ld a, [$d0b2]
	and $fd
	or $08
	ld [$d0b2], a
	inc b
.asm_75ac4
	nop
	ld a, [$d0b3]
	and $02
	jr z, .asm_75adb
	ld a, $03
	ld [hl], a
	inc l
	ld a, [$d0b3]
	and $fd
	or $08
	ld [$d0b3], a
	inc b
.asm_75adb
	nop
	ld a, [$d0b4]
	and $02
	jr z, .asm_75af2
	ld a, $04
	ld [hl], a
	inc l
	ld a, [$d0b4]
	and $fd
	or $08
	ld [$d0b4], a
	inc b
.asm_75af2
	nop
	ld a, [$d0b5]
	and $02
	jr z, .asm_75b09
	ld a, $05
	ld [hl], a
	inc l
	ld a, [$d0b5]
	and $fd
	or $08
	ld [$d0b5], a
	inc b
.asm_75b09
	nop
	ld a, [$d0b8]
	and $02
	jr z, .asm_75b20
	ld a, $08
	ld [hl], a
	inc l
	ld a, [$d0b8]
	and $fd
	or $08
	ld [$d0b8], a
	inc b
.asm_75b20
	nop
	ld a, [$d0b9]
	and $02
	jr z, .asm_75b37
	ld a, $09
	ld [hl], a
	inc l
	ld a, [$d0b9]
	and $fd
	or $08
	ld [$d0b9], a
	inc b
.asm_75b37
	nop
	ld a, [$d0ba]
	and $02
	jr z, .asm_75b4e
	ld a, $0a
	ld [hl], a
	inc l
	ld a, [$d0ba]
	and $fd
	or $08
	ld [$d0ba], a
	inc b
.asm_75b4e
	nop
	ld a, [$d0bb]
	and $02
	jr z, .asm_75b65
	ld a, $0b
	ld [hl], a
	inc l
	ld a, [$d0bb]
	and $fd
	or $08
	ld [$d0bb], a
	inc b
.asm_75b65
	nop
	ld a, [$d0bc]
	and $02
	jr z, .asm_75b7c
	ld a, $0c
	ld [hl], a
	inc l
	ld a, [$d0bc]
	and $fd
	or $08
	ld [$d0bc], a
	inc b
.asm_75b7c
	nop
	ld a, [$d0bd]
	and $02
	jr z, .asm_75b93
	ld a, $0d
	ld [hl], a
	inc l
	ld a, [$d0bd]
	and $fd
	or $08
	ld [$d0bd], a
	inc b
.asm_75b93
	nop
	ld a, [w2d0c0]
	and $02
	jr z, .asm_75baa
	ld a, $10
	ld [hl], a
	inc l
	ld a, [w2d0c0]
	and $fd
	or $08
	ld [w2d0c0], a
	inc b
.asm_75baa
	nop
	ld a, [$d0c1]
	and $02
	jr z, .asm_75bc1
	ld a, $11
	ld [hl], a
	inc l
	ld a, [$d0c1]
	and $fd
	or $08
	ld [$d0c1], a
	inc b
.asm_75bc1
	nop
	ld a, [$d0c2]
	and $02
	jr z, .asm_75bd8
	ld a, $12
	ld [hl], a
	inc l
	ld a, [$d0c2]
	and $fd
	or $08
	ld [$d0c2], a
	inc b
.asm_75bd8
	nop
	ld a, [$d0c3]
	and $02
	jr z, .asm_75bef
	ld a, $13
	ld [hl], a
	inc l
	ld a, [$d0c3]
	and $fd
	or $08
	ld [$d0c3], a
	inc b
.asm_75bef
	nop
	ld a, [$d0c4]
	and $02
	jr z, .asm_75c06
	ld a, $14
	ld [hl], a
	inc l
	ld a, [$d0c4]
	and $fd
	or $08
	ld [$d0c4], a
	inc b
.asm_75c06
	nop
	ld a, [$d0c5]
	and $02
	jr z, .asm_75c1d
	ld a, $15
	ld [hl], a
	inc l
	ld a, [$d0c5]
	and $fd
	or $08
	ld [$d0c5], a
	inc b
.asm_75c1d
	nop
	ld a, [$d0c8]
	and $02
	jr z, .asm_75c34
	ld a, $18
	ld [hl], a
	inc l
	ld a, [$d0c8]
	and $fd
	or $08
	ld [$d0c8], a
	inc b
.asm_75c34
	nop
	ld a, [$d0c9]
	and $02
	jr z, .asm_75c4b
	ld a, $19
	ld [hl], a
	inc l
	ld a, [$d0c9]
	and $fd
	or $08
	ld [$d0c9], a
	inc b
.asm_75c4b
	nop
	ld a, [$d0ca]
	and $02
	jr z, .asm_75c62
	ld a, $1a
	ld [hl], a
	inc l
	ld a, [$d0ca]
	and $fd
	or $08
	ld [$d0ca], a
	inc b
.asm_75c62
	nop
	ld a, [$d0cb]
	and $02
	jr z, .asm_75c79
	ld a, $1b
	ld [hl], a
	inc l
	ld a, [$d0cb]
	and $fd
	or $08
	ld [$d0cb], a
	inc b
.asm_75c79
	nop
	ld a, [$d0cc]
	and $02
	jr z, .asm_75c90
	ld a, $1c
	ld [hl], a
	inc l
	ld a, [$d0cc]
	and $fd
	or $08
	ld [$d0cc], a
	inc b
.asm_75c90
	nop
	ld a, [$d0cd]
	and $02
	jr z, .asm_75ca7
	ld a, $1d
	ld [hl], a
	inc l
	ld a, [$d0cd]
	and $fd
	or $08
	ld [$d0cd], a
	inc b
.asm_75ca7
	nop
	ld a, [$d0d0]
	and $02
	jr z, .asm_75cbe
	ld a, $20
	ld [hl], a
	inc l
	ld a, [$d0d0]
	and $fd
	or $08
	ld [$d0d0], a
	inc b
.asm_75cbe
	nop
	ld a, [$d0d1]
	and $02
	jr z, .asm_75cd5
	ld a, $21
	ld [hl], a
	inc l
	ld a, [$d0d1]
	and $fd
	or $08
	ld [$d0d1], a
	inc b
.asm_75cd5
	nop
	ld a, [$d0d2]
	and $02
	jr z, .asm_75cec
	ld a, $22
	ld [hl], a
	inc l
	ld a, [$d0d2]
	and $fd
	or $08
	ld [$d0d2], a
	inc b
.asm_75cec
	nop
	ld a, [$d0d3]
	and $02
	jr z, .asm_75d03
	ld a, $23
	ld [hl], a
	inc l
	ld a, [$d0d3]
	and $fd
	or $08
	ld [$d0d3], a
	inc b
.asm_75d03
	nop
	ld a, [$d0d4]
	and $02
	jr z, .asm_75d1a
	ld a, $24
	ld [hl], a
	inc l
	ld a, [$d0d4]
	and $fd
	or $08
	ld [$d0d4], a
	inc b
.asm_75d1a
	nop
	ld a, [$d0d5]
	and $02
	jr z, .asm_75d31
	ld a, $25
	ld [hl], a
	inc l
	ld a, [$d0d5]
	and $fd
	or $08
	ld [$d0d5], a
	inc b
.asm_75d31
	nop
	ld a, [$d0d8]
	and $02
	jr z, .asm_75d48
	ld a, $28
	ld [hl], a
	inc l
	ld a, [$d0d8]
	and $fd
	or $08
	ld [$d0d8], a
	inc b
.asm_75d48
	nop
	ld a, [$d0d9]
	and $02
	jr z, .asm_75d5f
	ld a, $29
	ld [hl], a
	inc l
	ld a, [$d0d9]
	and $fd
	or $08
	ld [$d0d9], a
	inc b
.asm_75d5f
	nop
	ld a, [$d0da]
	and $02
	jr z, .asm_75d76
	ld a, $2a
	ld [hl], a
	inc l
	ld a, [$d0da]
	and $fd
	or $08
	ld [$d0da], a
	inc b
.asm_75d76
	nop
	ld a, [$d0db]
	and $02
	jr z, .asm_75d8d
	ld a, $2b
	ld [hl], a
	inc l
	ld a, [$d0db]
	and $fd
	or $08
	ld [$d0db], a
	inc b
.asm_75d8d
	nop
	ld a, [$d0dc]
	and $02
	jr z, .asm_75da4
	ld a, $2c
	ld [hl], a
	inc l
	ld a, [$d0dc]
	and $fd
	or $08
	ld [$d0dc], a
	inc b
.asm_75da4
	nop
	ld a, [$d0dd]
	and $02
	jr z, .asm_75dbb
	ld a, $2d
	ld [hl], a
	inc l
	ld a, [$d0dd]
	and $fd
	or $08
	ld [$d0dd], a
	inc b
.asm_75dbb
	nop
	ld a, [$d0e0]
	and $02
	jr z, .asm_75dd2
	ld a, $30
	ld [hl], a
	inc l
	ld a, [$d0e0]
	and $fd
	or $08
	ld [$d0e0], a
	inc b
.asm_75dd2
	nop
	ld a, [$d0e1]
	and $02
	jr z, .asm_75de9
	ld a, $31
	ld [hl], a
	inc l
	ld a, [$d0e1]
	and $fd
	or $08
	ld [$d0e1], a
	inc b
.asm_75de9
	nop
	ld a, [$d0e2]
	and $02
	jr z, .asm_75e00
	ld a, $32
	ld [hl], a
	inc l
	ld a, [$d0e2]
	and $fd
	or $08
	ld [$d0e2], a
	inc b
.asm_75e00
	nop
	ld a, [$d0e3]
	and $02
	jr z, .asm_75e17
	ld a, $33
	ld [hl], a
	inc l
	ld a, [$d0e3]
	and $fd
	or $08
	ld [$d0e3], a
	inc b
.asm_75e17
	nop
	ld a, [$d0e4]
	and $02
	jr z, .asm_75e2e
	ld a, $34
	ld [hl], a
	inc l
	ld a, [$d0e4]
	and $fd
	or $08
	ld [$d0e4], a
	inc b
.asm_75e2e
	nop
	ld a, [$d0e5]
	and $02
	jr z, .asm_75e45
	ld a, $35
	ld [hl], a
	inc l
	ld a, [$d0e5]
	and $fd
	or $08
	ld [$d0e5], a
	inc b
.asm_75e45
	nop
	ld a, [$d0e8]
	and $02
	jr z, .asm_75e5c
	ld a, $38
	ld [hl], a
	inc l
	ld a, [$d0e8]
	and $fd
	or $08
	ld [$d0e8], a
	inc b
.asm_75e5c
	nop
	ld a, [$d0e9]
	and $02
	jr z, .asm_75e73
	ld a, $39
	ld [hl], a
	inc l
	ld a, [$d0e9]
	and $fd
	or $08
	ld [$d0e9], a
	inc b
.asm_75e73
	nop
	ld a, [$d0ea]
	and $02
	jr z, .asm_75e8a
	ld a, $3a
	ld [hl], a
	inc l
	ld a, [$d0ea]
	and $fd
	or $08
	ld [$d0ea], a
	inc b
.asm_75e8a
	nop
	ld a, [$d0eb]
	and $02
	jr z, .asm_75ea1
	ld a, $3b
	ld [hl], a
	inc l
	ld a, [$d0eb]
	and $fd
	or $08
	ld [$d0eb], a
	inc b
.asm_75ea1
	nop
	ld a, [$d0ec]
	and $02
	jr z, .asm_75eb8
	ld a, $3c
	ld [hl], a
	inc l
	ld a, [$d0ec]
	and $fd
	or $08
	ld [$d0ec], a
	inc b
.asm_75eb8
	nop
	ld a, [$d0ed]
	and $02
	jr z, .asm_75ecf
	ld a, $3d
	ld [hl], a
	inc l
	ld a, [$d0ed]
	and $fd
	or $08
	ld [$d0ed], a
	inc b
.asm_75ecf
	nop
	ld a, [$d0f0]
	and $02
	jr z, .asm_75ee6
	ld a, $40
	ld [hl], a
	inc l
	ld a, [$d0f0]
	and $fd
	or $08
	ld [$d0f0], a
	inc b
.asm_75ee6
	nop
	ld a, [$d0f1]
	and $02
	jr z, .asm_75efd
	ld a, $41
	ld [hl], a
	inc l
	ld a, [$d0f1]
	and $fd
	or $08
	ld [$d0f1], a
	inc b
.asm_75efd
	nop
	ld a, [$d0f2]
	and $02
	jr z, .asm_75f14
	ld a, $42
	ld [hl], a
	inc l
	ld a, [$d0f2]
	and $fd
	or $08
	ld [$d0f2], a
	inc b
.asm_75f14
	nop
	ld a, [$d0f3]
	and $02
	jr z, .asm_75f2b
	ld a, $43
	ld [hl], a
	inc l
	ld a, [$d0f3]
	and $fd
	or $08
	ld [$d0f3], a
	inc b
.asm_75f2b
	nop
	ld a, [$d0f4]
	and $02
	jr z, .asm_75f42
	ld a, $44
	ld [hl], a
	inc l
	ld a, [$d0f4]
	and $fd
	or $08
	ld [$d0f4], a
	inc b
.asm_75f42
	nop
	ld a, [$d0f5]
	and $02
	jr z, .asm_75f59
	ld a, $45
	ld [hl], a
	inc l
	ld a, [$d0f5]
	and $fd
	or $08
	ld [$d0f5], a
	inc b
.asm_75f59
	nop
	push de
	push hl
	ldh a, [hff8a]
	pop hl
	and a
	jr z, .asm_75f66
	ld e, $88
	jr .asm_75f68
.asm_75f66
	ld e, $08
.asm_75f68
	ld c, b
	ld a, [$d64d]
	and a
	jp z, .asm_75f7e
	ld a, [$d0f5]
	or e
	and $fb
	ld [$d0f5], a
	ld a, $45
	ld [hl], a
	inc l
	inc b
.asm_75f7e:
	nop
	ld a, [$d64c]
	and a
	jp z, .asm_75f94
	ld a, [$d0f4]
	or e
	and $fb
	ld [$d0f4], a
	ld a, $44
	ld [hl], a
	inc l
	inc b
.asm_75f94:
	nop
	ld a, [$d64b]
	and a
	jp z, .asm_75faa
	ld a, [$d0f3]
	or e
	and $fb
	ld [$d0f3], a
	ld a, $43
	ld [hl], a
	inc l
	inc b
.asm_75faa:
	nop
	ld a, [$d64a]
	and a
	jp z, .asm_75fc0
	ld a, [$d0f2]
	or e
	and $fb
	ld [$d0f2], a
	ld a, $42
	ld [hl], a
	inc l
	inc b
.asm_75fc0:
	nop
	ld a, [$d649]
	and a
	jp z, .asm_75fd6
	ld a, [$d0f1]
	or e
	and $fb
	ld [$d0f1], a
	ld a, $41
	ld [hl], a
	inc l
	inc b
.asm_75fd6:
	nop
	ld a, [$d648]
	and a
	jp z, .asm_75fec
	ld a, [$d0f0]
	or e
	and $fb
	ld [$d0f0], a
	ld a, $40
	ld [hl], a
	inc l
	inc b
.asm_75fec:
	nop
	ld a, [$d645]
	and a
	jp z, .asm_76002
	ld a, [$d0ed]
	or e
	and $fb
	ld [$d0ed], a
	ld a, $3d
	ld [hl], a
	inc l
	inc b
.asm_76002:
	nop
	ld a, [$d644]
	and a
	jp z, .asm_76018
	ld a, [$d0ec]
	or e
	and $fb
	ld [$d0ec], a
	ld a, $3c
	ld [hl], a
	inc l
	inc b
.asm_76018:
	nop
	ld a, [$d643]
	and a
	jp z, .asm_7602e
	ld a, [$d0eb]
	or e
	and $fb
	ld [$d0eb], a
	ld a, $3b
	ld [hl], a
	inc l
	inc b
.asm_7602e:
	nop
	ld a, [$d642]
	and a
	jp z, .asm_76044
	ld a, [$d0ea]
	or e
	and $fb
	ld [$d0ea], a
	ld a, $3a
	ld [hl], a
	inc l
	inc b
.asm_76044:
	nop
	ld a, [$d641]
	and a
	jp z, .asm_7605a
	ld a, [$d0e9]
	or e
	and $fb
	ld [$d0e9], a
	ld a, $39
	ld [hl], a
	inc l
	inc b
.asm_7605a:
	nop
	ld a, [$d640]
	and a
	jp z, .asm_76070
	ld a, [$d0e8]
	or e
	and $fb
	ld [$d0e8], a
	ld a, $38
	ld [hl], a
	inc l
	inc b
.asm_76070:
	nop
	ld a, [$d63d]
	and a
	jp z, .asm_76086
	ld a, [$d0e5]
	or e
	and $fb
	ld [$d0e5], a
	ld a, $35
	ld [hl], a
	inc l
	inc b
.asm_76086:
	nop
	ld a, [$d63c]
	and a
	jp z, .asm_7609c
	ld a, [$d0e4]
	or e
	and $fb
	ld [$d0e4], a
	ld a, $34
	ld [hl], a
	inc l
	inc b
.asm_7609c:
	nop
	ld a, [$d63b]
	and a
	jp z, .asm_760b2
	ld a, [$d0e3]
	or e
	and $fb
	ld [$d0e3], a
	ld a, $33
	ld [hl], a
	inc l
	inc b
.asm_760b2:
	nop
	ld a, [$d63a]
	and a
	jp z, .asm_760c8
	ld a, [$d0e2]
	or e
	and $fb
	ld [$d0e2], a
	ld a, $32
	ld [hl], a
	inc l
	inc b
.asm_760c8:
	nop
	ld a, [$d639]
	and a
	jp z, .asm_760de
	ld a, [$d0e1]
	or e
	and $fb
	ld [$d0e1], a
	ld a, $31
	ld [hl], a
	inc l
	inc b
.asm_760de:
	nop
	ld a, [$d638]
	and a
	jp z, .asm_760f4
	ld a, [$d0e0]
	or e
	and $fb
	ld [$d0e0], a
	ld a, $30
	ld [hl], a
	inc l
	inc b
.asm_760f4:
	nop
	ld a, [$d635]
	and a
	jp z, .asm_7610a
	ld a, [$d0dd]
	or e
	and $fb
	ld [$d0dd], a
	ld a, $2d
	ld [hl], a
	inc l
	inc b
.asm_7610a:
	nop
	ld a, [$d634]
	and a
	jp z, .asm_76120
	ld a, [$d0dc]
	or e
	and $fb
	ld [$d0dc], a
	ld a, $2c
	ld [hl], a
	inc l
	inc b
.asm_76120:
	nop
	ld a, [$d633]
	and a
	jp z, .asm_76136
	ld a, [$d0db]
	or e
	and $fb
	ld [$d0db], a
	ld a, $2b
	ld [hl], a
	inc l
	inc b
.asm_76136:
	nop
	ld a, [$d632]
	and a
	jp z, .asm_7614c
	ld a, [$d0da]
	or e
	and $fb
	ld [$d0da], a
	ld a, $2a
	ld [hl], a
	inc l
	inc b
.asm_7614c:
	nop
	ld a, [$d631]
	and a
	jp z, .asm_76162
	ld a, [$d0d9]
	or e
	and $fb
	ld [$d0d9], a
	ld a, $29
	ld [hl], a
	inc l
	inc b
.asm_76162:
	nop
	ld a, [$d630]
	and a
	jp z, .asm_76178
	ld a, [$d0d8]
	or e
	and $fb
	ld [$d0d8], a
	ld a, $28
	ld [hl], a
	inc l
	inc b
.asm_76178:
	nop
	ld a, [$d62d]
	and a
	jp z, .asm_7618e
	ld a, [$d0d5]
	or e
	and $fb
	ld [$d0d5], a
	ld a, $25
	ld [hl], a
	inc l
	inc b
.asm_7618e:
	nop
	ld a, [$d62c]
	and a
	jp z, .asm_761a4
	ld a, [$d0d4]
	or e
	and $fb
	ld [$d0d4], a
	ld a, $24
	ld [hl], a
	inc l
	inc b
.asm_761a4:
	nop
	ld a, [$d62b]
	and a
	jp z, .asm_761ba
	ld a, [$d0d3]
	or e
	and $fb
	ld [$d0d3], a
	ld a, $23
	ld [hl], a
	inc l
	inc b
.asm_761ba:
	nop
	ld a, [$d62a]
	and a
	jp z, .asm_761d0
	ld a, [$d0d2]
	or e
	and $fb
	ld [$d0d2], a
	ld a, $22
	ld [hl], a
	inc l
	inc b
.asm_761d0:
	nop
	ld a, [$d629]
	and a
	jp z, .asm_761e6
	ld a, [$d0d1]
	or e
	and $fb
	ld [$d0d1], a
	ld a, $21
	ld [hl], a
	inc l
	inc b
.asm_761e6:
	nop
	ld a, [$d628]
	and a
	jp z, .asm_761fc
	ld a, [$d0d0]
	or e
	and $fb
	ld [$d0d0], a
	ld a, $20
	ld [hl], a
	inc l
	inc b
.asm_761fc:
	nop
	ld a, [$d625]
	and a
	jp z, .asm_76212
	ld a, [$d0cd]
	or e
	and $fb
	ld [$d0cd], a
	ld a, $1d
	ld [hl], a
	inc l
	inc b
.asm_76212:
	nop
	ld a, [$d624]
	and a
	jp z, .asm_76228
	ld a, [$d0cc]
	or e
	and $fb
	ld [$d0cc], a
	ld a, $1c
	ld [hl], a
	inc l
	inc b
.asm_76228:
	nop
	ld a, [$d623]
	and a
	jp z, .asm_7623e
	ld a, [$d0cb]
	or e
	and $fb
	ld [$d0cb], a
	ld a, $1b
	ld [hl], a
	inc l
	inc b
.asm_7623e:
	nop
	ld a, [$d622]
	and a
	jp z, .asm_76254
	ld a, [$d0ca]
	or e
	and $fb
	ld [$d0ca], a
	ld a, $1a
	ld [hl], a
	inc l
	inc b
.asm_76254:
	nop
	ld a, [$d621]
	and a
	jp z, .asm_7626a
	ld a, [$d0c9]
	or e
	and $fb
	ld [$d0c9], a
	ld a, $19
	ld [hl], a
	inc l
	inc b
.asm_7626a:
	nop
	ld a, [$d620]
	and a
	jp z, .asm_76280
	ld a, [$d0c8]
	or e
	and $fb
	ld [$d0c8], a
	ld a, $18
	ld [hl], a
	inc l
	inc b
.asm_76280:
	nop
	ld a, [$d61d]
	and a
	jp z, .asm_76296
	ld a, [$d0c5]
	or e
	and $fb
	ld [$d0c5], a
	ld a, $15
	ld [hl], a
	inc l
	inc b
.asm_76296:
	nop
	ld a, [$d61c]
	and a
	jp z, .asm_762ac
	ld a, [$d0c4]
	or e
	and $fb
	ld [$d0c4], a
	ld a, $14
	ld [hl], a
	inc l
	inc b
.asm_762ac:
	nop
	ld a, [$d61b]
	and a
	jp z, .asm_762c2
	ld a, [$d0c3]
	or e
	and $fb
	ld [$d0c3], a
	ld a, $13
	ld [hl], a
	inc l
	inc b
.asm_762c2:
	nop
	ld a, [$d61a]
	and a
	jp z, .asm_762d8
	ld a, [$d0c2]
	or e
	and $fb
	ld [$d0c2], a
	ld a, $12
	ld [hl], a
	inc l
	inc b
.asm_762d8:
	nop
	ld a, [$d619]
	and a
	jp z, .asm_762ee
	ld a, [$d0c1]
	or e
	and $fb
	ld [$d0c1], a
	ld a, $11
	ld [hl], a
	inc l
	inc b
.asm_762ee:
	nop
	ld a, [$d618]
	and a
	jp z, .asm_76304
	ld a, [w2d0c0]
	or e
	and $fb
	ld [w2d0c0], a
	ld a, $10
	ld [hl], a
	inc l
	inc b
.asm_76304:
	nop
	ld a, [$d615]
	and a
	jp z, .asm_7631a
	ld a, [$d0bd]
	or e
	and $fb
	ld [$d0bd], a
	ld a, $0d
	ld [hl], a
	inc l
	inc b
.asm_7631a:
	nop
	ld a, [$d614]
	and a
	jp z, .asm_76330
	ld a, [$d0bc]
	or e
	and $fb
	ld [$d0bc], a
	ld a, $0c
	ld [hl], a
	inc l
	inc b
.asm_76330:
	nop
	ld a, [$d613]
	and a
	jp z, .asm_76346
	ld a, [$d0bb]
	or e
	and $fb
	ld [$d0bb], a
	ld a, $0b
	ld [hl], a
	inc l
	inc b
.asm_76346:
	nop
	ld a, [$d612]
	and a
	jp z, .asm_7635c
	ld a, [$d0ba]
	or e
	and $fb
	ld [$d0ba], a
	ld a, $0a
	ld [hl], a
	inc l
	inc b
.asm_7635c:
	nop
	ld a, [$d611]
	and a
	jp z, .asm_76372
	ld a, [$d0b9]
	or e
	and $fb
	ld [$d0b9], a
	ld a, $09
	ld [hl], a
	inc l
	inc b
.asm_76372:
	nop
	ld a, [$d610]
	and a
	jp z, .asm_76388
	ld a, [$d0b8]
	or e
	and $fb
	ld [$d0b8], a
	ld a, $08
	ld [hl], a
	inc l
	inc b
.asm_76388:
	nop
	ld a, [$d60d]
	and a
	jp z, .asm_7639e
	ld a, [$d0b5]
	or e
	and $fb
	ld [$d0b5], a
	ld a, $05
	ld [hl], a
	inc l
	inc b
.asm_7639e:
	nop
	ld a, [$d60c]
	and a
	jp z, .asm_763b4
	ld a, [$d0b4]
	or e
	and $fb
	ld [$d0b4], a
	ld a, $04
	ld [hl], a
	inc l
	inc b
.asm_763b4:
	nop
	ld a, [$d60b]
	and a
	jp z, .asm_763ca
	ld a, [$d0b3]
	or e
	and $fb
	ld [$d0b3], a
	ld a, $03
	ld [hl], a
	inc l
	inc b
.asm_763ca:
	nop
	ld a, [$d60a]
	and a
	jp z, .asm_763e0
	ld a, [$d0b2]
	or e
	and $fb
	ld [$d0b2], a
	ld a, $02
	ld [hl], a
	inc l
	inc b
.asm_763e0:
	nop
	ld a, [$d609]
	and a
	jp z, .asm_763f6
	ld a, [$d0b1]
	or e
	and $fb
	ld [$d0b1], a
	ld a, $01
	ld [hl], a
	inc l
	inc b
.asm_763f6:
	nop
	ld a, [$d608]
	and a
	jp z, .asm_7640c
	ld a, [w6d0b0]
	or e
	and $fb
	ld [w6d0b0], a
	ld a, $00
	ld [hl], a
	inc l
	inc b
.asm_7640c:
	nop
	pop de
	ld a, c
	ld [wc889], a
	and a
	jr nz, .asm_76418
	ld c, $00
	ret
.asm_76418
	ld [hl], $ff
	ld hl, $cd07
	ld a, [hl]
	add b
	inc a
	ld [hl], a
	ld hl, $cce3
	add hl, de
	xor a
	ld [hl], a
	ld hl, $ccd7
	add hl, de
	ld [hl], a
	ld [wc87b], a
	ld hl, wccb3
	add hl, de
	inc a
	ld [hl], a
	ld hl, $ccbf
	add hl, de
	ld [hl], c
	ld hl, $cccb
	add hl, de
	ld [hl], b
	ld hl, $ccef
	add hl, de
	ldh a, [hff8a]
	and a
	jr z, .asm_7644b
	ld a, [wc88a]
.asm_7644b
	ld [hl], a
	ld hl, $ccfb
	add hl, de
	ld c, [hl]
	ld b, $00
	ld hl, $d200
	add hl, bc
	ld b, [hl]
	ld c, $01
	ret

Func_7645b:
	ld a, $00
	ld [wcd68], a
	ld [wcd69], a
	ld [wcd6a], a
	ld [$cd6b], a
	ld [$cd6c], a
	ld [$cd6d], a
	ld [wcd6e], a
	ld [wcd6f], a
	ld [wcd70], a
	ld [wcd71], a
	ld [wcd72], a
	ld [wcd73], a
	ld a, $00
	ld [$cd7b], a
	ld [$cd7c], a
	ld [$cd7d], a
	ld [$cd7e], a
	ld [$cd7f], a
	ld [$cd80], a
	ld [$cd81], a
	ld [$cd82], a
	ld a, $00
	ld [$cd96], a
	ld [$cd97], a
	ld [$cd98], a
	ld [$cd99], a
	ld [$cd9a], a
	ld [$cd9b], a
	ld [$cd9c], a
	ld [$cd9d], a
	ld [$cd9e], a
	ld [$cd9f], a
	ld [$cda0], a
	ld [$cda1], a
	ld [$cda2], a
	ld [$cda3], a
	ld [$cda4], a
	ld [$cda5], a
	ld [$cda6], a
	ld [$cda7], a
	ld [$cda8], a
	ld [$cda9], a
	ret

Func_764da:
	ld a, $00
	ld [$cd74], a
	ld [$cd75], a
	ld [$cd76], a
	ld [$cd77], a
	ld [$cd78], a
	ld [$cd79], a
	ld a, $01
	ld [$cd7a], a
	ld a, $00
	ld [$cd83], a
	ld [$cd84], a
	ld [$cd85], a
	ld [$cd86], a
	ld [$cd87], a
	ld [$cd88], a
	ld [$cd89], a
	ld [$cd8a], a
	ld [$cd8b], a
	ld [$cd8c], a
	ld [$cd8d], a
	ld [$cd8e], a
	ld [$cd8f], a
	ld [$cd90], a
	ld [$cd91], a
	ld [$cd92], a
	ld [$cd93], a
	ld [$cd94], a
	ld a, $01
	ld [$cd95], a
	ld a, $00
	ld [wc8be], a
	ld [wc8bf], a
	ld [wc8c0], a
	ld [wc8c1], a
	ld [wc8c2], a
	ld [wc8c3], a
	ld [wc8c4], a
	ld [wc8c5], a
	ld [wc8c6], a
	ld [wc8c7], a
	ld a, $00
	ld [wc8c8], a
	ld [wc8c9], a
	ld [wc8ca], a
	ld [wc8cb], a
	ld [wc8cc], a
	ld [wc8cd], a
	ld [wc8ce], a
	ld [wc8cf], a
	ld [wc8d0], a
	ld [wc8d1], a
	ld a, $00
	ld [wc8d3], a
	ld [wc8d2], a
	ld a, $ff
	ld [$cdaa], a
	ld [$cdab], a
	ld a, $00
	ld [$cdac], a
	ret
; 0x76586

SECTION "Bank 1d@6bc7", ROMX[$6bc7], BANK[$1d]

Func_76bc7:
	call Func_f03
	call Func_f6a
Func_76bcd:
	ld a, [wcd6f]
	cp $ff
	ret z
	and a
	jr nz, .asm_76be1
	ldh a, [hJoypadPressed]
	and PAD_START
	jr z, .asm_76be1
	ld a, $01
	ld [wcd72], a
.asm_76be1
	ld a, [wc330]
	and $80
	jr z, .asm_76c01
	ld a, [wc32e]
	and $01
	ld [wcd73], a
	ld a, [wc32e]
	sra a
	and $01
	ld [wcd71], a
	xor a
	ld hl, wc32e
	ld [hli], a
	ld [hli], a
	ld [hl], a
.asm_76c01
	ld a, [wcd6f]
	cp $04
	jp z, .asm_76c7e
	cp $03
	jp z, .asm_76c7e
	cp $02
	jp z, .asm_76c53
	cp $01
	jp z, .asm_76c53
	ld a, [wcd71]
	and a
	jr z, .asm_76c27
	ld a, $04
	ld [wcd6f], a
	call Func_76ca2
	ret
.asm_76c27
	ld a, [wcd70]
	and a
	jr z, .asm_76c36
	ld a, $03
	ld [wcd6f], a
	call Func_76ca2
	ret
.asm_76c36
	ld a, [wcd73]
	and a
	jr z, .asm_76c45
	ld a, $02
	ld [wcd6f], a
	call Func_76cb1
	ret
.asm_76c45
	ld a, [wcd72]
	and a
	ret z
	ld a, $01
	ld [wcd6f], a
	call Func_76cb1
	ret

.asm_76c53
	ld a, [wcd71]
	and a
	jr z, .asm_76c62
	ld a, $04
	ld [wcd6f], a
	call Func_76ca2
	ret
.asm_76c62
	ld a, [wcd6f]
	cp $02
	jr z, .asm_76c70
	ld a, [wcd73]
	and a
	jr nz, .asm_76c77
	ret
.asm_76c70
	ld a, $01
	ld [wc898], a
	jr .asm_76c97
.asm_76c77
	ld a, $00
	ld [wc898], a
	jr .asm_76c97
.asm_76c7e
	ld a, [wcd6f]
	cp $04
	jr z, .asm_76c8c
	ld a, [wcd71]
	and a
	jr nz, .asm_76c8c
	ret
.asm_76c8c
	ld a, $01
	ld [wcd68], a
	ld a, $ff
	ld [wcd6f], a
	ret
.asm_76c97
	ld a, $01
	ld [wcd69], a
	ld a, $ff
	ld [wcd6f], a
	ret

Func_76ca2:
	ld hl, wc334
	ld a, $02
	or [hl]
	ld [hl], a
	ld hl, wc336
	ld a, $80
	or [hl]
	ld [hl], a
	ret

Func_76cb1:
	ld hl, wc334
	ld a, $01
	or [hl]
	ld [hl], a
	ld hl, wc336
	ld a, $80
	or [hl]
	ld [hl], a
	ret

Func_76cc0:
	ld a, [wcd6f]
	cp $08
	jp z, .asm_76e0c
	cp $07
	jp z, .asm_76e0c
	cp $06
	jp z, .asm_76df9
	cp $05
	jp z, .asm_76df9
	cp $04
	jp z, .asm_76dcb
	cp $03
	jp z, .asm_76dcb
	cp $02
	jp z, .asm_76d7d
	cp $01
	jp z, .asm_76d7d
	ld a, [wcd71]
	cp $01
	jr nz, .asm_76cfd
	ld a, $07
	ld [wcd6f], a
	call Func_76e97
	jp Func_76ebd
.asm_76cfd
	ld a, [$cdac]
	and a
	jr z, .asm_76d0e
	ld a, $08
	ld [wcd6f], a
	call Func_76e89
	jp Func_76ebd
.asm_76d0e
	ld a, [wcd71]
	cp $03
	jr nz, .asm_76d20
	ld a, $06
	ld [wcd6f], a
	call Func_76ea5
	jp Func_76ebd
.asm_76d20
	ld a, [wcd70]
	cp $03
	jr nz, .asm_76d32
	ld a, $05
	ld [wcd6f], a
	call Func_76ea5
	jp Func_76ebd
.asm_76d32
	ld a, [wcd71]
	cp $02
	jr nz, .asm_76d44
	ld a, $03
	ld [wcd6f], a
	call Func_76e89
	jp Func_76ebd
.asm_76d44
	ld a, [wcd6e]
	and a
	jr z, .asm_76d5a
	ld a, $04
	ld [wcd6f], a
	ld a, $01
	ld [wc893], a
	call Func_76e97
	jp Func_76ebd
.asm_76d5a
	ld a, [wcd73]
	and a
	jr z, .asm_76d6b
	ld a, $02
	ld [wcd6f], a
	call Func_76eb3
	jp Func_76ebd
.asm_76d6b
	ld a, [wcd72]
	and a
	jp z, Func_76ebd
	ld a, $01
	ld [wcd6f], a
	call Func_76eb3
	jp Func_76ebd

.asm_76d7d
	ld a, [wcd71]
	cp $03
	jr nz, .asm_76d8f
	ld a, $06
	ld [wcd6f], a
	call Func_76ea5
	jp Func_76ebd
.asm_76d8f
	cp $02
	jr nz, .asm_76d9e
	ld a, $03
	ld [wcd6f], a
	call Func_76e89
	jp Func_76ebd
.asm_76d9e
	cp $01
	jr nz, .asm_76dad
	ld a, $07
	ld [wcd6f], a
	call Func_76e97
	jp Func_76ebd
.asm_76dad
	ld a, [wcd6f]
	cp $02
	jr z, .asm_76dbd
	ld a, [wcd73]
	and a
	jr nz, .asm_76dc4
	jp Func_76ebd
.asm_76dbd
	ld a, $01
	ld [wc898], a
	jr .asm_76e28
.asm_76dc4
	ld a, $00
	ld [wc898], a
	jr .asm_76e28
.asm_76dcb
	ld a, [wcd71]
	cp $03
	jr nz, .asm_76ddd
	ld a, $06
	ld [wcd6f], a
	call Func_76ea5
	jp Func_76ebd
.asm_76ddd
	ld a, [wcd73]
	and a
	jp nz, Func_76ebd
	ld a, [wcd6f]
	cp $03
	jr z, .asm_76e42
	ld a, [wcd71]
	cp $02
	jr z, .asm_76e6c
	cp $01
	jr z, .asm_76e57
	jp Func_76ebd
.asm_76df9
	ld a, [wcd6f]
	cp $06
	jp z, .asm_76e32
	ld a, [wcd71]
	cp $03
	jp z, .asm_76e32
	jp Func_76ebd
.asm_76e0c
	ld a, [wcd73]
	and a
	jp nz, Func_76ebd
	ld a, [wcd6f]
	cp $07
	jr z, .asm_76e57
	ld a, [wcd71]
	cp $02
	jr z, .asm_76e42
	cp $01
	jr z, .asm_76e6c
	jp Func_76ebd
.asm_76e28
	ld a, $01
	ld [wc887], a
	ld [wcd69], a
	jr .asm_76e81
.asm_76e32
	ld a, $02
	ld [wc887], a
	ld a, $05
	ld [wc886], a
	ld [wcd68], a
	jp .asm_76e81
.asm_76e42
	ld a, $02
	ld [wc887], a
	ld a, $03
	ld [wc886], a
	ld [wcd68], a
	ld a, $00
	ld [wc888], a
	jp .asm_76e81
.asm_76e57
	ld a, $02
	ld [wc887], a
	ld a, $03
	ld [wc886], a
	ld [wcd68], a
	ld a, $01
	ld [wc888], a
	jp .asm_76e81
.asm_76e6c
	ld a, $02
	ld [wc887], a
	ld a, $03
	ld [wc886], a
	ld [wcd68], a
	ld a, $02
	ld [wc888], a
	jp .asm_76e81
.asm_76e81
	ld a, $ff
	ld [wcd6f], a
	jp Func_76ebd

Func_76e89:
	ld a, $01
	ld hl, wc336
	swap a
	or $80
	or [hl]
	ld [hl], a
	jp Func_76ebd

Func_76e97:
	ld a, $02
	ld hl, wc336
	swap a
	or $80
	or [hl]
	ld [hl], a
	jp Func_76ebd

Func_76ea5:
	ld a, $03
	ld hl, wc336
	swap a
	or $80
	or [hl]
	ld [hl], a
	jp Func_76ebd

Func_76eb3:
	ld hl, wc336
	ld a, $c0
	or [hl]
	ld [hl], a
	jp Func_76ebd

Func_76ebd:
	ld a, [wc330]
	and $80
	jr z, .asm_76ed9
	ld a, [wc330]
	and $40
	rla
	rla
	rla
	ld [wcd73], a
	ld a, [wc330]
	swap a
	and $03
	ld [wcd71], a
.asm_76ed9
	ld a, [wcd6f]
	and a
	ret nz
	call Func_76fc9
	ld a, [wGameMode]
	cp GAMEMODE_2P_TIME_ZONE
	jp z, Func_76f6a
	ld a, [wc330]
	and $80
	jr z, .asm_76f25
	ld a, [$c32f]
	and $3f
	jr z, .asm_76f25
	xor a
	ld [$cda9], a
	ld hl, $cd6c
	ld a, [hl]
	ld c, a
	ld b, $00
	inc [hl]
	cp $08
	jr nz, .asm_76f1a
	xor a
	ld [hl], a
	inc a
	ld [$cda9], a
	ld a, [wGameMode]
	cp GAMEMODE_2P_LINE_CLEAR
	jr nz, .asm_76f1a
	ld a, [wc32e]
	ld [$cdab], a
.asm_76f1a
	ld hl, $cda0
	add hl, bc
	ld a, [$c32f]
	and $3f
	dec a
	ld [hl], a
.asm_76f25
	ld hl, $cd6b
	ld c, [hl]
	inc [hl]
	ld a, c
	cp $09
	jr c, .asm_76f3c
	xor a
	ld [$cd9f], a
	ld a, c
	cp $28
	jr c, .asm_76f69
	xor a
	ld [hl], a
	jr .asm_76f69
.asm_76f3c
	ld a, $01
	ld [$cd9f], a
	ld b, $00
	ld hl, $cd96
	add hl, bc
	ld a, [hl]
	inc a
	ld hl, $c335
	and $3f
	or [hl]
	ld [hl], a
	ld a, [wGameMode]
	cp GAMEMODE_2P_LINE_CLEAR
	jr nz, .asm_76f62
	ld a, c
	cp $08
	jr nz, .asm_76f62
	ld a, [$cdaa]
	ld [wc334], a
.asm_76f62
	ld hl, wc336
	ld a, [hl]
	or $80
	ld [hl], a
.asm_76f69
	ret

Func_76f6a:
	ld a, [wc330]
	and $80
	jr z, .asm_76f96
	ld a, [$c32f]
	and $80
	jr z, .asm_76f96
	xor a
	ld [$cd82], a
	ld hl, $cd6c
	ld a, [hl]
	ld c, a
	ld b, $00
	inc [hl]
	cp $02
	jr nz, .asm_76f8e
	xor a
	ld [hl], a
	inc a
	ld [$cd82], a
.asm_76f8e
	ld hl, $cd7f
	add hl, bc
	ld a, [wc32e]
	ld [hl], a
.asm_76f96
	ld hl, $cd6b
	ld c, [hl]
	inc [hl]
	ld a, c
	cp $03
	jr c, .asm_76fad
	xor a
	ld [$cd7e], a
	ld a, c
	cp $10
	jr c, .asm_76fc8
	xor a
	ld [hl], a
	jr .asm_76fc8
.asm_76fad
	ld a, $01
	ld [$cd7e], a
	ld b, $00
	ld hl, $cd7b
	add hl, bc
	ld a, [hl]
	ld hl, wc334
	ld [hli], a
	ld a, $80
	or [hl]
	ld [hl], a
	ld hl, wc336
	ld a, [hl]
	or $80
	ld [hl], a
.asm_76fc8
	ret

Func_76fc9:
	ld hl, wc8d3
	ld a, [hld]
	cp [hl]
	jr z, .asm_76ff4
	ld e, [hl]
	ld d, $00
	ld hl, wc8be
	add hl, de
	ld a, [hl]
	ld [wc334], a
	ld hl, wc8c8
	add hl, de
	ld a, [hl]
	and $0f
	or $80
	ld hl, wc336
	or [hl]
	ld [hl], a
	ld hl, wc8d2
	ld a, [hl]
	inc a
	cp $0a
	jr nz, .asm_76ff3
	xor a
.asm_76ff3
	ld [hl], a
.asm_76ff4
	ret

Func_76ff5:
	ld a, [wGameMode]
	cp GAMEMODE_2P_VS
	jr z, .asm_77005
	cp GAMEMODE_2P_TIME_ZONE
	jr z, .asm_77034
	cp GAMEMODE_2P_LINE_CLEAR
	jr z, .asm_77063
	ret
.asm_77005
	ld hl, wc8aa
	ld de, $cd83
	ld bc, $9
	call CopyHLtoDE

	ld hl, $cd8c
	ld de, wc8b4
	ld bc, $9
	call CopyHLtoDE

	call Func_f03
	call Func_f6a
	call Func_76cc0
	call Func_77092
	call Func_77148

	xor a
	ld hl, wc32e
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ret

.asm_77034
	ld hl, wScore
	ld de, $cd74
	ld bc, $3
	call CopyHLtoDE

	ld hl, $cd77
	ld de, $c845
	ld bc, $3
	call CopyHLtoDE

	call Func_f03
	call Func_f6a
	call Func_76cc0
	call Func_770de
	call Func_771e5

	xor a
	ld hl, wc32e
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ret

.asm_77063
	ld hl, wc8aa
	ld de, $cd83
	ld bc, $9
	call CopyHLtoDE

	ld hl, $cd8c
	ld de, wc8b4
	ld bc, $9
	call CopyHLtoDE

	call Func_f03
	call Func_f6a
	call Func_76cc0
	call Func_7710e
	call Func_77212

	xor a
	ld hl, wc32e
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ret

Func_77092:
	ld hl, wcd6f
	ld a, [hl]
	and a
	ret nz
	ld a, [wc8d5]
	and a
	jr z, .asm_770b0
	ld hl, $c335
	ld a, $80
	or [hl]
	ld [hl], a
	ld hl, wc336
	ld a, [hl]
	or $80
	ld [hl], a
	xor a
	ld [wc8d5], a
.asm_770b0
	ld a, [$cd9f]
	and a
	jr nz, .asm_770dd
	ld hl, $cd83
	ld a, [hli]
	ld [$cd96], a
	ld a, [hli]
	ld [$cd97], a
	ld a, [hli]
	ld [$cd98], a
	ld a, [hli]
	ld [$cd99], a
	ld a, [hli]
	ld [$cd9a], a
	ld a, [hli]
	ld [$cd9b], a
	ld a, [hli]
	ld [$cd9c], a
	ld a, [hli]
	ld [$cd9d], a
	ld a, [hli]
	ld [$cd9e], a
.asm_770dd
	ret

Func_770de:
	ld hl, wcd6f
	ld a, [hl]
	and a
	ret nz
	ld a, [wc8d6]
	and a
	jr z, .asm_770f8
	ld hl, $c335
	ld a, $40
	or [hl]
	ld [hl], a
	ld hl, wc336
	ld a, [hl]
	or $80
	ld [hl], a
.asm_770f8
	ld a, [$cd7e]
	and a
	jr nz, .asm_7710d
	ld hl, $cd74
	ld a, [hli]
	ld [$cd7b], a
	ld a, [hli]
	ld [$cd7c], a
	ld a, [hli]
	ld [$cd7d], a
.asm_7710d
	ret

Func_7710e:
	ld hl, wcd6f
	ld a, [hl]
	and a
	ret nz
	ld a, [wc8e6]
	ld [$cdaa], a
	ld a, [$cd9f]
	and a
	jr nz, .asm_77147
	ld hl, $cd83
	ld a, [hli]
	ld [$cd96], a
	ld a, [hli]
	ld [$cd97], a
	ld a, [hli]
	ld [$cd98], a
	ld a, [hli]
	ld [$cd99], a
	ld a, [hli]
	ld [$cd9a], a
	ld a, [hli]
	ld [$cd9b], a
	ld a, [hli]
	ld [$cd9c], a
	ld a, [hli]
	ld [$cd9d], a
	ld a, [hli]
	ld [$cd9e], a
.asm_77147
	ret

Func_77148:
	ld a, [wc330]
	and $80
	ret z
	ld a, [wc32e]
	and a
	jr z, .asm_771a6
	cp $ff
	jr z, .asm_77188
	ld hl, $cbf0
	ld [hl], a
	ld b, a
	farcall Func_9f92
	ld hl, $cbee
	ld a, e
	ld [hli], a
	ld [hl], d
	ld hl, $cbec
	ld a, $6c
	ld [hli], a
	ld a, [wc330]
	and $0f
	add a
	add a
	add a
	add $38
	ld [hl], a
	farcall Func_8000
	farcall Func_4244a
	jr .asm_771a6
.asm_77188
	inc a
	jr nz, .asm_771a6
	ld hl, $cbec
	ld a, $38
	ld [hli], a
	ld [hl], $70
	ld hl, $cbee
	ld [hli], a
	ld [hl], a
	ld hl, $cbf0
	ld a, $ff
	ld [hli], a
	ld [hl], $00
	farcall Func_8000
.asm_771a6
	ld a, [$c32f]
	and $80
	jr z, .asm_771b3
	farcall SetEnemyMonHurtAnimation
.asm_771b3
	ld a, [$cda9]
	and a
	jr z, .asm_771e4
	ld hl, $cda0
	ld a, [hli]
	ld [$cd8c], a
	ld a, [hli]
	ld [$cd8d], a
	ld a, [hli]
	ld [$cd8e], a
	ld a, [hli]
	ld [$cd8f], a
	ld a, [hli]
	ld [$cd90], a
	ld a, [hli]
	ld [$cd91], a
	ld a, [hli]
	ld [$cd92], a
	ld a, [hli]
	ld [$cd93], a
	ld a, [hli]
	ld [$cd94], a
	ld a, [hli]
	ld [$cd95], a
.asm_771e4
	ret

Func_771e5:
	ld a, [wc330]
	and $80
	ret z
	ld a, [$c32f]
	and $40
	jr z, .asm_771f8
	farcall Func_4244a
.asm_771f8
	ld a, [$cd82]
	and a
	jr z, .asm_77211
	ld hl, $cd7f
	ld a, [hli]
	ld [$cd77], a
	ld a, [hli]
	ld [$cd78], a
	ld a, [hli]
	ld [$cd79], a
	ld a, [hli]
	ld [$cd7a], a
.asm_77211
	ret

Func_77212:
	ld a, [wc330]
	and $80
	ret z
	ld a, [$cda9]
	and a
	jr z, .asm_77249
	ld hl, $cda0
	ld a, [hli]
	ld [$cd8c], a
	ld a, [hli]
	ld [$cd8d], a
	ld a, [hli]
	ld [$cd8e], a
	ld a, [hli]
	ld [$cd8f], a
	ld a, [hli]
	ld [$cd90], a
	ld a, [hli]
	ld [$cd91], a
	ld a, [hli]
	ld [$cd92], a
	ld a, [hli]
	ld [$cd93], a
	ld a, [hli]
	ld [$cd94], a
	ld a, [hli]
	ld [$cd95], a
.asm_77249
	ret
; 0x7724a

SECTION "Bank 1d@79a1", ROMX[$79a1], BANK[$1d]

Func_779a1:
	ld a, [wcdad]
	ld c, a
	ld b, $00
	ld hl, .PtrTable
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.PtrTable:
	dw Func_779ba
	dw Func_77a10

Func_779b3:
	farcall Func_40519
	ret

Func_779ba:
	ld a, LOW(VBlank_77a00)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_77a00)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_77a00)
	ldh [hVBlankTrampolinePtr + 1], a

	call Func_1426

	ld a, [wc7ce]
	and a
	jr nz, .asm_779d4
	ld a, $08
	ld [wc7cb], a
.asm_779d4
	farcall Func_74cb5

	ld de, w6d300
	ld c, BANK(w6d300)
	ld hl, $5b32
	ld a, $36
	call Func_93d

	; load block palettes
	copy_data wBGPals, Pals_dac50, 3 palettes

	farcall Func_5449d
	
	ld a, $02
	ld [wcdad], a
	jp Func_779b3

VBlank_77a00:
	call Func_19bf
	farcall Func_546b6
	farcall Func_545b3
	ret

Func_77a10:
	ld a, LOW(VBlank_77a31)
	ldh [hVBlankTrampolinePtr + 0], a
	ld a, BANK(VBlank_77a31)
	ldh [hVBlankTrampolineBank], a
	ld a, HIGH(VBlank_77a31)
	ldh [hVBlankTrampolinePtr + 1], a
	farcall Func_40000
	farcall Func_40968
	farcall Func_544ac
	jp Func_779b3

VBlank_77a31:
	farcall Func_45cc4
	ret
; 0x77a38
