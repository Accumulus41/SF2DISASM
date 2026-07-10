

        ; Anim speed
		dc.w 16
		; Status offset
		dc.b 39, 35
		
		; Palettes pointer
		dc.w $12
		; Frames pointers
		dc.w $110, $694, $B82, $1134, $16B4, $1C38, $21BC, $2740
		
		; Palettes
		dc.w $EEE, $EEE, $000, $004, $00A, $24E, $644, $A88, $EAA, $420, $864, $EA8, $080, $8AA, $E0E, $E0E
		dc.w $EEE, $EEE, $000, $024, $24C, $28E, $026, $04A, $48C, $420, $864, $EA8, $E40, $8AA, $E0E, $E0E
		dc.w $EEE, $EEE, $000, $004, $00A, $24E, $048, $06A, $6AE, $420, $864, $EA8, $04E, $8AA, $E0E, $E0E
		dc.w $EEE, $EEE, $000, $260, $2A2, $2C2, $222, $666, $AAA, $420, $864, $EA8, $062, $8AA, $E0E, $E0E
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_PGNT-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_PGNT-1.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_PGNT-2.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_PGNT-3.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_PGNT-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_PGNT-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_PGNT-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_PGNT-0.bin"
		
		