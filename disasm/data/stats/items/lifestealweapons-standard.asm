
; ASM FILE data\stats\items\lifestealweapons-standard.asm :

; Weapons that leech a fraction of damage dealt and restore the user's HP.
table_LifestealWeapons:
                
                ; Item index, recovery amount = n/256, where 0 = 256
                dc.b ITEM_ANGEL_WING, 128
                dc.b ITEM_ANGEL_WING, 128
                dc.b ITEM_ANGEL_WING, 128
                dc.b ITEM_ANGEL_WING, 128
                dc.b ITEM_ANGEL_WING, 128
                dc.b ITEM_ANGEL_WING, 128
                dc.b ITEM_ANGEL_WING, 128
                dc.b ITEM_ANGEL_WING, 128
                dc.b ITEM_ANGEL_WING, 128
                dc.b ITEM_ANGEL_WING, 128
                
                tableEnd.b
