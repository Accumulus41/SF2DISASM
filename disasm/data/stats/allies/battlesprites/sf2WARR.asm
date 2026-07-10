

        ; Anim speed
		dc.w 23
		; Status offset
		dc.b 46, 54
		
		; Palettes pointer
		dc.w $12
		; Frames pointers
		dc.w $110, $46E, $7CC, $B0E, $EA2, $1218, $1576, $18D4
		
		; Palettes
		dc.w $EEE, $EEE, $000, $ACE, $6AC, $06A, $CA8, $048, $EEE, $820, $C60, $040, $280, $6C0, $E0E, $E2E
		dc.w $EEE, $EEE, $000, $ACE, $6AC, $06A, $04C, $244, $40E, $04A, $02C, $040, $060, $280, $E0E, $E2E
		dc.w $EEE, $EEE, $000, $ACE, $6AC, $04A, $06E, $244, $40E, $04A, $04E, $04A, $06A, $2AC, $E0E, $E2E
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_WARR-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_WARR-1.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_WARR-2.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_WARR-3.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_WARR-4.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_WARR-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_WARR-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_WARR-0.bin"
		
		