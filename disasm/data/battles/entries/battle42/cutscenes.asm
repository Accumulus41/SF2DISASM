
; ASM FILE data\battles\entries\battle42\cs_afterbattle.asm :
; 0x4F47A..0x4F48A : Cutscene after battle 0
bbcs_42:        textCursor STORYTEXT_OFFSET_MEET_GALAM
                loadMapFadeIn MAP_ZEON_ARENA,8,29
                loadMapEntities ce_4EEDC
                setActscriptWait ALLY_BOWIE,eas_Init
                setActscriptWait ALLY_PETER,eas_Init
                setPos ALLY_PETER,12,36,UP
                setActscriptWait FOLLOWER_B,eas_Init
                setPos FOLLOWER_B,14,36,UP
                setActscriptWait ALLY_LEMON,eas_Init
                setPos ALLY_LEMON,13,36,UP
                jumpIfFlagClear FLAG_FOLLOWER_ZYNK,cs_4EDE8 ; Zynk is a follower
                setActscriptWait ALLY_ZYNK,eas_Init
                setPos ALLY_ZYNK,63,62,DOWN
cs_4EDE8:       stopEntity 129
                customActscriptWait 129
                 ac_motion OFF          ;   
                 ac_orientLeft          ;   
                 ac_updateSprite        ;   
                 ac_jump eas_Idle       ;   
                ac_end
                playSound MUSIC_WITCH
                fadeInFromBlackHalf
                cameraSpeed $30
                csWait 60
                entityActionsWait ALLY_PETER
                 moveUp 2
                endActions
                nextSingleText $0,ALLY_PETER ; "I can't see!  Is anybody{N}there?{W1}"
                nextSingleText $C0,128  ; "Welcome...{W1}"
                setActscript ALLY_BOWIE,eas_Jump
                setActscript ALLY_PETER,eas_Jump
                setActscript FOLLOWER_B,eas_Jump
                setActscriptWait ALLY_LEMON,eas_Jump
                entityActionsWait FOLLOWER_B
                 moveUp 3
                endActions
                nextSingleText $0,FOLLOWER_B ; "King Galam?{W1}"
                nextSingleText $C0,128  ; "Is it too dark?{N}Let there be light!{W1}"
                fadeInB
                nextSingleText $C0,128  ; "Is that better?{W1}"
                entityActions ALLY_BOWIE
                 moveUp 2
                endActions
                entityActionsWait ALLY_LEMON
                 moveUp 2
                endActions
                shiver FOLLOWER_B
                nextSingleText $0,FOLLOWER_B ; "King Galam!{W1}"
                entityActions ALLY_BOWIE
                 moveLeft 1
                endActions
                entityActionsWait ALLY_LEMON
                 moveUp 1
                endActions
                setFacing ALLY_BOWIE,UP
                entityActionsWait ALLY_LEMON
                 moveUp 1
                endActions
                nextSingleText $0,ALLY_LEMON ; "Oh, Princess Elis is here!{W1}"
                setCamDest 8,13
                nextSingleText $C0,128  ; "Nice to see you again,{N}Astral.  I see {NAME;28} is{N}with you.{W1}"
                nextSingleText $0,FOLLOWER_B ; "Where's Zeon?{W1}"
                nextText $C0,128        ; "He has not revived fully yet.{W2}"
                nextSingleText $C0,128  ; "So I came to welcome you for{N}him.{W1}"
                nextSingleText $0,ALLY_PETER ; "She isn't moving!{N}Is she dead?{W1}"
                setFacing 128,UP
                csWait 40
                setFacing 128,DOWN
                nextSingleText $C0,128  ; "We haven't killed her yet.{N}She will be the first{N}sacrifice for King Zeon.{W1}"
                nextText $0,FOLLOWER_B  ; "What?!{W2}"
                nextSingleText $0,FOLLOWER_B ; "Zeon said, you'd return her{N}in exchange for the jewel!{W1}"
                nextText $C0,128        ; "Ha, ha, ha!  He lied.{W2}"
                nextText $C0,128        ; "You killed our greater{N}devils.{N}I can't allow this to go on.{W2}"
                nextSingleText $C0,128  ; "You shall never see Zeon!{N}I'll kill you before that!{W1}"
                setQuake 3
                playSound SFX_INTRO_LIGHTNING
                flashScreenWhite $1E
                csWait 20
                setQuake 0
                csc_end
