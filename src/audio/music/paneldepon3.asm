Music_PanelDePon3:: ; 8f689 (23:7689)
	dw Music_PanelDePon3_Ch1
	dw Music_PanelDePon3_Ch2
	dw Music_PanelDePon3_Ch3
	dw Music_PanelDePon3_Ch4

Music_PanelDePon3_Ch1:: ; 8f691 (23:7691)
	INCBIN "baserom.gbc",$8f691,$8f6fc - $8f691

Music_PanelDePon3_Ch2:: ; 8f6fc (23:76fc)
	INCBIN "baserom.gbc",$8f6fc,$8f725 - $8f6fc

Music_PanelDePon3_Ch3:: ; 8f725 (23:7725)
	INCBIN "baserom.gbc",$8f725,$8f771 - $8f725

Music_PanelDePon3_Ch4:: ; 8f771 (23:7771)
	INCBIN "baserom.gbc",$8f771,$90000 - $8f771
