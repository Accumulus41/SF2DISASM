

        ; Anim speed
		dc.w 22
		; Status offset
		dc.b 56, 38
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $59E, $A96, $F12, $13FE, $1A88, $1F78
		
		; Palettes
		dc.w $664, $000, $EEE, $88A, $668, $646, $224, $48A, $046, $8CE, $886, $664, $442, $AA8, $022, $EA2
		dc.w $664, $000, $CCC, $68A, $468, $244, $022, $AAA, $666, $CCC, $886, $664, $442, $AA8, $022, $86E
		dc.w $C4C, $000, $CCC, $6C6, $6A2, $462, $220, $CCA, $C64, $CAC, $886, $664, $442, $AA8, $422, $02C
		dc.w $202, $000, $EEE, $A88, $866, $644, $422, $64A, $206, $A8E, $668, $446, $224, $88A, $002, $2A4
		dc.w $C0C, $000, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_MINOTAUR-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_MINOTAUR-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_MINOTAUR-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_MINOTAUR-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_MINOTAUR-4.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_MINOTAUR-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_MINOTAUR-0.bin"
		
		