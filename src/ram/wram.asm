SECTION "Virtual OAM", WRAM0

wVirtualOAM:: ; c000
	ds OAM_SIZE
wVirtualOAMEnd::

SECTION "Stack", WRAM0

wStackBottom:: ; c0a0
	ds $60
wStack:: ; c100

SECTION "WRAM0", WRAM0

wc100::  ; c300
	ds $200

wc300:: ds $10 ; c300
wc310:: ds $10 ; c310

wc320:: ; c320
	ds $22

; invoked on H-Blank interrupt
wHBlankHandler:: ds 1 ; c342

	ds $c492 - $c343

; invoked on V-Blank interrupt, holds:
; 	jp <func>
; where <func> is dynamically loaded
; default is VBlankHandler
wVBlankHandler:: ds 3 ; c492

; these palettes are filled and then flushed
wPalettes::
wBGPals:: ds 8 palettes ; c495
wOBPals:: ds 8 palettes ; c4d5

SECTION "Audio RAM", WRAM0

wAudioStart::

wc5f0:: ds 1 ; c5f0
wc5f1:: ds 1 ; c5f1

; unused ?
	ds $4

wc5f6:: ds 1 ; c5f6
wc5f7:: ds 1 ; c5f7
wc5f8:: ds 1 ; c5f8
wc5f9:: ds 1 ; c5f9
wc5fa:: ds 1 ; c5fa
wc5fb:: ds 1 ; c5fb
wSongBank:: ds 1 ; c5fc
wc5fd:: ds 1 ; c5fd
wc5fe:: ds 1 ; c5fe
wc5ff:: ds 1 ; c5ff
wc600:: ds 1 ; c600
wc601:: ds 1 ; c601

; channel 1
wc602:: ds 1 ; c602
wc603:: ds 1 ; c603
wc604:: ds 1 ; c604
wc605:: ds 1 ; c605
wc606:: ds 1 ; c606
wc607:: ds 1 ; c607
wc608:: ds 1 ; c608
wChannel1Pointer:: ds 2 ; c609
wc60b:: ds 1 ; c60b
wc60c:: ds 1 ; c60c
wc60d:: ds 1 ; c60d
wc60e:: ds 1 ; c60e
wc60f:: ds 1 ; c60f
wc610:: ds 1 ; c610
wc611:: ds 2 ; c611

; unused ?
	ds $4

wc617:: ds 1 ; c617
wc618:: ds 1 ; c618
wc619:: ds 1 ; c619
wc61a:: ds 1 ; c61a
wc61b:: ds 1 ; c61b
wc61c:: ds 2 ; c61c
wc61e:: ds 2 ; c61e
wc620:: ds 2 ; c620
wc622:: ds 1 ; c622
wc623:: ds 1 ; c623
wc624:: ds 2 ; c624
wc626:: ds 2 ; c626
wc628:: ds 1 ; c628
wc629:: ds 2 ; c629
wc62b:: ds 1 ; c62b
wc62c:: ds 3 ; c62c
wc62f:: ds 2 ; c62f
wc631:: ds 1 ; c631

; channel 2
wc632:: ds 1 ; c632
wc633:: ds 1 ; c633
	ds 1 ; c634
wc635:: ds 1 ; c635
wc636:: ds 1 ; c636
wc637:: ds 1 ; c637
wc638:: ds 1 ; c638
wChannel2Pointer:: ds 2 ; c639
wc63b:: ds 1 ; c63b
wc63c:: ds 1 ; c63c
wc63d:: ds 1 ; c63d
wc63e:: ds 1 ; c63e
wc63f:: ds 1 ; c63f
wc640:: ds 1 ; c640
wc641:: ds 2 ; c641

; unused ?
	ds $4

wc647:: ds 1 ; c647
wc648:: ds 1 ; c648
wc649:: ds 1 ; c649
wc64a:: ds 1 ; c64a
wc64b:: ds 1 ; c64b
wc64c:: ds 2 ; c64c
wc64e:: ds 2 ; c64e
wc650:: ds 2 ; c650
wc652:: ds 1 ; c652
wc653:: ds 1 ; c653
wc654:: ds 2 ; c654
wc656:: ds 2 ; c656
wc658:: ds 1 ; c658
wc659:: ds 2 ; c659
wc65b:: ds 1 ; c65b
wc65c:: ds 3 ; c65c
wc65f:: ds 2 ; c65f
wc661:: ds 1 ; c661

