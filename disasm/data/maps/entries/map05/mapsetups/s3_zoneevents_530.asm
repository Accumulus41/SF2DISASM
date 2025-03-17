
; ASM FILE data\maps\entries\map05\mapsetups\s3_zoneevents_530.asm :
; 0x604C8..0x60548 : 
ms_map5_flag530_ZoneEvents:
                msZoneEvent 11, 8, Map5_212_ZoneEvent0-ms_map5_flag530_ZoneEvents
                msZoneEvent 255, 42, Map5_212_ZoneEvent1-ms_map5_flag530_ZoneEvents
                msDefaultZoneEvent Map5_212_DefaultZoneEvent-ms_map5_flag530_ZoneEvents

; =============== S U B R O U T I N E =======================================


Map5_212_DefaultZoneEvent:
                
                rts

    ; End of function Map5_212_DefaultZoneEvent


; =============== S U B R O U T I N E =======================================


Map5_212_ZoneEvent0:
                
                 
                chkFlg  FLAG_YEEL2             ; Set after playing the piano in Yeel (during the late game)
                beq.s   return_60500
                chkFlg  FLAG_YEEL3             ; Set after Chaz and the priest go downstars in Yeel
                bne.s   return_60500
                script  cs_6093A
                chkFlg  FLAG_DEVILSHEAD1             ; Set after opening Devil's Head with the Force Sword
                beq.s   byte_604F6
                script  cs_60BA6
                bra.s   byte_604FC      
byte_604F6:
                
                script  cs_60B10
byte_604FC:
                
                setFlg  FLAG_YEEL3             ; Set after Chaz and the priest go downstars in Yeel
return_60500:
                
                rts

    ; End of function Map5_212_ZoneEvent0


; =============== S U B R O U T I N E =======================================


Map5_212_ZoneEvent1:
                
                 
                chkFlg  ALLY_LEMON              ; Lemon joined
                bne.s   return_6051C
                chkFlg  ALLY_CHAZ              ; Chaz joined
                beq.s   return_6051C
                script  cs_60708
                setFlg  FLAG_FOLLOWER_LEMON              ; Lemon is a follower
                setFlg  FLAG_YEEL5             ; Set after recruiting Lemon in Yeel
return_6051C:
                
                rts

    ; End of function Map5_212_ZoneEvent1

