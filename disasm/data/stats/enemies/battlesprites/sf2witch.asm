

        ; Anim speed
		dc.w 24
		; Status offset
		dc.b 64, 50
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $4F8, $AAA, $F62, $1448, $1892, $1CDC
		
		; Palettes
		dc.w $888, $000, $EEE, $ACE, $68C, $248, $CCA, $886, $642, $8CA, $286, $242, $2CE, $08A, $CEC, $E8E
		dc.w $888, $000, $EEE, $ACE, $68C, $248, $CAE, $A6C, $608, $C8A, $848, $626, $6AC, $48A, $ECC, $AE6
		dc.w $888, $000, $EEE, $ACE, $68C, $248, $CCC, $AAA, $444, $444, $222, $222, $6AC, $48A, $CCA, $A42
		dc.w $888, $000, $EEE, $ACE, $68C, $248, $CCA, $AA6, $662, $EA8, $C64, $820, $2CE, $08A, $EEC, $2AE
		dc.w $C0C, $000, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_WITCH-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_WITCH-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_WITCH-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_WITCH-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_WITCH-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_WITCH-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_WITCH-0.bin"
		
		