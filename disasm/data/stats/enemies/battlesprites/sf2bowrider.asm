

        ; Anim speed
		dc.w 22
		; Status offset
		dc.b 65, 45
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $570, $A30, $E9A, $12CC, $173C, $1BFE
		
		; Palettes
		dc.w $886, $EEE, $000, $6AA, $266, $002, $ECA, $A64, $622, $48C, $048, $024, $A88, $644, $248, $026
		dc.w $886, $EEE, $000, $888, $644, $024, $66E, $00C, $006, $8AC, $268, $246, $8AA, $266, $268, $046
		dc.w $886, $EEE, $000, $888, $644, $002, $4AC, $246, $224, $AAC, $6AA, $224, $8AA, $266, $6AA, $466
		dc.w $EA2, $EEE, $000, $AAA, $666, $002, $AEA, $4A4, $462, $48C, $048, $024, $A88, $644, $444, $222
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_BOW_RIDER-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_BOW_RIDER-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_BOW_RIDER-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_BOW_RIDER-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_BOW_RIDER-4.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_BOW_RIDER-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_BOW_RIDER-0.bin"
		
		