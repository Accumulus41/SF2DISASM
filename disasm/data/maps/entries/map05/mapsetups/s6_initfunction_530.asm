
; ASM FILE data\maps\entries\map05\mapsetups\s6_initfunction_530.asm :
; 0x6061E..0x60708 : 

; =============== S U B R O U T I N E =======================================


ms_map5_flag530_InitFunction:
                
                 
                chkFlg  FLAG_YEEL4             ; Set after Lemon jumps off the cliff in Yeel
                bne.s   byte_60630
                script  cs_607DE
                setFlg  FLAG_YEEL4             ; Set after Lemon jumps off the cliff in Yeel
                bra.s   ms_map5_flag28_InitFunction
byte_60630:
                
                script  cs_6060E
ms_map5_flag28_InitFunction:
                
                chkFlg  FLAG_YEELUNDERGROUND1             ; Set after the scene in underground Yeel where Chaz paces and consults books
                bne.s   byte_6067C      
                cmpi.l  #$6005580,((ENTITY_DATA-$1000000)).w
                bne.s   byte_6067C      
                chkFlg  ALLY_LEMON              ; Lemon joined
                beq.s   byte_6065E
                script  cs_60656
                bra.w   byte_6065E
cs_60656:
                
                setPos ALLY_LEMON,27,55,UP
                csc_end
byte_6065E:
                
                script  cs_60C42
                chkFlg  FLAG_DEVILSHEAD1             ; Set after opening Devil's Head with the Force Sword
                beq.s   byte_60672
                script  cs_60EB2
                bra.s   byte_60678      
byte_60672:
                
                script  cs_60CA4
byte_60678:
                
                setFlg  FLAG_YEELUNDERGROUND1             ; Set after the scene in underground Yeel where Chaz paces and consults books
byte_6067C:
                
                chkFlg  ALLY_CHAZ              ; Chaz joined
                beq.s   byte_6068C      
                move.w  #ALLY_CHAZ,d0
                jsr     MoveEntityOutOfMap
byte_6068C:
                
                chkFlg  FLAG_YEEL4             ; Set after Lemon jumps off the cliff in Yeel
                bne.s   byte_6069C      
                move.w  #130,d0
                jsr     MoveEntityOutOfMap
byte_6069C:
                
                chkFlg  FLAG_YEEL3             ; Set after Chaz and the priest go downstars in Yeel
                beq.s   byte_606B4      
                script  cs_606AC
                bra.w   byte_606B4      
cs_606AC:
                
                setPos 128,26,50,DOWN
                csc_end
byte_606B4:
                
                chkFlg  ALLY_LEMON              ; Lemon joined
                beq.s   byte_606BE      
                setFlg  FLAG_YEEL5             ; Set after recruiting Lemon in Yeel
byte_606BE:
                
                chkFlg  FLAG_YEEL2             ; Set after playing the piano in Yeel (during the late game)
                beq.s   return_606E8
                chkFlg  FLAG_YEEL3             ; Set after Chaz and the priest go downstars in Yeel
                bne.s   return_606E8
                script  cs_606EA
                chkFlg  ALLY_LEMON              ; Lemon joined
                beq.s   return_606E8
                script  cs_606E0
                bra.w   return_606E8
cs_606E0:
                
                setPos ALLY_LEMON,11,10,UP
                csc_end
return_606E8:
                
                rts

    ; End of function ms_map5_flag530_InitFunction

cs_606EA:       setPos ALLY_BOWIE,11,10,UP
                setPos ALLY_PETER,11,10,UP
                setPos FOLLOWER_B,11,10,UP
                csWait 1
                reloadMap 5,4
                csWait 10
                csc_end
