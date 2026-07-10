

        ; Anim speed
		dc.w 24
		; Status offset
		dc.b 65, 34
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $58C, $A58, $ED8, $135A, $17FA, $1CD8
		
		; Palettes
		dc.w $666, $EEE, $000, $A88, $644, $420, $0AC, $048, $024, $ACE, $68A, $46A, $68C, $22E, $008, $E68
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_RED_BARON-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_RED_BARON-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_RED_BARON-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_RED_BARON-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_RED_BARON-4.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_RED_BARON-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_RED_BARON-0.bin"
		
		