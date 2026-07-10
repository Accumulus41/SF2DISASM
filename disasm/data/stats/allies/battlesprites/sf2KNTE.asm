

        ; Anim speed
		dc.w 20
		; Status offset
		dc.b 44, 30
		
		; Palettes pointer
		dc.w $12
		; Frames pointers
		dc.w $110, $5B4, $A4A, $EA0, $1310, $179E, $1C42, $20E6
		
		; Palettes
		dc.w $0EE, $EEE, $000, $CCA, $886, $442, $68E, $00C, $008, $6AC, $268, $024, $6A0, $240, $E0E, $E2E
		dc.w $0EE, $EEE, $000, $68A, $048, $024, $0AE, $04E, $00A, $8AA, $466, $022, $C80, $620, $E0E, $E2E
		dc.w $0EE, $EEE, $000, $CCA, $886, $442, $68E, $00C, $008, $6AC, $268, $024, $08E, $048, $E0E, $E2E
		dc.w $0EE, $EEE, $000, $CCA, $AA8, $664, $0C2, $0A0, $060, $AAA, $444, $222, $CA0, $880, $E0E, $E2E
		dc.w $0EE, $EEE, $000, $68A, $026, $024, $0CE, $0CC, $06A, $CAA, $A44, $022, $CCA, $CCA, $E0E, $E2E
		dc.w $0EE, $EEE, $000, $AAA, $444, $442, $2C0, $2A0, $240, $ACC, $666, $464, $442, $222, $E0E, $E2E
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_KNTE-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_KNTE-1.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_KNTE-2.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_KNTE-3.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_KNTE-4.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_KNTE-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_KNTE-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_KNTE-0.bin"
		
		