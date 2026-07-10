

        ; Anim speed
		dc.w 15
		; Status offset
		dc.b 42, 29
		
		; Palettes pointer
		dc.w $12
		; Frames pointers
		dc.w $110, $676, $BFC, $1184, $16D0, $1B90, $20F6, $265C
		
		; Palettes
		dc.w $EEE, $EEE, $000, $8AC, $468, $A88, $644, $CCC, $6CE, $28A, $EC8, $C82, $840, $046, $E0E, $E2E
		dc.w $EEE, $EEE, $000, $CAC, $868, $8AA, $466, $CEE, $6CE, $28A, $AAE, $86C, $228, $446, $E0E, $E2E
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_BDBT-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_BDBT-1.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_BDBT-2.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_BDBT-3.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_BDBT-4.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_BDBT-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_BDBT-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_BDBT-0.bin"
		
		