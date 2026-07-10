

        ; Anim speed
		dc.w 22
		; Status offset
		dc.b 68, 60
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $56E, $A20, $EB0, $147A, $193A, $1DFA
		
		; Palettes
		dc.w $666, $000, $EEE, $ACC, $686, $242, $E0E, $E0E, $EA0, $C60, $820, $66E, $020, $E0E, $E0E, $E0E
		dc.w $666, $000, $EEE, $ACE, $46C, $028, $E0E, $E0E, $8E6, $4A0, $060, $E6E, $024, $E0E, $E0E, $E0E
		dc.w $666, $000, $EEE, $A64, $622, $242, $E0E, $E0E, $C2C, $C60, $820, $66E, $020, $E0E, $E0E, $E0E
		dc.w $C0C, $000, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $000, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_GARGOYLE-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_GARGOYLE-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_GARGOYLE-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_GARGOYLE-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_GARGOYLE-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_GARGOYLE-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_GARGOYLE-0.bin"
		
		