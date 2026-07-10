

        ; Anim speed
		dc.w 23
		; Status offset
		dc.b 47, 53
		
		; Palettes pointer
		dc.w $12
		; Frames pointers
		dc.w $110, $4D4, $882, $C10, $1000, $130C, $16D0, $1A94
		
		; Palettes
		dc.w $EEE, $EEE, $000, $024, $048, $06A, $6AC, $444, $888, $6AE, $222, $06C, $2CE, $C88, $E0E, $E0E
		dc.w $EEE, $EEE, $000, $024, $046, $06A, $6AC, $444, $888, $6AE, $222, $860, $CC0, $C88, $E0E, $E0E
		dc.w $EEE, $EEE, $000, $024, $048, $06A, $6AC, $444, $888, $6AE, $222, $02C, $68E, $E88, $E0E, $E0E
		dc.w $046, $EEE, $000, $024, $048, $06A, $6AC, $444, $888, $6AE, $222, $040, $080, $8A8, $EEE, $EEE
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_GLDT-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_GLDT-1.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_GLDT-2.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_GLDT-3.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_GLDT-4.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_GLDT-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_GLDT-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_GLDT-0.bin"
		
		