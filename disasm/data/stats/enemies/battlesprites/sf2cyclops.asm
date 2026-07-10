

        ; Anim speed
		dc.w 22
		; Status offset
		dc.b 65, 36
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $650, $BDA, $10F2, $1640, $1C8E, $2230
		
		; Palettes
		dc.w $666, $000, $EEE, $8AC, $66A, $024, $CAA, $868, $642, $8CE, $48C, $8C8, $684, $462, $AAA, $048
		dc.w $666, $000, $EEE, $CCC, $CAA, $A42, $222, $444, $000, $44C, $02C, $24C, $42C, $00C, $0CC, $048
		dc.w $666, $000, $EEE, $AAA, $444, $222, $6CC, $868, $002, $06C, $02C, $C6C, $A4A, $424, $AAA, $048
		dc.w $C0C, $000, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $000, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_CYCLOPS-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_CYCLOPS-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_CYCLOPS-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_CYCLOPS-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_CYCLOPS-4.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_CYCLOPS-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_CYCLOPS-0.bin"
		
		