
; ASM FILE data\battles\entries\battle33\cs_afterbattle.asm :
; 0x4F47A..0x4F48A : Cutscene after battle 0
bbcs_33:        textCursor STORYTEXT_OFFSET_ENTER_MOUN
                loadMapFadeIn MAP_MOUN,22,29
                loadMapEntities ce_4D048
                setActscriptWait ALLY_BOWIE,eas_Init
                setActscriptWait ALLY_PETER,eas_Init
                setPos ALLY_PETER,27,38,LEFT
                setActscriptWait FOLLOWER_B,eas_Init
                setPos FOLLOWER_B,27,37,LEFT
                setActscriptWait ALLY_FRAYJA,eas_Init
                setPos ALLY_FRAYJA,27,36,LEFT
                setBlocks 16,8,1,1,32,1
                setBlocks 3,39,1,1,16,8
                playSound MUSIC_BATTLE_THEME_3
                fadeInB
                csWait 30
                setFacing ALLY_BOWIE,UP
                setFacing ALLY_PETER,UP
                setFacing FOLLOWER_B,UP
                entityActionsWait ALLY_FRAYJA
                 moveUp 1
                endActions
                setFacing ALLY_FRAYJA,DOWN
                nextSingleText $0,ALLY_FRAYJA ; "I'm opening the gate of Moun.{N}Devils are waiting inside.{N}Be careful!{W1}"
                entityActionsWait ALLY_FRAYJA
                 moveUp 1
                endActions
                nextSingleText $FF,255  ; "Vicar {NAME;22} uses{N}the gate key.{W1}"
                csWait 30
                setQuake 2
                setBlocks 1,39,2,2,26,32
                csWait 20
                setQuake 0
                setCameraEntity ALLY_BOWIE
                csWait 50
                entityActionsWait ALLY_BOWIE
                 moveUp 1
                endActions
                entityActions ALLY_FRAYJA
                 moveUp 6
                 moveLeft 1
                 moveUp 1
                endActions
                entityActions ALLY_BOWIE
                 moveUp 7
                endActions
                entityActions FOLLOWER_B
                 moveUp 6
                 moveLeft 2
                 moveUp 1
                endActions
                entityActionsWait ALLY_PETER
                 moveUp 8
                endActions
                csWait 30
                cameraSpeed $30
                setCamDest 5,8
                entityActionsWait 128
                 moveDown 1
                endActions
                nextText $0,128         ; "Welcome, losers!{W2}"
                nextSingleText $0,128   ; "Will you follow the example{N}of the people of Moun and die{N}without resistance?{W1}"
                nextText $0,ALLY_FRAYJA ; "No!  I'm too late.{N}I killed a lot of people.{W2}"
                nextSingleText $0,ALLY_FRAYJA ; "I can never forgive myself!{W1}"
                setCamDest 21,25
                entityActionsWait ALLY_FRAYJA
                 moveDown 1
                endActions
                nextSingleText $0,ALLY_FRAYJA ; "{LEADER}, please let me{N}fight with you.  They must{N}die!{W1}"
                join ALLY_FRAYJA
                entityActionsWait FOLLOWER_B
                 moveUp 1
                endActions
                setFacing FOLLOWER_B,RIGHT
                setFacing ALLY_BOWIE,LEFT
                nextSingleText $0,FOLLOWER_B ; "{LEADER}, {NAME;22} will be{N}a great asset.{W1}"
                joinBatParty ALLY_FRAYJA
                executeSubroutine csub_4D078
                textCursor STORYTEXT_OFFSET_FRAYJA_JOINS
                nextSingleText $0,FOLLOWER_B ; "{LEADER}, {NAME;22} is{N}right.  They must die!{W1}"
                setF FLAG_MOUN1                ; Set after Frayja forces his way into the party just before the battle in Moun
                clearF FLAG_FOLLOWER_FRAYJA               ; Frayja is a follower
                csc_end
ce_4D048:       mainEntity 26,37,LEFT
                entity 27,38,LEFT,ALLY_PETER,eas_Init
                entity 27,36,LEFT,ALLY_FRAYJA,eas_Init
                entity 10,10,DOWN,MAPSPRITE_SHAMAN,eas_Init
                entity 9,10,DOWN,MAPSPRITE_DEVIL_SOLDIER,eas_Init
                entity 11,10,DOWN,MAPSPRITE_DEVIL_SOLDIER,eas_Init
                cscEntitiesEnd

; =============== S U B R O U T I N E =======================================


csub_4D078:
                
                cmpi.w  #-1,(DIALOGUE_NAME_INDEX_1).l
                beq.s   @Return
                
                jsr     (CloseDialogueWindow).l
                move.w  #2874,d0
                jsr     (DisplayText).l 
                jsr     (CloseDialogueWindow).l
@Return:
                
                rts

    ; End of function csub_4D078
