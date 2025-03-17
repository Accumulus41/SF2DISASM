
; ASM FILE data\battles\entries\battle28\cs_afterbattle.asm :
; 0x4F47A..0x4F48A : Cutscene after battle 0
bbcs_28:        textCursor STORYTEXT_OFFSET_PANGOAT_BRIDGE
                loadMapFadeIn MAP_PANGOAT_VALLEY_BRIDGE,0,4
                loadMapEntities ce_4C03C
                setActscriptWait ALLY_BOWIE,eas_Init
                setActscriptWait ALLY_PETER,eas_Init
                setPos ALLY_PETER,0,9,RIGHT
                setActscriptWait FOLLOWER_B,eas_Init
                setPos FOLLOWER_B,0,7,RIGHT
                stopEntity 129
                playSound MUSIC_BATTLE_THEME_3
                fadeInB
                cameraSpeed $30
                entityActions ALLY_BOWIE
                 moveRight 3
                endActions
                entityActions FOLLOWER_B
                 moveRight 3
                endActions
                entityActions ALLY_PETER
                 moveRight 3
                endActions
                entityActionsWait 128
                 moveRight 3
                endActions
                csWait 40
                setActscriptWait FOLLOWER_B,eas_Jump
                entityActionsWait FOLLOWER_B
                 moveRight 2
                 moveDown 1
                endActions
                setFacing FOLLOWER_B,RIGHT
                nextSingleText $0,FOLLOWER_B ; "Wow, look at that?{W1}"
                setCamDest 7,11
                shiver 130
                playSound SFX_MONSTER_SCREAM
                csWait 30
                shiver 131
                playSound SFX_MONSTER_SCREAM
                csWait 40
                setCamDest 0,6
                entityActionsWait ALLY_PETER
                 moveDown 1
                 moveRight 1
                endActions
                nextSingleText $0,ALLY_PETER ; "Those monsters are eating{N}the bridge.{W1}"
                nextSingleText $0,129   ; "Help!  Help me!{W1}"
                setActscript ALLY_BOWIE,eas_Jump
                setActscript FOLLOWER_B,eas_Jump
                setActscriptWait ALLY_PETER,eas_Jump
                entityActionsWait ALLY_BOWIE
                 moveDown 1
                 moveRight 1
                 moveDown 1
                endActions
                csWait 5
                setActscript ALLY_BOWIE,eas_2xRightLeft
                csWait 5
                setActscript ALLY_PETER,eas_2xUpDown
                csWait 100
                setActscriptWait FOLLOWER_B,eas_Jump
                customActscriptWait FOLLOWER_B
                 ac_setSpeed 48,48      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActions FOLLOWER_B
                 moveDown 2
                endActions
                csWait 10
                stopEntity ALLY_BOWIE
                customActscriptWait ALLY_BOWIE
                 ac_setSpeed 64,64      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setQuake 2
                playSound SFX_HIT_2
                entityActionsWait ALLY_BOWIE
                 moveDown 1
                endActions
                setFacing ALLY_BOWIE,UP
                customActscriptWait ALLY_BOWIE
                 ac_motion OFF          ;   
                 ac_orientDown          ;   
                 ac_updateSprite        ;   
                 ac_jump eas_Idle       ;   
                ac_end
                waitIdle FOLLOWER_B
                setFacing FOLLOWER_B,RIGHT
                setQuake 0
                nextText $0,FOLLOWER_B  ; "Look!{W2}"
                nextSingleText $0,FOLLOWER_B ; "She's stranded on the{N}bridge.{W1}"
                setFacing ALLY_PETER,RIGHT
                shiver ALLY_BOWIE
                setCamDest 7,21
                nextSingleText $0,ALLY_PETER ; "Get away from the bridge{N}before it falls into the{N}river!{W1}"
                nextText $0,129         ; "I sprained my ankle!{N}Please help me!{W2}"
                nextSingleText $0,129   ; "I can't stand up!{W1}"
                setCamDest 0,6
                setFacing FOLLOWER_B,DOWN
                setActscriptWait FOLLOWER_B,eas_Jump
                csWait 30
                setActscriptWait ALLY_BOWIE,eas_Init
                startEntity ALLY_BOWIE
                headshake ALLY_BOWIE
                nextSingleText $0,FOLLOWER_B ; "{LEADER}, defeat all the{N}monsters!  Hurry!{W1}"
                setActscript ALLY_PETER,eas_Jump
                nod ALLY_BOWIE
                csc_end
