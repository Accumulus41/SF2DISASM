

        ; Anim speed
		dc.w 19
		; Status offset
		dc.b 68, 55
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $510, $988, $D00, $1098, $1624, $1A86
		
		; Palettes
		dc.w $888, $000, $EEE, $AAA, $68A, $64C, $CAE, $84A, $246, $CE6, $AA2, $660, $ACE, $420, $440, $006
		dc.w $888, $000, $EEE, $48C, $A66, $64A, $AAC, $646, $622, $ACC, $6A8, $664, $EAA, $220, $442, $224
		dc.w $888, $000, $EEE, $4AC, $04E, $662, $EAC, $E6A, $028, $AAC, $88A, $646, $68E, $202, $424, $224
		dc.w $888, $000, $EEE, $222, $A46, $626, $C4C, $A4A, $406, $ACC, $AAC, $44C, $A6A, $42C, $22C, $006
		dc.w $888, $000, $EEE, $AAA, $664, $222, $246, $222, $222, $04C, $0AC, $02C, $6AA, $420, $00C, $006
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_WORM-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_WORM-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_WORM-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_WORM-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_WORM-4.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_WORM-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_WORM-0.bin"
		
		