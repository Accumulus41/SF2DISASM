
; ASM FILE data\maps\entries\map74\mapsetups\s3_zoneevents.asm :
; 0x50984..0x509C6 : 
ms_map74_ZoneEvents:
                msZoneEvent 255, 60, Map74_ZoneEvent0-ms_map74_ZoneEvents
                msZoneEvent 255, 61, Map74_ZoneEvent0-ms_map74_ZoneEvents
                msDefaultZoneEvent Map74_DefaultZoneEvent-ms_map74_ZoneEvents

; =============== S U B R O U T I N E =======================================


Map74_ZoneEvent0:
                
                 
                chkFlg  FLAG_BATTLE27_COMPLETE             ; Battle 27 completed - BATTLE_TO_TRISTAN                  
                bne.s   byte_509AC      
                setFlg  FLAG_BATTLE27_AVAILABLE             ; Battle 27 unlocked - BATTLE_TO_TRISTAN                
                move.l  #MAP_EVENT_RELOADMAP,((MAP_EVENT_TYPE-$1000000)).w
                setFlg  FLAG_BATTLE28_AVAILABLE             ; Battle 28 unlocked - BATTLE_PANGOAT_VALLEY_BRIDGE     
                setFlg  FLAG_BATTLE29_AVAILABLE             ; Battle 29 unlocked - BATTLE_OUTSIDE_MITULA_SHRINE     
                setFlg  FLAG_BATTLE30_AVAILABLE             ; Battle 30 unlocked - BATTLE_VERSUS_ZALBARD            
                bra.s   Map74_DefaultZoneEvent
byte_509AC:
                
                chkFlg  FLAG_CASTLEPACALON2             ; Set after Frayja asks to go to Moun with you
                beq.s   Map74_ZoneEvent1
                chkFlg  FLAG_BATTLE32_COMPLETE             ; Battle 32 completed - BATTLE_TO_MOUN                     
                bne.s   Map74_ZoneEvent1
                setFlg  FLAG_BATTLE32_AVAILABLE             ; Battle 32 unlocked - BATTLE_TO_MOUN                   
                move.l  #MAP_EVENT_RELOADMAP,((MAP_EVENT_TYPE-$1000000)).w
                rts
				
; =============== S U B R O U T I N E =======================================

Map74_ZoneEvent1:
                move.w  #$1B,d0
                jsr     CheckRandomBattle
                rts

; =============== S U B R O U T I N E =======================================
Map74_DefaultZoneEvent:
                
                rts

    ; End of function Map74_ZoneEvent0

