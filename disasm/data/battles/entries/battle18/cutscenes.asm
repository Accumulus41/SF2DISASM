
; ASM FILE data\battles\entries\battle18\cs_afterbattle.asm :
; 0x4F47A..0x4F48A : Cutscene after battle 0
bbcs_18:        textCursor STORYTEXT_OFFSET_MEET_TAROS
                loadMapFadeIn MAP_TAROS_SHRINE,7,22
                loadMapEntities ce_4B2DA
                setActscriptWait ALLY_BOWIE,eas_Init
                setActscriptWait ALLY_PETER,eas_Init
                setActscriptWait FOLLOWER_B,eas_Init
                setActscriptWait ALLY_ROHDE,eas_Init
                setPos ALLY_PETER,13,33,UP
                setPos FOLLOWER_B,12,33,UP
                setPos ALLY_ROHDE,11,33,UP
                stopEntity 129
                playSound MUSIC_SHRINE
                fadeInB
                cameraSpeed $40
                entityActions ALLY_BOWIE
                 moveUp 6
                endActions
                entityActions ALLY_PETER
                 moveUp 6
                endActions
                entityActions ALLY_ROHDE
                 moveUp 6
                endActions
                entityActionsWait FOLLOWER_B
                 moveUp 6
                endActions
                nextSingleText $0,128   ; "Stop!{W1}"
                csWait 5
                setActscript ALLY_BOWIE,eas_2xRightLeft
                csWait 5
                setActscript ALLY_PETER,eas_2xRightLeft
                csWait 5
                setActscript ALLY_ROHDE,eas_2xUpDown
                csWait 5
                setActscript FOLLOWER_B,eas_2xRightLeft
                csWait 30
                entityActionsWait ALLY_PETER
                 moveUp 1
                endActions
                nextSingleText $C0,ALLY_PETER ; "Who IS that big guy?{W1}"
                entityActionsWait ALLY_ROHDE
                 moveUp 1
                endActions
                nextSingleText $0,ALLY_ROHDE ; "Don't you know?{W1}"
                setFacing ALLY_BOWIE,UP
                setFacing ALLY_PETER,UP
                setFacing FOLLOWER_B,UP
                csWait 30
                setCameraEntity 128
                nextSingleText $0,ALLY_ROHDE ; "That's Taros.  The guardian of{N}this ancient shrine.{W1}"
                nextSingleText $0,128   ; "Again, stop right there, or{N}I'll attack you.{W1}"
                setCamDest 7,22
                setFacing ALLY_BOWIE,RIGHT
                setFacing ALLY_PETER,LEFT
                setFacing ALLY_ROHDE,RIGHT
                nextSingleText $C0,ALLY_PETER ; "What should we do?{W1}"
                setFacing ALLY_BOWIE,LEFT
                nextSingleText $0,ALLY_ROHDE ; "The Caravan is there, behind{N}him.  We must have it!{W1}"
                setFacing ALLY_BOWIE,UP
                setFacing ALLY_PETER,UP
                setFacing ALLY_ROHDE,UP
                nextSingleText $0,128   ; "Time's up!  Now we battle.{W1}"
                csc_end
ce_4B2DA:       mainEntity 12,32,UP
                entity 12,8,DOWN,MAPSPRITE_TAROS,eas_Init
                entity 12,5,DOWN,MAPSPRITE_CARAVAN,eas_Init
                cscEntitiesEnd
