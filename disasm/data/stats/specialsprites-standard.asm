
; ASM FILE data\stats\specialsprites-standard.asm :
;

; Large 2x2 mapblocks mapsprites. 
; Note that the engine can normally handle a maximum of 10 sprites, and also that each sprite has a unique hardcoded behavior.
table_SpecialSprites:
                
; Syntax        dc.w entityMapspriteIndex, specialMapspriteIndex, 0 if ally/NPC or -1 if enemy (for the purpose of determining minimap indicators)
                
                dc.w MAPSPRITE_TAROS, SPECIAL_SPRITE_TAROS, -1
                dc.w MAPSPRITE_KRAKEN, SPECIAL_SPRITE_KRAKEN_1, -1
                dc.w MAPSPRITE_NAZCA_SHIP, SPECIAL_SPRITE_NAZCA_SHIP, 0
                dc.w MAPSPRITE_EVIL_SPIRIT, SPECIAL_SPRITE_EVIL_SPIRIT, 0
                dc.w MAPSPRITE_ZEON, SPECIAL_SPRITE_ZEON_1, -1
                dc.w 1018, 5, -1
                dc.w 1017, 6, -1
                dc.w 1016, 7, -1
                dc.w 1015, 8, -1
                dc.w 1014, 9, -1
                
                tableEnd.w
