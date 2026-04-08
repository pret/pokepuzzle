DEF BOARD_WIDTH  EQU 6 ; how many blocks per row
DEF BOARD_HEIGHT EQU 9 ; how many blocks per column
DEF BOARD_AREA   EQU BOARD_WIDTH * BOARD_HEIGHT

DEF BOARD_VIRTUAL_WIDTH  EQU  8
DEF BOARD_VIRTUAL_HEIGHT EQU 10
DEF BOARD_VIRTUAL_AREA   EQU BOARD_VIRTUAL_WIDTH * BOARD_VIRTUAL_HEIGHT

; block structure constants
RSRESET
DEF BLOCKSTRUCT_TYPE RB
DEF BLOCKSTRUCT_UNK1 RB
DEF BLOCKSTRUCT_UNK2 RB
DEF BLOCKSTRUCT_UNK3 RB
DEF BLOCKSTRUCT_UNK4 RB
DEF BLOCKSTRUCT_UNK5 RB
DEF BLOCK_STRUCT_SIZE EQU _RS

; block types
	const_def 1
	const BLOCK_HEART    ; $01
	const BLOCK_SQUARE   ; $02
	const BLOCK_TRIANGLE ; $03
	const BLOCK_STAR     ; $04
	const BLOCK_DIAMOND  ; $05
	const BLOCK_DELTA    ; $06
	const BLOCK_SHOCK    ; $07
	const BLOCK_08       ; $08
	const BLOCK_09       ; $09
	const BLOCK_0A       ; $0a
	const BLOCK_0B       ; $0b
	const BLOCK_0C       ; $0c
	const BLOCK_0D       ; $0d
	const BLOCK_0E       ; $0e
	const BLOCK_0F       ; $0f
	const BLOCK_20       ; $20
	const BLOCK_21       ; $21
	const BLOCK_22       ; $22
	const BLOCK_23       ; $23
	const BLOCK_24       ; $24
	const BLOCK_25       ; $25
	const BLOCK_26       ; $26
	const BLOCK_27       ; $27
	const BLOCK_28       ; $28
	const BLOCK_29       ; $29
	const BLOCK_2A       ; $2a
	const BLOCK_2B       ; $2b
	const BLOCK_2C       ; $2c
	const BLOCK_2D       ; $2d
	const BLOCK_2E       ; $2e
	const BLOCK_2F       ; $2f
	const BLOCK_30       ; $30
	const BLOCK_31       ; $31
	const BLOCK_32       ; $32
	const BLOCK_33       ; $33
	const BLOCK_34       ; $34
	const BLOCK_35       ; $35
	const BLOCK_36       ; $36
	const BLOCK_37       ; $37
	const BLOCK_38       ; $38
	const BLOCK_39       ; $39
	const BLOCK_3A       ; $3a
	const BLOCK_3B       ; $3b
	const BLOCK_3C       ; $3c
	const BLOCK_3D       ; $3d
	const BLOCK_3E       ; $3e
	const BLOCK_3F       ; $3f
	const BLOCK_40       ; $40
	const BLOCK_41       ; $41
	const BLOCK_42       ; $42
	const BLOCK_43       ; $43
	const BLOCK_44       ; $44
	const BLOCK_45       ; $45
	const BLOCK_46       ; $46
	const BLOCK_47       ; $47
	const BLOCK_48       ; $48
	const BLOCK_49       ; $49
	const BLOCK_4A       ; $4a

	const_def
	const GAMEMODE_MARATHON      ; $0
	const GAMEMODE_TIME_ZONE     ; $1
	const GAMEMODE_LINE_CLEAR    ; $2
	const GAMEMODE_PUZZLE        ; $3
	const GAMEMODE_GARBAGE       ; $4
	const GAMEMODE_CHALLENGE     ; $5
	const GAMEMODE_2P_VS         ; $6
	const GAMEMODE_2P_TIME_ZONE  ; $7
DEF NUM_PDP_GAME_MODES EQU const_value
	const GAMEMODE_2P_LINE_CLEAR ; $8
	const GAMEMODE_UNK9          ; $9
	const GAMEMODE_UNKA          ; $a
	const GAMEMODE_UNKB          ; $b
	const GAMEMODE_UNKC          ; $c
	const GAMEMODE_UNKD          ; $d
	const GAMEMODE_UNKE          ; $e
	const GAMEMODE_UNKF          ; $f
DEF NUM_GAME_MODES EQU const_value

	const_def
	const GAMELEVEL_EASY   ; $0
	const GAMELEVEL_NORMAL ; $1
	const GAMELEVEL_HARD   ; $2
	const GAMELEVEL_S_HARD ; $3
	const GAMELEVEL_V_HARD ; $4
	const GAMELEVEL_SLOW   ; $5
DEF NUM_GAME_LEVELS EQU const_value

DEF MIN_SPEEDLEVEL EQU  1
DEF MAX_SPEEDLEVEL EQU 99

	const_def 1
	const STAGE_01 ; $01
	const STAGE_02 ; $02
	const STAGE_03 ; $03
	const STAGE_04 ; $04
	const STAGE_05 ; $05
	const STAGE_06 ; $06
	const STAGE_07 ; $07
	const STAGE_08 ; $08
	const STAGE_09 ; $09
	const STAGE_10 ; $0a
	const STAGE_11 ; $0b
	const STAGE_12 ; $0c
	const STAGE_13 ; $0d
	const STAGE_14 ; $0e
DEF NUM_MAIN_STAGES EQU const_value
	const STAGE_15 ; $0f
	const STAGE_16 ; $10
	const STAGE_17 ; $11
	const STAGE_18 ; $12
	const STAGE_19 ; $13
	const STAGE_20 ; $14
