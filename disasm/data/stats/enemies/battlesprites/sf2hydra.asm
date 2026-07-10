

        ; Anim speed
		dc.w 20
		; Status offset
		dc.b 66, 55
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $608, $9B4, $F32, $14DA, $1A34, $1F8E
		
		; Palettes
		dc.w $4A6, $EEE, $000, $020, $064, $0A6, $6EA, $28E, $CEC, $CEA, $AEE, $442, $886, $CCA, $E0E, $E0E
		dc.w $666, $EEE, $000, $004, $02A, $06C, $2AC, $46C, $CEC, $CEA, $AEE, $442, $886, $CCA, $E0E, $E0E
		dc.w $4A6, $EEE, $000, $220, $440, $AA0, $CC4, $C6C, $CCC, $CAC, $AEE, $442, $886, $CCC, $E0E, $E0E
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_HYDRA-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_HYDRA-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_HYDRA-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_HYDRA-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_HYDRA-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_HYDRA-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_HYDRA-0.bin"
		
		