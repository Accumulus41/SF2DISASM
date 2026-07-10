

        ; Anim speed
		dc.w 18
		; Status offset
		dc.b 65, 28
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $718, $CF4, $1322, $18A2, $1EAE, $2518
		
		; Palettes
		dc.w $886, $EEE, $000, $AAA, $666, $444, $8C8, $484, $262, $46A, $248, $026, $040, $ACC, $8AA, $266
		dc.w $886, $EEE, $000, $AAA, $666, $444, $4A6, $286, $064, $8CE, $48A, $068, $040, $ACC, $8AA, $266
		dc.w $886, $EEE, $000, $444, $222, $000, $04C, $02C, $00A, $CCC, $ACC, $222, $00C, $222, $000, $266
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_PEGASUS_KNIGHT-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_PEGASUS_KNIGHT-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_PEGASUS_KNIGHT-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_PEGASUS_KNIGHT-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_PEGASUS_KNIGHT-4.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_PEGASUS_KNIGHT-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_PEGASUS_KNIGHT-0.bin"
		
		