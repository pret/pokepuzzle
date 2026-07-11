SECTION "SRAM0", SRAM

s0a000:: ; a000

SECTION "SRAM1", SRAM

sSaveData:: save_data_struct sSaveData ; a000

sUnkChecksum:: ds 2 ; a684
sUnkData:: ; a686
	ds $ab36 - $a686
s1ab36:: ds 1 ; ab36
s1ab37:: ds 1 ; ab37
s1ab38:: ds 1 ; ab38
s1ab39:: ds 1 ; ab39
s1ab3a:: ds 1 ; ab3a
s1ab3b:: ds 1 ; ab3b
s1ab3c:: ds 1 ; ab3c
s1ab3d:: ds 1 ; ab3d
s1ab3e:: ds 8 ; ab3e
	ds 1
s1ab47:: ds 1 ; ab47
s1ab48:: ds 1 ; ab48
s1ab49:: ds 1 ; ab49
s1ab4a:: ds 1 ; ab4a
s1ab4b:: ds 1 ; ab4b
s1ab4c:: ds 2 ; ab4c
s1ab4e:: ds 1 ; ab4e
s1ab4f:: ds 2 ; ab4f
s1ab51:: ds 1 ; ab51
s1ab52:: ds 1 ; ab52
s1ab53:: ds 1 ; ab53
s1ab54:: ds $24 ; ab54
s1ab78:: ds $56c ; ab78
s1b0e4:: ds $d80 ; b0e4
	ds $beb7 - $be64
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
