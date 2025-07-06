
; ASM FILE code\gameflow\battle\afterbattlecutscenesend.asm :
; 0x47D54..0x47D6A : After battle cutscenes function end

; START OF FUNCTION CHUNK FOR ExecuteAfterBattleCutscene

EndAfterBattleCutscene:
                
                movem.l d6/d7,-(sp)
                clr.l   d0
                clr.l   d1
                clr.l   d7
                jsr     GetCurrentLevel
                move.b  d1,d7
                moveq   #29,d6
                
@LoopCharacters:moveq   #30,d0
                sub.b   d6,d0
                move.w  d0,d1
                jsr     CheckFlag
                bne.s   @NextChar
                jsr     GetCurrentLevel
                cmp.b   d1,d7
                ble.s   @NextChar
                jsr     CatchupChars
@NextChar:      dbf     d6,@LoopCharacters
                
                movem.l (sp)+,d6/d7
                movem.l (sp)+,d0-d1
                rts

; END OF FUNCTION CHUNK FOR ExecuteAfterBattleCutscene

