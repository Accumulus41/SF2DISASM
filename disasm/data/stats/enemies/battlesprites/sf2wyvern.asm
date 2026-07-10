

        ; Anim speed
		dc.w 16
		; Status offset
		dc.b 65, 51
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $636, $B26, $10A4, $15B2, $1B42, $20CA
		
		; Palettes
		dc.w $464, $EEE, $000, $A64, $420, $CA8, $6AC, $26A, $048, $026, $642, $84E, $008, $84E, $A8E, $E0E
		dc.w $464, $EEE, $000, $A46, $222, $CAA, $CA6, $642, $622, $420, $642, $0CC, $420, $A00, $4C0, $0C0
		dc.w $464, $EEE, $000, $24C, $02C, $6AC, $6AA, $666, $424, $422, $64A, $000, $008, $84E, $A8E, $E0E
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_WYVERN-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_WYVERN-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_WYVERN-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_WYVERN-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_WYVERN-4.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_WYVERN-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_WYVERN-0.bin"
		
		