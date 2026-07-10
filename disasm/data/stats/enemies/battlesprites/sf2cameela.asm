

        ; Anim speed
		dc.w 20
		; Status offset
		dc.b 58, 40
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $4F6, $944, $DA8, $1272, $1722, $1B6A
		
		; Palettes
		dc.w $444, $EEE, $000, $402, $824, $A64, $EAA, $08C, $0CE, $006, $44C, $88E, $464, $8A8, $06A, $026
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_CAMEELA-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_CAMEELA-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_CAMEELA-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_CAMEELA-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_CAMEELA-4.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_CAMEELA-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_CAMEELA-0.bin"
		
		