; channel 3
wc662:: ds 1 ; c662
wc663:: ds 1 ; c663
wc664:: ds 1 ; c664
wc665:: ds 1 ; c665
wc666:: ds 1 ; c666
wc667:: ds 1 ; c667
wc668:: ds 1 ; c668
wChannel3Pointer:: ds 2 ; c669
wc66b:: ds 1 ; c66b
wc66c:: ds 1 ; c66c
wc66d:: ds 1 ; c66d
wc66e:: ds 1 ; c66e
wc66f:: ds 1 ; c66f
wc670:: ds 1 ; c670
wc671:: ds 2 ; c671

; unused ?
	ds $4

wc677:: ds 1 ; c677
wc678:: ds 1 ; c678
wc679:: ds 1 ; c679
wc67a:: ds 1 ; c67a
wc67b:: ds 1 ; c67b
wc67c:: ds 2 ; c67c
wc67e:: ds 2 ; c67e
wc680:: ds 2 ; c680
wc682:: ds 1 ; c682
wc683:: ds 1 ; c683
wc684:: ds 2 ; c684
wc686:: ds 2 ; c686
wc688:: ds 1 ; c688
wc689:: ds 2 ; c689
wc68b:: ds 1 ; c68b
wc68c:: ds 3 ; c68c
wc68f:: ds 2 ; c68f
wc691:: ds 1 ; c691

; channel 4
wc692:: ds 1 ; c692
wc693:: ds 1 ; c693
	ds 1 ; c694
wc695:: ds 1 ; c695
wc696:: ds 1 ; c696
wc697:: ds 1 ; c697
wc698:: ds 1 ; c698
wChannel4Pointer:: ds 2 ; c699
wc69b:: ds 1 ; c69b
wc69c:: ds 1 ; c69c
wc69d:: ds 1 ; c69d
wc69e:: ds 1 ; c69e
wc69f:: ds 1 ; c69f
wc6a0:: ds 1 ; c6a0
wc6a1:: ds 2 ; c6a1

; unused ?
	ds $4

wc6a7:: ds 1 ; c6a7
wc6a8:: ds 1 ; c6a8
wc6a9:: ds 1 ; c6a9
wc6aa:: ds 1 ; c6aa
wc6ab:: ds 1 ; c6ab
wc6ac:: ds 2 ; c6ac
wc6ae:: ds 2 ; c6ae
wc6b0:: ds 2 ; c6b0
wc6b2:: ds 1 ; c6b2
wc6b3:: ds 1 ; c6b3
wc6b4:: ds 2 ; c6b4
wc6b6:: ds 2 ; c6b6
wc6b8:: ds 1 ; c6b8
wc6b9:: ds 2 ; c6b9
wc6bb:: ds 1 ; c6bb
wc6bc:: ds 3 ; c6bc
wc6bf:: ds 2 ; c6bf
wc6c1:: ds 1 ; c6c1

; channel trampolines
wc6c2:: ds 1 ; c6c2
wc6c3:: ds 2 ; c6c3
wc6c5:: ds 1 ; c6c5
wc6c6:: ds 2 ; c6c6
wc6c8:: ds 1 ; c6c8
wc6c9:: ds 2 ; c6c9
wc6cb:: ds 1 ; c6cb
wc6cc:: ds 2 ; c6cc

wc6ce:: ds 1 ; c6ce

wAudioEnd:: ; c6cf

SECTION "WRAM0@c7b4", WRAM0

wc7b4:: ds 1 ; c7b4

	ds $c7bd - $c7b5

wc7bd:: ds 1 ; c7bd

	ds $c7c6 - $c7be

wc7c6:: ds 1 ; c7c6

	ds $c7c9 - $c7c7

wc7c9:: ds 1 ; c7c9

	ds $c7cb - $c7ca

