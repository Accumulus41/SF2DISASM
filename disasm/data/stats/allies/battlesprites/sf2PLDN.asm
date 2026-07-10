

        ; Anim speed
		dc.w 20
		; Status offset
		dc.b 45, 28
		
		; Palettes pointer
		dc.w $12
		; Frames pointers
		dc.w $110, $5EC, $AD4, $F68, $140E, $18CA, $1DA6, $2282
		
		; Palettes
		dc.w $EEE, $EEE, $000, $8AA, $466, $244, $88E, $00E, $008, $CCC, $888, $444, $AE6, $480, $E0E, $E2E
		dc.w $EEE, $EEE, $000, $68A, $048, $024, $0AE, $04E, $00A, $8AA, $466, $022, $06C, $026, $E0E, $E2E
		dc.w $EEE, $EEE, $000, $8AA, $466, $244, $88E, $00E, $008, $CCC, $888, $444, $4AE, $04A, $E0E, $E2E
		dc.w $EEE, $EEE, $000, $48A, $06A, $046, $0C8, $0A4, $084, $8AA, $466, $022, $C80, $620, $E0E, $E2E
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_PLDN-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_PLDN-1.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_PLDN-2.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_PLDN-3.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_PLDN-4.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_PLDN-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_PLDN-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_PLDN-0.bin"
		
		