SECTION "Bank 13@4b77", ROMX[$4b77], BANK[$13]
Unknown_4cb77:
	vc_patch fpa_43
IF DEF(_VC)
	and $10
ELSE
	and $08
ENDC
	vc_patch_end
