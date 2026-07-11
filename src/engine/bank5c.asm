SECTION "Bank 5c@4a29", ROMX[$4a29], BANK[$5c]

Text_170a29:
	tx_unk_f8 PtrTable_170b1f
	tx_clear
	tx_unk_f2 .jp, Text_170aa1

.jp
	text1

SECTION "Bank 5c@4aa1", ROMX[$4aa1], BANK[$5c]
Text_170aa1:
	text3 "***Communication Error!\n"
	text3 "***Turn the power OFF\n"
	text3 "***and check to see if\n"
	text3 "***the Game Link (R) cable\n"
	text3 "***is properly inserted."
	tx_end

PtrTable_170b1f:
	dw Data_170b2d
	dw Data_170b69
	dw Data_170ba5
	dw Data_170be1
	dw Data_170c1d
	dw Data_170c59
	dw NULL

Data_170b2d:
	dwb v0Tiles2 tile $01, BANK(v0Tiles2)
	dwb v0Tiles2 tile $02, BANK(v0Tiles2)
	dwb v0Tiles2 tile $03, BANK(v0Tiles2)
	dwb v0Tiles2 tile $04, BANK(v0Tiles2)
	dwb v0Tiles2 tile $05, BANK(v0Tiles2)
	dwb v0Tiles2 tile $06, BANK(v0Tiles2)
	dwb v0Tiles2 tile $07, BANK(v0Tiles2)
	dwb v0Tiles2 tile $08, BANK(v0Tiles2)
	dwb v0Tiles2 tile $09, BANK(v0Tiles2)
	dwb v0Tiles2 tile $0a, BANK(v0Tiles2)
	dwb v0Tiles2 tile $0b, BANK(v0Tiles2)
	dwb v0Tiles2 tile $0c, BANK(v0Tiles2)
	dwb v0Tiles2 tile $0d, BANK(v0Tiles2)
	dwb v0Tiles2 tile $0e, BANK(v0Tiles2)
	dwb v0Tiles2 tile $0f, BANK(v0Tiles2)
	dwb v0Tiles2 tile $10, BANK(v0Tiles2)
	dwb v0Tiles2 tile $11, BANK(v0Tiles2)
	dwb v0Tiles2 tile $12, BANK(v0Tiles2)
	dwb v0Tiles2 tile $13, BANK(v0Tiles2)
	dwb v0Tiles2 tile $14, BANK(v0Tiles2)

Data_170b69:
	dwb v0Tiles2 tile $15, BANK(v0Tiles2)
	dwb v0Tiles2 tile $16, BANK(v0Tiles2)
	dwb v0Tiles2 tile $17, BANK(v0Tiles2)
	dwb v0Tiles2 tile $18, BANK(v0Tiles2)
	dwb v0Tiles2 tile $19, BANK(v0Tiles2)
	dwb v0Tiles2 tile $1a, BANK(v0Tiles2)
	dwb v0Tiles2 tile $1b, BANK(v0Tiles2)
	dwb v0Tiles2 tile $1c, BANK(v0Tiles2)
	dwb v0Tiles2 tile $1d, BANK(v0Tiles2)
	dwb v0Tiles2 tile $1e, BANK(v0Tiles2)
	dwb v0Tiles2 tile $1f, BANK(v0Tiles2)
	dwb v0Tiles2 tile $20, BANK(v0Tiles2)
	dwb v0Tiles2 tile $21, BANK(v0Tiles2)
	dwb v0Tiles2 tile $22, BANK(v0Tiles2)
	dwb v0Tiles2 tile $23, BANK(v0Tiles2)
	dwb v0Tiles2 tile $24, BANK(v0Tiles2)
	dwb v0Tiles2 tile $25, BANK(v0Tiles2)
	dwb v0Tiles2 tile $26, BANK(v0Tiles2)
	dwb v0Tiles2 tile $27, BANK(v0Tiles2)
	dwb v0Tiles2 tile $28, BANK(v0Tiles2)

Data_170ba5:
	dwb v0Tiles2 tile $29, BANK(v0Tiles2)
	dwb v0Tiles2 tile $2a, BANK(v0Tiles2)
	dwb v0Tiles2 tile $2b, BANK(v0Tiles2)
	dwb v0Tiles2 tile $2c, BANK(v0Tiles2)
	dwb v0Tiles2 tile $2d, BANK(v0Tiles2)
	dwb v0Tiles2 tile $2e, BANK(v0Tiles2)
	dwb v0Tiles2 tile $2f, BANK(v0Tiles2)
	dwb v0Tiles2 tile $30, BANK(v0Tiles2)
	dwb v0Tiles2 tile $31, BANK(v0Tiles2)
	dwb v0Tiles2 tile $32, BANK(v0Tiles2)
	dwb v0Tiles2 tile $33, BANK(v0Tiles2)
	dwb v0Tiles2 tile $34, BANK(v0Tiles2)
	dwb v0Tiles2 tile $35, BANK(v0Tiles2)
	dwb v0Tiles2 tile $36, BANK(v0Tiles2)
	dwb v0Tiles2 tile $37, BANK(v0Tiles2)
	dwb v0Tiles2 tile $38, BANK(v0Tiles2)
	dwb v0Tiles2 tile $39, BANK(v0Tiles2)
	dwb v0Tiles2 tile $3a, BANK(v0Tiles2)
	dwb v0Tiles2 tile $3b, BANK(v0Tiles2)
	dwb v0Tiles2 tile $3c, BANK(v0Tiles2)

