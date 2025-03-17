
; ASM FILE data\battles\entries\battle34\cs_afterbattle.asm :
; 0x4F47A..0x4F48A : Cutscene after battle 0
bbcs_34:        textCursor STORYTEXT_OFFSET_MEET_CAMEELA
                loadMapFadeIn MAP_CAMEELA_ARENA,21,22
                loadMapEntities ce_4D48E
                setActscriptWait ALLY_BOWIE,eas_Init
                setActscriptWait ALLY_PETER,eas_Init
                setPos ALLY_PETER,30,28,LEFT
                setActscriptWait FOLLOWER_B,eas_Init
                setPos FOLLOWER_B,30,30,LEFT
                jumpIfFlagClear FLAG_FOLLOWER_ZYNK,cs_4D38E ; Zynk is a follower
                setActscriptWait ALLY_ZYNK,eas_Init
                setPos ALLY_ZYNK,31,29,LEFT
cs_4D38E:       animEntityFX 129,6
                playSound MUSIC_BATTLE_THEME_1
                fadeInB
                cameraSpeed $30
                entityActions ALLY_BOWIE
                 moveLeft 3
                endActions
                entityActions ALLY_PETER
                 moveLeft 3
                endActions
                entityActions 130
                 moveLeft 3
                endActions
                jumpIfFlagClear FLAG_FOLLOWER_ZYNK,cs_4D3C6 ; Zynk is a follower
                entityActions ALLY_ZYNK
                 moveLeft 3
                endActions
cs_4D3C6:       entityActionsWait FOLLOWER_B
                 moveLeft 3
                endActions
                nextSingleText $0,128   ; "Hello, Granseal soldiers.{W1}"
                setActscriptWait ALLY_PETER,eas_Jump
                setCamDest 7,5
                nextText $0,128         ; "Remember?  I promised that I{N}would see you again.{W2}"
                nextSingleText $0,128   ; "Come on.  Let's party!{W1}"
                setCamDest 7,4
                animEntityFX 129,7
                nextSingleText $C0,129  ; "Stop!  You need my war plan!{W1}"
                setFacing 128,UP
                nextSingleText $0,128   ; "You again, Geshp?  Why don't{N}you leave me alone?{W1}"
                nextText $C0,129        ; "Zeon left me in charge.{W2}"
                nextSingleText $C0,129  ; "It doesn't matter if you are{N}killed or not.{W1}"
                entityActionsWait 128
                 moveUp 1
                endActions
                nextText $0,128         ; "Then kill me, if you've{N}got the guts to do it!{W2}"
                nextSingleText $0,128   ; "I know.  You want me to be{N}die!{W1}"
                customActscriptWait 128
                 ac_setSpeed 48,48      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActions 128
                 moveUp 4
                endActions
                csWait 10
                animEntityFX 129,6
                waitIdle 128
                setFacing 128,DOWN
                csWait 30
                csWait 5
                setActscript 128,eas_2xRightLeft
                csWait 120
                setFacing 128,DOWN
                nextSingleText $0,128   ; "Geshp, you coward!{N}I'll kill you first!{W1}"
                tintMap
                nextText $C0,129        ; "I have no time to waste.{N}I must go.{W2}"
                nextSingleText $C0,129  ; "Silly Cameela.{N}You can't survive without my{N}brains.{W1}"
                flickerOnce
                setCamDest 7,3
                csWait 60
                setActscriptWait 128,eas_Jump
                setFacing 128,RIGHT
                nextText $0,128         ; "{LEADER}, did you hear that?{N}He said you would win!{W2}"
                nextSingleText $0,128   ; "He must be a bad{N}fortuneteller.{W1}"
                setCamDest 21,22
                nextText $0,FOLLOWER_B  ; "We can get a ship and return{N}to Grans if we defeat her.{W2}"
                nextSingleText $0,FOLLOWER_B ; "{LEADER}, get her!{W1}"
                csc_end
ce_4D48E:       mainEntity 29,29,LEFT
                entity 30,28,LEFT,ALLY_PETER,eas_Init
                entity 11,10,DOWN,MAPSPRITE_CAMEELA,eas_Init
                entity 11,6,DOWN,MAPSPRITE_GESHP,eas_Init
                entity 30,29,LEFT,MAPSPRITE_CARAVAN,eas_Init
                cscEntitiesEnd
bscs_battle34:  csc_end
rbcs_battle34:  csc_end
edcs_battle34:  csc_end
abcs_battle34:  textCursor STORYTEXT_OFFSET_B5F
                loadMapFadeIn MAP_CAMEELA_ARENA,2,7
                loadMapEntities ce_4D69E
                setActscriptWait ALLY_BOWIE,eas_Init
                setActscriptWait ALLY_PETER,eas_Init
                setPos ALLY_PETER,9,11,UP
                setActscriptWait FOLLOWER_B,eas_Init
                setPos FOLLOWER_B,5,11,UP
                jumpIfFlagClear 76,cs_4D502 ; Zynk is a follower
                setActscriptWait ALLY_ZYNK,eas_Init
                setPos ALLY_ZYNK,8,12,UP
