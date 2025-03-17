
; ASM FILE data\battles\entries\battle41\cs_afterbattle.asm :
; 0x4F47A..0x4F48A : Cutscene after battle 0
bbcs_41:        textCursor STORYTEXT_OFFSET_ASCEND_TOWER
                loadMapFadeIn MAP_ANCIENT_TOWER_CLIMB,12,21
                loadMapEntities ce_4ED76
                setActscriptWait ALLY_BOWIE,eas_Init
                setPos ALLY_PETER,16,24,RIGHT
                setPos FOLLOWER_B,15,24,RIGHT
                setPos ALLY_LEMON,14,24,RIGHT
                jumpIfFlagClear FLAG_FOLLOWER_ZYNK,cs_4ED48 ; Zynk is a follower
                setPos ALLY_ZYNK,13,24,RIGHT
cs_4ED48:       playSound MUSIC_BATTLE_THEME_3
                fadeInB
                nextSingleText $0,128   ; "Who are you?!{N}Oh, are you from Granseal?{W1}"
                setFacing ALLY_BOWIE,UP
                setCamDest 12,4
                nextSingleText $0,128   ; "But, Odd Eye went to...{W2}"
                entityActionsWait 128
                 moveDown 2
                endActions
                nextText $0,128         ; "Impossible!{N}He was defeated?{W2}"
                nextText $0,128         ; "Inconceivable!  But...{N}OK, I'll stop you here.{W2}"
                nextSingleText $0,128   ; "You shall die now!{W1}"
                csc_end
ce_4ED76:       mainEntity 17,24,RIGHT
                entity 16,24,RIGHT,ALLY_PETER,eas_Init
                entity 16,6,DOWN,MAPSPRITE_REAPER,eas_Init
                cscEntitiesEnd
bscs_battle41:  csc_end
rbcs_battle41:  csc_end
edcs_battle41:  csc_end
abcs_battle41:  csc_end
