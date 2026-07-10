

        ; Anim speed
		dc.w 24
		; Status offset
		dc.b 64, 48
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $59A, $A90, $FA6, $149E, $198A, $1E76
		
		; Palettes
		dc.w $888, $EEE, $000, $8AC, $48A, $046, $AAA, $666, $444, $84E, $40A, $206, $4EE, $E08, $8E0, $CCC
		dc.w $888, $EEE, $000, $8AC, $48A, $046, $A66, $642, $420, $A48, $806, $404, $8EE, $8C0, $E8E, $CA8
		dc.w $888, $EEE, $000, $8AC, $48A, $046, $A66, $642, $420, $A48, $806, $404, $8EE, $8C0, $E8E, $CCC
		dc.w $888, $EEE, $000, $8AC, $48A, $046, $CAA, $C46, $A24, $0AC, $066, $044, $8EE, $020, $CA6, $CCC
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_CLERIC-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_CLERIC-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_CLERIC-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_CLERIC-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_CLERIC-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_CLERIC-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_CLERIC-0.bin"
		
		