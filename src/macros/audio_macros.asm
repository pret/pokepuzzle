song_end: MACRO
    db $00
ENDM

music01: MACRO
    db \1
ENDM

music6d: MACRO
    db \1
ENDM

music8a: MACRO
    db \1
ENDM

musicd2: MACRO
    db $d2
ENDM

musicd3: MACRO
    db $d3
ENDM

musicd4: MACRO
    db $d4
    db \1 ; PointerTable_83401 ID
ENDM

musicd5: MACRO
    db $d5
ENDM

musicd6: MACRO
    db $d6
    db \1
ENDM

musicd7: MACRO
    db $d7
    db \1
ENDM

musicd8: MACRO
    db $d8
    db \1 ; PointerTable_82230 ID
ENDM

; unused ?
musicd9: MACRO
    db $d9
ENDM

volume: MACRO
    db $da
    db \1
ENDM

; unused ?
stereo_panning_right: MACRO
    db $db
ENDM

; unused ?
stereo_panning_left: MACRO
    db $dc
ENDM

stereo_panning_both: MACRO
    db $dd
ENDM

; duty cycle
duty_cycle_12_5: MACRO
    db $de
ENDM

; duty cycle
duty_cycle_25: MACRO
    db $df
ENDM

; duty cycle
duty_cycle_50: MACRO
    db $e0
ENDM

; duty cycle
duty_cycle_75: MACRO
    db $e1
ENDM

wave: MACRO
    db $e2
    db \1 ; DataTable_82f71 ID
ENDM

musice3: MACRO
    db $e3
    db \1
ENDM

; unused ?
musice4: MACRO
    db $e4
    db \1
ENDM

; unused ?
musice5: MACRO
    db $e5
    db \1
ENDM

volume_envelope: MACRO
    db $e6
    db \1
ENDM

song_jump: MACRO
    db $e7
    dw \1
ENDM

song_call: MACRO
    db $ec
    dw \1
ENDM

song_ret: MACRO
    db $ed
ENDM

; unused ?
musicee: MACRO
    db $ee
ENDM

; unused ?
musicef: MACRO
    db $ef
ENDM

; unused ?
musicf0: MACRO
    db $f0
ENDM

; unused ?
musicf1: MACRO
    db $f1
ENDM

; unused ?
musicf2: MACRO
    db $f2
ENDM

; unused ?
musicf3: MACRO
    db $f3
ENDM

; unused ?
musicf4: MACRO
    db $f4
ENDM

; unused ?
musicf5: MACRO
    db $f5
ENDM

; unused ?
musicf6: MACRO
    db $f6
ENDM

; unused ?
musicf7: MACRO
    db $f7
ENDM

; unused ?
musicf8: MACRO
    db $f8
ENDM

musicf9: MACRO
    db $f9
ENDM

; unused ?
musicfa: MACRO
    db $fa
ENDM

; unused ?
musicfb: MACRO
    db $fb
ENDM

; unused ?
musicfc: MACRO
    db $fc
ENDM

; unused ?
musicfd: MACRO
    db $fd
ENDM

; unused ?
musicfe: MACRO
    db $fe
ENDM

; unused ?
musicff: MACRO
    db $ff
    db \1
ENDM
