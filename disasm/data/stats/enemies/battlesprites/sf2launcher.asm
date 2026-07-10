

        ; Anim speed
		dc.w 22
		; Status offset
		dc.b 72, 58
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $610, $BA2, $1118, $167A, $1BDC, $213E
		
		; Palettes
		dc.w $E86, $EEE, $000, $888, $444, $222, $6AC, $268, $024, $AA6, $662, $440, $8AA, $466, $244, $022
		dc.w $E86, $EEE, $000, $888, $444, $222, $68C, $248, $004, $A88, $644, $422, $8AA, $466, $244, $022
		dc.w $E86, $EEE, $000, $888, $444, $222, $6AC, $268, $024, $AAA, $666, $444, $8AA, $466, $244, $022
		dc.w $C0C, $EEE, $000, $888, $444, $222, $4CC, $2AA, $244, $C4A, $C26, $C06, $8AA, $244, $222, $022
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_LAUNCHER-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_LAUNCHER-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_LAUNCHER-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_LAUNCHER-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_LAUNCHER-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_LAUNCHER-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_LAUNCHER-0.bin"
		
		