; Macros to verify assumptions about the data or code

MACRO _redef_current_label
	IF DEF(\1)
		PURGE \1
	ENDC
	IF _NARG == 3 + (\3)
		DEF \1 EQUS "\<_NARG>"
	ELIF DEF(..)
		IF .. - @ == 0
			DEF \1 EQUS "{..}"
		ENDC
	ELIF DEF(.)
		IF . - @ == 0
			DEF \1 EQUS "{.}"
		ENDC
	ENDC
	IF !DEF(\1)
		DEF \1 EQUS \2
		{\1}:
	ENDC
ENDM

MACRO table_width
	DEF CURRENT_TABLE_WIDTH = \1
	_redef_current_label CURRENT_TABLE_START, "._table_width\@", 2, \#
ENDM

MACRO assert_table_length
	DEF x = \1
	ASSERT x * CURRENT_TABLE_WIDTH == @ - {CURRENT_TABLE_START}, \
		"{CURRENT_TABLE_START}: expected {d:x} entries, each {d:CURRENT_TABLE_WIDTH} bytes"
ENDM