ce_4C03C:       mainEntity 1,8,RIGHT
                entity 0,9,RIGHT,ALLY_PETER,eas_Init
                entity 0,8,RIGHT,MAPSPRITE_CARAVAN,eas_Init
                entity 12,24,UP,MAPSPRITE_POSE3,eas_Init
                entity 13,13,LEFT,MAPSPRITE_WORM,eas_Init
                entity 12,17,UP,MAPSPRITE_WORM,eas_Init
                entity 11,22,DOWN,MAPSPRITE_WORM,eas_Init
                entity 11,25,RIGHT,MAPSPRITE_WORM,eas_Init
                cscEntitiesEnd
bscs_battle28:  csc_end
rbcs_battle28:  csc_end
edcs_battle28:  csc_end
abcs_battle28:  textCursor STORYTEXT_OFFSET_SAVED_THE_GIRL
                loadMapFadeIn MAP_PANGOAT_VALLEY_BRIDGE,7,25
                loadMapEntities ce_4C3B4
                setActscriptWait ALLY_BOWIE,eas_Init
                setActscriptWait ALLY_PETER,eas_Init
                setPos ALLY_PETER,13,28,DOWN
                setActscriptWait FOLLOWER_B,eas_Init
                setPos FOLLOWER_B,11,28,DOWN
                stopEntity 128
                stopEntity 130
                setPriority FOLLOWER_B,$0
                setPriority ALLY_PETER,$0
                setPriority 128,$FFFF
                fadeInB
                csWait 57
                setFacing ALLY_PETER,LEFT
                nextSingleText $0,ALLY_PETER ; "Phew!  That was close!{W1}"
                nextText $0,128         ; "Thank you very much.{W2}"
                nextSingleText $0,128   ; "Excuse me, will you help{N}me up?{W1}"
                entityActionsWait ALLY_BOWIE
                 moveDown 1
                endActions
                entityActions FOLLOWER_B
                 moveDown 1
                 moveRight 1
                endActions
                csWait 15
                setActscriptWait ALLY_BOWIE,eas_JumpRight
                waitIdle FOLLOWER_B
                setFacing FOLLOWER_B,DOWN
                nextSingleText $0,FOLLOWER_B ; "NO!  I'll do it!{W1}"
                entityActionsWait FOLLOWER_B
                 moveDown 1
                endActions
                setFacing FOLLOWER_B,UP
                nextText $0,FOLLOWER_B  ; "We'll take you with us.{W2}"
                nextSingleText $0,FOLLOWER_B ; "Tristan is the nearest town.{N}I think you had better rest{N}there.{W1}"
                nextSingleText $0,128   ; "Thank you, sir.{W1}"
                setSprite 128,MAPSPRITE_WOMAN2
                entityActions 128
                 moveUp 2
                endActions
                csWait 14
                setActscriptWait 128,eas_StopMoving
                entityActionsWait ALLY_PETER
                 moveLeft 1
                 moveDown 1
                endActions
                nextText $0,ALLY_PETER  ; "You sure are being nice.{N}Hmmm....{W2}"
                nextSingleText $0,ALLY_PETER ; "Anyway, Tristan is just over{N}there.  Let's go.{W1}"
                entityActions ALLY_BOWIE
                 moveRight 1
                endActions
                entityActionsWait 129
                 moveRight 1
                 moveDown 2
                endActions
                setCamDest 10,25
                entityActions ALLY_BOWIE
                 moveRight 2
                 moveDown 1
                 moveRight 2
                endActions
                entityActions 129
                 moveRight 3
                 moveDown 1
                 moveRight 1
                endActions
                entityActionsWait ALLY_PETER
                 moveRight 4
                 moveDown 1
                endActions
                nextSingleText $0,FOLLOWER_B ; "{LEADER}...{NAME;7}...{W1}"
                setFacing ALLY_BOWIE,LEFT
                setFacing ALLY_PETER,LEFT
                nextSingleText $0,ALLY_PETER ; "What?  Don't you want to{N}go to Tristan?{W1}"
                csWait 60
                nextSingleText $0,FOLLOWER_B ; "Oh, I do, but...{W1}"
                nextSingleText $0,128   ; "We shouldn't go to Tristan{N}right now.{W1}"
                setActscriptWait ALLY_PETER,eas_Jump
                nextSingleText $0,ALLY_PETER ; "Why not?{W1}"
                nextSingleText $0,128   ; "Because of me!{W1}"
                setCamDest 8,25
                entityFlashWhite 128,$28
                flashScreenWhite $14
                setPos 128,11,30,RIGHT
                setSprite 128,MAPSPRITE_EFFECT2
                setFacing 128,UP
                csWait 8
                setFacing 128,LEFT
                csWait 8
                setFacing 128,DOWN
                csWait 8
                setSprite 128,MAPSPRITE_CAMEELA
                setFacing 128,RIGHT
                startEntity 128
                setActscript ALLY_BOWIE,eas_Jump
                setActscriptWait ALLY_PETER,eas_Jump
                entityActions ALLY_PETER
                 moveLeft 1
                endActions
                entityActionsWait ALLY_BOWIE
                 moveDown 1
                 moveLeft 3
                endActions
                nextText $0,ALLY_PETER  ; "Wh...who are you?!{W2}"
                nextSingleText $0,ALLY_PETER ; "Are you a devil?{W1}"
                nextSingleText $C0,128  ; "I'm one of the leaders of{N}the Devil Army.{N}My name is Cameela!{W1}"
                nextSingleText $0,FOLLOWER_B ; "What do you want?{W1}"
                nextSingleText $C0,128  ; "{LEADER}, I came here{N}to get your Jewel of Evil!{W1}"
                setFacing FOLLOWER_B,LEFT
                nextText $0,FOLLOWER_B  ; "Zeon told US to bring it to{N}the Ancient Tower.{N}He didn't mention you.{W2}"
                nextSingleText $0,FOLLOWER_B ; "And since we've never heard{N}of you, you're not getting{N}the jewel!{W1}"
                nextSingleText $C0,128  ; "No!  His orders were...{W1}"
                nextSingleText $0,FOLLOWER_B ; "If Zeon finds out, you will{N}be...{W1}"
                nextText $C0,128        ; "He'll forgive me when I{N}bring him the jewel.{W2}"
                nextText $C0,128        ; "Enough talking!  Hand over{N}that jewel.  In return, I'll{N}spare Sir Astral!{W2}"
                nextSingleText $C0,128  ; "Do you want me to kill this{N}old man?{W1}"
                nextText $0,FOLLOWER_B  ; "The jewel can't be removed{N}from {LEADER}'s neck.{W2}"
                nextSingleText $0,FOLLOWER_B ; "Do you really think that you{N}can kill me?{W1}"
                setActscriptWait 128,eas_Jump
                nextSingleText $C0,128  ; "Of course.{W1}"
                nextSingleText $0,FOLLOWER_B ; "HA!{W1}"
                entityFlashWhite FOLLOWER_B,$28
                setActscriptWait 128,eas_Jump
                nextSingleText $C0,128  ; "Ooops!{W1}"
                setActscriptWait 128,eas_DeactivateAutoFacing
                entityActionsWait 128
                 moveLeft 1
                endActions
                setPos 130,12,30,LEFT
                customActscriptWait 130
                 ac_setSpeed 56,56      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setActscriptWait 130,eas_DeactivateAutoFacing
                customActscriptWait 128
                 ac_setSpeed 48,48      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActions 130
                 moveLeft 8
                endActions
                playSound SFX_JUMP
                csWait 10
                entityActionsWait 128
                 moveUp 1
                endActions
                entityActionsWait 128
                 moveDown 1
                endActions
                csWait 30
                hide 130
                nextSingleText $0,FOLLOWER_B ; "Well done.  You dodged my{N}fireball.{W1}"
                nextText $C0,128        ; "What a surprising old wizard!{W2}"
                nextText $C0,128        ; "I didn't think I could obtain{N}the jewel that easily.{N}Ha, ha!{W2}"
                nextSingleText $C0,128  ; "This is gonna be fun!{N}{LEADER}!{N}Keep it for a while.{W1}"
                setActscriptWait 128,eas_Init
                cameraSpeed $30
                customActscriptWait 128
                 ac_setSpeed 48,48      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setCameraEntity 128
                csWait 40
                entityActionsWait 128
                 moveUp 10
                endActions
                csWait 40
                setCameraEntity 65535
                setCamDest 8,26
                setFacing ALLY_BOWIE,UP
                setFacing ALLY_PETER,UP
                entityActionsWait FOLLOWER_B
                 moveUp 2
                endActions
                nextSingleText $0,FOLLOWER_B ; "Wait!{W1}"
                setFacing 128,LEFT
                setCamDest 7,16
                entityActionsWait 128
                 moveLeft 1
                endActions
                setFacing 128,DOWN
                nextSingleText $0,128   ; "Be careful of Geshp and{N}Zalbard!{W1}"
                setActscriptWait 128,eas_JumpLeft
                setActscriptWait 128,eas_TwirlShrinkDisappear
                setCamDest 8,26
                setFacing FOLLOWER_B,DOWN
                nextSingleText $0,FOLLOWER_B ; "Ah, she's gone....{N}OK, {LEADER}.{N}Let's go to Tristan.{W1}"
                entityActionsWait FOLLOWER_B
                 moveRight 1
                 moveDown 2
                endActions
                setFacing FOLLOWER_B,RIGHT
                setFacing ALLY_PETER,LEFT
                nextSingleText $0,ALLY_PETER ; "Would you please explain{N}what just happened?{W1}"
                nextText $0,FOLLOWER_B  ; "You don't know?{W2}"
                nextText $0,FOLLOWER_B  ; "Everything here was set up{N}by Cameela.{W2}"
                nextSingleText $0,FOLLOWER_B ; "It was a trap to get the{N}Jewel of Evil.{W1}"
                nextSingleText $0,ALLY_PETER ; "Your fireball...as if you{N}knew what she was from the{N}beginning.{W1}"
                nextText $0,FOLLOWER_B  ; "Yes, I did.{W2}"
                nextText $0,FOLLOWER_B  ; "Her evil aura was apparent.{N}By the way, did you hear{N}what she said?{W2}"
                nextText $0,FOLLOWER_B  ; "They're all acting on their{N}own, ignoring Zeon's orders.{W2}"
                nextSingleText $0,FOLLOWER_B ; "It will be dangerous.{N}We must be careful.{W1}"
                followEntity 129,ALLY_BOWIE,2
                followEntity FOLLOWER_B,129,1
                followEntity ALLY_PETER,129,3
                warp MAP_CURRENT,16,30,RIGHT
                csc_end
ce_4C3B4:       mainEntity 12,28,DOWN
                entity 12,31,UP,MAPSPRITE_POSE3,eas_Init
                entity 13,28,DOWN,ALLY_PETER,eas_Init
                entity 12,27,DOWN,MAPSPRITE_CARAVAN,eas_Init
                entity 63,63,LEFT,MAPSPRITE_EFFECT3,eas_Init
                cscEntitiesEnd
