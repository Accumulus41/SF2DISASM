

        ; Anim speed
		dc.w 14
		; Status offset
		dc.b 72, 49
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $63A, $B56, $109C, $15EC, $1C9E, $222A
		
		; Palettes
		dc.w $666, $EEE, $000, $004, $026, $048, $26A, $026, $048, $26A, $28C, $8CE, $CAA, $866, $4CE, $EC2
		dc.w $666, $EEE, $000, $206, $20A, $62E, $86E, $206, $228, $44A, $46C, $8AE, $CAA, $666, $8AE, $6E4
		dc.w $666, $EEE, $000, $06C, $0AC, $0CC, $2AC, $024, $048, $26A, $28C, $8CE, $CAA, $866, $46C, $EC2
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_GRIFFIN-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_GRIFFIN-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_GRIFFIN-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_GRIFFIN-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_GRIFFIN-4.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_GRIFFIN-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_GRIFFIN-0.bin"
		
		