

        ; Anim speed
		dc.w 16
		; Status offset
		dc.b 63, 64
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $622, $BD8, $111E, $155C, $1AA4, $2018
		
		; Palettes
		dc.w $666, $EEE, $000, $442, $222, $220, $000, $AAA, $E0E, $E0E, $E0E, $E0E, $E0E, $E0E, $E0E, $E0E
		dc.w $666, $EEE, $000, $AE8, $8A6, $462, $020, $EEE, $E0E, $E0E, $E0E, $E0E, $E0E, $E0E, $E0E, $E0E
		dc.w $666, $EEE, $000, $AA8, $664, $442, $220, $EEC, $E0E, $E0E, $E0E, $E0E, $E0E, $E0E, $E0E, $E0E
		dc.w $666, $EEE, $000, $EAE, $A4C, $60A, $008, $EEE, $E0E, $E0E, $E0E, $E0E, $E0E, $E0E, $E0E, $E0E
		dc.w $666, $EEE, $000, $ECA, $C86, $842, $420, $EEE, $E0E, $E0E, $E0E, $E0E, $E0E, $E0E, $E0E, $E0E
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_CLOUD-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_CLOUD-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_CLOUD-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_CLOUD-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_CLOUD-4.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_CLOUD-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_CLOUD-0.bin"
		
		