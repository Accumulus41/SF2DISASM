
; ASM FILE data\stats\egressitemsandspells-standard.asm :

; Items that perform the Egress action when used on the field or in battle.
;
table_EgressItems:
                
                dc.b ITEM_ANGEL_WING
                dc.b 255, 255
                dc.b 255, 255
                
                tableEnd.b


; Same as above, but for spells.
;
table_EgressSpells:
                
                dc.b SPELL_EGRESS
                dc.b 255, 255
                dc.b 255, 255
                
                tableEnd.b