bscs_battle18:  csc_end
rbcs_battle18:  csc_end
edcs_battle18:  csc_end
abcs_battle18:  textCursor STORYTEXT_OFFSET_TAROS_DEFEATED
                loadMapFadeIn MAP_TAROS_SHRINE,7,5
                loadMapEntities ce_4B6BE
                setActscriptWait ALLY_BOWIE,eas_Init
                setActscriptWait ALLY_PETER,eas_Init
                setActscriptWait FOLLOWER_B,eas_Init
                setActscriptWait ALLY_ROHDE,eas_Init
                setPos ALLY_PETER,13,9,UP
                setPos FOLLOWER_B,14,9,UP
                setPos ALLY_ROHDE,5,9,RIGHT
                stopEntity 128
                fadeInB
                csWait 60
                nextSingleText $0,ALLY_ROHDE ; "{LEADER}, you're much{N}stronger than I thought.{W1}"
                setFacing ALLY_BOWIE,LEFT
                setFacing ALLY_PETER,LEFT
                setFacing FOLLOWER_B,LEFT
                csWait 30
                setCameraEntity ALLY_ROHDE
                csWait 120
                entityActionsWait ALLY_ROHDE
                 moveRight 6
                endActions
                setFacing ALLY_BOWIE,UP
                setFacing ALLY_PETER,UP
                setFacing FOLLOWER_B,UP
                entityActionsWait ALLY_ROHDE
                 moveUp 4
                endActions
                setFacing ALLY_ROHDE,RIGHT
                setCameraEntity 65535
                setCamDest 7,1
                csWait 30
                setPos ALLY_ROHDE,12,6,UP
                csWait 20
                setPos ALLY_ROHDE,13,5,LEFT
                csWait 20
                setPos ALLY_ROHDE,12,6,UP
                csWait 20
                setPos ALLY_ROHDE,11,5,RIGHT
                csWait 20
                setPos ALLY_ROHDE,12,6,UP
                csWait 20
                setPos ALLY_ROHDE,13,5,LEFT
                csWait 20
                nextSingleText $0,ALLY_ROHDE ; "It's so small.  I'll just{N}try to...get inside....{W1}"
                entityActions ALLY_ROHDE
                 moveLeft 1
                endActions
                csWait 3
                setActscript ALLY_ROHDE,eas_452BA
                csWait 3
                csWait 60
                startEntity 128
                csWait 30
                stopEntity 128
                csWait 60
                startEntity 128
                csWait 120
                setFacing 128,LEFT
                csWait 10
                setFacing 128,UP
                csWait 10
                setFacing 128,RIGHT
                csWait 10
                setFacing 128,DOWN
                csWait 10
                setFacing 128,LEFT
                csWait 10
                setFacing 128,UP
                csWait 10
                setFacing 128,RIGHT
                csWait 10
                setFacing 128,DOWN
                setActscript 128,eas_Jump
                csWait 10
                setPos ALLY_ROHDE,63,63,DOWN
                customActscriptWait 128
                 ac_setSpeed 48,48      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                playSound SFX_FALLING
                entityActions 128
                 moveDown 9
                endActions
                csWait 20
                customActscriptWait ALLY_BOWIE
                 ac_setSpeed 64,64      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setActscriptWait ALLY_BOWIE,eas_DeactivateAutoFacing
                entityActions ALLY_BOWIE
                 moveLeft 1
                endActions
                setFacing ALLY_BOWIE,RIGHT
                setFacing ALLY_PETER,LEFT
                setFacing FOLLOWER_B,LEFT
                csWait 60
                setCamDest 7,4
                setActscriptWait ALLY_BOWIE,eas_Init
                setFacing ALLY_BOWIE,DOWN
                setFacing ALLY_PETER,DOWN
                setFacing FOLLOWER_B,DOWN
                nextSingleText $0,ALLY_PETER ; "Oh, he's gone!{W1}"
                csWait 60
                setFacing ALLY_BOWIE,RIGHT
                setFacing ALLY_PETER,LEFT
                setFacing FOLLOWER_B,LEFT
                nextSingleText $0,ALLY_PETER ; "I hope he comes back.{N}Did {NAME;11} lie to us?{W1}"
                csWait 30
                setFacing ALLY_BOWIE,DOWN
                setFacing ALLY_PETER,DOWN
                setFacing FOLLOWER_B,DOWN
                csWait 150
                setActscriptWait 128,eas_DeactivateAutoFacing
                entityActions 128
                 moveUp 9
                endActions
                playSound SFX_FALLING
                csWait 20
                setFacing 128,LEFT
                setFacing FOLLOWER_B,LEFT
                csWait 20
                setFacing ALLY_BOWIE,UP
                setFacing ALLY_PETER,UP
                csWait 10
                setFacing ALLY_BOWIE,LEFT
                setFacing ALLY_PETER,RIGHT
                csWait 10
                setFacing ALLY_BOWIE,DOWN
                setFacing ALLY_PETER,DOWN
                csWait 10
                setFacing ALLY_BOWIE,RIGHT
                setFacing ALLY_PETER,LEFT
                csWait 10
                setFacing ALLY_BOWIE,UP
                setFacing ALLY_PETER,UP
                csWait 10
                setFacing ALLY_BOWIE,LEFT
                setFacing ALLY_PETER,RIGHT
                csWait 10
                setFacing ALLY_BOWIE,DOWN
                setFacing ALLY_PETER,DOWN
                csWait 10
                setFacing ALLY_BOWIE,RIGHT
                setFacing ALLY_PETER,LEFT
                csWait 10
                customActscriptWait ALLY_BOWIE
                 ac_motion OFF          ;   
                 ac_orientLeft          ;   
                 ac_updateSprite        ;   
                 ac_jump eas_Idle       ;   
                ac_end
                customActscriptWait ALLY_PETER
                 ac_motion OFF          ;   
                 ac_orientLeft          ;   
                 ac_updateSprite        ;   
                 ac_jump eas_Idle       ;   
                ac_end
                stopEntity ALLY_BOWIE
                stopEntity ALLY_PETER
                csWait 30
                setFacing 128,DOWN
                csWait 60
                stopEntity 128
                setActscriptWait FOLLOWER_B,eas_BumpLeft
                setActscriptWait FOLLOWER_B,eas_BumpLeft
                csWait 30
                setPos ALLY_ROHDE,12,5,RIGHT
                setActscriptWait ALLY_ROHDE,eas_4536C
                csWait 3
                setActscriptWait ALLY_BOWIE,eas_Init
                setActscriptWait ALLY_PETER,eas_Init
                setFacing ALLY_BOWIE,UP
                setFacing ALLY_PETER,UP
                setFacing FOLLOWER_B,UP
                startEntity ALLY_BOWIE
                startEntity ALLY_PETER
                entityActionsWait ALLY_ROHDE
                 moveDown 3
                endActions
                nextSingleText $0,ALLY_ROHDE ; "I never lie!{W1}"
                entityActionsWait ALLY_ROHDE
                 moveLeft 2
                endActions
                setFacing ALLY_ROHDE,DOWN
                nextSingleText $0,ALLY_ROHDE ; "The Ancients were...how{N}should I say this...great!{W1}"
                entityActionsWait ALLY_ROHDE
                 moveRight 1
                endActions
                setFacing ALLY_ROHDE,UP
                nextSingleText $0,ALLY_ROHDE ; "No wonder the Caravan is so{N}small.  It carries miniaturized{N}people and items.{W2}"
                entityActionsWait ALLY_ROHDE
                 moveUp 2
                endActions
                setFacing ALLY_ROHDE,DOWN
                nextSingleText $0,ALLY_ROHDE ; "I can drive this excellent{N}vehicle.  May I go with you{N}as a driver?{W1}"
                csWait 30
                nextSingleText $FF,255  ; "{NAME;11} the historian{N}tags along with the force.{W1}"
                entityActionsWait ALLY_PETER
                 moveUp 1
                endActions
                nextSingleText $0,ALLY_PETER ; "You're kidding, right?{W1}"
                entityActionsWait ALLY_PETER
                 moveDown 1
                endActions
                setFacing ALLY_PETER,LEFT
                setFacing ALLY_BOWIE,RIGHT
                setFacing FOLLOWER_B,LEFT
                nextSingleText $0,ALLY_PETER ; "Well, at least we can bring{N}a lot of soldiers with us.{W1}"
                entityActionsWait ALLY_ROHDE
                 moveDown 1
                endActions
                setFacing ALLY_BOWIE,UP
                setFacing ALLY_PETER,UP
                setFacing FOLLOWER_B,UP
                nextSingleText $0,ALLY_ROHDE ; "But soldiers in the Caravan{N}cannot enter battle 'cause{N}they've been miniaturized.{W1}"
                nextSingleText $0,ALLY_PETER ; "We'll just have to see.{W1}"
                setFacing ALLY_BOWIE,RIGHT
                setFacing ALLY_PETER,LEFT
                setFacing FOLLOWER_B,LEFT
                nextSingleText $0,ALLY_PETER ; "Humph.  I don't like this guy.{W1}"
                entityActionsWait ALLY_ROHDE
                 moveUp 1
                endActions
                setFacing ALLY_ROHDE,DOWN
                csWait 20
                setActscriptWait ALLY_ROHDE,eas_Jump
                setActscriptWait ALLY_ROHDE,eas_Jump
                setFacing ALLY_BOWIE,UP
                setFacing ALLY_PETER,UP
                setFacing FOLLOWER_B,UP
                nextSingleText $0,ALLY_ROHDE ; "I wonder what adventures{N}we'll find with this Caravan!{W1}"
                csWait 30
                entityActions ALLY_ROHDE
                 moveUp 1
                endActions
                csWait 3
                setActscript ALLY_ROHDE,eas_452BA
                csWait 3
                csWait 60
                startEntity 128
                setPos ALLY_ROHDE,63,63,DOWN
                csWait 60
                setActscriptWait 128,eas_Init
                entityActions 128
                 moveDown 9
                endActions
                csWait 30
                setFacing ALLY_BOWIE,RIGHT
                setFacing ALLY_PETER,LEFT
                setFacing FOLLOWER_B,LEFT
                csWait 10
                setFacing ALLY_BOWIE,DOWN
                setFacing ALLY_PETER,DOWN
                setFacing FOLLOWER_B,DOWN
                csWait 180
                setF FLAG_CARAVAN                 ; Caravan is unlocked
                clearF FLAG_FOLLOWER_ROHDE               ; Rohde is a follower
                csc_end
ce_4B6BE:       mainEntity 12,9,UP
                entity 12,5,DOWN,MAPSPRITE_CARAVAN,eas_Init
                cscEntitiesEnd
