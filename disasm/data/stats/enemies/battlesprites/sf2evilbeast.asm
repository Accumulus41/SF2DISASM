

        ; Anim speed
		dc.w 18
		; Status offset
		dc.b 48, 56
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $57C, $A26, $D92, $1232, $1768, $1C36
		
		; Palettes
		dc.w $662, $000, $EEE, $066, $042, $8CE, $48A, $046, $4CE, $86E, $40A, $006, $26A, $E0E, $E0E, $E0E
		dc.w $662, $000, $EEE, $20C, $226, $CCA, $22A, $222, $220, $622, $664, $006, $222, $E0E, $E0E, $E0E
		dc.w $662, $000, $EEE, $622, $A22, $ACC, $226, $222, $C2A, $C6C, $A0A, $604, $CCC, $E0E, $E0E, $E0E
		dc.w $C0C, $000, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $000, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_EVIL_BEAST-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_EVIL_BEAST-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_EVIL_BEAST-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_EVIL_BEAST-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_EVIL_BEAST-4.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_EVIL_BEAST-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_EVIL_BEAST-0.bin"
		
		