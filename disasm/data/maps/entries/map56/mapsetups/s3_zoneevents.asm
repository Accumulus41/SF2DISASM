
; ASM FILE data\maps\entries\map56\mapsetups\s3_zoneevents.asm :
; 0x614D6..0x614FE : 
ms_map56_ZoneEvents:
                msZoneEvent 43, 40, Map56_ZoneEvent0-ms_map56_ZoneEvents
				msZoneEvent 255, 24, Map56_ZoneEvent1-ms_map56_ZoneEvents
				msZoneEvent 255, 25, Map56_ZoneEvent1-ms_map56_ZoneEvents
                msDefaultZoneEvent Map56_DefaultZoneEvent-ms_map56_ZoneEvents

; =============== S U B R O U T I N E =======================================


Map56_ZoneEvent0:
                
                 
                chkFlg  FLAG_TOWER2             ; Will be set with the 0387, but only if the event isn't triggered by speaking
                bne.s   Map56_DefaultZoneEvent
                chkFlg  FLAG_TOWER1             ; Set after the first time you talk to Creed on path up Ancient Tower
                bne.s   byte_614F4      
                script  cs_6150A
                setFlg  FLAG_TOWER2             ; Set after the first time you talk to Creed on path up Ancient Tower
byte_614F4:
                
                setFlg  FLAG_BATTLE41_AVAILABLE   ; Battle 41 unlocked - BATTLE_OUTSIDE_ANCIENT_TOWER     
                setFlg  FLAG_TOWER2             ; Will be set with the 0387, but only if the event isn't triggered by speaking
                rts

; =============== S U B R O U T I N E =======================================

Map56_ZoneEvent1:

				move.w  #41,d0
                jsr     CheckRandomBattle
                rts

; =============== S U B R O U T I N E =======================================

Map56_DefaultZoneEvent:
                
                rts

    ; End of function Map56_ZoneEvent0

