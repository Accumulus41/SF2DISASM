
; ASM FILE data\maps\entries\map52\mapsetups\s6_initfunction.asm :
; 0x5C4D6..0x5C4EE : 

; =============== S U B R O U T I N E =======================================


ms_map52_InitFunction:
                
                 
                chkFlg  FLAG_VOLCANO3             ; Set after winning the cliff battle outside Bedoe, before Peter delivers lines
                beq.s   return_5C4EC

    ; End of function ms_map52_InitFunction


; =============== S U B R O U T I N E =======================================


sub_5C4DC:
                
                 
                chkFlg  FLAG_VOLCANO1             ; Set after Peter delivers his lines after the cliffs before Bedoe battle
                bne.s   return_5C4EC
                script  cs_5C622
                setFlg  FLAG_VOLCANO1             ; Set after Peter delivers his lines after the cliffs before Bedoe battle
return_5C4EC:
                
                rts

    ; End of function sub_5C4DC

