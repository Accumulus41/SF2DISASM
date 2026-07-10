

        ; Anim speed
		dc.w 21
		; Status offset
		dc.b 47, 41
		
		; Palettes pointer
		dc.w $12
		; Frames pointers
		dc.w $110, $486, $81A, $BBE, $F72, $1344, $16BA, $1A30
		
		; Palettes
		dc.w $EEE, $EEE, $000, $ACE, $6CE, $28A, $CA8, $046, $08E, $04A, $620, $A60, $260, $4C0, $E0E, $E2E
		dc.w $666, $EEE, $000, $ACE, $6CE, $28A, $CA8, $046, $08E, $04A, $204, $806, $640, $C60, $EEE, $EEE
		dc.w $EEE, $EEE, $000, $ACE, $6CE, $28A, $CA8, $046, $08E, $04A, $060, $0A0, $00C, $02C, $E0E, $E2E
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_SDMN-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_SDMN-1.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_SDMN-2.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_SDMN-3.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_SDMN-4.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_SDMN-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_SDMN-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_SDMN-0.bin"
		
		