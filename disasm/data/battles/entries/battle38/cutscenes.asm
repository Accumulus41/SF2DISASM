
; ASM FILE data\battles\entries\battle38\cs_afterbattle.asm :
; 0x4F47A..0x4F48A : Cutscene after battle 0
bbcs_38:        textCursor STORYTEXT_OFFSET_CHALLENGE_GESHP
                loadMapFadeIn MAP_OVERWORLD_GRANS_GRANSEAL,9,6
                loadMapEntities ce_4DE74
                setActscriptWait ALLY_BOWIE,eas_Init
                setActscriptWait ALLY_PETER,eas_Init
                setPos ALLY_PETER,13,8,DOWN
                setActscriptWait FOLLOWER_B,eas_Init
                setPos FOLLOWER_B,15,8,DOWN
                setActscriptWait FOLLOWER_A,eas_Init
                setPos FOLLOWER_A,14,8,DOWN
                jumpIfFlagClear FLAG_FOLLOWER_ZYNK,cs_4DDFE ; Zynk is a follower
                setActscriptWait ALLY_ZYNK,eas_Init
                setPos ALLY_ZYNK,63,63,DOWN
cs_4DDFE:       playSound MUSIC_BATTLE_THEME_1
                fadeInB
                cameraSpeed $30
                entityActions ALLY_BOWIE
                 moveDown 2
                endActions
                entityActions ALLY_PETER
                 moveDown 2
                endActions
                entityActions FOLLOWER_A
                 moveDown 2
                endActions
                entityActionsWait FOLLOWER_B
                 moveDown 2
                endActions
                nextSingleText $0,128   ; "Stop!{W1}"
                setCamDest 9,19
                nextText $0,128         ; "Finally, you've arrived.{W2}"
                nextSingleText $0,128   ; "It was a mistake to{N}underestimate you.{W2}"
                entityActionsWait 128
                 moveUp 2
                endActions
                nextSingleText $0,128   ; "But, the game is not over.{N}At the risk of my life,{N}you'll proceed no further!{W1}"
                nextText $C0,FOLLOWER_B ; "Geshp is serious.{N}He finally considers us{N}worthy opponents.{W2}"
                nextSingleText $C0,FOLLOWER_B ; "{LEADER}, be careful.{N}We mustn't underrate his{N}power.{W1}"
                nextText $0,128         ; "You're right, Astral!{W2}"
                nextText $0,128         ; "Zeon doesn't trust me,{N}thanks to you!{W2}"
                nextSingleText $0,128   ; "This is my last chance.{N}I can't see him again 'til I{N}bring him your head.{W1}"
                setQuake 4
                playSound SFX_BOLT_SPELL
                flashScreenWhite $1E
                playSound SFX_BATTLEFIELD_DEATH
                flashScreenWhite $32
                setQuake 0
                csc_end
ce_4DE74:       mainEntity 14,9,DOWN
                entity 13,8,DOWN,ALLY_PETER,eas_Init
                entity 13,23,UP,MAPSPRITE_GESHP,eas_Init
                cscEntitiesEnd
bscs_battle38:  csc_end
rbcs_battle38:  csc_end
edcs_battle38:  csc_end
abcs_battle38:  textCursor STORYTEXT_OFFSET_GESHP_DEFEATED
                loadMapFadeIn MAP_OVERWORLD_GRANS_GRANSEAL,3,22
                loadMapEntities ce_4E372
                setActscriptWait ALLY_BOWIE,eas_Init
                setActscriptWait ALLY_PETER,eas_Init
                setPos ALLY_PETER,5,25,RIGHT
                setActscriptWait FOLLOWER_B,eas_Init
                setPos FOLLOWER_B,8,28,UP
                setActscriptWait FOLLOWER_A,eas_Init
                setPos FOLLOWER_A,9,24,DOWN
                stopEntity 136
                customActscriptWait 136
                 ac_motion OFF          ;   
                 ac_orientLeft          ;   
                 ac_updateSprite        ;   
                 ac_jump eas_Idle       ;   
                ac_end
                jumpIfFlagClear FLAG_FOLLOWER_ZYNK,cs_4DF00 ; Zynk is a follower
                setActscriptWait ALLY_ZYNK,eas_Init
                setPos ALLY_ZYNK,63,62,DOWN
