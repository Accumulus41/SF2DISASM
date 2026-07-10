

        ; Anim speed
		dc.w 22
		; Status offset
		dc.b 63, 51
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $57C, $9E4, $DDC, $1202, $1682, $1B50
		
		; Palettes
		dc.w $888, $000, $EEE, $CC8, $684, $442, $6AC, $46A, $026, $AAC, $668, $ECC, $A88, $88E, $44C, $228
		dc.w $888, $000, $EEE, $8C8, $484, $242, $866, $644, $422, $AAC, $668, $ECC, $A88, $EA8, $C84, $842
		dc.w $888, $000, $EEE, $EAC, $A68, $624, $8C8, $682, $240, $AAA, $666, $AAC, $448, $88E, $44C, $228
		dc.w $888, $000, $EEE, $AAE, $66A, $426, $CC8, $882, $440, $AAA, $666, $8CE, $06A, $88E, $44C, $228
		dc.w $C0C, $000, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_TITAN-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_TITAN-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_TITAN-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_TITAN-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_TITAN-4.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_TITAN-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_TITAN-0.bin"
		
		