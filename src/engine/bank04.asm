InitTransferVirtualOAM::
	ld c, LOW(STARTOF("DMA Transfer"))
	ld b, TransferVirtualEnd - TransferVirtualOAM
	ld hl, TransferVirtualOAM
.loop
	ld a, [hli]
	ld [$ff00+c], a
	inc c
	dec b
	jr nz, .loop
	ret

TransferVirtualOAM:
LOAD "DMA Transfer", HRAM
hTransferVirtualOAM:: ; ff80
	ld a, HIGH(wVirtualOAM)
	ldh [rDMA], a ; start DMA transfer (starts right after instruction)
	ld a, 160 / (1 + 3) ; delay for a total of 160 cycles
.loop
	dec a        ; 1 cycle
	jr nz, .loop ; 3 cycles
	ret
ENDL
TransferVirtualEnd:
; 0x10018
