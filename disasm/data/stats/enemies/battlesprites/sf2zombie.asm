

        ; Anim speed
		dc.w 26
		; Status offset
		dc.b 62, 52
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $47E, $860, $B50, $ED0, $12A4, $1674
		
		; Palettes
		dc.w $666, $000, $EEE, $466, $244, $8AA, $046, $024, $642, $220, $464, $242, $48A, $A86, $EE0, $8A8
		dc.w $666, $000, $EEE, $466, $244, $8AA, $CCC, $CCC, $222, $220, $464, $242, $48A, $A86, $EE0, $8A8
		dc.w $666, $000, $EEE, $466, $2CA, $8AA, $004, $00C, $642, $220, $464, $242, $48A, $000, $EE0, $8A8
		dc.w $666, $000, $EEE, $466, $CCC, $8AA, $A04, $A06, $642, $220, $464, $242, $48A, $000, $EE0, $8A8
		dc.w $C0C, $000, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ZOMBIE-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ZOMBIE-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ZOMBIE-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ZOMBIE-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ZOMBIE-4.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ZOMBIE-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ZOMBIE-0.bin"
		
		