
; ASM FILE data\maps\entries\map82\mapsetups\s3_zoneevents.asm :
; 0x4FD6C..0x4FD7C : 
ms_map82_ZoneEvents:
                msDefaultZoneEvent Map82_DefaultZoneEvent-ms_map82_ZoneEvents

; =============== S U B R O U T I N E =======================================


Map82_DefaultZoneEvent:
                
                move.w  #BATTLE_OUTSIDE_ELVEN_VILLAGE,d0
                jsr     CheckRandomBattle
                rts

    ; End of function Map82_DefaultZoneEvent

