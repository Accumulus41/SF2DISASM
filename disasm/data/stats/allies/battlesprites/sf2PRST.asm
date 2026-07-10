

        ; Anim speed
		dc.w 20
		; Status offset
		dc.b 46, 37
		
		; Palettes pointer
		dc.w $12
		; Frames pointers
		dc.w $110, $472, $7E8, $B8A, $F18, $127A, $15DC, $193E
		
		; Palettes
		dc.w $EEE, $EEE, $000, $ACE, $26A, $842, $620, $400, $8AA, $244, $0AC, $8EE, $A64, $026, $E0E, $E2E
		dc.w $EEE, $EEE, $000, $ACE, $26A, $CAA, $A88, $866, $8E6, $4A4, $0AC, $8EE, $ECC, $026, $E0E, $E2E
		dc.w $EEE, $EEE, $000, $ACE, $26A, $0C0, $0A0, $040, $CAA, $C42, $0AC, $8EE, $2A2, $026, $E0E, $E2E
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_PRST-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_PRST-1.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_PRST-2.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_PRST-3.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_PRST-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_PRST-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_PRST-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_PRST-0.bin"
		
		