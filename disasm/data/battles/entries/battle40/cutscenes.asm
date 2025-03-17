
; ASM FILE data\battles\entries\battle40\cs_afterbattle.asm :
; 0x4F47A..0x4F48A : Cutscene after battle 0
bbcs_40:        textCursor STORYTEXT_OFFSET_MEET_ODDEYE
                loadMapFadeIn MAP_ODDEYE_ARENA,11,34
                loadMapEntities ce_4E878
                setActscriptWait ALLY_BOWIE,eas_Init
                setActscriptWait ALLY_PETER,eas_Init
                setPos ALLY_PETER,15,40,UP
                setActscriptWait FOLLOWER_B,eas_Init
                setPos FOLLOWER_B,16,40,UP
                setActscriptWait ALLY_LEMON,eas_Init
                setPos ALLY_LEMON,15,41,UP
                setActscriptWait 128,eas_Init
                setPos 128,16,41,UP
                jumpIfFlagClear FLAG_FOLLOWER_ZYNK,cs_4E544 ; Zynk is a follower
                setActscriptWait ALLY_ZYNK,eas_Init
                setPos ALLY_ZYNK,63,62,DOWN
cs_4E544:       setBlocks 11,6,11,29,44,0
                setBlocks 32,0,11,29,11,6
                playSound MUSIC_STOP
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
                entityActions 128
                 moveUp 3
                endActions
                entityActionsWait ALLY_LEMON
                 moveUp 3
                endActions
                nextSingleText $C0,129  ; "{LEADER}, you're finally{N}here.{W1}"
                setActscript ALLY_BOWIE,eas_Jump
                setActscriptWait ALLY_PETER,eas_Jump
                entityActions ALLY_BOWIE
                 moveUp 1
                endActions
                entityActions ALLY_PETER
                 moveUp 2
                endActions
                entityActions FOLLOWER_B
                 moveUp 1
                endActions
                entityActions ALLY_LEMON
                 moveUp 1
                 moveLeft 1
                 moveUp 1
                endActions
                entityActionsWait 128
                 moveUp 1
                 moveRight 1
                 moveUp 1
                endActions
                csWait 30
                setCamDest 11,2
                playSound MUSIC_BATTLE_THEME_3
                nextSingleText $0,ALLY_PETER ; "Is that...?{W1}"
                nextSingleText $C0,129  ; "Did you forget about me,{N}{LEADER} and {NAME;7}!{W1}"
                nextSingleText $0,ALLY_PETER ; "Oddler, are you Odd Eye?{N}Zalbard said...{W1}"
                nextSingleText $C0,129  ; "Yes, I am he.{W1}"
                nextSingleText $0,FOLLOWER_B ; "You're the leader of the Devil{N}Army who attacked Bedoe...{W1}"
                nextSingleText $C0,129  ; "Yes I am, Sir Astral.{W1}"
                nextSingleText $0,FOLLOWER_B ; "How do you know me?{W1}"
                nextSingleText $C0,129  ; "{LEADER} told me about{N}you repeatedly.{W1}"
                nextSingleText $0,ALLY_PETER ; "What do YOU want?{W1}"
                nextSingleText $C0,129  ; "Don't talk to me like that.{N}I'm very sad.{W1}"
                nextSingleText $0,ALLY_PETER ; "Sad?{N}You've got to be joking!{W1}"
                setFacing 129,LEFT
                nextSingleText $C0,129  ; "Well, yes I am.{N}I'm really quite evil.{W1}"
                setFacing 129,DOWN
                nextSingleText $C0,129  ; "Don't you think so, Red{N}Baron?{W1}"
                nextSingleText $0,ALLY_LEMON ; "Uhh...(shiver).{W1}"
                entityActionsWait 129
                 moveDown 1
                endActions
                nextText $C0,129        ; "Anyway, I came here to{N}deliver an ultimatum.{W2}"
                nextText $C0,129        ; "Think long and well before{N}answering me.{W2}"
                nextSingleText $C0,129  ; "Leave the jewel, your{N}weapons, and your items{N}here...or DIE!{W1}"
                nextSingleText $0,ALLY_PETER ; "That means...we don't have{N}to fight him.{W1}"
                nextSingleText $0,FOLLOWER_B ; "True, but we can't take the{N}easy way out.  We mustn't{N}give him the jewel.{W1}"
                nextSingleText $C0,129  ; "You know how strong I am.{N}I think you had better{N}accept the offer.{W1}"
                nextSingleText $0,ALLY_BOWIE ; "Hmmm....{W1}"
                nextSingleText $0,ALLY_PETER ; "Oh, what should we do?!{W1}"
                nextSingleText $0,FOLLOWER_B ; "We have to fight!{W1}"
                nextSingleText $C0,129  ; "Times up!  We need space{N}to battle.{W1}"
                entityFlashWhite 129,$1E
                tintMap
                csWait 20
                flickerOnce
                csWait 10
                tintMap
                csWait 20
                flickerOnce
                setActscript 130,eas_AnimSpeedx2
                setActscriptWait 130,eas_DeactivateAutoFacing
                setPos 130,16,8,UP
                entityActionsWait 130
                 moveUp 2
                endActions
                setBlocks 6,15,1,1,16,6
                setPos 130,63,63,UP
                csWait 30
                setPos 130,15,8,UP
                entityActionsWait 130
                 moveUp 2
                endActions
                setBlocks 6,15,1,1,15,6
                setPos 130,63,63,UP
                csWait 20
                setPos 130,17,9,UP
                entityActionsWait 130
                 moveUp 2
                endActions
                setBlocks 6,15,1,1,17,7
                csWait 10
                setPos 130,16,9,UP
                entityActionsWait 130
                 moveUp 2
                endActions
                setBlocks 6,15,1,1,16,7
                hide 130
                csWait 5
                setBlocks 6,15,1,1,15,7
                csWait 5
                setBlocks 6,15,1,1,14,7
                csWait 5
                setBlocks 6,15,1,1,18,8
                csWait 4
                setBlocks 6,15,1,1,17,8
                csWait 4
                setBlocks 6,15,1,1,16,8
                csWait 4
                setBlocks 6,15,1,1,15,8
                csWait 4
                setBlocks 6,15,1,1,14,8
                csWait 4
                setBlocks 6,15,1,1,13,8
                csWait 4
                setBlocks 6,15,1,1,19,9
                csWait 3
                setBlocks 6,15,1,1,18,9
                csWait 3
                setBlocks 6,15,1,1,17,9
                csWait 3
                setBlocks 6,15,1,1,16,9
                csWait 3
                setBlocks 6,15,1,1,15,9
                csWait 3
                setBlocks 6,15,1,1,14,9
                csWait 3
                setBlocks 6,15,1,1,13,9
                csWait 3
                setBlocks 6,15,1,1,12,9
                csWait 3
                setBlocks 6,15,1,1,19,10
                csWait 2
                setBlocks 6,15,1,1,18,10
                csWait 2
                setBlocks 6,15,1,1,17,10
                csWait 2
                setBlocks 6,15,1,1,16,10
                csWait 2
                setBlocks 6,15,1,1,15,10
                csWait 2
                setBlocks 6,15,1,1,14,10
                csWait 2
                setBlocks 6,15,1,1,13,10
                csWait 2
                setBlocks 6,15,1,1,12,10
                csWait 2
                setBlocks 6,15,1,1,21,11
                csWait 1
                setBlocks 6,15,1,1,19,11
                csWait 1
                setBlocks 6,15,1,1,18,11
                csWait 1
                setBlocks 6,15,1,1,17,11
                csWait 1
                setBlocks 6,15,1,1,16,11
                csWait 1
                setBlocks 6,15,1,1,15,11
                csWait 1
                setBlocks 6,15,1,1,14,11
                csWait 1
                setBlocks 6,15,1,1,13,11
                csWait 1
                setBlocks 6,15,1,1,12,11
                csWait 1
                setBlocks 44,0,11,29,11,6
                nextSingleText $C0,129  ; "I'm very sorry, {LEADER},{N}but I must kill you!{W1}"
                setCamDest 11,31
                setFacing ALLY_PETER,RIGHT
                setFacing ALLY_BOWIE,LEFT
                nextSingleText $0,ALLY_PETER ; "{LEADER}, are we really{N}going to fight Oddler?{W1}"
                entityActionsWait FOLLOWER_B
                 moveLeft 1
                endActions
                setFacing FOLLOWER_B,UP
                setFacing ALLY_LEMON,RIGHT
                nextSingleText $0,FOLLOWER_B ; "That's enough out of you!{W1}"
                entityActionsWait FOLLOWER_B
                 moveRight 1
                endActions
                setFacing FOLLOWER_B,UP
                setFacing ALLY_BOWIE,DOWN
                nextSingleText $0,FOLLOWER_B ; "{LEADER}, let's do it!{W1}"
                setActscript ALLY_PETER,eas_Jump
                nod ALLY_BOWIE
                csc_end