ce_4EEDC:       mainEntity 13,35,UP
                entity 12,36,UP,ALLY_PETER,eas_Init
                entity 13,36,UP,ALLY_LEMON,eas_Init
                entity 13,18,DOWN,MAPSPRITE_GALAM_EVIL,eas_Init
                entity 13,15,DOWN,MAPSPRITE_ELIS,eas_Init
                cscEntitiesEnd
bscs_battle42:  csc_end
rbcs_battle42:  csc_end
edcs_battle42:  csc_end
abcs_battle42:  textCursor STORYTEXT_OFFSET_GALAM_DEFEATED
                loadMapFadeIn MAP_ZEON_ARENA,8,13
                loadMapEntities ce_4F328
                setActscriptWait ALLY_BOWIE,eas_Init
                setActscriptWait ALLY_PETER,eas_Init
                setPos ALLY_PETER,15,15,LEFT
                setActscriptWait FOLLOWER_B,eas_Init
                setPos FOLLOWER_B,11,15,RIGHT
                setActscriptWait ALLY_LEMON,eas_Init
                setPos ALLY_LEMON,12,19,RIGHT
                jumpIfFlagClear FLAG_FOLLOWER_ZYNK,cs_4EF5E ; Zynk is a follower
                setActscriptWait ALLY_ZYNK,eas_Init
                setPos ALLY_ZYNK,63,62,DOWN