bscs_battle33:  csc_end
rbcs_battle33:  csc_end
edcs_battle33:  csc_end
abcs_battle33:  textCursor STORYTEXT_OFFSET_MOUN_SURVIVORS
                loadMapFadeIn MAP_MOUN,8,6
                loadMapEntities ce_4D322
                setActscriptWait ALLY_BOWIE,eas_Init
                setActscriptWait ALLY_PETER,eas_Init
                setPos ALLY_PETER,13,11,UP
                setActscriptWait FOLLOWER_B,eas_Init
                setPos FOLLOWER_B,12,9,DOWN
                setBlocks 3,39,1,1,16,8
                stopEntity 128
                setActscriptWait 128,eas_DeactivateAutoFacing
                entityActions 128
                 moveDown 1
                endActions
                csWait 4
                setActscriptWait 128,eas_StopMoving
                entityActions ALLY_ZYNK
                 moveDown 1
                endActions
                csWait 2
                setActscriptWait ALLY_ZYNK,eas_StopMoving
                setActscriptWait ALLY_ZYNK,eas_Immersed
                fadeInB
                nextSingleText $0,FOLLOWER_B ; "There may be some survivors{N}somewhere.{W1}"
                csWait 5
                setActscript ALLY_BOWIE,eas_2xRightLeft
                csWait 5
                setActscript FOLLOWER_B,eas_2xUpDown
                csWait 5
                setActscript ALLY_PETER,eas_2xRightLeft
                csWait 120
                entityActions 128
                 moveUp 1
                endActions
                csWait 3
                entityActions 128
                 moveDown 1
                endActions
                csWait 3
                entityActions 128
                 moveUp 1
                endActions
                csWait 3
                entityActions 128
                 moveDown 1
                endActions
                csWait 3
                setActscriptWait 128,eas_StopMoving
                setFacing ALLY_PETER,RIGHT
                setActscriptWait ALLY_PETER,eas_Jump
                csWait 40
                entityActionsWait ALLY_PETER
                 moveRight 3
                endActions
                setFacing ALLY_PETER,UP
                setFacing ALLY_BOWIE,RIGHT
                setFacing FOLLOWER_B,RIGHT
                customActscriptWait 128
                 ac_setSpeed 24,24      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActions 128
                 moveUp 1
                endActions
                csWait 8
                setActscriptWait 128,eas_StopMoving
                csWait 50
                customActscriptWait 128
                 ac_setSpeed 48,48      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActions 128
                 moveDown 1
                endActions
                csWait 4
                setQuake 2
                setActscriptWait 128,eas_StopMoving
                csWait 10
                setQuake 0
                csWait 40
                entityActionsWait ALLY_PETER
                 moveUp 2
                endActions
                nextSingleText $0,128   ; "Do not touch my rock!{W1}"
                setActscriptWait ALLY_PETER,eas_Jump
                setActscriptWait ALLY_PETER,eas_DeactivateAutoFacing
                customActscriptWait ALLY_PETER
                 ac_setSpeed 48,48      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActionsWait ALLY_PETER
                 moveDown 2
                endActions
                setCamDest 10,6
                customActscriptWait 128
                 ac_setSpeed 24,24      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActions 128
                 moveUp 1
                endActions
                csWait 8
                setActscriptWait 128,eas_StopMoving
                nextText $0,128         ; "Did you defeat all those{N}devils?{W2}"
                nextSingleText $0,128   ; "I was wondering why it became{N}quiet so suddenly.{W1}"
                entityActions FOLLOWER_B
                 moveRight 3
                 moveUp 1
                endActions
                entityActionsWait ALLY_BOWIE
                 moveRight 4
                endActions
                setFacing FOLLOWER_B,RIGHT
                setFacing ALLY_BOWIE,UP
                nextSingleText $0,FOLLOWER_B ; "Are you a survivor?{N}Are you from Moun?{N}What's your name?{W1}"
                nextSingleText $0,128   ; "I am {NAME;26}.{N}I am not from Moun.{W1}"
                nextSingleText $0,FOLLOWER_B ; "Then, where are you from?{W1}"
                nextSingleText $0,128   ; "The past.{W1}"
                nextSingleText $0,FOLLOWER_B ; "What do you mean?{W1}"
                nextText $0,128         ; "I cannot explain.{W2}"
                nextSingleText $0,128   ; "I am what I am.{N}That is all that I am.{W1}"
                customActscriptWait 128
                 ac_setSpeed 40,40      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setActscriptWait 128,eas_JumpRight
                customActscriptWait 128
                 ac_setSpeed 56,56      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setActscriptWait 128,eas_DeactivateAutoFacing
                entityActions 128
                 moveDown 1
                endActions
                setPos ALLY_ZYNK,16,8,DOWN
                setActscriptWait ALLY_ZYNK,eas_Init
                csWait 3
                setActscriptWait 128,eas_StopMoving
                setQuake 2
                csWait 20
                setQuake 0
                nextText $0,FOLLOWER_B  ; "I've never seen anyone like{N}you.{W2}"
                nextSingleText $0,FOLLOWER_B ; "Where are the people of{N}Moun?  Were there any{N}survivors?{W1}"
                nextSingleText $C0,ALLY_ZYNK ; "Some.{W1}"
                nextText $0,FOLLOWER_B  ; "That's good news.{W2}"
                nextSingleText $0,FOLLOWER_B ; "And where are they?{W1}"
                nextSingleText $C0,ALLY_ZYNK ; "Down here.  Follow me.{W1}"
                setPos ALLY_ZYNK,63,63,DOWN
                setActscriptWait ALLY_PETER,eas_Jump
                csWait 30
                entityActionsWait ALLY_PETER
                 moveUp 2
                endActions
                setFacing FOLLOWER_B,DOWN
                nextText $0,FOLLOWER_B  ; "{LEADER}, hurry!{N}Follow {NAME;26}!{W2}"
                nextSingleText $0,FOLLOWER_B ; "{NAME;26} knows where{N}they're hiding.{W1}"
                followEntity FOLLOWER_B,ALLY_BOWIE,2
                followEntity ALLY_PETER,FOLLOWER_B,2
                setF FLAG_MOUN3                ; Set after the scene after you win the battle in Moun plays out
                csc_end
ce_4D322:       mainEntity 11,11,UP
                entity 13,11,UP,ALLY_PETER,eas_Init
                entity 16,8,UP,MAPSPRITE_OBJECT2,eas_Init
                entity 16,8,DOWN,ALLY_ZYNK,eas_Init
                cscEntitiesEnd
