; Panel de Pon menu constants
	const_def
	const PDPMENU_GAME_MODE   ; $0
	const PDPMENU_GAME_LEVEL  ; $1
	const PDPMENU_SPEED_LEVEL ; $2
	const PDPMENU_START       ; $3
	const PDPMENU_SEMI_SIGN   ; $4
	const PDPMENU_SCORE_LIMIT ; $5
	const PDPMENU_CRY         ; $6
	const PDPMENU_SPEED_LIMIT ; $7
	const PDPMENU_STOP        ; $8
	const PDPMENU_FIREWORKS   ; $9
	const PDPMENU_MUSIC       ; $a
	const PDPMENU_SOUNDS      ; $b
	const PDPMENU_DANCING     ; $c
	const PDPMENU_RESET       ; $d
DEF NUM_PANELDEPON_MENU_ITEMS EQU const_value

	const_def
	const GAMELEVELOPT_EASY   ; $0
	const GAMELEVELOPT_NORMAL ; $1
	const GAMELEVELOPT_HARD   ; $2
	const GAMELEVELOPT_SLOW3  ; $3
	const GAMELEVELOPT_SLOW2  ; $4
	const GAMELEVELOPT_SLOW1  ; $5
