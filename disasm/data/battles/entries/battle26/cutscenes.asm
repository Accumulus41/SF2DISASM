
; ASM FILE data\battles\entries\battle26\cs_afterbattle.asm :
; 0x4F47A..0x4F48A : Cutscene after battle 0
bbcs_26:        textCursor STORYTEXT_OFFSET_HIGINS_CONFRONTED
                loadMapFadeIn MAP_OVERWORLD_NORTH_SOUTH_PARMECIA_JUNCTION,2,20
                loadMapEntities ce_4BC5A
                setActscriptWait ALLY_BOWIE,eas_Init
                setActscriptWait ALLY_PETER,eas_Init
                setPos ALLY_PETER,6,26,RIGHT
                setActscriptWait FOLLOWER_B,eas_Init
                setPos FOLLOWER_B,6,24,RIGHT
                setPos FOLLOWER_A,6,25,RIGHT
                fadeInB
                cameraSpeed $30
                nextSingleText $0,128   ; "Answer me!{N}Where are you going?{W1}"
                setCamDest 13,9
                nextSingleText $C0,ALLY_HIGINS ; "Ah...I...{W1}"
                nextSingleText $0,128   ; "You were going to South{N}Parmecia to get help, right?{W1}"
                nextSingleText $C0,ALLY_HIGINS ; "I...uh...{W1}"
                nextText $0,128         ; "Paladins of Pacalon are{N}cowards!  {NAME;19}, don't{N}you have any pride?{W2}"
                nextSingleText $0,128   ; "Wimp!{W1}"
                entityActionsWait 133
                 moveUp 2
                 moveRight 1
                endActions
                setFacing 133,UP
                nextSingleText $C0,133  ; "Shut up!  Mr. {NAME;19} is{N}the bravest soldier in the{N}world!{W1}"
                nextSingleText $C0,ALLY_HIGINS ; "I can defend myself.{W1}"
                nextSingleText $0,128   ; "Come on, you half-breed!{W1}"
                setFacing 128,UP
                nextSingleText $0,128   ; "Are you afraid of me?{N}I'll turn my back to you.{N}Now, run away you cowards!{W1}"
                setActscriptWait 133,eas_Jump
                nextSingleText $C0,133  ; "You've gone too far!{W1}"
                customActscriptWait 133
                 ac_setSpeed 48,48      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActions 133
                 moveUp 3
                endActions
                csWait 5
                animEntityFX 128,6
                waitIdle 133
                csWait 5
                setActscript 133,eas_2xRightLeft
                csWait 120
                setFacing 131,LEFT
                setFacing 133,DOWN
                csWait 20
                customActscriptWait 131
                 ac_setSpeed 64,64      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActions 131
                 moveLeft 1
                endActions
                csWait 3
                customActscriptWait 133
                 ac_setSpeed 64,64      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setQuake 2
                setActscriptWait 133,eas_JumpLeft
                setQuake 0
                setActscriptWait 133,eas_JumpLeft
                nextSingleText $C0,133  ; "Aaaauuuuu!{W1}"
                setActscriptWait 133,eas_Die
                setCamDest 13,13
                setPos 128,18,19,UP
                animEntityFX 128,7
                nextSingleText $0,128   ; "Pacalon soldiers have no{N}honor.  They attack while{N}my back is turned!{W1}"
                setActscriptWait 134,eas_Jump
                setFacing ALLY_HIGINS,DOWN
                setFacing 134,DOWN
                csWait 30
                entityActionsWait 134
                 moveLeft 1
                 moveDown 1
                endActions
                nextText $C0,134        ; "What?!{W2}"
                nextSingleText $C0,134  ; "If Mr. {NAME;19} was not{N}ill, you'd be history!{W1}"
                nextText $0,128         ; "Oh, is {NAME;19} ill?{W1}"
                nextSingleText $0,128   ; "In that case, you can try{N}and take me.{W1}"
                nextSingleText $C0,134  ; "I can no longer put up with{N}these insults!{W1}"
                nextSingleText $C0,ALLY_HIGINS ; "No, no!{W1}"
                setPos 129,13,18,RIGHT
                customActscriptWait 129
                 ac_setSpeed 80,80      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                customActscriptWait 134
                 ac_setSpeed 40,40      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActions 134
                 moveDown 2
                endActions
                entityActions 129
                 moveRight 4
                endActions
                csWait 20
                customActscriptWait 134
                 ac_setSpeed 64,64      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setQuake 3
                setActscriptWait 134,eas_JumpRight
                setQuake 0
                setActscriptWait 134,eas_JumpRight
                nextSingleText $C0,134  ; "Grruuu....{W1}"
                setActscriptWait 134,eas_Die
                setFacing 129,DOWN
                entityActionsWait 128
                 moveUp 2
                endActions
                nextSingleText $0,128   ; "You look so sad,{N}{NAME;19}....{W1}"
                nextSingleText $C0,ALLY_HIGINS ; "You're not just a normal{N}devil soldier.{W1}"
                nextText $0,128         ; "You're right, {NAME;19}.{N}I see why you're the leader{N}of the Pacalon Army.{W2}"
                nextSingleText $0,128   ; "I'm Geshp!  An adviser for{N}Zeon!{W1}"
                nextSingleText $C0,ALLY_HIGINS ; "How did you know my name?{W1}"
                nextSingleText $0,128   ; "I know everything.{W1}"
                nextText $C0,ALLY_HIGINS ; "Now, tell me the reason why{N}"
                nextSingleText $C0,ALLY_HIGINS ; "you're keeping me alive.{W1}"
                nextSingleText $0,128   ; "Ha, ha!  You're smart!{W1}"
                animEntityFX 132,4
                entityFlashWhite 128,$1E
                setCamDest 13,11
                setPos 132,18,12,DOWN
                animEntityFX 132,5
                nextSingleText $C0,ALLY_HIGINS ; "What did you do?{W1}"
                entityActionsWait 132
                 moveDown 1
                endActions
                animEntityFX 132,4
                nextSingleText $C0,ALLY_HIGINS ; "I...can't...!{N}My body won't...{W1}"
                shiver ALLY_HIGINS
                stopEntity ALLY_HIGINS
                nextText $0,128         ; "I came here to borrow your{N}body.{W2}"
                nextSingleText $0,128   ; "Ha, ha!  Welcome our new{N}leader!{W1}"
                stopEntity ALLY_HIGINS
                customActscriptWait ALLY_HIGINS
                 ac_motion OFF          ;   
                 ac_orientLeft          ;   
                 ac_updateSprite        ;   
                 ac_jump eas_Idle       ;   
                ac_end
                nextSingleText $C0,FOLLOWER_B ; "Stop!!!{W1}"
                customActscriptWait 129
                 ac_setSpeed 32,32      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setActscript 129,eas_Jump
                setActscriptWait 128,eas_Jump
                setCamDest 13,15
                entityActionsWait 128
                 moveDown 3
                endActions
                csWait 5
                setActscript 128,eas_2xRightLeft
                csWait 120
                entityActionsWait 128
                 moveLeft 1
                endActions
                nextSingleText $0,128   ; "Who said that?{W1}"
                setCamDest 2,20
                csWait 60
                setCamDest 13,15
                nextText $0,128         ; "A force from the south?{N}How?{W2}"
                nextSingleText $0,128   ; "Where did you come from?{W1}"
                nextSingleText $C0,FOLLOWER_B ; "We're from Granseal!{W1}"
                nextSingleText $0,128   ; "But, that's on the other....{W1}"
                setActscriptWait 128,eas_DeactivateAutoFacing
                customActscriptWait 128
                 ac_setSpeed 48,48      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActionsWait 128
                 moveRight 2
                endActions
                nextSingleText $0,128   ; "I'd better leave...{W2}"
                setFacing 128,UP
                nextSingleText $0,128   ; "Devil soldiers!  Stop that{N}force from Granseal!{W1}"
                setFacing 128,DOWN
                setActscript 129,eas_Jump
                animEntityFX 128,6
                csc_end
