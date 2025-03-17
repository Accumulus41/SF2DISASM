
; ASM FILE data\battles\entries\battle32\cs_afterbattle.asm :
; 0x4F47A..0x4F48A : Cutscene after battle 0
bbcs_32:        textCursor STORYTEXT_OFFSET_MEET_BLACK_KNIGHT
                loadMapFadeIn MAP_OVERWORLD_MOUN_AND_MITULA,10,38
                loadMapEntities ce_4CCC0
                setActscriptWait ALLY_BOWIE,eas_Init
                setActscriptWait ALLY_PETER,eas_Init
                setPos ALLY_PETER,16,45,UP
                setActscriptWait FOLLOWER_B,eas_Init
                setPos FOLLOWER_B,14,45,UP
                setActscriptWait ALLY_FRAYJA,eas_Init
                setPos ALLY_FRAYJA,15,46,UP
                setActscriptWait FOLLOWER_A,eas_Init
                setPos FOLLOWER_A,15,45,UP
                fadeInB
                cameraSpeed $30
                entityActions ALLY_BOWIE
                 moveUp 3
                endActions
                entityActions ALLY_PETER
                 moveUp 3
                endActions
                entityActions FOLLOWER_B
                 moveUp 3
                endActions
                entityActions FOLLOWER_A
                 moveUp 3
                endActions
                entityActionsWait ALLY_FRAYJA
                 moveUp 3
                endActions
                nextSingleText $0,128   ; "I heard about you from{N}Geshp.{W1}"
                setCamDest 10,18
                nextText $0,128         ; "He ordered me to take out{N}some of your people.{W2}"
                nextSingleText $0,128   ; "But, it's not enough.{N}This is the end of your{N}resistance.{W1}"
                setFacing 128,LEFT
                csWait 30
                setFacing 128,RIGHT
                csWait 30
                setFacing 128,UP
                csWait 30
                setFacing 128,DOWN
                nextSingleText $0,128   ; "Kill them, kill them all!{W1}"
                setActscript 129,eas_Jump
                setActscript 130,eas_Jump
                setActscript 131,eas_Jump
                setActscript 132,eas_Jump
                setActscript 133,eas_Jump
                setActscriptWait 134,eas_Jump
                csc_end
ce_4CCC0:       mainEntity 15,44,UP
                entity 16,45,UP,ALLY_PETER,eas_Init
                entity 15,46,UP,ALLY_FRAYJA,eas_Init
                entity 14,21,DOWN,MAPSPRITE_DEATH_ARCHER,eas_Init
                entity 12,21,DOWN,MAPSPRITE_NECROMANCER,eas_Init
                entity 13,20,DOWN,MAPSPRITE_DEATH_MONK,eas_Init
                entity 16,22,DOWN,MAPSPRITE_PEGASUS_KNIGHT,eas_Init
                entity 14,24,DOWN,MAPSPRITE_DEVIL_SOLDIER,eas_Init
                entity 16,24,DOWN,MAPSPRITE_CERBERUS,eas_Init
                entity 18,23,DOWN,MAPSPRITE_NECROMANCER,eas_Init
                cscEntitiesEnd
bscs_battle32:  csc_end
rbcs_battle32:  textCursor STORYTEXT_OFFSET_B21
                executeSubroutine csub_JaroJoinForce
                cameraSpeed $38
                setCameraEntity ALLY_JARO
                csWait 60
                nextSingleText $0,ALLY_JARO ; "I'm tired of this.  I can no{N}longer fight for devils.{W1}"
                setCameraEntity 128
                csWait 60
                nextSingleText $0,128   ; "{NAME;23}, what?{W1}"
                setCameraEntity ALLY_JARO
                csWait 60
                setFacing ALLY_JARO,UP
                nextSingleText $0,ALLY_JARO ; "Didn't you hear me?{W1}"
                setFacing ALLY_JARO,DOWN
                nextSingleText $0,ALLY_JARO ; "Hey, Granseal guys!{N}I'm on your side from now{N}on! OK?{W1}"
                joinForceAI ALLY_JARO,$FFFF ; 0054 JOIN FORCE WITH AI
                setF FLAG_JARO_DEFECTS                ; Set during battle 32, after Jaro switches sides
                csc_end

; =============== S U B R O U T I N E =======================================

; Jaro joins the Force


csub_JaroJoinForce:
                
                move.w  #$8F,d0
                jsr     GetCombatantX
                move.w  d1,d7
                jsr     GetCombatantY
                move.w  d1,d6
                clr.w   d1
                jsr     SetCurrentHp
                move.w  #-1,d1
                jsr     SetCombatantX
                move.w  #-1,d1
                jsr     SetCombatantY
                moveq   #ALLY_JARO,d0
                move.w  d7,d1
                jsr     SetCombatantX
                move.w  d6,d1
                jsr     SetCombatantY
                moveq   #ALLY_JARO,d0
                jsr     JoinForce
                moveq   #ALLY_JARO,d0
                jsr     JoinBattleParty
                move.b  (ENTITY_EVENT_ENEMY_JAR).l,(ENTITY_EVENT_ALLY_JARO).l
                rts

    ; End of function csub_JaroJoinForce
