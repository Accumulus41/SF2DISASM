

        ; Anim speed
		dc.w 21
		; Status offset
		dc.b 67, 50
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $57E, $A48, $EF8, $13F4, $193A, $1E0A
		
		; Palettes
		dc.w $666, $000, $EEE, $6C8, $484, $040, $8CE, $48A, $886, $442, $CCA, $268, $046, $8AE, $46E, $02A
		dc.w $666, $000, $EEE, $EAE, $A4A, $608, $6AA, $488, $684, $240, $AC8, $266, $244, $6CE, $48E, $04A
		dc.w $666, $000, $EEE, $0AC, $04C, $040, $444, $444, $886, $442, $466, $222, $000, $CAC, $C2C, $02A
		dc.w $666, $000, $EEE, $4CC, $0CC, $0CC, $A42, $642, $886, $442, $AAC, $620, $422, $CCC, $AAA, $664
		dc.w $C0C, $000, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_LIZARDMAN-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_LIZARDMAN-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_LIZARDMAN-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_LIZARDMAN-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_LIZARDMAN-4.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_LIZARDMAN-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_LIZARDMAN-0.bin"
		
		