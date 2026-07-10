

        ; Anim speed
		dc.w 22
		; Status offset
		dc.b 66, 62
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $496, $886, $D00, $111C, $153A, $1922
		
		; Palettes
		dc.w $886, $000, $EEE, $ACE, $ECA, $E86, $A42, $622, $68A, $046, $0CE, $08C, $84E, $42A, $06A, $0E0
		dc.w $886, $000, $EEE, $ECA, $886, $664, $442, $220, $EA2, $640, $CCC, $888, $6E8, $6A4, $666, $EC4
		dc.w $886, $000, $EEE, $ACE, $8C6, $482, $260, $040, $68A, $046, $CCC, $888, $E8C, $626, $666, $08E
		dc.w $C0C, $000, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $000, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_MONK-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_MONK-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_MONK-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_MONK-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_MONK-4.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_MONK-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_MONK-0.bin"
		
		