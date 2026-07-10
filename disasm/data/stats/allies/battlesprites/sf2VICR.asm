

        ; Anim speed
		dc.w 24
		; Status offset
		dc.b 50, 36
		
		; Palettes pointer
		dc.w $12
		; Frames pointers
		dc.w $110, $528, $9B0, $E10, $1228, $1640, $1A58, $1E70
		
		; Palettes
		dc.w $A4A, $EEE, $000, $420, $864, $C86, $ECA, $C88, $ACE, $048, $06C, $2CE, $840, $C80, $4E4, $ECC
		dc.w $A4A, $EEE, $000, $044, $288, $6CC, $AEE, $A6A, $ACE, $048, $06C, $2CE, $A60, $A80, $4E8, $EAE
		dc.w $A4A, $EEE, $000, $244, $688, $8CC, $CEE, $A6A, $ACE, $048, $06C, $2CE, $00A, $00E, $EEE, $EEE
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_VICR-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_VICR-1.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_VICR-2.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_VICR-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_VICR-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_VICR-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_VICR-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_VICR-0.bin"
		
		