ce_4E878:       mainEntity 16,39,UP
                entity 15,40,UP,ALLY_PETER,eas_Init
                entity 15,41,UP,ALLY_LEMON,eas_Init
                entity 16,41,UP,MAPSPRITE_CARAVAN,eas_Init
                entity 16,4,DOWN,MAPSPRITE_ODD_EYE,eas_Init
                entity 63,63,UP,MAPSPRITE_EFFECT3,eas_Init
                cscEntitiesEnd
bscs_battle40:  csc_end
rbcs_battle40_1:cameraSpeed $30
                setCamDest 10,17
                setBlocks 11,11,1,1,15,21
                csWait 5
                setBlocks 11,11,1,1,17,20
                csWait 5
                setBlocks 11,11,1,1,13,19
                csWait 5
                setBlocks 11,11,1,1,11,22
                csWait 5
                setBlocks 11,11,1,1,16,21
                csWait 5
                setBlocks 11,11,1,1,15,22
                csWait 4
                setBlocks 11,11,1,1,14,20
                csWait 4
                setBlocks 11,11,1,1,15,20
                csWait 4
                setBlocks 11,11,1,1,16,22
                csWait 4
                setBlocks 11,11,1,1,16,23
                csWait 4
                setBlocks 11,11,1,1,14,22
                csWait 3
                setBlocks 11,11,1,1,10,23
                csWait 3
                setBlocks 11,11,1,1,16,20
                csWait 3
                setBlocks 11,11,1,1,13,20
                csWait 3
                setBlocks 11,11,1,1,14,21
                csWait 3
                setBlocks 11,11,1,1,17,21
                csWait 2
                setBlocks 11,11,1,1,18,22
                csWait 2
                setBlocks 11,11,1,1,16,19
                csWait 2
                setBlocks 11,11,1,1,17,22
                csWait 2
                setBlocks 11,11,1,1,17,23
                csWait 2
                setBlocks 11,11,1,1,12,19
                csWait 1
                setBlocks 11,11,1,1,18,20
                csWait 1
                setBlocks 11,11,1,1,13,22
                csWait 1
                setBlocks 11,11,1,1,15,19
                csWait 1
                setBlocks 11,11,1,1,19,22
                setF FLAG_ODDEYETILES1                ; Set after the first set of tile changes in the Oddeye battle
                csc_end
