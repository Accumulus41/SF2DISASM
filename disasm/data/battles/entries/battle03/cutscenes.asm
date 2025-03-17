
; ASM FILE data\battles\entries\battle03\cs_afterbattle.asm :
; 0x4F47A..0x4F48A : Cutscene after battle 0
bbcs_03:        executeSubroutine csub_49816
                csc_end

; =============== S U B R O U T I N E =======================================


csub_49816:
                
                setSavedByte #MAP_YEEL, EGRESS_MAP
                rts

    ; End of function csub_49816
bscs_battle03:  csc_end
rbcs_battle03:  csc_end
edcs_battle03:  csc_end
abcs_battle03:  csc_end
