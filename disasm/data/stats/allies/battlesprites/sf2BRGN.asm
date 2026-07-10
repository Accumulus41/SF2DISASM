

        ; Anim speed
		dc.w 8
		; Status offset
		dc.b 54, 57
		
		; Palettes pointer
		dc.w $12
		; Frames pointers
		dc.w $110, $656, $BAC, $1160, $167C, $1BC2, $2108, $264E
		
		; Palettes
		dc.w $466, $EEE, $000, $4AC, $268, $046, $6AA, $024, $264, $888, $042, $640, $E86, $222, $AEE, $444
		dc.w $020, $EEE, $000, $4AC, $268, $046, $A86, $024, $622, $888, $400, $640, $E86, $222, $EEE, $EEE
		dc.w $020, $EEE, $000, $4AC, $268, $046, $44E, $024, $22C, $888, $00A, $640, $E86, $222, $EEE, $EEE
		dc.w $020, $EEE, $000, $AAA, $666, $444, $28A, $222, $068, $888, $024, $640, $E86, $222, $EEE, $EEE
		dc.w $020, $EEE, $000, $AAA, $666, $444, $6A8, $222, $264, $888, $040, $640, $E86, $222, $EEE, $EEE
		dc.w $020, $EEE, $000, $AAA, $666, $444, $A86, $222, $622, $888, $400, $640, $E86, $222, $EEE, $EEE
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_BRGN-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_BRGN-1.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_BRGN-2.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_BRGN-3.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_BRGN-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_BRGN-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_BRGN-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_BRGN-0.bin"
		
		