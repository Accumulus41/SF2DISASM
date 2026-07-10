

        ; Anim speed
		dc.w 14
		; Status offset
		dc.b 51, 41
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $590, $9DC, $E58, $1274, $1606, $1AE8
		
		; Palettes
		dc.w $666, $000, $EEE, $ACE, $88C, $648, $404, $068, $024, $08A, $000, $0E0, $E0E, $E0E, $E0E, $E0E
		dc.w $666, $000, $EEE, $AAE, $66E, $22A, $006, $84A, $406, $A6C, $000, $0E0, $E0E, $E0E, $E0E, $E0E
		dc.w $666, $000, $EEE, $6EE, $4AA, $066, $044, $48A, $246, $6AC, $000, $EE0, $E0E, $E0E, $E0E, $E0E
		dc.w $666, $000, $EEE, $AC2, $4A0, $240, $020, $CCA, $AA6, $CCC, $000, $444, $E0E, $E0E, $E0E, $E0E
		dc.w $C0C, $000, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_BAT-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_BAT-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_BAT-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_BAT-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_BAT-4.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_BAT-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_BAT-0.bin"
		
		