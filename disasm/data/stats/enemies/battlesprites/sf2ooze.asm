

        ; Anim speed
		dc.w 28
		; Status offset
		dc.b 63, 75
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $3E2, $714, $A5A, $D0A, $1028, $15CE
		
		; Palettes
		dc.w $666, $EEE, $000, $8E8, $4C4, $2A2, $080, $060, $040, $E0E, $E0E, $E0E, $E0E, $E0E, $E0E, $E0E
		dc.w $666, $EEE, $000, $EC8, $EA4, $E60, $C40, $A20, $600, $E0E, $E0E, $E0E, $E0E, $E0E, $E0E, $E0E
		dc.w $666, $EEE, $000, $CE8, $AC4, $AA2, $880, $660, $420, $E0E, $E0E, $E0E, $E0E, $E0E, $E0E, $E0E
		dc.w $666, $EEE, $000, $0CC, $0AC, $06C, $02C, $02C, $00C, $E0E, $E0E, $E0E, $E0E, $E0E, $E0E, $E0E
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_OOZE-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_OOZE-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_OOZE-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_OOZE-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_OOZE-4.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_OOZE-5.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_OOZE-0.bin"
		
		