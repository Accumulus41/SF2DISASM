

        ; Anim speed
		dc.w 20
		; Status offset
		dc.b 64, 34
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $5B6, $AA2, $EF8, $13E2, $185A, $1D60
		
		; Palettes
		dc.w $666, $EEE, $000, $A88, $644, $420, $0AC, $048, $004, $888, $444, $E2E, $8CE, $00C, $008, $E68
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ODDEYE-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ODDEYE-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ODDEYE-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ODDEYE-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ODDEYE-4.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ODDEYE-5.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ODDEYE-6.bin"
		
		