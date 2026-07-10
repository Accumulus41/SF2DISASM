

        ; Anim speed
		dc.w 20
		; Status offset
		dc.b 69, 76
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $58E, $B5A, $10AA, $158A, $1A6A, $1F4A
		
		; Palettes
		dc.w $442, $000, $EEE, $ACC, $688, $466, $244, $022, $4AE, $000, $000, $000, $000, $000, $000, $000
		dc.w $442, $000, $EEE, $466, $244, $222, $022, $000, $C64, $000, $000, $000, $000, $000, $000, $000
		dc.w $442, $000, $EEE, $0AC, $06C, $04C, $226, $022, $CCC, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $000, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $000, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_STONE-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_STONE-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_STONE-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_STONE-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_STONE-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_STONE-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_STONE-0.bin"
		
		