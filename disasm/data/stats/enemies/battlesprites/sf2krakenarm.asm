

        ; Anim speed
		dc.w 21
		; Status offset
		dc.b 65, 44
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $43C, $7DC, $AF4, $D46, $F7A, $12EA
		
		; Palettes
		dc.w $466, $EEE, $000, $CCA, $AA8, $886, $664, $442, $8EE, $2AC, $068, $AC8, $8A4, $882, $660, $640
		dc.w $666, $EEE, $000, $CCA, $AAA, $666, $444, $222, $ACC, $2AC, $046, $ACA, $6A2, $882, $440, $620
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_KRAKEN_ARM-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_KRAKEN_ARM-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_KRAKEN_ARM-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_KRAKEN_ARM-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_KRAKEN_ARM-4.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_KRAKEN_ARM-5.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_KRAKEN_ARM-6.bin"
		
		