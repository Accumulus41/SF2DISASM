
; ASM FILE data\battles\global\randombattles.asm :
; 0x1B6DB0..0x1B6DDA : Random battles list, and data related to UpgradeEnemyIndex function
list_RandomBattles:
                
; List of battles prefixed with length.
;
; Syntax        randomBattles [BATTLE_]enum,..[BATTLE_]enum
;
; Note: Constant names ("enums"), shorthands (defined by macro), and numerical indexes are interchangeable.
                
                battles TO_HAWEL_HOUSE, &
                        NORTH_CLIFF, &
                        TO_RIBBLE, &
                        TO_THE_EAST, &
                        SOUTHEAST_DESERT, &
                        TO_TAROS_SHRINE, &
                        OUTSIDE_ELVEN_VILLAGE, &
                        DEVIL_TAIL, &
                        TO_NORTH_PARMECIA, &
                        OUTSIDE_KETTO, &
                        TO_ROFT, &
                        TO_ROFT, &
                        TO_ROFT, &
                        TO_ROFT, &
                        TO_ROFT, &
                        TO_ROFT
                
