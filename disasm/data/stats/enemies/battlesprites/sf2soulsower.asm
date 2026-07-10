

        ; Anim speed
		dc.w 19
		; Status offset
		dc.b 60, 82
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $47E, $86C, $C90, $1046, $156C, $193C
		
		; Palettes
		dc.w $666, $EEE, $000, $860, $420, $8AC, $468, $024, $CA6, $24C, $88E, $008, $E00, $E20, $E00, $E00
		dc.w $666, $CCE, $000, $A2A, $402, $0AC, $046, $022, $CA6, $24C, $88E, $008, $E00, $E20, $E00, $E00
		dc.w $666, $CCC, $000, $2A0, $460, $0CC, $0AC, $022, $CA4, $22C, $66C, $008, $E00, $E20, $E00, $E00
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_SOULSOWER-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_SOULSOWER-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_SOULSOWER-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_SOULSOWER-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_SOULSOWER-4.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_SOULSOWER-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_SOULSOWER-0.bin"
		
		