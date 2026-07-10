

        ; Anim speed
		dc.w 20
		; Status offset
		dc.b 62, 42
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $53C, $9E2, $E24, $12DE, $1712, $1BA0
		
		; Palettes
		dc.w $666, $EEE, $000, $644, $A66, $CAA, $466, $AAA, $EEE, $02E, $8AC, $8AA, $ECC, $A40, $E0E, $E0E
		dc.w $666, $EEE, $000, $046, $068, $4AA, $246, $468, $8AC, $408, $84C, $8AA, $ECC, $00C, $E0E, $E0E
		dc.w $464, $EEE, $000, $622, $864, $CA8, $222, $666, $AAA, $064, $4A8, $8AA, $ECC, $00C, $E0E, $E0E
		dc.w $666, $EEE, $000, $424, $A26, $C4A, $466, $CCC, $CCC, $000, $8AC, $8AA, $444, $222, $E0E, $E0E
		dc.w $666, $EEE, $000, $222, $444, $AAA, $244, $AAA, $CCC, $444, $022, $6AA, $AAA, $222, $E0E, $E0E
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_KNIGHT-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_KNIGHT-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_KNIGHT-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_KNIGHT-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_KNIGHT-4.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_KNIGHT-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_KNIGHT-0.bin"
		
		