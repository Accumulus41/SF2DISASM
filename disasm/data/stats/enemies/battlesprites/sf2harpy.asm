

        ; Anim speed
		dc.w 14
		; Status offset
		dc.b 54, 43
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $540, $982, $E36, $1434, $18C6, $1D58
		
		; Palettes
		dc.w $666, $EEE, $000, $246, $68A, $ACE, $024, $048, $68A, $28C, $8CE, $420, $A84, $EEA, $E0E, $E0E
		dc.w $666, $EEE, $000, $406, $84C, $CAE, $024, $048, $68A, $28C, $8CE, $022, $084, $4EA, $E0E, $E0E
		dc.w $666, $EEE, $000, $24A, $0AC, $ACC, $024, $048, $68A, $224, $26A, $004, $00C, $06C, $E0E, $E0E
		dc.w $666, $EEE, $000, $442, $6AA, $CAA, $A22, $A42, $68A, $28C, $8CE, $022, $62C, $CAC, $E0E, $E0E
		dc.w $606, $EEE, $000, $220, $422, $666, $442, $AAA, $CCC, $4AC, $6CC, $222, $A24, $CAA, $E0E, $E0E
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_HARPY-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_HARPY-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_HARPY-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_HARPY-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_HARPY-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_HARPY-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_HARPY-0.bin"
		
		