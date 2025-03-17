
; ASM FILE code\common\scripting\map\resetalliesstats.asm :
; 0x478C6..0x4790E : CSC 55 function

; =============== S U B R O U T I N E =======================================


ResetAlliesBattleStats:
                
                movem.l d0-d7,-(sp)
                clr.w   d0
                moveq   #COMBATANT_ALLIES_COUNTER,d7
@Loop:
                
                jsr     GetCurrentHp
                jsr     GetMaxHp
                jsr     SetCurrentHp
                jsr     GetMaxMp
                jsr     SetCurrentMp
                jsr     GetStatusEffects
                andi.w  #STATUSEFFECT_STUN|STATUSEFFECT_POISON|STATUSEFFECT_CURSE,d1
                jsr     SetStatusEffects
                jsr     ApplyStatusEffectsAndItemsOnStats
                addq.w  #1,d0
                dbf     d7,@Loop
                
                movem.l (sp)+,d0-d7
                rts

    ; End of function ResetAlliesBattleStats

