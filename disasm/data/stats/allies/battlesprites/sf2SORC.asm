

        ; Anim speed
		dc.w 20
		; Status offset
		dc.b 43, 33
		
		; Palettes pointer
		dc.w $12
		; Frames pointers
		dc.w $110, $53E, $9C6, $E54, $1366, $1794, $1BC2, $1FF0
		
		; Palettes
		dc.w $EEE, $EEE, $000, $026, $08C, $6AE, $844, $E88, $EA8, $260, $6A4, $AE8, $46A, $ACE, $E0E, $E0E
		dc.w $EEE, $EEE, $000, $222, $666, $AAA, $260, $282, $4AA, $246, $68A, $ACE, $46A, $ACE, $E0E, $E0E
		dc.w $680, $EEE, $000, $222, $024, $444, $268, $28A, $0AE, $640, $A84, $EC8, $46A, $ACE, $EEE, $EEE
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_SORC-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_SORC-1.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_SORC-2.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_SORC-3.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_SORC-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_SORC-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_SORC-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_SORC-0.bin"
		
		