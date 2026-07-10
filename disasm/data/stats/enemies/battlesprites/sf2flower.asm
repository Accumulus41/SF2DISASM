

        ; Anim speed
		dc.w 20
		; Status offset
		dc.b 49, 52
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $668, $AE0, $109A, $1654, $1C0E, $21C8
		
		; Palettes
		dc.w $666, $EEE, $000, $C8E, $64A, $426, $204, $EC6, $C80, $840, $600, $AEC, $6A8, $464, $242, $E4E
		dc.w $666, $EEE, $000, $CAC, $868, $646, $424, $EC6, $C80, $840, $600, $AEC, $688, $444, $222, $E4E
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_FLOWER-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_FLOWER-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_FLOWER-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_FLOWER-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_FLOWER-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_FLOWER-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_FLOWER-0.bin"
		
		