

        ; Anim speed
		dc.w 24
		; Status offset
		dc.b 56, 53
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $52C, $998, $ED0, $1384, $1A40, $1EBE
		
		; Palettes
		dc.w $666, $000, $EEE, $8A8, $464, $440, $220, $48A, $046, $8CE, $008, $22E, $CA8, $A64, $622, $E0E
		dc.w $666, $000, $EEE, $8AE, $06C, $22A, $006, $26A, $046, $8CE, $A60, $EA0, $488, $266, $044, $E0E
		dc.w $666, $000, $EEE, $C4C, $A44, $A26, $004, $2CC, $06A, $8CE, $422, $AAA, $488, $266, $044, $E0E
		dc.w $C0C, $000, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $000, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_REAPER-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_REAPER-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_REAPER-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_REAPER-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_REAPER-4.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_REAPER-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_REAPER-0.bin"
		
		