edcs_battle32:  csc_end
abcs_battle32:  textCursor STORYTEXT_OFFSET_JARO_DEFECTS
                loadMapFadeIn MAP_OVERWORLD_MOUN_AND_MITULA,5,20
                loadMapEntities ce_4CEEC
                setActscriptWait ALLY_BOWIE,eas_Init
                setActscriptWait ALLY_PETER,eas_Init
                setPos ALLY_PETER,11,25,UP
                setActscriptWait FOLLOWER_B,eas_Init
                setPos FOLLOWER_B,9,25,UP
                setActscriptWait ALLY_FRAYJA,eas_Init
                setPos ALLY_FRAYJA,11,26,UP
                setActscriptWait FOLLOWER_A,eas_Init
                setPos FOLLOWER_A,10,26,UP
                setActscriptWait ALLY_JARO,eas_Init
                setPos ALLY_JARO,10,22,DOWN
                fadeInB
                entityActionsWait ALLY_PETER
                 moveUp 1
                endActions
                nextSingleText $0,ALLY_PETER ; "I can't believe it!{N}You might have been killed{N}by the devils.{W1}"
                nextSingleText $0,FOLLOWER_B ; "Indeed!  Why did you{N}change your mind?{W1}"
                entityActionsWait ALLY_JARO
                 moveDown 1
                endActions
                nextText $C0,ALLY_JARO  ; "I'm {NAME;23}, from Galam.{N}I was waiting for the chance{N}to escape from them.{W2}"
                nextSingleText $C0,ALLY_JARO ; "I can't stand their wicked{N}ways!{W1}"
                entityActionsWait ALLY_PETER
                 moveUp 1
                endActions
                setFacing ALLY_PETER,LEFT
                setFacing ALLY_JARO,RIGHT
                nextSingleText $0,ALLY_PETER ; "You have the same opinion{N}of them as we do.{W1}"
                nextSingleText $C0,ALLY_JARO ; "Please let me join you!{N}I could be a great help to{N}you.{W2}"
                setFacing ALLY_JARO,DOWN
                nextSingleText $C0,ALLY_JARO ; "You need a professional{N}soldier like me.{W1}"
                nextSingleText $0,FOLLOWER_B ; "Oh, we welcome you.{W1}"
                setActscriptWait ALLY_PETER,eas_DeactivateAutoFacing
                entityActionsWait ALLY_PETER
                 moveRight 1
                endActions
                nextSingleText $0,ALLY_PETER ; "But, he was on the other{N}side just an minute ago.{W1}"
                entityActionsWait FOLLOWER_B
                 moveUp 1
                endActions
                setFacing FOLLOWER_B,RIGHT
                nextSingleText $0,FOLLOWER_B ; "I don't care, {NAME;7}.{N}He has seen the error of his{N}ways.{W1}"
                setFacing FOLLOWER_B,DOWN
                nextSingleText $0,FOLLOWER_B ; "{LEADER}, don't you want{N}{NAME;23} to join our{N}force?{W1}"
                nod ALLY_BOWIE
                join ALLY_JARO
                joinForceAI ALLY_JARO,$0 ; 0054 JOIN FORCE WITH AI
                entityActionsWait ALLY_JARO
                 moveDown 1
                endActions
                nextSingleText $C0,ALLY_JARO ; "Oh, thank you!{W2}"
                setActscriptWait ALLY_JARO,eas_Jump
                setActscriptWait ALLY_JARO,eas_Jump
                nextSingleText $C0,ALLY_JARO ; "I'll try to do my best!{W1}"
                executeSubroutine csub_4CEE4
                followEntity FOLLOWER_A,ALLY_BOWIE,2
                followEntity ALLY_PETER,FOLLOWER_A,1
                followEntity FOLLOWER_B,FOLLOWER_A,3
                followEntity ALLY_FRAYJA,FOLLOWER_A,2
                followEntity ALLY_JARO,ALLY_FRAYJA,2
                csc_end

; =============== S U B R O U T I N E =======================================


csub_4CEE4:
                
                moveq   #ALLY_JARO,d0
                jmp     LeaveBattleParty

    ; End of function csub_4CEE4

ce_4CEEC:       mainEntity 10,25,UP
                entity 11,25,UP,ALLY_PETER,eas_Init
                entity 11,26,UP,ALLY_FRAYJA,eas_Init
                entity 10,22,DOWN,ALLY_JARO,eas_Init
                cscEntitiesEnd
