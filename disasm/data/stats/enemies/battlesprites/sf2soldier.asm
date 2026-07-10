

        ; Anim speed
		dc.w 19
		; Status offset
		dc.b 68, 49
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $536, $9C0, $E02, $128E, $16FA, $1B82
		
		; Palettes
		dc.w $464, $EEE, $000, $420, $862, $CA8, $222, $666, $AAA, $008, $44A, $88E, $046, $48A, $220, $E0E
		dc.w $464, $EEE, $000, $622, $A66, $EAA, $444, $888, $CCC, $040, $480, $6C0, $048, $68C, $220, $E0E
		dc.w $464, $EEE, $000, $442, $664, $886, $444, $888, $CCC, $824, $846, $C8A, $244, $688, $220, $E0E
		dc.w $464, $EEE, $000, $222, $666, $CCC, $222, $444, $AAA, $A00, $A42, $CA6, $046, $48A, $220, $E0E
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_SOLDIER-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_SOLDIER-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_SOLDIER-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_SOLDIER-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_SOLDIER-4.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_SOLDIER-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_SOLDIER-0.bin"
		
		