ce_4BC5A:       mainEntity 7,25,RIGHT
                entity 6,26,RIGHT,ALLY_PETER,eas_Init
                entity 18,14,UP,ALLY_HIGINS,eas_Init
                entity 18,11,DOWN,MAPSPRITE_GESHP,eas_Init
                entity 17,11,DOWN,MAPSPRITE_LESSER_DEMON,eas_Init
                entity 19,11,DOWN,MAPSPRITE_DARK_BISHOP,eas_Init
                entity 20,10,DOWN,MAPSPRITE_LIZARDMAN,eas_Init
                entity 63,63,DOWN,MAPSPRITE_EVIL_CLOUD,eas_Init
                entity 17,15,UP,MAPSPRITE_PACALON_SOLDIER,eas_Init
                entity 19,15,UP,MAPSPRITE_PACALON_SOLDIER,eas_Init
                cscEntitiesEnd
bscs_battle26:  csc_end
rbcs_battle26:  csc_end
edcs_battle26:  csc_end
abcs_battle26:  textCursor STORYTEXT_OFFSET_SAVE_HIGINS
                loadMapFadeIn MAP_OVERWORLD_NORTH_SOUTH_PARMECIA_JUNCTION,13,11
                loadMapEntities ce_4BE4A
                setActscriptWait ALLY_BOWIE,eas_Init
                customActscriptWait ALLY_HIGINS
                 ac_motion OFF          ;   
                 ac_orientLeft          ;   
                 ac_updateSprite        ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setActscriptWait ALLY_PETER,eas_Init
                setPos ALLY_PETER,17,14,RIGHT
                setActscriptWait FOLLOWER_B,eas_Init
                setPos FOLLOWER_B,18,16,UP
                setPos FOLLOWER_A,19,17,UP
                setPriority ALLY_HIGINS,$0
                setPriority 128,$FFFF
                fadeInB
                entityActionsWait ALLY_PETER
                 moveDown 2
                endActions
                setFacing ALLY_PETER,RIGHT
                nextSingleText $0,ALLY_PETER ; "Is he alright?{W1}"
                nextSingleText $0,FOLLOWER_B ; "We have to save him before{N}he is possessed by an evil...{W1}"
                entityFlashWhite FOLLOWER_B,$3C
                flashScreenWhite $1E
                setCamDest 13,9
                animEntityFX 128,4
                setPos 128,18,13,DOWN
                animEntityFX 128,5
                setFacing ALLY_PETER,UP
                entityActionsWait 128
                 moveUp 3
                endActions
                customActscriptWait 128
                 ac_setSpeed 64,64      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setActscript 128,eas_EvilGizmoCircle
                csWait 200
                setActscriptWait 128,eas_Die
                setCamDest 13,11
                customActscriptWait ALLY_HIGINS
                 ac_motion OFF          ;   
                 ac_orientUp            ;   
                 ac_updateSprite        ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setFacing ALLY_HIGINS,DOWN
                headshake ALLY_HIGINS
                nextSingleText $C0,ALLY_HIGINS ; "What happened?{W2}"
                entityActionsWait ALLY_HIGINS
                 moveUp 1
                endActions
                setActscriptWait ALLY_HIGINS,eas_Jump
                nextSingleText $C0,ALLY_HIGINS ; "Ah...I was almost possessed{N}by that devil.{W1}"
                entityActionsWait ALLY_HIGINS
                 moveDown 2
                endActions
                nextSingleText $C0,ALLY_HIGINS ; "Thank you.{N}How can I repay you for{N}your kindness?{W1}"
                nextText $0,FOLLOWER_B  ; "Are you OK now?  Good.{W2}"
                nextSingleText $0,FOLLOWER_B ; "May I ask you, where were{N}you going in such a wounded{N}state?{W1}"
                nextText $C0,ALLY_HIGINS ; "Pacalon, my country.  We{N}are fighting against the{N}devils.{W2}"
                nextText $C0,ALLY_HIGINS ; "But, no country in North{N}Parmecia has enough power{N}to resist them.{W2}"
                nextSingleText $C0,ALLY_HIGINS ; "So, I was heading south to{N}find some allies.{W1}"
                entityActionsWait ALLY_PETER
                 moveUp 1
                endActions
                setFacing ALLY_PETER,RIGHT
                nextSingleText $0,ALLY_PETER ; "You don't have to go any{N}further.{W1}"
                setFacing ALLY_HIGINS,LEFT
                nextSingleText $C0,ALLY_HIGINS ; "Then, you're from South{N}Parmecia?{W1}"
                nextSingleText $0,FOLLOWER_B ; "Yes, Granseal.{W1}"
                setFacing ALLY_HIGINS,DOWN
                nextSingleText $C0,ALLY_HIGINS ; "Oh, how lucky!  Please{N}come with me to Pacalon!{W1}"
                nod ALLY_HIGINS
                nextSingleText $0,ALLY_PETER ; "But, we have to go to{N}Tristan.{W1}"
                setFacing ALLY_HIGINS,LEFT
                nextText $C0,ALLY_HIGINS ; "Oh, please...I can't return{N}to Pacalon without allies.{W2}"
                nextText $C0,ALLY_HIGINS ; "Maybe, when you're done...{W2}"
                nextSingleText $C0,ALLY_HIGINS ; "OK, I'll go with you.{W1}"
                join ALLY_HIGINS
                nextSingleText $0,FOLLOWER_B ; "But, you're injured{N}Mr. {NAME;19}.{W1}"
                setFacing ALLY_HIGINS,DOWN
                nextSingleText $C0,ALLY_HIGINS ; "No problem.  I don't know{N}why, but I'm much better.{W1}"
                setActscript ALLY_HIGINS,eas_RotateRight
                csWait 40
                setActscriptWait ALLY_HIGINS,eas_Jump
                setFacing ALLY_HIGINS,DOWN
                setActscriptWait ALLY_HIGINS,eas_Jump
                setActscriptWait ALLY_HIGINS,eas_Init
                startEntity ALLY_HIGINS
                nextSingleText $C0,ALLY_HIGINS ; "Let's go to Pacalon.{W1}"
                addNewFollower ALLY_HIGINS
                csc_end
ce_4BE4A:       mainEntity 19,16,UP
                entity 17,14,DOWN,ALLY_PETER,eas_Init
                entity 18,14,DOWN,ALLY_HIGINS,eas_Init
                entity 63,63,UP,MAPSPRITE_EVIL_CLOUD,eas_Init
                cscEntitiesEnd