cs_4D502:       stopEntity 128
                customActscriptWait 128
                 ac_motion OFF          ;   
                 ac_orientLeft          ;   
                 ac_updateSprite        ;   
                 ac_jump eas_Idle       ;   
                ac_end
                stopEntity 131
                setActscriptWait 131,eas_DeactivateAutoFacing
                fadeInB
                shiver 128
                nextSingleText $0,128   ; "{LEADER}, I lost?!{N}Take this.{W1}"
                nextSingleText $FF,255  ; "Cameela reveals the Sky Orb.{W1}"
                setPos 131,7,10,LEFT
                nextText $0,128         ; "This is the Sky Orb.  With{N}it, you can drive the Nazca{N}Ship.{W2}"
                nextText $0,128         ; "Listen.  You have to be very{N}careful from now on.{W2}"
                nextSingleText $0,128   ; "Geshp has Prism Flowers.{N}He will...{W1}"
                tintMap
                nextSingleText $C0,129  ; "Your life is over,{N}Cameela!{W1}"
                flashScreenWhite $2
                tintMap
                setActscriptWait 128,eas_Init
                setFacing 128,LEFT
                setSprite 128,MAPSPRITE_OBJECT3
                startEntity 128
                setActscript 128,eas_AnimSpeedx2
                setActscript ALLY_BOWIE,eas_Jump
                setActscript ALLY_PETER,eas_Jump
                jumpIfFlagClear FLAG_FOLLOWER_ZYNK,cs_4D592 ; Zynk is a follower
                setActscript ALLY_ZYNK,eas_Jump
cs_4D592:       setActscriptWait FOLLOWER_B,eas_Jump
                nextSingleText $0,128   ; "Geshp!{W1}"
                nextSingleText $C0,129  ; "Ha, ha, ha!  You acted just{N}as I planned!{W1}"
                nextSingleText $0,128   ; "Ouuuuu...Ges...{W1}"
                setSprite 128,MAPSPRITE_CAMEELA
                setActscriptWait 128,eas_Die
                nextSingleText $0,FOLLOWER_B ; "How horrible!{W1}"
                nextText $C0,129        ; "It's the law.  Traitors{N}die by fire.{W2}"
                nextText $C0,129        ; "Congratulations!{N}You have a ship now!{N}Come to Grans!{W2}"
                nextSingleText $C0,129  ; "I have to go now and{N}prepare your welcoming{N}party!{W1}"
                flickerOnce
                csWait 60
                setFacing ALLY_PETER,LEFT
                nextText $0,ALLY_PETER  ; "I really hate him!{W2}"
                nextSingleText $0,ALLY_PETER ; "Prism Flowers?{N}What are they?{W1}"
                setFacing FOLLOWER_B,RIGHT
                nextSingleText $0,FOLLOWER_B ; "I have no idea, but it's{N}probably a trap.{W1}"
                jumpIfFlagClear FLAG_FOLLOWER_ZYNK,cs_4D620 ; Zynk is a follower
                customActscriptWait ALLY_ZYNK
                 ac_setSpeed 24,24      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActionsWait ALLY_ZYNK
                 moveUp 1
                 moveLeft 1
                endActions
                nextSingleText $0,ALLY_ZYNK ; "Ancient flower.{W1}"
                entityActionsWait FOLLOWER_B
                 moveRight 1
                endActions
                nextSingleText $0,FOLLOWER_B ; "Excuse me?{W1}"
                nextSingleText $0,ALLY_ZYNK ; "Ancient countries had those{N}flowers along their borders.{W1}"
                nextSingleText $0,FOLLOWER_B ; "What kind of flowers are{N}they?{W1}"
                setFacing ALLY_ZYNK,UP
                csWait 30
                nextSingleText $0,ALLY_ZYNK ; "I cannot explain....{W1}"
cs_4D620:       textCursor STORYTEXT_OFFSET_RETRIEVE_SKY_ORB
                entityActionsWait ALLY_PETER
                 moveLeft 1
                endActions
                nextSingleText $0,ALLY_PETER ; "We will see them when we{N}arrive at Grans.{W1}"
                nextSingleText $0,FOLLOWER_B ; "{LEADER}, grab the Sky{N}Orb.{N}Let's go.{W1}"
                entityActionsWait ALLY_PETER
                 moveUp 1
                endActions
                setFacing ALLY_PETER,LEFT
                jumpIfFlagClear FLAG_FOLLOWER_ZYNK,cs_4D654 ; Zynk is a follower
                entityActionsWait ALLY_ZYNK
                 moveRight 1
                endActions
                setFacing ALLY_ZYNK,LEFT
cs_4D654:       nod ALLY_BOWIE
                entityActionsWait ALLY_BOWIE
                 moveUp 1
                endActions
                hide 131
                executeSubroutine csub_4D694
                followEntity 130,ALLY_BOWIE,2
                followEntity ALLY_PETER,130,1
                followEntity FOLLOWER_B,130,3
                jumpIfFlagClear FLAG_FOLLOWER_ZYNK,cs_4D692 ; Zynk is a follower
                followEntity ALLY_ZYNK,130,2
cs_4D692:       csc_end

; =============== S U B R O U T I N E =======================================


csub_4D694:
                
                move.b  #ITEM_SKY_ORB,d0
                moveq   #1,d1
                jmp     ReceiveMandatoryItem

    ; End of function csub_4D694

ce_4D69E:       mainEntity 7,12,UP
                entity 9,11,UP,ALLY_PETER,eas_Init
                entity 7,9,DOWN,MAPSPRITE_CAMEELA,eas_Init
                entity 63,63,DOWN,MAPSPRITE_GESHP,eas_Init
                entity 6,12,UP,MAPSPRITE_CARAVAN,eas_Init
                entity 63,63,LEFT,MAPSPRITE_ORB,eas_Init
                cscEntitiesEnd
