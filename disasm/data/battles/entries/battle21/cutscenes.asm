
; ASM FILE data\battles\entries\battle21\cs_afterbattle.asm :
; 0x4F47A..0x4F48A : Cutscene after battle 0
bbcs_21:        textCursor STORYTEXT_OFFSET_APPROACH_CREEDS
                loadMapFadeIn MAP_OVERWORLD_DEVILS_TAIL,5,18
                loadMapEntities ce_4B84C
                setActscriptWait ALLY_BOWIE,eas_Init
                setActscriptWait ALLY_PETER,eas_Init
                setPos ALLY_PETER,28,24,LEFT
                setActscriptWait FOLLOWER_B,eas_Init
                setPos FOLLOWER_B,28,22,LEFT
                setPos FOLLOWER_A,28,23,LEFT
                fadeInB
                cameraSpeed $30
                nextText $0,128         ; "(Sniff, sniff)...I smell{N}more invaders from the east.{W2}"
                nextSingleText $0,128   ; "This is the territory of{N}Mr. Creed.{W1}"
                setFacing 128,RIGHT
                setFacing 129,RIGHT
                setFacing 130,RIGHT
                csWait 30
                setCamDest 21,18
                nextSingleText $0,128   ; "Go away!{W1}"
                entityActionsWait ALLY_PETER
                 moveLeft 2
                endActions
                nextText $0,ALLY_PETER  ; "But we have to see him.{W2}"
                nextSingleText $0,ALLY_PETER ; "Please let us pass!{W1}"
                setCamDest 5,18
                entityActionsWait 128
                 moveRight 1
                endActions
                nextSingleText $0,128   ; "No!  Leave now!{W1}"
                csWait 50
                setPos 131,10,24,RIGHT
                csWait 40
                setPos 132,10,20,RIGHT
                csWait 30
                setPos 133,10,22,RIGHT
                csWait 20
                nextSingleText $0,128   ; "Never mind.  Get 'em boys!{W1}"
                setActscript 131,eas_Jump
                setActscript 132,eas_Jump
                setActscriptWait 133,eas_Jump
                csc_end
ce_4B84C:       mainEntity 27,23,LEFT
                entity 28,24,LEFT,ALLY_PETER,eas_Init
                entity 8,22,LEFT,MAPSPRITE_SKELETON,eas_Init
                entity 9,21,LEFT,MAPSPRITE_DARK_CLERIC,eas_Init
                entity 9,23,LEFT,MAPSPRITE_DARK_MADAM,eas_Init
                entity 63,63,RIGHT,MAPSPRITE_ARROW_LAUNCHER,eas_Init
                entity 63,63,RIGHT,MAPSPRITE_HARPY,eas_Init
                entity 63,63,RIGHT,MAPSPRITE_ORC,eas_Init
                cscEntitiesEnd
bscs_battle21:  csc_end
rbcs_battle21:  csc_end
edcs_battle21:  csc_end
abcs_battle21:  textCursor STORYTEXT_OFFSET_OUTSIDE_CREEDS
                loadMapFadeIn MAP_OVERWORLD_DEVILS_TAIL,4,18
                loadMapEntities ce_4B948
                setActscriptWait ALLY_BOWIE,eas_Init
                setActscriptWait ALLY_PETER,eas_Init
                setPos ALLY_PETER,11,23,LEFT
                setActscriptWait FOLLOWER_B,eas_Init
                setPos FOLLOWER_B,11,21,LEFT
                setPos FOLLOWER_A,11,22,LEFT
                fadeInB
                customActscriptWait FOLLOWER_B
                 ac_setSpeed 28,28      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                csWait 5
                setActscript FOLLOWER_B,eas_2xRightLeft
                csWait 120
                entityActionsWait FOLLOWER_B
                 moveLeft 3
                 moveDown 1
                 moveLeft 1
                endActions
                csWait 40
                setFacing FOLLOWER_B,RIGHT
                nextSingleText $0,FOLLOWER_B ; "Hurry!  Let's go into{N}Creed's mansion.{W1}"
                nextSingleText $C0,ALLY_PETER ; "Oddler, can you see?{W1}"
                nextSingleText $0,FOLLOWER_B ; "No, why?{W1}"
                nextSingleText $C0,ALLY_PETER ; "You're moving around as{N}if you can see.{W1}"
                nextSingleText $0,FOLLOWER_B ; "Am I?  Maybe my other{N}senses have sharpened{N}since I lost my sight.{W1}"
                nextSingleText $C0,ALLY_PETER ; "Oh, I see.{W1}"
                entityActionsWait ALLY_PETER
                 moveLeft 1
                endActions
                setFacing ALLY_PETER,UP
                nextSingleText $C0,ALLY_PETER ; "{LEADER}, let's go see{N}Mr. Creed!{W1}"
                setFacing ALLY_BOWIE,DOWN
                nod ALLY_BOWIE
                followEntity FOLLOWER_A,ALLY_BOWIE,2
                followEntity ALLY_PETER,FOLLOWER_A,1
                followEntity FOLLOWER_B,FOLLOWER_A,3
                warp MAP_OVERWORLD_DEVILS_TAIL,26,23,DOWN
                csc_end
ce_4B948:       mainEntity 10,22,LEFT
                entity 11,23,LEFT,ALLY_PETER,eas_Init
                cscEntitiesEnd
