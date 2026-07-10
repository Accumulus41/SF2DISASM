

        ; Anim speed
		dc.w 18
		; Status offset
		dc.b 63, 65
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $4F2, $924, $CE6, $1058, $14F8, $193C
		
		; Palettes
		dc.w $666, $EEE, $000, $402, $824, $C68, $EAC, $464, $6A8, $AEC, $A2E, $842, $608, $EA8, $AE0, $E0E
		dc.w $666, $EEE, $000, $004, $228, $66C, $48E, $466, $6AA, $8CC, $42E, $842, $208, $EA8, $AE0, $E0E
		dc.w $666, $EEE, $000, $0A0, $0C2, $4C4, $ACA, $0CC, $0CC, $4CC, $020, $842, $040, $EA8, $AE0, $E0E
		dc.w $666, $EEE, $000, $C00, $C40, $CA0, $EAC, $C2A, $C46, $C2C, $CC0, $842, $608, $ECC, $AE0, $E0E
		dc.w $666, $EEE, $000, $022, $024, $04A, $06A, $220, $222, $AAA, $26C, $022, $222, $CCC, $000, $E0E
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_HOUND-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_HOUND-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_HOUND-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_HOUND-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_HOUND-4.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_HOUND-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_HOUND-0.bin"
		
		