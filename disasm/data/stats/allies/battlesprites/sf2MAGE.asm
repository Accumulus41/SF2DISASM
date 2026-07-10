

        ; Anim speed
		dc.w 24
		; Status offset
		dc.b 48, 37
		
		; Palettes pointer
		dc.w $12
		; Frames pointers
		dc.w $110, $48A, $7B2, $B60, $ED0, $124A, $15C4, $193E
		
		; Palettes
		dc.w $666, $EEE, $000, $ACE, $46E, $24C, $24A, $06C, $048, $026, $48C, $26A, $046, $48C, $E0E, $E2E
		dc.w $22A, $EEE, $000, $ACE, $08C, $068, $046, $ACC, $688, $244, $68C, $448, $224, $48C, $E0E, $E2E
		dc.w $666, $EEE, $000, $6AE, $0A2, $082, $262, $0AC, $068, $024, $26C, $26A, $046, $8CE, $8CE, $8CE
		dc.w $00C, $EEE, $000, $ACE, $26A, $26A, $048, $88A, $666, $444, $28C, $06C, $04A, $8CE, $8CE, $8CE
		dc.w $666, $EEE, $000, $ACE, $8C2, $6A2, $682, $444, $222, $48C, $26A, $046, $8CE, $8CE, $8CE, $8CE
		dc.w $00C, $EEE, $000, $ACE, $A62, $A42, $A22, $CCC, $AAA, $666, $48C, $26A, $046, $8CE, $8CE, $8CE
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_MAGE-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_MAGE-1.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_MAGE-2.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_MAGE-3.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_MAGE-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_MAGE-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_MAGE-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_MAGE-0.bin"
		
		