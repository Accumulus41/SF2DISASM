

        ; Anim speed
		dc.w 24
		; Status offset
		dc.b 47, 36
		
		; Palettes pointer
		dc.w $12
		; Frames pointers
		dc.w $110, $510, $914, $CC4, $10B, $148A, $18A8, $1CA8
		
		; Palettes
		dc.w $666, $EEE, $000, $E0E, $486, $040, $48A, $046, $22E, $8CC, $488, $CAA, $644, $008, $E0E, $E2E
		dc.w $00A, $EEE, $000, $E0E, $844, $400, $8AA, $666, $040, $244, $222, $CAA, $644, $020, $EEE, $EEE
		dc.w $666, $EEE, $000, $E0E, $244, $022, $228, $024, $442, $84C, $22A, $CAA, $644, $222, $E0E, $E2E
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_RBT-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_RBT-1.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_RBT-2.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_RBT-3.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_RBT-4.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_RBT-5.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_RBT-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_RBT-0.bin"
		
		