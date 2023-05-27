C_ EQU 0
C# EQU 1
D_ EQU 2
D# EQU 3
E_ EQU 4
F_ EQU 5
F# EQU 6
G_ EQU 7
G# EQU 8
A_ EQU 9
A# EQU 10
B_ EQU 11

MACRO song_end
	db $00
ENDM

; note length
; \1: length, 1 to 48 in practice, 1 to 108 is valid
MACRO note_length
assert 1 <= \1 && \1 <= 108
	db \1
ENDM

; noise channel only
; \1: noise ID, 0 to 22
MACRO noise
assert 0 <= \1 && \1 <= 22
	db \1 + $6d ; PointerTable_81a3f ID
ENDM

; pitch
; \1: pitch, C_ to B_
; \2: octave, 0 to 5
; TODO: why is this sometimes used on channel 4?
MACRO note_pitch
assert C_ <= \1 && \1 <= B_
assert 0 <= \2 && \2 <= 5
	db (\2 * 12 + \1) + $8a
ENDM

; rest
MACRO rest
	db $d2
ENDM

; continue note
MACRO continue_note
	db $d3
ENDM

; pitch sweep?
MACRO musicd4
	db $d4
	db \1 ; PointerTable_83401 ID
ENDM

; clear pitch sweep?
MACRO musicd5
	db $d5
ENDM

; global tempo, big is fast
; \1: tempo, 5 to 30 in practice
MACRO musicd6
	db $d6
	db \1
ENDM

; pitch offset?
MACRO musicd7
	db $d7
	db \1
ENDM

; fade?
MACRO musicd8
	db $d8
	db \1 ; PointerTable_82230 ID
ENDM

; unused ?
MACRO musicd9
	db $d9
ENDM

MACRO volume
	db $da
	db (\1 << 4) | \2
ENDM

; unused ?
MACRO stereo_panning_right
	db $db
ENDM

; unused ?
MACRO stereo_panning_left
	db $dc
ENDM

MACRO stereo_panning_both
	db $dd
ENDM

; duty cycle
MACRO duty_cycle_12_5
	db $de
ENDM

; duty cycle
MACRO duty_cycle_25
	db $df
ENDM

; duty cycle
MACRO duty_cycle_50
	db $e0
ENDM

; duty cycle
MACRO duty_cycle_75
	db $e1
ENDM

MACRO wave
	db $e2
	db \1 ; DataTable_82f71 ID
ENDM

; frequency offset
MACRO musice3
	db $e3
	db \1
ENDM

; unused ?
MACRO musice4
	db $e4
	db \1
ENDM

; unused ?
MACRO musice5
	db $e5
	db \1
ENDM

MACRO volume_envelope
	db $e6
	IF \2 < 0
		db (\1 << 4) | (%1000 | (\2 * -1))
	ELSE
		db (\1 << 4) | \2
	ENDC
ENDM

MACRO song_jump
	db $e7
	dw \1
ENDM

MACRO song_call
	db $ec
	dw \1
ENDM

MACRO song_ret
	db $ed
ENDM

; unused ?
MACRO musicee
	db $ee
ENDM

; unused ?
MACRO musicef
	db $ef
ENDM

; unused ?
MACRO musicf0
	db $f0
ENDM

; unused ?
MACRO musicf1
	db $f1
ENDM

; unused ?
MACRO musicf2
	db $f2
ENDM

; unused ?
MACRO musicf3
	db $f3
ENDM

; unused ?
MACRO musicf4
	db $f4
ENDM

; unused ?
MACRO musicf5
	db $f5
ENDM

; unused ?
MACRO musicf6
	db $f6
ENDM

; unused ?
MACRO musicf7
	db $f7
ENDM

; unused ?
MACRO musicf8
	db $f8
ENDM

MACRO musicf9
	db $f9
ENDM

; unused ?
MACRO musicfa
	db $fa
ENDM

; unused ?
MACRO musicfb
	db $fb
ENDM

; unused ?
MACRO musicfc
	db $fc
ENDM

; unused ?
MACRO musicfd
	db $fd
ENDM

; unused ?
MACRO musicfe
	db $fe
ENDM

; unused ?
MACRO musicff
	db $ff
	db \1
ENDM
