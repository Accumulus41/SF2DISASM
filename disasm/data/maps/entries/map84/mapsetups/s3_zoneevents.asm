
; ASM FILE data\maps\entries\map84\mapsetups\s3_zoneevents.asm :
; 0x4FDFE..0x4FE32 : 
ms_map84_ZoneEvents:
                msZoneEvent 16, 255, Map84_ZoneEvent0-ms_map84_ZoneEvents
                msZoneEvent 17, 255, Map84_ZoneEvent0-ms_map84_ZoneEvents
                msZoneEvent 18, 255, Map84_ZoneEvent0-ms_map84_ZoneEvents
                msZoneEvent 19, 255, Map84_ZoneEvent0-ms_map84_ZoneEvents
                msZoneEvent 1, 255, Map84_ZoneEvent1-ms_map84_ZoneEvents
                msZoneEvent 2, 255, Map84_ZoneEvent1-ms_map84_ZoneEvents
                msZoneEvent 3, 255, Map84_ZoneEvent1-ms_map84_ZoneEvents
                msDefaultZoneEvent Map84_DefaultZoneEvent-ms_map84_ZoneEvents

; =============== S U B R O U T I N E =======================================


Map84_ZoneEvent0:
                
                move.w  #BATTLE_SOUTHEAST_DESERT,d0
                jsr     CheckRandomBattle
                rts

    ; End of function Map84_ZoneEvent0


; =============== S U B R O U T I N E =======================================

Map84_ZoneEvent1:
                
                move.w  #BATTLE_TO_THE_EAST,d0
                jsr     CheckRandomBattle
                rts

    ; End of function Map84_ZoneEvent0


; =============== S U B R O U T I N E =======================================


Map84_DefaultZoneEvent:
                
                rts

    ; End of function Map84_DefaultZoneEvent

