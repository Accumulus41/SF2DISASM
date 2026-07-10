

        ; Anim speed
		dc.w 28
		; Status offset
		dc.b 64, 12
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $86E, $1078, $189E, $20AC, $286C, $302C
		
		; Palettes
		dc.w $666, $000, $EEE, $8A6, $662, $440, $220, $ACA, $CCA, $AA8, $886, $E0E, $E0E, $E0E, $E0E, $E0E
		dc.w $C0C, $000, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $000, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $000, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $000, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_TAROS-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_TAROS-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_TAROS-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_TAROS-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_TAROS-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_TAROS-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_TAROS-0.bin"
		
		