rbcs_battle40_2:cameraSpeed $30
                setCamDest 13,8
                setBlocks 11,11,1,1,19,10
                csWait 5
                setBlocks 11,11,1,1,19,11
                csWait 5
                setBlocks 11,11,1,1,20,12
                csWait 5
                setBlocks 11,11,1,1,21,11
                csWait 5
                setBlocks 11,11,1,1,21,12
                csWait 5
                setBlocks 11,11,1,1,22,12
                csWait 4
                setBlocks 11,11,1,1,19,12
                csWait 4
                setBlocks 11,11,1,1,18,11
                csWait 4
                setBlocks 11,11,1,1,20,13
                csWait 4
                setBlocks 11,11,1,1,19,13
                csWait 4
                setBlocks 11,11,1,1,18,10
                csWait 3
                setBlocks 11,11,1,1,18,12
                csWait 3
                setBlocks 11,11,1,1,18,13
                csWait 3
                setBlocks 11,11,1,1,17,12
                csWait 3
                setBlocks 11,11,1,1,19,14
                csWait 3
                setBlocks 11,11,1,1,20,14
                csWait 2
                setBlocks 11,11,1,1,21,14
                csWait 2
                setBlocks 11,11,1,1,17,10
                csWait 2
                setBlocks 11,11,1,1,16,12
                csWait 2
                setBlocks 11,11,1,1,17,13
                csWait 2
                setBlocks 11,11,1,1,13,14
                setF FLAG_ODDEYETILES2                ; Set after the second set of tile changes in the Oddeye battle
                csc_end
