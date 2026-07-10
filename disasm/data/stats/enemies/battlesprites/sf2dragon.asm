

        ; Anim speed
		dc.w 16
		; Status offset
		dc.b 74, 47
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $8A4, $1006, $1652, $1DCC, $2634, $2E2A
		
		; Palettes
		dc.w $666, $EEE, $000, $A64, $444, $222, $200, $CA8, $AAC, $46A, $046, $AEE, $422, $44A, $006, $06E
		dc.w $666, $EEE, $000, $CAA, $A88, $866, $644, $ECC, $ACC, $8AA, $466, $CEE, $422, $44A, $006, $C0A
		dc.w $440, $EEE, $000, $0AC, $0AC, $06A, $644, $ECC, $6AA, $666, $022, $604, $422, $44A, $006, $C0A
		dc.w $666, $EEE, $000, $06C, $02C, $00C, $222, $06C, $4AA, $442, $046, $ACC, $422, $44A, $006, $022
		dc.w $666, $EEE, $000, $26C, $002, $022, $000, $26C, $AAC, $46A, $046, $AEE, $0CC, $44A, $006, $CCC
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_DRAGON-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_DRAGON-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_DRAGON-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_DRAGON-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_DRAGON-4.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_DRAGON-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_DRAGON-0.bin"
		
		