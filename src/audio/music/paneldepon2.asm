Music_PanelDePon2:: ; 180000 (60:4000)
	dw Music_PanelDePon2_Ch1
	dw Music_PanelDePon2_Ch2
	dw Music_PanelDePon2_Ch3
	dw Music_PanelDePon2_Ch4

Music_PanelDePon2_Ch1:: ; 180008 (60:4008)
	INCBIN "baserom.gbc",$180008,$180191 - $180008

Music_PanelDePon2_Ch2:: ; 180191 (60:4191)
	INCBIN "baserom.gbc",$180191,$180307 - $180191

Music_PanelDePon2_Ch3:: ; 180307 (60:4307)
	INCBIN "baserom.gbc",$180307,$1804b5 - $180307

Music_PanelDePon2_Ch4:: ; 1804b5 (60:44b5)
	INCBIN "baserom.gbc",$1804b5,$184000 - $1804b5
