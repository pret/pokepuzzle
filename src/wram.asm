SECTION "Audio RAM", WRAM0[$c5f0]

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
