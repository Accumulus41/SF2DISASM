

        ; Anim speed
		dc.w 30
		; Status offset
		dc.b 60, 47
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $62A, $B96, $1144, $17C0, $1F1C, $2498
		
		; Palettes
		dc.w $666, $000, $EEE, $6AC, $48A, $268, $046, $024, $AEE, $E0E, $E0E, $E0E, $E0E, $E0E, $E0E, $8E0
		dc.w $666, $000, $EEE, $8AA, $688, $466, $446, $224, $ACC, $E0E, $E0E, $E0E, $E0E, $E0E, $E0E, $E6E
		dc.w $666, $000, $EEE, $CCC, $AAA, $444, $222, $222, $AEE, $E0E, $E0E, $E0E, $E0E, $E0E, $E0E, $8E0
		dc.w $666, $000, $EEE, $A64, $642, $422, $222, $200, $AEE, $E0E, $E0E, $E0E, $E0E, $E0E, $E0E, $8E0
		dc.w $C0C, $000, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_GOLEM-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_GOLEM-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_GOLEM-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_GOLEM-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_GOLEM-4.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_GOLEM-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_GOLEM-0.bin"
		
		