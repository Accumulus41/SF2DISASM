

        ; Anim speed
		dc.w 24
		; Status offset
		dc.b 64, 47
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $570, $A5C, $F32, $141A, $18DC, $1D9E
		
		; Palettes
		dc.w $888, $000, $EEE, $8CE, $48C, $048, $AAA, $666, $660, $440, $464, $6A6, $042, $884, $4CE, $E8C
		dc.w $888, $000, $EEE, $8CE, $48A, $046, $8CC, $488, $846, $624, $A88, $ECC, $644, $C68, $6CE, $AE6
		dc.w $888, $000, $EEE, $8CE, $48A, $046, $8CC, $488, $44C, $226, $C4C, $C2A, $604, $64C, $6CE, $202
		dc.w $C0C, $000, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $000, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_WIZARD-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_WIZARD-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_WIZARD-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_WIZARD-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_WIZARD-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_WIZARD-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_WIZARD-0.bin"
		
		