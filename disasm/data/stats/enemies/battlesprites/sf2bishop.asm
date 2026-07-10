

        ; Anim speed
		dc.w 24
		; Status offset
		dc.b 65, 47
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $55E, $97E, $E7C, $1334, $17E4, $1C94
		
		; Palettes
		dc.w $E06, $EEE, $000, $222, $444, $666, $6AA, $222, $244, $0AA, $4CC, $020, $222, $242, $464, $28E
		dc.w $E66, $EEE, $000, $024, $046, $268, $48A, $044, $066, $0AA, $0CE, $420, $642, $864, $A86, $28E
		dc.w $E66, $EEE, $000, $600, $802, $824, $A46, $044, $066, $0AA, $0EE, $040, $260, $062, $484, $28E
		dc.w $E66, $EEE, $000, $420, $642, $864, $A86, $044, $066, $0AA, $0EE, $224, $446, $668, $88A, $28E
		dc.w $E0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_BISHOP-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_BISHOP-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_BISHOP-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_BISHOP-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_BISHOP-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_BISHOP-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_BISHOP-0.bin"
		
		