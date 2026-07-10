

        ; Anim speed
		dc.w 24
		; Status offset
		dc.b 65, 54
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $532, $9B8, $E02, $139C, $1A38, $1EBC
		
		; Palettes
		dc.w $E66, $EEE, $000, $602, $A24, $006, $22A, $E8A, $624, $046, $220, $462, $8C6, $C46, $66E, $6AC
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_GESHP-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_GESHP-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_GESHP-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_GESHP-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_GESHP-4.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_GESHP-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_GESHP-0.bin"
		
		