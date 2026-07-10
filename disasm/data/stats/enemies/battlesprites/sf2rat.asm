

        ; Anim speed
		dc.w 18
		; Status offset
		dc.b 74, 74
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $4CC, $8E4, $C94, $1084, $1570, $198E
		
		; Palettes
		dc.w $666, $EEE, $000, $8CC, $466, $244, $022, $AAC, $448, $AA8, $0E0, $004, $0E0, $0E0, $0E0, $A4E
		dc.w $666, $EEE, $000, $CA8, $864, $642, $420, $ACE, $468, $AA8, $0E0, $046, $0E0, $0E0, $0E0, $E4E
		dc.w $666, $EEE, $000, $88C, $448, $026, $002, $8CC, $688, $AA8, $0E0, $044, $0E0, $0E0, $0E0, $E4E
		dc.w $666, $EEE, $000, $2CC, $0CC, $642, $420, $A2E, $468, $AA8, $0E0, $046, $0E0, $0E0, $0E0, $E4E
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_RAT-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_RAT-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_RAT-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_RAT-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_RAT-4.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_RAT-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_RAT-0.bin"
		
		