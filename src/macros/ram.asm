MACRO? block_struct
\1Type:: ds 1
\1Unk1:: ds 1
\1Unk2:: ds 1
\1Unk3:: ds 1
\1Unk4:: ds 1
\1Unk5:: ds 1
ENDM

; save data structs
MACRO? save_data_struct
\1Checksum:: ds   2 ; $000
\1Content::
\1Magic::    ds  12 ; $002
\1Unk00E::   ds $24 ; $00e
\1Unk032::   ds   3 ; $032
\1Unk035::   ds   3 ; $035
\1Unk038::   ds   3 ; $038
\1Unk03B::   ds   4 ; $03b
\1Unk03F::   ds   2 ; $03f
\1Unk041::   ds   1 ; $041
\1Unk042::   ds $24 ; $042
\1Unk066::   ds   3 ; $066
\1Unk069::   ds   3 ; $069
\1Unk06C::   ds   3 ; $06c
\1Unk06F::   ds   4 ; $06f
\1Unk073::   ds   2 ; $073
\1Unk075::   ds   1 ; $075
\1Unk076::   ds $66 ; $076
	ds $e2 - $dc
\1Unk0E2::   ds   3 ; $0e2
\1Unk0E5::   ds   3 ; $0e5
\1Unk0E8::   ds   3 ; $0e8
\1Unk0EB::   ds $14 ; $0eb
	ds $103 - $ff
\1Unk103::   ds   3 ; $103
\1Unk106::   ds   2 ; $106
\1Unk108::   ds $15 ; $108
\1Unk11D::   ds $5a ; $11d
\1Unk177::   ds   2 ; $177
\1Unk179::   ds   2 ; $179
\1Unk17B::   ds   2 ; $17b
\1Unk17D::   ds $27 ; $17d
\1Unk1A4::   ds  $8 ; $1a4
\1Unk1AC::   ds $1a4 ; $1ac
\1Unk350::   ds $8c ; $350
\1Unk3DC::   ds  $3 ; $3dc
\1Unk3DF::   ds $24 ; $3df
\1Unk403::   ds  $3 ; $403
\1Unk406::   ds $24 ; $406
\1Unk42A::   ds $16 ; $42a
\1Unk440::   ds  $f ; $440
\1Unk44F::   ds  $d ; $44f
\1Unk45C::   ds $b6 ; $45c
\1Unk512::   ds $1a ; $512
\1Unk52C::   ds   1 ; $52c
	ds $632 - $52d
\1Unk632::   ds  14 ; $632
	ds $641 - $640
\1Unk641::   ds   1 ; $641
\1Unk642::   ds   2 ; $642
\1Unk644::   ds   1 ; $644
\1Unk645::   ds   1 ; $645
	ds $674 - $646
\1Unk674::   ds   8 ; $674
	ds $684 - $67c
\1End::
ENDM