wc7cb:: ds 1 ; c7cb

	ds $c7cd - $c7cc

wc7cd:: ds 1 ; c7cd
wc7ce:: ds 1 ; c7ce
wc7cf:: ds 1 ; c7cf

	ds $c7d3 - $c7d0

wc7d3:: ds 1 ; c7d3

	ds $c7e4 - $c7d4

wc7e4:: ds 1 ; c7e4

	ds $c7e8 - $c7e5

wc7e8:: ds 1 ; c7e8

	ds $c7f9 - $c7e9

wc7f9:: ds 1 ; c7f9

	ds $c7fd - $c7fa

wc7fd:: ds 1 ; c7fd

	ds $c80f - $c7fe

wc80f:: ds 1 ; c80f
	ds $c813 - $c810
wc813:: ds 1 ; c813
	ds $c833 - $c814

wc833:: ds 1 ; c833
	ds $c838 - $c834
wc838:: ds 1 ; c838
	ds $c83b - $c839
wc83b:: ds 1 ; c83b
wc83c:: ds 3 ; c83c
	ds $c842 - $c83f
wc842:: ds 3 ; c842
	ds $c864 - $c845
wc864:: ds 1 ; c864
wc865:: ds 1 ; c865
wc866:: ds 1 ; c866
wc867:: ds 1 ; c867
	ds $c869 - $c868
wc869:: ds 1 ; c869
wc86a:: ds 1 ; c86a
wc86b:: ds 1 ; c86b
wc86c:: ds 1 ; c86c
wc86d:: ds 1 ; c86d
	ds $c877 - $c86e
wc877:: ds 2 ; c877
	ds $c87b - $c879
wc87b:: ds 1 ; c87b
wc87c:: ds 2 ; c87c
wc87e:: ds 1 ; c87e
wc87f:: ds 1 ; c87f
wc880:: ds 1 ; c880
wc881:: ds 1 ; c881
wc882:: ds 1 ; c882
wc883:: ds 1 ; c883
	ds $c886 - $c884
wc886:: ds 1 ; c886
wc887:: ds 1 ; c887
	ds $c889 - $c888
wc889:: ds 1 ; c889
wc88a:: ds 1 ; c88a
wc88b:: ds 1 ; c88b
	ds $c892 - $c88c
wc892:: ds 1 ; c892
wc893:: ds 1 ; c893
wc894:: ds 1 ; c894
	ds $c897 - $c895
wc897:: ds 1 ; c897
wc898:: ds 1 ; c898
	ds $c89d - $c899
wc89d:: ds 1 ; c89d
	ds $c8a2 - $c89e
wc8a2:: ds 1 ; c8a2
wc8a3:: ds 1 ; c8a3
wc8a4:: ds 1 ; c8a4
	ds $c8a6 - $c8a5
wc8a6:: ds 1 ; c8a6
	ds $c8a8 - $c8a7
wc8a8:: ds 1 ; c8a8
wc8a9:: ds 1 ; c8a9
	ds $c8be - $c8aa

wc8be:: ds 1 ; c8be
	ds $c8c8 - $c8bf
wc8c8:: ds 1 ; c8c8
	ds $c8d3 - $c8c9

wc8d3:: ds 1 ; c8d3
wc8d4:: ds 1 ; c8d4
wc8d5:: ds 1 ; c8d5
wc8d6:: ds 1 ; c8d6
	ds $c8da - $c8d7
wc8da:: ds 1 ; c8da
	ds $c8dc - $c8db
wc8dc:: ds 1 ; c8dc
wc8dd:: ds 1 ; c8dd
wc8de:: ds 1 ; c8de
	ds $c8e2 - $c8df
wc8e2:: ds 2 ; c8e2
	ds $c8e6 - $c8e4
wc8e6:: ds 1 ; c8e6
	ds $c8ee - $c8e7
wc8ee:: ds 2 ; c8ee
	ds $c8fa - $c8f0
