

        ; Anim speed
		dc.w 22
		; Status offset
		dc.b 69, 52
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $64C, $BE6, $10EE, $16F8, $1C66, $2204
		
		; Palettes
		dc.w $666, $000, $EEE, $28A, $046, $862, $640, $CA8, $48C, $048, $026, $8CE, $E6E, $CCA, $886, $442
		dc.w $666, $000, $EEE, $26A, $026, $08A, $046, $4CE, $CA6, $A62, $600, $6AE, $4E0, $ACC, $8AA, $266
		dc.w $666, $000, $EEE, $688, $644, $02C, $008, $48E, $68C, $448, $226, $8CC, $0E4, $CCA, $886, $442
		dc.w $666, $000, $EEE, $444, $222, $08A, $222, $0CC, $C44, $422, $600, $6AA, $4E0, $ACC, $8AA, $266
		dc.w $C0C, $000, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ORC-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ORC-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ORC-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ORC-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ORC-4.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ORC-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ORC-0.bin"
		
		