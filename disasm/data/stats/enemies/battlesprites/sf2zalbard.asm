

        ; Anim speed
		dc.w 24
		; Status offset
		dc.b 65, 37
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $54A, $9D6, $ED0, $148A, $1B42, $1FDE
		
		; Palettes
		dc.w $666, $EEE, $000, $CEA, $8A6, $024, $602, $A4A, $608, $204, $4CE, $068, $C8A, $A46, $26A, $240
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ZALBARD-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ZALBARD-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ZALBARD-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ZALBARD-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ZALBARD-4.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ZALBARD-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ZALBARD-0.bin"
		
		