wc8fa:: ds 1 ; c8fa
wc8fb:: ds 1 ; c8fb
wc8fc:: ds 1 ; c8fc
wc8fd:: ds 1 ; c8fd
wc8fe:: ds 1 ; c8fe
wc8ff:: ds 1 ; c8ff
wc900:: ds 1 ; c900
wc901:: ds 1 ; c901
wc902:: ds 1 ; c902
wc903:: ds 1 ; c903
wc904:: ds 1 ; c904
wc905:: ds 1 ; c905
wc906:: ds 1 ; c906
wc907:: ds 1 ; c907

	ds $c919 - $c908

wc919:: ds 4 ; c919
wc91d:: ds 4 ; c91d
wc921:: ds 6 ; c921
wc927:: ds 6 ; c927
wc92d:: ds 16 ; c92d
wc93d:: ds 16 ; c93d

	ds $c9b2 - $c94d

wc9b2:: ds 1 ; c9b2
wc9b3:: ds 1 ; c9b3
wc9b4:: ds 1 ; c9b4
wc9b5:: ds 1 ; c9b5
	ds $c9e6 - $c9b6
wc9e6:: ds 8 ; c9e6
	ds $c9fe - $c9ee
wc9fe:: ds 8 ; c9fe
wca06:: ds 8 ; ca06

	ds $ca18 - $ca0e

wca18:: ds 1 ; ca18
wca19:: ds 1 ; ca19
	ds $ca1d - $ca1a
wca1d:: ds 1 ; ca1d
	ds $ca22 - $ca1e
wca22:: ds 1 ; ca22
wca23:: ds 2 ; ca23
wca25:: ds 2 ; ca25
wca27:: ds 2 ; ca27
wca29:: ds 1 ; ca29
	ds $ca8f - $ca2a
wca8f:: ds 1 ; ca8f
	ds $cac9 - $ca90
wcac9:: ds 1 ; cac9
wcaca:: ds 1 ; caca
	ds $cad0 - $cacb
wcad0:: ds 2 ; cad0
wcad2:: ds 1 ; cad2
	ds $cad4 - $cad3
wcad4:: ds 1 ; cad4
	ds $cad9 - $cad5
wcad9:: ds 1 ; cad9
	ds $cade - $cada
wcade:: ds 1 ; cade
wcadf:: ds 1 ; cadf
wcae0:: ds 1 ; cae0
wcae1:: ds 1 ; cae1
wcae2:: ds 2 ; cae2
wcae4:: ds 1 ; cae4
wcae5:: ds 1 ; cae5
wcae6:: ds 1 ; cae6
wcae7:: ds 1 ; cae7
wcae8:: ds 1 ; cae8

	ds $ccb3 - $cae9

wccb3:: ds 9 ; ccb3

	ds $cd08 - $ccbc

wcd08:: ds 1 ; cd08
wcd09:: ds 1 ; cd09
wcd0a:: ds 1 ; cd0a
wcd0b:: ds 1 ; cd0b
wcd0c:: ds 1 ; cd0c
wcd0d:: ds 2 ; cd0d
wcd0f:: ds 1 ; cd0f
wcd10:: ds 1 ; cd10
wcd11:: ds 1 ; cd11
wcd12:: ds 1 ; cd12
wcd13:: ds 1 ; cd13
wcd14:: ds 1 ; cd14
wcd15:: ds 1 ; cd15
wcd16:: ds 1 ; cd16
wcd17:: ds 1 ; cd17
wcd18:: ds 1 ; cd18
wcd19:: ds 1 ; cd19
wcd1a:: ds 1 ; cd1a
wcd1b:: ds 1 ; cd1b
wcd1c:: ds 1 ; cd1c
wcd1d:: ds 1 ; cd1d
wcd1e:: ds 1 ; cd1e
wcd1f:: ds 1 ; cd1f
wcd20:: ds 1 ; cd20
wcd21:: ds 2 ; cd21
wcd23:: ds 2 ; cd23
wcd25:: ds 1 ; cd25
wcd26:: ds 1 ; cd26
wcd27:: ds 1 ; cd27
wcd28:: ds 1 ; cd28
wcd29:: ds 1 ; cd29
wcd2a:: ds 1 ; cd2a
wcd2b:: ds 1 ; cd2b
wcd2c:: ds 1 ; cd2c
wcd2d:: ds 1 ; cd2d
wcd2e:: ds 1 ; cd2e
wcd2f:: ds 1 ; cd2f
wcd30:: ds 1 ; cd30
wcd31:: ds 1 ; cd31
wcd32:: ds 1 ; cd32
	ds $cd34 - $cd33
