
; ASM FILE data\battles\entries\battle15\cs_afterbattle.asm :
; 0x4F47A..0x4F48A : Cutscene after battle 0
bbcs_15:        textCursor STORYTEXT_OFFSET_ENTER_RIVER_SHRINE
                loadMapFadeIn MAP_ACHILLES_SHRINES,9,15
                loadMapEntities ce_4AE42
                setActscriptWait ALLY_BOWIE,eas_Init
                setActscriptWait FOLLOWER_A,eas_Init
                setPos FOLLOWER_A,14,19,UP
                setActscriptWait FOLLOWER_B,eas_Init
                setPos FOLLOWER_B,15,20,UP
                setActscriptWait ALLY_PETER,eas_Init
                setPos ALLY_PETER,13,20,UP
                fadeInB
                cameraSpeed $30
                nextSingleText $0,FOLLOWER_A ; "This is the Ancient Hall{N}that leads to the Ancient{N}Tunnel...{W1}"
                entityActionsWait FOLLOWER_A
                 moveUp 1
                endActions
                setCamDest 9,4
                csWait 30
                setActscript 128,eas_Jump
                setActscript 129,eas_Jump
                setActscript 130,eas_Jump
                setActscript 131,eas_Jump
                setActscriptWait 132,eas_Jump
                csWait 30
                setCamDest 9,15
                nextSingleText $0,FOLLOWER_A ; "There are more monsters here!{W2}"
                setFacing FOLLOWER_A,DOWN
                nextSingleText $0,FOLLOWER_A ; "{LEADER}, take 'em out!{W1}"
                csc_end
ce_4AE42:       mainEntity 14,20,UP
                entity 14,7,DOWN,MAPSPRITE_GOLEM,eas_Init
                entity 15,6,DOWN,MAPSPRITE_GARGOYLE,eas_Init
                entity 13,6,DOWN,MAPSPRITE_MASTER_MAGE,eas_Init
                entity 16,7,DOWN,MAPSPRITE_BLACK_MONK,eas_Init
                entity 12,7,DOWN,MAPSPRITE_ARROW_LAUNCHER,eas_Init
                cscEntitiesEnd
bscs_battle15:  csc_end
rbcs_battle15:  csc_end
edcs_battle15:  csc_end
abcs_battle15:  textCursor STORYTEXT_OFFSET_CLEAR_RIVER_SHRINE
                loadMapFadeIn MAP_ACHILLES_SHRINES,9,10
                loadMapEntities ce_4AFB6
                setActscriptWait ALLY_BOWIE,eas_Init
                setActscriptWait ALLY_PETER,eas_Init
                setActscriptWait FOLLOWER_A,eas_Init
                setActscriptWait FOLLOWER_B,eas_Init
                setPos FOLLOWER_A,14,19,UP
                fadeInB
                cameraSpeed $30
                entityActionsWait FOLLOWER_A
                 moveUp 5
                endActions
                nextSingleText $0,FOLLOWER_A ; "It was lucky for me that I{N}met you.  Thank you.{W1}"
                setFacing FOLLOWER_A,RIGHT
                nextSingleText $0,FOLLOWER_A ; "Follow me to the Ancient{N}Tunnel.{W1}"
                entityActionsWait FOLLOWER_A
                 moveRight 2
                 moveUp 2
                 moveRight 6
                endActions
                fadeOutB
                setPos ALLY_BOWIE,27,10,UP
                setPos ALLY_PETER,28,10,UP
                setPos FOLLOWER_B,26,10,UP
                setPos FOLLOWER_A,27,7,UP
                setCamDest 21,5
                fadeInB
                nextText $0,FOLLOWER_A  ; "Why is this door closed?{N}That's strange...{W2}"
                nextSingleText $0,FOLLOWER_A ; "Oh well, let's go in.{W1}"
                entityFlashWhite FOLLOWER_A,$28
                csWait 60
                setActscriptWait FOLLOWER_A,eas_Jump
                nextSingleText $0,FOLLOWER_A ; "What?  Let me try again.{W1}"
                entityFlashWhite FOLLOWER_A,$32
                setQuake 1
                csWait 20
                setQuake 0
                csWait 90
                nextSingleText $0,FOLLOWER_A ; "Petro, my grandson, locked{N}the door.{W1}"
                customActscriptWait FOLLOWER_A
                 ac_setSpeed 16,16      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActionsWait FOLLOWER_A
                 moveDown 1
                endActions
                nextSingleText $0,FOLLOWER_A ; "Sorry, guys!  We can't go to{N}Grans Island this way.{W1}"
                entityActions FOLLOWER_A
                 moveDown 2
                endActions
                csWait 15
                entityActions ALLY_BOWIE
                 moveDown 1
                endActions
                entityActions ALLY_PETER
                 moveDown 1
                endActions
                entityActionsWait FOLLOWER_B
                 moveDown 1
                endActions
                setFacing ALLY_BOWIE,UP
                setFacing ALLY_PETER,UP
                setFacing FOLLOWER_B,UP
                waitIdle FOLLOWER_A
                entityActionsWait FOLLOWER_A
                 moveLeft 3
                endActions
                setFacing ALLY_BOWIE,LEFT
                setFacing ALLY_PETER,LEFT
                setFacing FOLLOWER_B,LEFT
                entityActionsWait FOLLOWER_A
                 moveLeft 5
                endActions
                hide FOLLOWER_A
                clearF FLAG_FOLLOWER_OLDMAN               ; Old man is a follower
                setF FLAG_RUINS4                ; Set after the old man fails to open the way to Grans in the Wooden Panel shrine
                followEntity ALLY_PETER,ALLY_BOWIE,2
                followEntity FOLLOWER_B,ALLY_PETER,2
                warp MAP_ACHILLES_SHRINES,27,11,UP
                csc_end
ce_4AFB6:       mainEntity 14,5,DOWN
                cscEntitiesEnd