cs_4EF5E:       stopEntity 128
                customActscriptWait 128
                 ac_motion OFF          ;   
                 ac_orientLeft          ;   
                 ac_updateSprite        ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setActscriptWait 128,eas_DeactivateAutoFacing
                stopEntity 129
                customActscriptWait 129
                 ac_motion OFF          ;   
                 ac_orientLeft          ;   
                 ac_updateSprite        ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setPriority FOLLOWER_B,$0
                setPriority ALLY_LEMON,$0
                setPriority 128,$FFFF
                fadeInB
                cameraSpeed $30
                csWait 60
                shiver 128
                nextSingleText $C0,128  ; "Auuugh...{W1}"
                setFacing ALLY_BOWIE,DOWN
                setFacing ALLY_PETER,DOWN
                setFacing FOLLOWER_B,DOWN
                shiver 128
                nextText $C0,128        ; "I've never lost to anybody{N}but the gods.{W2}"
                nextSingleText $C0,128  ; "I don't understand!{W1}"
                setFacing 128,UP
                nextSingleText $0,ALLY_LEMON ; "Oh, King Galam...poor{N}King Galam....{W1}"
                shiver 129
                setFacing ALLY_PETER,LEFT
                setActscriptWait ALLY_PETER,eas_Jump
                nextSingleText $0,ALLY_PETER ; "Princess Elis!{W1}"
                setFacing ALLY_BOWIE,UP
                setFacing FOLLOWER_B,RIGHT
                setFacing ALLY_LEMON,UP
                nextSingleText $C0,129  ; "Zzzzz....{W1}"
                nextSingleText $0,FOLLOWER_B ; "...she's waking up!{W1}"
                nextSingleText $C0,129  ; "Zzzzz...(yawn)...{W1}"
                entityActions FOLLOWER_B
                 moveRight 1
                endActions
                entityActionsWait ALLY_LEMON
                 moveUp 1
                endActions
                nextSingleText $0,FOLLOWER_B ; "Princess, princess!{W1}"
                csWait 50
                setActscriptWait 129,eas_Init
                setFacing 129,DOWN
                setSprite 129,MAPSPRITE_POSE6
                nextSingleText $C0,129  ; "Wha...What?{W1}"
                setActscriptWait FOLLOWER_B,eas_Jump
                nextSingleText $0,FOLLOWER_B ; "It's me!  Astral!{W1}"
                setFacing 129,LEFT
                nextSingleText $C0,129  ; "Sir Astral?  Oh, what{N}happened?{W1}"
                setFacing 129,DOWN
                csWait 30
                setFacing 129,UP
                csWait 30
                setFacing 129,LEFT
                nextSingleText $C0,129  ; "Who are they?{W1}"
                nextSingleText $0,ALLY_PETER ; "Nice to meet you.{W1}"
                setFacing 129,UP
                setActscriptWait ALLY_PETER,eas_Jump
                nextSingleText $0,ALLY_PETER ; "I'm {NAME;7}.  And this is{N}our leader.{W1}"
                entityActionsWait ALLY_PETER
                 moveDown 2
                 moveLeft 1
                endActions
                setFacing 129,DOWN
                setFacing ALLY_PETER,UP
                nextSingleText $0,ALLY_PETER ; "{LEADER}, say something.{W1}"
                setSprite 129,MAPSPRITE_ELIS
                setFacing 129,DOWN
                startEntity 129
                nextSingleText $C0,129  ; "Oh, it's you.{W1}"
                customActscriptWait 129
                 ac_setSpeed 24,24      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                entityActionsWait 129
                 moveDown 1
                endActions
                csWait 50
                nextSingleText $0,ALLY_BOWIE ; "Ah...{W1}"
                csWait 50
                nextSingleText $C0,129  ; "Er...ummm....{W1}"
                setPos ALLY_PETER,13,18,UP
                csWait 30
                setPos ALLY_PETER,14,16,LEFT
                csWait 30
                setPos ALLY_PETER,13,15,DOWN
                csWait 30
                setPos ALLY_PETER,14,17,LEFT
                setFacing FOLLOWER_B,DOWN
                nextSingleText $0,FOLLOWER_B ; "{NAME;7}, don't bother them!{N}This is a private moment!{W1}"
                setQuake 2
                csWait 30
                setQuake 0
                csWait 5
                setActscript ALLY_LEMON,eas_2xRightLeft
                csWait 120
                setFacing ALLY_LEMON,DOWN
                setQuake 2
                entityActions ALLY_BOWIE
                 moveLeft 2
                endActions
                entityActionsWait 129
                 moveDown 1
                 moveLeft 1
                endActions
                csWait 5
                setActscript ALLY_BOWIE,eas_2xUpDown
                entityActionsWait ALLY_PETER
                 moveRight 2
                endActions
                csWait 5
                setActscript ALLY_PETER,eas_2xRightLeft
                entityActionsWait FOLLOWER_B
                 moveRight 1
                endActions
                csWait 5
                setActscript FOLLOWER_B,eas_2xRightLeft
                csWait 120
                nextSingleText $0,ALLY_PETER ; "An earthquake!{N}Deep below us....{W1}"
                nextSingleText $0,ALLY_LEMON ; "Something is coming up{N}through the earth...{W1}"
                setFacing FOLLOWER_B,UP
                nextSingleText $0,FOLLOWER_B ; "I almost forgot...about...{N}the other devil....{W1}"
                entityActions ALLY_BOWIE
                 moveUp 2
                 moveRight 1
                endActions
                entityActions ALLY_LEMON
                 moveUp 1
                 moveRight 1
                 moveUp 1
                endActions
                entityActions ALLY_PETER
                 moveUp 2
                 moveLeft 2
                endActions
                entityActions 129
                 moveUp 1
                endActions
                waitIdle ALLY_PETER
                setFacing ALLY_BOWIE,RIGHT
                setFacing FOLLOWER_B,LEFT
                nextSingleText $0,ALLY_BOWIE ; "You mean...Zeon?{W1}"
                nod FOLLOWER_B
                setFacing ALLY_BOWIE,UP
                setFacing ALLY_PETER,UP
                setFacing FOLLOWER_B,UP
                setFacing ALLY_LEMON,UP
                setCamDest 8,3
                setQuake 3
                nextSingleText $0,ALLY_PETER ; "Huh?{W1}"
                playSound SFX_BATTLEFIELD_DEATH
                setBlocks 12,39,7,4,10,3
                csWait 40
                nextSingleText $0,ALLY_LEMON ; "Uh, oh.{W1}"
                playSound SFX_BATTLEFIELD_DEATH
                setBlocks 12,44,7,4,10,3
                csWait 40
                nextSingleText $0,FOLLOWER_B ; "This doesn't look promising.{W1}"
                playSound SFX_BATTLEFIELD_DEATH
                setBlocks 12,49,7,4,10,3
                csWait 40
                nextSingleText $0,129   ; "Eeeekkk!{W1}"
                csWait 40
                nextSingleText $0,ALLY_BOWIE ; "Oh, no.{W1}"
                playSound SFX_DEMON_BREATH
                setQuake 4
                csWait 30
                playSound SFX_INTRO_LIGHTNING
                setBlocks 12,54,7,4,10,3
                flashScreenWhite $1E
                setPos 130,13,6,DOWN
                tintMap
                csWait 40
                setQuake 0
                playSound $FD
                csWait 90
                setCameraEntity 128
                customActscriptWait 128
                 ac_setSpeed 48,48      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                csWait 110
                playSound MUSIC_ZEON_ATTACK
                setSprite 128,MAPSPRITE_EFFECT3
                setFacing 128,DOWN
                startEntity 128
                entityActionsWait 128
                 moveUp 13
                endActions
                animEntityFX 128,6
                setCameraEntity 65535
                csWait 50
                nextSingleText $C0,130  ; "Gggggrrr...you destroyed my{N}minions!{W1}"
                nextSingleText $0,FOLLOWER_B ; "Zeon!{W1}"
                nextText $C0,130        ; "You resisted me....{W2}"
                nextSingleText $C0,130  ; "I...I never...!{W1}"
                setFacing 129,DOWN
                stopEntity 129
                customActscriptWait 129
                 ac_motion OFF          ;   
                 ac_orientLeft          ;   
                 ac_updateSprite        ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setQuake 3
                playSound SFX_INTRO_LIGHTNING
                flashScreenWhite $1E
                tintMap
                setQuake 0
                csWait 50
                setCamDest 8,12
                setFacing FOLLOWER_B,LEFT
                nextSingleText $0,FOLLOWER_B ; "{LEADER}, we had better{N}run away and return later.{W1}"
                setFacing ALLY_PETER,LEFT
                nextSingleText $0,ALLY_PETER ; "Sir Astral, we can't!{W1}"
                setFacing FOLLOWER_B,RIGHT
                nextSingleText $0,FOLLOWER_B ; "Why not?{W1}"
                nextSingleText $0,ALLY_PETER ; "Princess Elis fainted when{N}she saw Zeon.{W1}"
                setFacing FOLLOWER_B,DOWN
                setFacing ALLY_LEMON,LEFT
                setActscriptWait FOLLOWER_B,eas_Jump
                nextSingleText $0,FOLLOWER_B ; "What?  Oh, my.{W1}"
                setFacing ALLY_BOWIE,DOWN
                setActscriptWait ALLY_BOWIE,eas_Jump
                entityActionsWait ALLY_LEMON
                 moveDown 1
                endActions
                setFacing ALLY_LEMON,RIGHT
                csWait 30
                setFacing ALLY_LEMON,DOWN
                csWait 30
                setFacing ALLY_LEMON,LEFT
                csWait 30
                setFacing ALLY_LEMON,DOWN
                csWait 30
                nextSingleText $0,ALLY_LEMON ; "And now we're surrounded{N}by devils.{W1}"
                csWait 5
                setActscript ALLY_PETER,eas_2xRightLeft
                setFacing FOLLOWER_B,LEFT
                csWait 40
                setFacing FOLLOWER_B,UP
                nextText $0,FOLLOWER_B  ; "{LEADER}, believe in your{N}sword and the jewel!{N}We must fight Zeon now!{W1}"
                nextSingleText $0,FOLLOWER_B ; "Let's go!{W1}"
                setFacing ALLY_BOWIE,UP
                setFacing ALLY_PETER,UP
                nod ALLY_BOWIE
                setF FLAG_BATTLE43_AVAILABLE         ; Battle 43 unlocked - BATTLE_VERSUS_ZEON               
                csc_end
ce_4F328:       mainEntity 13,17,UP
                entity 15,15,LEFT,ALLY_PETER,eas_Init
                entity 12,19,RIGHT,ALLY_LEMON,eas_Init
                entity 13,19,DOWN,MAPSPRITE_GALAM_EVIL,eas_Init
                entity 13,15,DOWN,MAPSPRITE_ELIS,eas_Init
                entity 62,62,DOWN,MAPSPRITE_ZEON,eas_Init
                dc.w $FFFF
