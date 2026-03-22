SECTION "SRAM0", SRAM

s0a000:: ; a000

SECTION "SRAM1", SRAM

sSaveData:: save_data_struct sSaveData ; a000

SECTION "SRAM2", SRAM

sBackupSaveData:: save_data_struct sBackupSaveData ; a000

SECTION "SRAM3", SRAM

s3a000:: ds $1000 ; a000
s3b000:: ds $1000 ; b000
