

        ; Anim speed
		dc.w 26
		; Status offset
		dc.b 58, 34
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $6BC, $CA8, $11B6, $17C4, $1EE6, $24F4
		
		; Palettes
		dc.w $666, $EEE, $000, $88E, $44C, $00A, $006, $8CE, $6AC, $48A, $046, $024, $002, $CCE, $E0E, $0E0
		dc.w $666, $EEE, $000, $CA8, $864, $640, $220, $ACE, $8AC, $68A, $246, $024, $002, $ECC, $E0E, $A6E
		dc.w $222, $EEE, $000, $AAA, $444, $644, $220, $0AC, $06C, $0AC, $06A, $046, $002, $ECC, $C00, $C00
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_DEMON-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_DEMON-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_DEMON-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_DEMON-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_DEMON-4.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_DEMON-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_DEMON-0.bin"
		
		