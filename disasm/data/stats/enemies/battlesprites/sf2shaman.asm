

        ; Anim speed
		dc.w 24
		; Status offset
		dc.b 61, 56
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $4E8, $928, $E24, $13CC, $1806, $1C40
		
		; Palettes
		dc.w $886, $EEE, $000, $024, $468, $8AC, $642, $A86, $ECA, $488, $8AC, $ACE, $444, $AAA, $E0E, $E0E
		dc.w $886, $EEE, $000, $644, $A66, $CAA, $442, $686, $ACA, $488, $8AC, $ECC, $444, $AAA, $E0E, $E0E
		dc.w $886, $EEE, $000, $006, $22C, $24C, $624, $A46, $C6A, $266, $444, $AAA, $222, $AAA, $E0E, $E0E
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_SHAMAN-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_SHAMAN-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_SHAMAN-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_SHAMAN-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_SHAMAN-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_SHAMAN-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_SHAMAN-0.bin"
		
		