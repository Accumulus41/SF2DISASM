

        ; Anim speed
		dc.w 24
		; Status offset
		dc.b 66, 52
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $49E, $A26, $E86, $12C2, $16B2, $1AA2
		
		; Palettes
		dc.w $886, $000, $EEE, $ACE, $680, $A66, $644, $CAA, $A26, $604, $4AC, $268, $440, $ECC, $C68, $E6E
		dc.w $886, $000, $EEE, $ACE, $860, $666, $444, $AAA, $40A, $206, $4AC, $268, $420, $CCC, $64E, $AE6
		dc.w $886, $000, $EEE, $ACE, $860, $444, $444, $A66, $206, $206, $4AC, $268, $420, $CCC, $42C, $6C2
		dc.w $886, $000, $EEE, $ACE, $220, $A66, $644, $CAA, $062, $020, $4AC, $268, $440, $ECC, $0A0, $2CC
		dc.w $C0C, $000, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_MAGE-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_MAGE-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_MAGE-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_MAGE-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_MAGE-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_MAGE-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_MAGE-0.bin"
		
		