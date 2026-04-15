DEF hlbgcoord EQUS "bgcoord hl,"
DEF bcbgcoord EQUS "bgcoord bc,"
DEF debgcoord EQUS "bgcoord de,"

MACRO? bgcoord
; register, x, y[, origin]
	IF _NARG < 4
		ld \1, (\3) * TILEMAP_WIDTH + (\2) + v0BGMap0
	ELSE
		ld \1, (\3) * TILEMAP_WIDTH + (\2) + \4
	ENDC
ENDM

MACRO? ldbgcoord
; x, y[, origin]
	IF _NARG < 3
		ld [(\2) * TILEMAP_WIDTH + (\1) + v0BGMap0], a
	ELSE
		ld [(\2) * TILEMAP_WIDTH + (\1) + \3], a
	ENDC
ENDM

MACRO? dbcoord
	IF _NARG < 3
		dw (\2) * TILEMAP_WIDTH + (\1) + v0BGMap0
	ELSE
		dw (\2) * TILEMAP_WIDTH + (\1) + \3
	ENDC
ENDM

MACRO ldcoord_a
; x, y[, origin]
	IF _NARG < 3
		ld [(\2) * TILEMAP_WIDTH + (\1) + v0BGMap0], a
	ELSE
		ld [(\2) * TILEMAP_WIDTH + (\1) + \3], a
	ENDC
ENDM

MACRO lda_coord
; x, y[, origin]
	IF _NARG < 3
		ld a, [(\2) * TILEMAP_WIDTH + (\1) + v0BGMap0]
	ELSE
		ld a, [(\2) * TILEMAP_WIDTH + (\1) + \3]
	ENDC
ENDM