wcd34:: ds 1 ; cd34

	ds $cd42 - $cd35

wcd42:: ds 2 ; cd42
wcd44:: ds 2 ; cd44
wcd46:: ds 1 ; cd46
	ds $cd68 - $cd47
wcd68:: ds 1 ; cd68
wcd69:: ds 1 ; cd69
	ds $cd6e - $cd6a
wcd6e:: ds 1 ; cd6e
wcd6f:: ds 1 ; cd6f
wcd70:: ds 1 ; cd70
wcd71:: ds 1 ; cd71
wcd72:: ds 1 ; cd72
wcd73:: ds 1 ; cd73
	ds $cdad - $cd74
wcdad:: ds 1 ; cdad
wcdae:: ds 1 ; cdae
wcdaf:: ds 1 ; cdaf
wcdb0:: ds 1 ; cdb0
wcdb1:: ds 1 ; cdb1
wcdb2:: ds 1 ; cdb2
wcdb3:: ds 1 ; cdb3
wcdb4:: ds 1 ; cdb4
wcdb5:: ds 1 ; cdb5
wcdb6:: ds 1 ; cdb6
wcdb7:: ds 1 ; cdb7
wcdb8:: ds 1 ; cdb8
wcdb9:: ds 1 ; cdb9
wcdba:: ds 1 ; cdba
wcdbb:: ds 1 ; cdbb
wcdbc:: ds 1 ; cdbc
wcdbd:: ds 1 ; cdbd
wcdbe:: ds 1 ; cdbe
wcdbf:: ds 1 ; cdbf
wcdc0:: ds 1 ; cdc0
	ds $cdc3 - $cdc1
wcdc3:: ds 1 ; cdc3
wcdc4:: ds 1 ; cdc4
wcdc5:: ds 1 ; cdc5
wcdc6:: ds 1 ; cdc6
wcdc7:: ds 1 ; cdc7
	ds $cdf2 - $cdc8
wcdf2:: ds 1 ; cdf2

	ds $ce34 - $cdf3

wce34:: ds 1 ; ce34
wce35:: ds 1 ; ce35
	ds $ce38 - $ce36
wce38:: ds 1 ; ce38
	ds $ce3a - $ce39
wce3a:: ds 1 ; ce3a
wce3b:: ds 1 ; ce3b
wce3c:: ds 1 ; ce3c
wce3d:: ds 1 ; ce3d
wce3e:: ds 1 ; ce3e
wce3f:: ds 1 ; ce3f
wce40:: ds 1 ; ce40
wce41:: ds 1 ; ce41

	ds $ce48 - $ce42

wce48:: ds 3 ; ce48
wce4b:: ds 3 ; ce4b
wce4e:: ds 3 ; ce4e
wce51:: ds 3 ; ce51

	ds $ce95 - $ce54

wce95:: ds 1 ; ce95
wce96:: ds 1 ; ce96
wce97:: ds 1 ; ce97
wce98:: ds 1 ; ce98
wce99:: ds 1 ; ce99
	ds $ce9b - $ce9a
wce9b:: ds 1 ; ce9b
	ds $ce9d - $ce9c

UNION
wPanelDePonCodeAPresses:: ds 1 ; ce9d
wPanelDePonCodeBPresses:: ds 1 ; ce9e
NEXTU
wPanelDePonMenuItem::     ds 1 ; ce9d
wPanelDePonMenuPrevItem:: ds 1 ; ce9e
ENDU

wce9f:: ds 1 ; ce9f
wcea0:: ds 1 ; cea0