cs_4DF00:       setActscriptWait 128,eas_DeactivateAutoFacing
                setActscriptWait 129,eas_DeactivateAutoFacing
                setActscriptWait 130,eas_DeactivateAutoFacing
                setActscriptWait 131,eas_DeactivateAutoFacing
                setActscriptWait 132,eas_DeactivateAutoFacing
                setActscriptWait 133,eas_DeactivateAutoFacing
                setActscriptWait 134,eas_DeactivateAutoFacing
                setActscriptWait 135,eas_DeactivateAutoFacing
                setPriority ALLY_BOWIE,$0
                setPriority 136,$FFFF
                fadeInB
                csWait 60
                shiver 136
                nextSingleText $0,136   ; "My traps...{W1}"
                csWait 60
                customActscriptWait 136
                 ac_motion OFF          ;   
                 ac_orientUp            ;   
                 ac_updateSprite        ;   
                 ac_jump eas_Idle       ;   
                ac_end
                startEntity 136
                setFacing 136,UP
                nextSingleText $0,136   ; "I'm...at the end of my rope.{N}I...must...escape.{W1}"
                customActscriptWait 136
                 ac_setSpeed 8,8        ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActionsWait 136
                 moveRight 1
                 moveUp 1
                 moveLeft 1
                 moveUp 2
                 moveRight 1
                 moveDown 1
                 moveRight 1
                 moveUp 1
                endActions
                entityActions 136
                 moveUp 1
                endActions
                csWait 12
                setActscriptWait 136,eas_StopMoving
                setQuake 1
                stopEntity 136
                setPos 136,8,24,LEFT
                customActscriptWait 136
                 ac_motion OFF          ;   
                 ac_orientLeft          ;   
                 ac_updateSprite        ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setActscriptWait 136,eas_DeactivateAutoFacing
                customActscriptWait 136
                 ac_setSpeed 40,40      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setQuake 0
                entityActionsWait 136
                 moveDown 1
                endActions
                setFacing 136,DOWN
                entityActionsWait 136
                 moveDown 1
                endActions
                setFacing 136,RIGHT
                entityActionsWait 136
                 moveDown 1
                endActions
                setFacing 136,UP
                csWait 40
                shiver 136
                csWait 60
                customActscriptWait 136
                 ac_motion OFF          ;   
                 ac_orientUp            ;   
                 ac_updateSprite        ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setFacing 136,DOWN
                csWait 40
                headshake 136
                startEntity 136
                csWait 10
                setActscriptWait 136,eas_Jump
                setActscriptWait 136,eas_DeactivateAutoFacing
                nextSingleText $0,136   ; "Nooooooo!{W1}"
                entityActionsWait 136
                 moveUp 2
                endActions
                nextSingleText $0,136   ; "Please...please let me go.{W1}"
                entityActionsWait FOLLOWER_B
                 moveUp 1
                endActions
                nextSingleText $C0,FOLLOWER_B ; "We don't want to kill{N}you.{N}You've lost your powers.{W1}"
                nextSingleText $0,136   ; "I know...(sob, sob)....{W1}"
                entityActionsWait ALLY_PETER
                 moveRight 1
                endActions
                nextSingleText $C0,ALLY_PETER ; "You may go.{W1}"
                setFacing 136,LEFT
                nextSingleText $0,136   ; "Thank you.{W1}"
                setActscriptWait 136,eas_Init
                setFacing 136,UP
                setCameraEntity 136
                csWait 60
                entityActionsWait ALLY_BOWIE
                 moveRight 1
                endActions
                setFacing ALLY_BOWIE,DOWN
                csWait 60
                cameraSpeed $8
                customActscriptWait 136
                 ac_setSpeed 8,8        ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActionsWait 136
                 moveUp 1
                endActions
                setFacing ALLY_PETER,UP
                setFacing ALLY_BOWIE,LEFT
                entityActionsWait 136
                 moveUp 2
                endActions
                setFacing ALLY_BOWIE,UP
                entityActionsWait 136
                 moveUp 2
                endActions
                csWait 40
                setFacing 136,DOWN
                nextSingleText $0,136   ; "I won't forget this.{W1}"
                entityActionsWait 136
                 moveUp 3
                endActions
                flashScreenWhite $1E
                playSound SFX_BATTLEFIELD_DEATH
                setQuake 3
                csWait 50
                csWait 5
                setActscript 136,eas_2xRightLeft
                csWait 80
                setQuake 0
                csWait 40
                setFacing 136,DOWN
                tintMap
                nextSingleText $C0,137  ; "Where are you going, Geshp?{W1}"
                customActscriptWait 136
                 ac_setSpeed 48,48      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setActscriptWait 136,eas_Jump
                setActscriptWait 136,eas_Jump
                csWait 30
                setActscriptWait 136,eas_DeactivateAutoFacing
                entityActionsWait 136
                 moveUp 1
                endActions
                nextSingleText $C0,137  ; "Do you remember your vow?{W1}"
                headshake 136
                nextText $C0,137        ; "You failed to get the jewel{N}from {LEADER}.{W2}"
                nextSingleText $C0,137  ; "Now, you will pay with your{N}life.{W1}"
                nextSingleText $0,136   ; "No, please...NO!{W1}"
                setPriority 136,$0
                setPos 128,8,13,RIGHT
                csWait 10
                setPos 129,10,14,LEFT
                csWait 5
                setActscript 136,eas_2xRightLeft
                csWait 10
                setPos 130,11,16,RIGHT
                csWait 10
                setPos 131,10,18,LEFT
                csWait 10
                setPos 132,8,19,RIGHT
                csWait 10
                setPos 133,6,18,LEFT
                csWait 10
                setPos 134,5,16,RIGHT
                csWait 10
                setPos 135,6,14,LEFT
                csWait 40
                flashScreenWhite $14
                tintMap
                setFacing 136,DOWN
                setQuake 3
                customActscriptWait 128
                 ac_setSpeed 80,80      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                customActscriptWait 129
                 ac_setSpeed 80,80      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                customActscriptWait 130
                 ac_setSpeed 80,80      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                customActscriptWait 131
                 ac_setSpeed 80,80      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                customActscriptWait 132
                 ac_setSpeed 80,80      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                customActscriptWait 133
                 ac_setSpeed 80,80      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                customActscriptWait 134
                 ac_setSpeed 80,80      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                customActscriptWait 135
                 ac_setSpeed 80,80      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                playSound SFX_BOLT_SPELL
                entityActionsWait 128
                 moveDown 3
                endActions
                setFacing 136,LEFT
                setSprite 136,MAPSPRITE_OBJECT3
                setActscript 136,eas_AnimSpeedx2
                setActscript 128,eas_JumpLeft
                playSound SFX_BOLT_SPELL
                entityActionsWait 129
                 moveDownLeft 2
                endActions
                setActscript 129,eas_JumpRight
                hide 128
                playSound SFX_BOLT_SPELL
                entityActionsWait 130
                 moveLeft 3
                endActions
                setActscript 130,eas_JumpLeft
                hide 129
                playSound SFX_BOLT_SPELL
                entityActionsWait 131
                 moveUpLeft 2
                endActions
                setActscript 131,eas_JumpRight
                hide 130
                playSound SFX_BOLT_SPELL
                entityActionsWait 132
                 moveUp 3
                endActions
                setActscript 132,eas_JumpLeft
                hide 131
                playSound SFX_BOLT_SPELL
                entityActionsWait 133
                 moveUpRight 2
                endActions
                setActscript 133,eas_JumpRight
                hide 132
                playSound SFX_BOLT_SPELL
                entityActionsWait 134
                 moveRight 3
                endActions
                setActscript 134,eas_JumpLeft
                hide 133
                playSound SFX_BOLT_SPELL
                entityActionsWait 135
                 moveDownRight 2
                endActions
                setActscript 135,eas_JumpRight
                hide 134
                csWait 8
                hide 135
                setQuake 0
                setCameraEntity 65535
                csWait 40
                setSprite 136,MAPSPRITE_GESHP
                setActscriptWait 136,eas_Die
                flickerOnce
                cameraSpeed $30
                setCamDest 3,20
                entityActionsWait FOLLOWER_B
                 moveUp 3
                endActions
                nextSingleText $0,FOLLOWER_B ; "Zeon is such an unfeeling{N}devil...(shiver).{W1}"
                entityActionsWait ALLY_PETER
                 moveRight 1
                 moveUp 2
                endActions
                nextSingleText $0,ALLY_PETER ; "He will do the same to us{N}if we lose to him.{W1}"
                nextSingleText $0,FOLLOWER_B ; "We must not be defeated.{W1}"
                followEntity FOLLOWER_A,ALLY_BOWIE,2
                followEntity ALLY_PETER,FOLLOWER_A,1
                followEntity FOLLOWER_B,FOLLOWER_A,3
                csc_end
ce_4E372:       mainEntity 8,23,DOWN
                entity 5,25,RIGHT,ALLY_PETER,eas_Init
                entity 63,63,RIGHT,MAPSPRITE_EFFECT3,eas_Init
                entity 63,63,LEFT,MAPSPRITE_EFFECT3,eas_Init
                entity 63,63,RIGHT,MAPSPRITE_EFFECT3,eas_Init
                entity 63,63,LEFT,MAPSPRITE_EFFECT3,eas_Init
                entity 63,63,RIGHT,MAPSPRITE_EFFECT3,eas_Init
                entity 63,63,LEFT,MAPSPRITE_EFFECT3,eas_Init
                entity 63,63,RIGHT,MAPSPRITE_EFFECT3,eas_Init
                entity 63,63,LEFT,MAPSPRITE_EFFECT3,eas_Init
                entity 6,27,DOWN,MAPSPRITE_GESHP,eas_Init
                entity 63,63,DOWN,MAPSPRITE_GALAM_ZEON,eas_Init
                cscEntitiesEnd
