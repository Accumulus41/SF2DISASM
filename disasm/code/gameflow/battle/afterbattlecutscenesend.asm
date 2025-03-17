
; ASM FILE code\gameflow\battle\afterbattlecutscenesend.asm :
; 0x47D54..0x47D6A : After battle cutscenes function end

; START OF FUNCTION CHUNK FOR ExecuteAfterBattleCutscene

EndAfterBattleCutscene:
                
                movem.l (sp)+,d0-d1
                rts

; END OF FUNCTION CHUNK FOR ExecuteAfterBattleCutscene

