

        ; Anim speed
		dc.w 24
		; Status offset
		dc.b 66, 45
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $52E, $9EE, $EF6, $13A0, $1820, $1CA0
		
		; Palettes
		dc.w $666, $EEE, $000, $600, $A22, $E66, $40E, $48E, $024, $268, $6AC, $464, $8A8, $CEC, $E0E, $EAA
		dc.w $666, $EEE, $000, $022, $044, $488, $60C, $AAE, $024, $246, $468, $444, $666, $AAA, $E0E, $8CC
		dc.w $44C, $EEE, $000, $444, $666, $AAA, $404, $48E, $024, $268, $6AC, $222, $646, $CAC, $E0E, $CCC
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_NECROMANCER-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_NECROMANCER-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_NECROMANCER-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_NECROMANCER-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_NECROMANCER-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_NECROMANCER-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_NECROMANCER-0.bin"
		
		