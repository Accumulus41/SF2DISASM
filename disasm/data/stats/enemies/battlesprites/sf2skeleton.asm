

        ; Anim speed
		dc.w 26
		; Status offset
		dc.b 64, 48
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $534, $9D6, $E46, $120E, $1648, $1AFC
		
		; Palettes
		dc.w $666, $000, $EEE, $8AA, $488, $266, $044, $028, $44C, $004, $48A, $048, $CAA, $866, $644, $024
		dc.w $666, $000, $CCC, $6AA, $488, $266, $044, $246, $4AC, $004, $48A, $048, $CAA, $866, $644, $024
		dc.w $666, $000, $CCC, $02C, $488, $266, $044, $0AC, $4CC, $004, $48A, $2AC, $CAA, $866, $644, $024
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_SKELETON-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_SKELETON-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_SKELETON-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_SKELETON-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_SKELETON-4.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_SKELETON-5.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_SKELETON-0.bin"
		
		