; which game mode (GAMEMODE_* constant)
wGameMode:: ds 1 ; cea1
wcea2:: ds 1 ; cea2
wcea3:: ds 1 ; cea3
wcea4:: ds 1 ; cea4
; which game level (GAMELEVEL_* constant)
wGameLevel:: ds 1 ; cea5
wSpeedLevel:: ds 1 ; cea6
wcea7:: ds 1 ; cea7
wcea8:: ds 1 ; cea8
wcea9:: ds 1 ; cea9
wceaa:: ds 1 ; ceaa
wceab:: ds 1 ; ceab
wceac:: ds 1 ; ceac
wcead:: ds 1 ; cead
wceae:: ds 1 ; ceae
wceaf:: ds 1 ; ceaf
wceb0:: ds 1 ; ceb0
wceb1:: ds 1 ; ceb1
wceb2:: ds 1 ; ceb2
wceb3:: ds 1 ; ceb3
wceb4:: ds 1 ; ceb4
wceb5:: ds 1 ; ceb5
wceb6:: ds 1 ; ceb6
wceb7:: ds 1 ; ceb7
wceb8:: ds 1 ; ceb8
wceb9:: ds 1 ; ceb9
wceba:: ds 1 ; ceba
wcebb:: ds 1 ; cebb
wcebc:: ds 1 ; cebc
wcebd:: ds 1 ; cebd

wcebe:: ds 1 ; cebe
wcebf:: ds 1 ; cebf

wcec0:: ds 1 ; cec0
wcec1:: ds 1 ; cec1
wcec2:: ds 1 ; cec2
wcec3:: ds 1 ; cec3
wcec4:: ds 1 ; cec4

wcec5:: ds 7 ; cec5
wcecc:: ds 7 ; cecc

wced3:: ds 1 ; ced3
wced4:: ds 1 ; ced4
wced5:: ds 1 ; ced5
wced6:: ds 1 ; ced6
wced7:: ds 1 ; ced7
wced8:: ds 1 ; ced8
wced9:: ds 1 ; ced9
wceda:: ds 1 ; ceda
wcedb:: ds 1 ; cedb
wcedc:: ds 1 ; cedc
wcedd:: ds 1 ; cedd
wcede:: ds 1 ; cede
	ds $1
wcee0:: ds 1 ; cee0
wcee1:: ds 1 ; cee1
wcee2:: ds 1 ; cee2
wcee3:: ds 1 ; cee3

	ds $cee9 - $cee4

wcee9:: ds 2 ; cee9

	ds $cef3 - $ceeb

wcef3:: ds 1 ; cef3
wcef4:: ds 1 ; cef4
wcef5:: ds 1 ; cef5
wcef6:: ds 1 ; cef6
wcef7:: ds 1 ; cef7
wcef8:: ds 1 ; cef8
wcef9:: ds 1 ; cef9
wcefa:: ds 1 ; cefa

	ds $cf0b - $cefb

wcf0b:: ds 1 ; cf0b

wcf0c:: ds 1 ; cf0c
wcf0d:: ds 1 ; cf0d
wcf0e:: ds 1 ; cf0e
wcf0f:: ds 1 ; cf0f
wcf10:: ds 1 ; cf10
wcf11:: ds 1 ; cf11
wcf12:: ds 1 ; cf12
wcf13:: ds 2 ; cf13
wcf15:: ds 1 ; cf15
wcf16:: ds 1 ; cf16

SECTION "WRAM1", WRAMX

	ds $100

w1d100:: ; d100
	ds $571

w1d671:: ; d671
	ds 16 * $13

	ds $d905 - $d7a1

w1d905:: ; d905

	ds $da96 - $d905

w1da96:: ds 1 ; da96
w1da97:: ds 1 ; da97
w1da98:: ds 1 ; da98
w1da99:: ds 1 ; da99
w1da9a:: ds 1 ; da9a
w1da9b:: ds 1 ; da9b
w1da9c:: ds 1 ; da9c
w1da9d:: ds 1 ; da9d
w1da9e:: ds 1 ; da9e
w1da9f:: ds 1 ; da9f
w1daa0:: ds 1 ; daa0

	ds $dd85 - $daa1

w1dd85:: ds 1 ; dd85

SECTION "Scratch WRAM", WRAMX

wScratch:: ; d000
	ds $1000
