SECTION "Bank 6@6a29", ROMX[$6a29], BANK[$6]
Unknown_1aa29:
	vc_patch NCLBTS_914_3
IF DEF(_VC)
	ds 8, $00
ELSE
	db $60, $61, $62, $63, $64, $65, $66, $67
ENDC
	vc_patch_end

SECTION "Bank 6@6a37", ROMX[$6a37], BANK[$6]
Unknown_1aa37:
	vc_patch NCLBTS_914_4
IF DEF(_VC)
	ds 18, $00
ELSE
	db $6a, $6b, $6c, $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b
ENDC
	vc_patch_end
