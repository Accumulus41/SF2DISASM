

        ; Anim speed
		dc.w 22
		; Status offset
		dc.b 68, 57
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $42E, $7AC, $B20, $EB0, $1286, $1606
		
		; Palettes
		dc.w $666, $EEE, $000, $026, $02A, $02E, $842, $CAA, $466, $688, $6AA, $048, $68A, $CCC, $ACC, $8AE
		dc.w $666, $EEE, $000, $602, $A66, $CA8, $642, $CAA, $044, $682, $4A2, $268, $68A, $CCC, $CAA, $A88
		dc.w $666, $EEE, $000, $040, $480, $8A4, $A22, $CAA, $068, $2AE, $8EE, $644, $A88, $ECC, $CCC, $C8A
		dc.w $666, $EEE, $000, $024, $02A, $02C, $842, $CAA, $222, $466, $466, $048, $68A, $CCC, $ACC, $8AE
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ARCHER-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ARCHER-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ARCHER-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ARCHER-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ARCHER-4.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ARCHER-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_ARCHER-0.bin"
		
		