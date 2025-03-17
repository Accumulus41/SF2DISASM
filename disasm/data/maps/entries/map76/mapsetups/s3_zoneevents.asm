
; ASM FILE data\maps\entries\map76\mapsetups\s3_zoneevents.asm :
; 0x50A24..0x50A3E : 
ms_map76_ZoneEvents:
                msDefaultZoneEvent Map76_DefaultZoneEvent-ms_map76_ZoneEvents

; =============== S U B R O U T I N E =======================================


Map76_DefaultZoneEvent:
                
                 
                move.w  #BATTLE_TO_ROFT,d0
                jsr     CheckRandomBattle
return_50A3A:
                
                rts

    ; End of function Map76_DefaultZoneEvent

