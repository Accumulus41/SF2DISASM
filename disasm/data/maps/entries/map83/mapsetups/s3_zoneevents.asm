
; ASM FILE data\maps\entries\map83\mapsetups\s3_zoneevents.asm :
; 0x4FDA2..0x4FDD2 : 
ms_map83_ZoneEvents:
                msZoneEvent 23, 255, Map83_ZoneEvent0-ms_map83_ZoneEvents
                msZoneEvent 24, 255, Map83_ZoneEvent0-ms_map83_ZoneEvents
                msZoneEvent 25, 255, Map83_ZoneEvent0-ms_map83_ZoneEvents
                msZoneEvent 255, 1, Map83_ZoneEvent1-ms_map83_ZoneEvents
                msZoneEvent 255, 2, Map83_ZoneEvent1-ms_map83_ZoneEvents
                msZoneEvent 255, 3, Map83_ZoneEvent1-ms_map83_ZoneEvents
                msDefaultZoneEvent Map83_DefaultZoneEvent-ms_map83_ZoneEvents

; =============== S U B R O U T I N E =======================================


Map83_ZoneEvent0:
                
                move.w  #BATTLE_TO_TAROS_SHRINE,d0
                jsr     CheckRandomBattle
                rts

    ; End of function Map83_ZoneEvent0


; =============== S U B R O U T I N E =======================================

Map83_ZoneEvent1:
                
                move.w  #$9,d0
                jsr     CheckRandomBattle
                rts


; =============== S U B R O U T I N E =======================================


Map83_DefaultZoneEvent:
                
                rts

    ; End of function Map83_DefaultZoneEvent

