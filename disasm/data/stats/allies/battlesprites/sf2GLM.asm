

        ; Anim speed
		dc.w 20
		; Status offset
		dc.b 55, 28
		
		; Palettes pointer
		dc.w $12
		; Frames pointers
		dc.w $110, $706, $CBE, $12DA, $18F0, $1EE6, $24DC, $2AD2
		
		; Palettes
		dc.w $666, $EEE, $000, $002, $024, $046, $268, $48A, $6AC, $8CE, $620, $A60, $260, $4C0, $E0E, $E2E
		dc.w $666, $EEE, $000, $000, $222, $222, $466, $688, $8AA, $EEE, $620, $A60, $260, $4C0, $E0E, $E2E
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_GLM-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_GLM-1.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_GLM-2.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_GLM-3.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_GLM-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_GLM-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_GLM-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_GLM-0.bin"
		
		