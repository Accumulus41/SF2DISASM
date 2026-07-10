

        ; Anim speed
		dc.w 24
		; Status offset
		dc.b 64, 44
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $54C, $9E4, $EB6, $135C, $1852, $1CF0
		
		; Palettes
		dc.w $E44, $EEE, $000, $088, $0EE, $620, $A60, $EA6, $644, $A88, $ECC, $248, $ACE, $68C, $E0E, $046
		dc.w $E44, $EEE, $000, $26A, $0CE, $228, $06A, $4AE, $644, $A88, $ECC, $248, $ACE, $68C, $E0E, $046
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_KING-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_KING-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_KING-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_KING-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_KING-4.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_KING-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_KING-0.bin"
		
		