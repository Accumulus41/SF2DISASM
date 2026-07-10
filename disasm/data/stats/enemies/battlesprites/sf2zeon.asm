

        ; Anim speed
		dc.w 12
		; Status offset
		dc.b 61, 64
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $D6A, $1A28, $26DC, $3398, $4054, $4D10
		
		; Palettes
		dc.w $222, $EEE, $000, $8CC, $688, $646, $424, $202, $AA8, $664, $220, $EEC, $68E, $CA8, $864, $0E0
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ZEON-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ZEON-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ZEON-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ZEON-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ZEON-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ZEON-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ZEON-0.bin"
		
		