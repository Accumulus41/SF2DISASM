
; ASM FILE data\maps\entries\map90\mapsetups\s3_zoneevents.asm :
; 0x50A24..0x50A3E : 
ms_map90_ZoneEvents:
                msDefaultZoneEvent Map90_DefaultZoneEvent-ms_map90_ZoneEvents

; =============== S U B R O U T I N E =======================================


Map90_DefaultZoneEvent:
                
                 
                move.w  #BATTLE_TO_ROFT,d0
                jsr     CheckRandomBattle
return_50A3A:
                
                rts

    ; End of function Map90_DefaultZoneEvent

