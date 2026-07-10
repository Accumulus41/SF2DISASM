

        ; Anim speed
		dc.w 22
		; Status offset
		dc.b 57, 64
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $514, $96A, $DB6, $1276, $1706, $1B6C
		
		; Palettes
		dc.w $888, $000, $EEE, $4AC, $268, $264, $26C, $02A, $240, $6A8, $024, $888, $AA6, $660, $006, $E0E
		dc.w $888, $000, $EEE, $AAE, $64C, $862, $ACC, $688, $620, $EA6, $208, $888, $8A6, $460, $466, $E0E
		dc.w $888, $000, $EEE, $CAA, $A86, $266, $A8C, $64A, $242, $6AA, $840, $888, $AA6, $660, $006, $E0E
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_GOBLIN-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_GOBLIN-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_GOBLIN-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_GOBLIN-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_GOBLIN-4.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_GOBLIN-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_GOBLIN-0.bin"
		
		