Data_170be1:
	dwb v0Tiles2 tile $3d, BANK(v0Tiles2)
	dwb v0Tiles2 tile $3e, BANK(v0Tiles2)
	dwb v0Tiles2 tile $3f, BANK(v0Tiles2)
	dwb v0Tiles2 tile $40, BANK(v0Tiles2)
	dwb v0Tiles2 tile $41, BANK(v0Tiles2)
	dwb v0Tiles2 tile $42, BANK(v0Tiles2)
	dwb v0Tiles2 tile $43, BANK(v0Tiles2)
	dwb v0Tiles2 tile $44, BANK(v0Tiles2)
	dwb v0Tiles2 tile $45, BANK(v0Tiles2)
	dwb v0Tiles2 tile $46, BANK(v0Tiles2)
	dwb v0Tiles2 tile $47, BANK(v0Tiles2)
	dwb v0Tiles2 tile $48, BANK(v0Tiles2)
	dwb v0Tiles2 tile $49, BANK(v0Tiles2)
	dwb v0Tiles2 tile $4a, BANK(v0Tiles2)
	dwb v0Tiles2 tile $4b, BANK(v0Tiles2)
	dwb v0Tiles2 tile $4c, BANK(v0Tiles2)
	dwb v0Tiles2 tile $4d, BANK(v0Tiles2)
	dwb v0Tiles2 tile $4e, BANK(v0Tiles2)
	dwb v0Tiles2 tile $4f, BANK(v0Tiles2)
	dwb v0Tiles2 tile $50, BANK(v0Tiles2)

Data_170c1d:
	dwb v0Tiles2 tile $51, BANK(v0Tiles2)
	dwb v0Tiles2 tile $52, BANK(v0Tiles2)
	dwb v0Tiles2 tile $53, BANK(v0Tiles2)
	dwb v0Tiles2 tile $54, BANK(v0Tiles2)
	dwb v0Tiles2 tile $55, BANK(v0Tiles2)
	dwb v0Tiles2 tile $56, BANK(v0Tiles2)
	dwb v0Tiles2 tile $57, BANK(v0Tiles2)
	dwb v0Tiles2 tile $58, BANK(v0Tiles2)
	dwb v0Tiles2 tile $59, BANK(v0Tiles2)
	dwb v0Tiles2 tile $5a, BANK(v0Tiles2)
	dwb v0Tiles2 tile $5b, BANK(v0Tiles2)
	dwb v0Tiles2 tile $5c, BANK(v0Tiles2)
	dwb v0Tiles2 tile $5d, BANK(v0Tiles2)
	dwb v0Tiles2 tile $5e, BANK(v0Tiles2)
	dwb v0Tiles2 tile $5f, BANK(v0Tiles2)
	dwb v0Tiles2 tile $60, BANK(v0Tiles2)
	dwb v0Tiles2 tile $61, BANK(v0Tiles2)
	dwb v0Tiles2 tile $62, BANK(v0Tiles2)
	dwb v0Tiles2 tile $63, BANK(v0Tiles2)
	dwb v0Tiles2 tile $64, BANK(v0Tiles2)

Data_170c59:
	dwb v0Tiles2 tile $65, BANK(v0Tiles2)
	dwb v0Tiles2 tile $66, BANK(v0Tiles2)
	dwb v0Tiles2 tile $67, BANK(v0Tiles2)
	dwb v0Tiles2 tile $68, BANK(v0Tiles2)
	dwb v0Tiles2 tile $69, BANK(v0Tiles2)
	dwb v0Tiles2 tile $6a, BANK(v0Tiles2)
	dwb v0Tiles2 tile $6b, BANK(v0Tiles2)
	dwb v0Tiles2 tile $6c, BANK(v0Tiles2)
	dwb v0Tiles2 tile $6d, BANK(v0Tiles2)
	dwb v0Tiles2 tile $6e, BANK(v0Tiles2)
	dwb v0Tiles2 tile $6f, BANK(v0Tiles2)
	dwb v0Tiles2 tile $70, BANK(v0Tiles2)
	dwb v0Tiles2 tile $71, BANK(v0Tiles2)
	dwb v0Tiles2 tile $72, BANK(v0Tiles2)
	dwb v0Tiles2 tile $73, BANK(v0Tiles2)
	dwb v0Tiles2 tile $74, BANK(v0Tiles2)
	dwb v0Tiles2 tile $75, BANK(v0Tiles2)
	dwb v0Tiles2 tile $76, BANK(v0Tiles2)
	dwb v0Tiles2 tile $77, BANK(v0Tiles2)
	dwb v0Tiles2 tile $78, BANK(v0Tiles2)
	dab NULL
