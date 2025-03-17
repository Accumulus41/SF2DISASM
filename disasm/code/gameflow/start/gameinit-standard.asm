
; ASM FILE code\gameflow\start\gameinit-standard.asm :
; Game initialization

; =============== S U B R O U T I N E =======================================


InitializeGame:
                
                move    #$2300,sr
                                
                jsr     (LoadBaseTiles).w
                                
@Continue:      jsr     NewGame
                
                jsr     DisplaySegaLogo
                bne.w   AfterGameIntro  ; skip game intro if pressing Start at the SEGA logo
                bra.w   GameIntro

    ; End of function InitializeGame