edcs_battle40:  csc_end
abcs_battle40:  textCursor STORYTEXT_OFFSET_ODDEYE_DEFEATED
                loadMapFadeIn MAP_ODDEYE_ARENA,10,4
                loadMapEntities ce_4ECD6
                setActscriptWait ALLY_BOWIE,eas_Init
                setActscriptWait ALLY_PETER,eas_Init
                setPos ALLY_PETER,13,8,RIGHT
                setActscriptWait FOLLOWER_B,eas_Init
                setPos FOLLOWER_B,15,6,DOWN
                setActscriptWait ALLY_LEMON,eas_Init
                setPos ALLY_LEMON,17,8,LEFT
                jumpIfFlagClear FLAG_FOLLOWER_ZYNK,cs_4EAEE ; Zynk is a follower
                setActscriptWait ALLY_ZYNK,eas_Init
                setPos ALLY_ZYNK,63,62,DOWN
cs_4EAEE:       setBlocks 11,6,11,29,44,0
                setBlocks 0,52,10,7,13,10
                customActscriptWait 131
                 ac_motion OFF          ;   
                 ac_orientLeft          ;   
                 ac_updateSprite        ;   
                 ac_jump eas_Idle       ;   
                ac_end
                stopEntity 131
                setActscriptWait 128,eas_DeactivateAutoFacing
                setActscriptWait 129,eas_DeactivateAutoFacing
                setActscriptWait 130,eas_DeactivateAutoFacing
                setActscript 128,eas_AnimSpeedx2
                setActscript 129,eas_AnimSpeedx2
                setActscript 130,eas_AnimSpeedx2
                playSound MUSIC_SAD_THEME_1
                fadeInB
                csWait 60
                nextText $0,131         ; "{LEADER}, you won?{N}You've become so strong.{W2}"
                nextSingleText $0,131   ; "I knew you would....{W1}"
                nextSingleText $C0,ALLY_BOWIE ; "Oh, really?{W1}"
                nextText $0,131         ; "Your friends are very good.{N}I knew that when I was{N}traveling with you.{W2}"
                nextSingleText $0,131   ; "Yes, it was interesting...{N}I miss that time....{W1}"
                setActscriptWait ALLY_PETER,eas_Jump
                nextSingleText $C0,ALLY_PETER ; "Odd Eye...no, Oddler!{N}Did you...?{W1}"
                nextSingleText $0,131   ; "No, {NAME;7}.  I did my{N}best.  You were just better{N}than me.{W1}"
                nextSingleText $C0,ALLY_BOWIE ; "We had to be.{W1}"
                nextText $0,131         ; "I wouldn't have had to{N}fight if I never had gotten{N}my memory back.{W2}"
                nextSingleText $0,131   ; "It's funny, fighting was{N}everything to me.{W1}"
                shiver ALLY_PETER
                nextSingleText $C0,ALLY_PETER ; "Oddler, please don't die!{W1}"
                nextText $0,131         ; "Thank you, {NAME;7}.{N}I learned a lot from you.{W2}"
                nextSingleText $0,131   ; "Oh, the pain!{N}Let me say good-bye.{W1}"
                entityActions ALLY_BOWIE
                 moveUp 1
                endActions
                entityActionsWait ALLY_PETER
                 moveRight 1
                endActions
                nextSingleText $0,131   ; "If possible, I want to{N}relive my life...not as{N}a devil...next time....{W1}"
                entityFlashWhite 131,$1E
                setPos 128,15,8,DOWN
                entityActions 128
                 moveRight 2
                endActions
                csWait 8
                setPos 129,15,8,DOWN
                entityActions 129
                 moveDownRight 2
                endActions
                csWait 8
                setPos 130,15,8,DOWN
                entityActions 130
                 moveDown 2
                endActions
                csWait 8
                setPos 128,15,8,DOWN
                entityActions 128
                 moveDownRight 2
                endActions
                csWait 8
                setPos 129,15,8,DOWN
                entityActions 129
                 moveRight 2
                endActions
                csWait 8
                setPos 130,15,8,DOWN
                entityActions 130
                 moveDownRight 2
                endActions
                csWait 8
                setPos 128,15,8,DOWN
                entityActions 128
                 moveDown 2
                endActions
                csWait 8
                setPos 129,15,8,DOWN
                entityActions 129
                 moveDownRight 2
                endActions
                csWait 8
                setPos 130,15,8,DOWN
                entityActions 130
                 moveRight 2
                endActions
                csWait 8
                hide 128
                csWait 8
                hide 129
                csWait 8
                hide 130
                entityFlashWhite 131,$78
                hide 131
                playSound $FD
                csWait 120
                playSound MUSIC_SAD_THEME_3
                shiver ALLY_PETER
                setFacing ALLY_PETER,UP
                nextSingleText $0,ALLY_PETER ; "(Sob, sob)...how sad.{N}{LEADER}, Sir Astral...{W1}"
                setFacing ALLY_LEMON,DOWN
                nextSingleText $0,ALLY_LEMON ; "Oddler had a pure spirit...{N}I'll miss him.{W1}"
                setFacing FOLLOWER_B,UP
                nextSingleText $0,FOLLOWER_B ; "Don't cry for him now.{N}This is Zeon's doing.{W1}"
                setFacing FOLLOWER_B,DOWN
                nextSingleText $0,FOLLOWER_B ; "We shall go onward and{N}remember Oddler in our{N}hearts.{W1}"
                entityActionsWait ALLY_LEMON
                 moveLeft 1
                 moveDown 1
                endActions
                setFacing ALLY_LEMON,LEFT
                entityActionsWait FOLLOWER_B
                 moveDown 2
                endActions
                entityActionsWait ALLY_PETER
                 moveDown 1
                endActions
                setFacing ALLY_PETER,RIGHT
                csWait 40
                setFacing ALLY_BOWIE,RIGHT
                csWait 40
                setFacing ALLY_BOWIE,LEFT
                csWait 40
                setFacing ALLY_BOWIE,UP
                csWait 30
                nod ALLY_BOWIE
                followEntity ALLY_PETER,ALLY_BOWIE,2
                followEntity FOLLOWER_B,ALLY_PETER,2
                followEntity ALLY_LEMON,FOLLOWER_B,2
                csc_end
ce_4ECD6:       mainEntity 15,10,UP
                entity 13,8,RIGHT,ALLY_PETER,eas_Init
                entity 17,8,LEFT,ALLY_LEMON,eas_Init
                entity 63,63,DOWN,MAPSPRITE_OBJECT1,eas_Init
                entity 63,63,DOWN,MAPSPRITE_OBJECT1,eas_Init
                entity 63,63,DOWN,MAPSPRITE_OBJECT1,eas_Init
                entity 15,8,DOWN,MAPSPRITE_ODD_EYE,eas_Init
                cscEntitiesEnd
