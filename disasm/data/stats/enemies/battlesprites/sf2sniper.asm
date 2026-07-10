

        ; Anim speed
		dc.w 22
		; Status offset
		dc.b 65, 48
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $556, $972, $DEA, $12E6, $178E, $1C36
		
		; Palettes
		dc.w $666, $000, $EEE, $48C, $048, $026, $620, $8CE, $284, $040, $26A, $862, $E4E, $AAC, $668, $224
		dc.w $666, $000, $EEE, $48A, $046, $024, $028, $8CE, $A46, $604, $048, $46C, $8E2, $888, $644, $222
		dc.w $444, $000, $EEE, $66C, $42C, $22C, $626, $64C, $AA2, $620, $00C, $A6A, $0CC, $026, $024, $022
		dc.w $666, $000, $EEE, $0AC, $04C, $02A, $00A, $2CC, $4AC, $26C, $26A, $22C, $CC0, $2A2, $262, $222
		dc.w $C0C, $000, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_SNIPER-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_SNIPER-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_SNIPER-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_SNIPER-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_SNIPER-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_SNIPER-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_SNIPER-0.bin"
		
		