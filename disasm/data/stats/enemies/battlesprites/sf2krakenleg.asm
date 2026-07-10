

        ; Anim speed
		dc.w 20
		; Status offset
		dc.b 60, 64
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $3C6, $6EE, $A00, $CE6, $FF6, $130E
		
		; Palettes
		dc.w $466, $EEE, $000, $CCA, $AA8, $886, $664, $442, $8EE, $2AC, $068, $AC8, $8A4, $882, $660, $640
		dc.w $666, $EEE, $000, $CCA, $AAA, $666, $444, $222, $ACC, $2AC, $046, $ACA, $6A2, $882, $440, $620
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_KRAKEN_LEG-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_KRAKEN_LEG-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_KRAKEN_LEG-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_KRAKEN_LEG-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_KRAKEN_LEG-4.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_KRAKEN_LEG-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_KRAKEN_LEG-0.bin"
		
		