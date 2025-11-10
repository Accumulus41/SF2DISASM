
; ASM FILE data\maps\entries\map91\mapsetups\s3_zoneevents.asm :
; 0x50A6A..0x50A84 : 
ms_map91_ZoneEvents:
                msDefaultZoneEvent Map91_DefaultZoneEvent-ms_map91_ZoneEvents

; =============== S U B R O U T I N E =======================================


Map91_DefaultZoneEvent:
                
                 
                chkFlg  FLAG_BATTLE37_COMPLETE             ; Battle 37 completed - BATTLE_VERSUS_RED_BARON            
                bne.s   return_50A80
                setFlg  FLAG_BATTLE37_AVAILABLE             ; Battle 37 unlocked - BATTLE_VERSUS_RED_BARON          
                move.l  #MAP_EVENT_RELOADMAP,((MAP_EVENT_TYPE-$1000000)).w
return_50A80:
                
                rts

    ; End of function Map91_DefaultZoneEvent


; =============== S U B R O U T I N E =======================================


nullsub_50A82:
                
                rts

    ; End of function nullsub_50A82

