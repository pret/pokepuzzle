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

UNION
s3a000:: ds $1000 ; a000
NEXTU
sBlockConfigurationToCopy::  ds $100 ; a000
sInitialBlockConfiguration:: ds 8 * 8 + $15 ; a100
ENDU
s3b000:: ds $1000 ; b000
