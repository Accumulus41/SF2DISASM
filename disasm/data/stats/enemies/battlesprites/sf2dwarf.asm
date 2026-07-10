

        ; Anim speed
		dc.w 23
		; Status offset
		dc.b 61, 61
		
		; Palettes pointer
		dc.w $10
		; Frames pointers
		dc.w $AE, $530, $9AE, $DEE, $122C, $1720, $1BA2
		
		; Palettes
		dc.w $666, $000, $EEE, $8AC, $46A, $026, $8AA, $842, $8CE, $C86, $46A, $004, $A6E, $8A8, $242, $464
		dc.w $666, $000, $EEE, $AAC, $66A, $246, $8AA, $02A, $ACC, $26E, $488, $024, $2E0, $A88, $422, $644
		dc.w $666, $000, $EEE, $ACE, $68C, $246, $8AA, $460, $6AC, $8A2, $268, $024, $EA0, $AA8, $442, $664
		dc.w $666, $000, $EEE, $ACC, $6AA, $602, $AAA, $460, $6AC, $000, $242, $020, $000, $A00, $600, $C02
		dc.w $C0C, $000, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_DWARF-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_DWARF-1.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_DWARF-2.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_DWARF-3.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_DWARF-4.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_DWARF-0.bin"
		incbin "data/graphics/battles/battlesprites/enemies/enemybattlespriteSF2_DWARF-0.bin"
		
		