SECTION "SRAM0", SRAM

s0a000:: ; a000

SECTION "SRAM1", SRAM

sSaveData:: save_data_struct sSaveData ; a000

sUnkChecksum:: ds 2 ; a684
sUnkData:: ; a686
    ds $ab36 - $a686
s1ab36:: ds 1 ; ab36
    ds $beb7 - $ab37
sUnkDataEnd::

SECTION "SRAM2", SRAM

sBackupSaveData:: save_data_struct sBackupSaveData ; a000

SECTION "SRAM3", SRAM

s3a000:: ds $1000 ; a000
s3b000:: ds $1000 ; b000
