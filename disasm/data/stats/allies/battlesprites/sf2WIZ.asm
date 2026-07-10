

        ; Anim speed
		dc.w 20
		; Status offset
		dc.b 47, 36
		
		; Palettes pointer
		dc.w $12
		; Frames pointers
		dc.w $110, $3EC, $770, $B78, $FA2, $127E, $155A, $1836
		
		; Palettes
		dc.w $666, $EEE, $000, $ACE, $A84, $842, $420, $CCC, $888, $444, $2AE, $068, $26A, $024, $E0E, $E2E
		dc.w $22E, $EEE, $000, $ACE, $046, $024, $002, $8AC, $468, $024, $AA8, $664, $26A, $442, $E0E, $E2E
		dc.w $A22, $EEE, $000, $ACE, $22C, $02A, $002, $AAA, $664, $442, $004, $020, $26A, $222, $E0E, $E2E
		dc.w $666, $EEE, $000, $ACE, $268, $046, $022, $6CC, $488, $044, $AAA, $866, $26A, $422, $E0E, $E2E
		dc.w $666, $EEE, $000, $ACE, $8A4, $682, $440, $CCC, $888, $444, $00E, $20C, $00C, $208, $8CE, $8CE
		dc.w $666, $EEE, $000, $ACE, $C82, $C62, $A60, $CCC, $888, $444, $2AE, $068, $26A, $024, $8CE, $8CE
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		dc.w $C0C, $EEE, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000, $000
		
		; Frames
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_WIZ-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_WIZ-1.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_WIZ-2.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_WIZ-3.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_WIZ-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_WIZ-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_WIZ-0.bin"
		incbin "data/graphics/battles/battlesprites/allies/allybattlespriteSF2_WIZ-0.bin"
		
		