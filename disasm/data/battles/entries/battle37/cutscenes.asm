
; ASM FILE data\battles\entries\battle37\cs_afterbattle.asm :
; 0x4F47A..0x4F48A : Cutscene after battle 0
bbcs_37:        textCursor STORYTEXT_OFFSET_MEET_RED_BARON
                loadMapFadeIn MAP_OVERWORLD_GRANS_AROUND_DWARF_VILLAGE,50,33
                loadMapEntities ce_4DB74
                setActscriptWait ALLY_BOWIE,eas_Init
                setActscriptWait ALLY_PETER,eas_Init
                setPos ALLY_PETER,56,37,LEFT
                setActscriptWait FOLLOWER_B,eas_Init
                setPos FOLLOWER_B,56,35,LEFT
                setPos FOLLOWER_A,56,36,LEFT
                jumpIfFlagClear FLAG_FOLLOWER_ZYNK,cs_4DAB8 ; Zynk is a follower
                setActscriptWait ALLY_ZYNK,eas_Init
                setPos ALLY_ZYNK,63,62,DOWN
cs_4DAB8:       fadeInB
                nextSingleText $0,128   ; "Now you shall pay for killing{N}my precious Prism Flowers.{W1}"
                setActscript ALLY_BOWIE,eas_Jump
                setActscriptWait ALLY_PETER,eas_Jump
                setFacing ALLY_BOWIE,DOWN
                setFacing ALLY_PETER,DOWN
                setFacing FOLLOWER_B,DOWN
                cameraSpeed $30
                nextSingleText $C0,FOLLOWER_B ; "Geshp again.{W1}"
                setCamDest 40,44
                animEntityFX 128,6
                setPos 128,45,47,UP
                animEntityFX 128,7
                nextSingleText $0,128   ; "Hee, hee, hee.{W1}"
                nextSingleText $C0,ALLY_PETER ; "Do you have another cunning{N}trap for us?{W1}"
                nextText $0,128         ; "Would I do that?{W2}"
                nextSingleText $0,128   ; "I just want to introduce you{N}to my friend.{W1}"
                setFacing 128,DOWN
                nextSingleText $0,128   ; "Red Baron, say hello!{W1}"
                setCamDest 30,54
                setActscriptWait 129,eas_Jump
                setActscriptWait 129,eas_Jump
                nextSingleText $0,129   ; "Grruuooouu!{W1}"
                nextText $0,128         ; "He's waiting for you just{N}outside the Galam gate.{W2}"
                nextText $0,128         ; "You have to defeat him if you{N}want to advance.{W2}"
                nextText $0,128         ; "See his red armor?{N}It's smeared with blood.{W2}"
                nextSingleText $0,128   ; "He has killed many people.{W1}"
                setCamDest 40,44
                setFacing 128,UP
                nextText $0,128         ; "Now, it's your turn.{W2}"
                nextSingleText $0,128   ; "This will be your undoing.{W1}"
                animEntityFX 128,6
                setCamDest 50,33
                setFacing ALLY_PETER,UP
                nextSingleText $C0,ALLY_PETER ; "Galam is just over there,{N}but...{W1}"
                setFacing FOLLOWER_B,DOWN
                setFacing ALLY_BOWIE,RIGHT
                nextSingleText $C0,FOLLOWER_B ; "We have to advance.{N}{LEADER}, are you ready?{W1}"
                nod ALLY_BOWIE
                csc_end
ce_4DB74:       mainEntity 55,36,LEFT
                entity 56,37,LEFT,ALLY_PETER,eas_Init
                entity 63,63,UP,MAPSPRITE_GESHP,eas_Init
                entity 35,60,UP,MAPSPRITE_RED_BARON,eas_Init
                cscEntitiesEnd
bscs_battle37:  csc_end
rbcs_battle37:  csc_end
edcs_battle37:  csc_end
abcs_battle37:  textCursor STORYTEXT_OFFSET_DEFEAT_RED_BARON
                loadMapFadeIn MAP_OVERWORLD_GRANS_AROUND_DWARF_VILLAGE,31,54
                loadMapEntities ce_4DD8C
                setActscriptWait ALLY_BOWIE,eas_Init
                setActscriptWait ALLY_PETER,eas_Init
                setPos ALLY_PETER,33,59,RIGHT
                setActscriptWait FOLLOWER_B,eas_Init
                setPos FOLLOWER_B,34,57,DOWN
                setActscriptWait FOLLOWER_A,eas_Init
                setPos FOLLOWER_A,37,59,LEFT
                jumpIfFlagClear FLAG_FOLLOWER_ZYNK,cs_4DBEE ; Zynk is a follower
                setActscriptWait ALLY_ZYNK,eas_Init
                setPos ALLY_ZYNK,63,62,DOWN
cs_4DBEE:       stopEntity ALLY_LEMON
                customActscriptWait ALLY_LEMON
                 ac_motion OFF          ;   
                 ac_orientLeft          ;   
                 ac_updateSprite        ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setPriority FOLLOWER_B,$0
                setPriority ALLY_LEMON,$FFFF
                fadeInB
                entityActionsWait ALLY_PETER
                 moveRight 1
                endActions
                csWait 50
                setFacing ALLY_PETER,UP
                nextSingleText $0,ALLY_PETER ; "Sir Astral, he's...crying!{W1}"
                nextSingleText $0,FOLLOWER_B ; "Why would he be crying?{W1}"
                entityActionsWait FOLLOWER_B
                 moveRight 1
                 moveDown 1
                endActions
                csWait 30
                setFacing ALLY_PETER,RIGHT
                nextSingleText $0,FOLLOWER_B ; "I think I've seen his style{N}of fighting before.{N}Let's see his face.{W1}"
                nextSingleText $FF,255  ; "Astral removes the mask.{W1}"
                nextSingleText $C0,ALLY_LEMON ; "Huh?{W1}"
                setActscript ALLY_PETER,eas_Jump
                setActscriptWait FOLLOWER_B,eas_Jump
                setActscript ALLY_PETER,eas_Jump
                setActscriptWait FOLLOWER_B,eas_Jump
                nextSingleText $0,FOLLOWER_B ; "It's {NAME;28}!{W1}"
                entityActionsWait ALLY_BOWIE
                 moveDown 2
                endActions
                setFacing ALLY_BOWIE,LEFT
                shiver ALLY_PETER
                nextSingleText $0,ALLY_PETER ; "Let me see him.{W1}"
                shiver ALLY_LEMON
                stopEntity ALLY_LEMON
                entityFlashWhite ALLY_LEMON,$39
                setActscript ALLY_PETER,eas_Jump
                setActscript ALLY_BOWIE,eas_Jump
                setActscriptWait FOLLOWER_B,eas_Jump
                nextSingleText $0,ALLY_PETER ; "Wow, he's alive!{W1}"
                nextSingleText $0,FOLLOWER_B ; "{NAME;28}!  {NAME;28}!{W1}"
                nextSingleText $C0,ALLY_LEMON ; "Where?!{W1}"
                setActscriptWait ALLY_LEMON,eas_Init
                startEntity ALLY_LEMON
                setFacing ALLY_LEMON,DOWN
                nextSingleText $C0,ALLY_LEMON ; "What?!{W1}"
                csWait 5
                setActscript ALLY_LEMON,eas_2xRightLeft
                csWait 120
                setFacing ALLY_LEMON,UP
                nextText $C0,ALLY_LEMON ; "Oh, Sir Astral!  I had an{N}awful nightmare.{W2}"
                nextSingleText $C0,ALLY_LEMON ; "I was controlled by someone{N}and I killed a lot of...{W1}"
                nextSingleText $0,FOLLOWER_B ; "It wasn't a dream.{W1}"
                setActscriptWait ALLY_LEMON,eas_Jump
                nextSingleText $C0,ALLY_LEMON ; "What?!{W1}"
                nextText $0,FOLLOWER_B  ; "You were being controlled{N}by a devil.{W2}"
                nextText $0,FOLLOWER_B  ; "And he made you kill every{N}person you saw.{W2}"
                nextSingleText $0,FOLLOWER_B ; "You recovered your senses{N}when we defeated the devils.{W1}"
                setFacing ALLY_LEMON,DOWN
                nextSingleText $C0,ALLY_LEMON ; "I can't believe it!{N}I'm {NAME;28}, I'm...{W1}"
                entityActionsWait ALLY_LEMON
                 moveDown 2
                endActions
                shiver ALLY_LEMON
                setFacing ALLY_PETER,DOWN
                setFacing ALLY_BOWIE,DOWN
                nextSingleText $C0,ALLY_LEMON ; "What can I do?{N}How can I atone for my sins?{W1}"
                setFacing ALLY_LEMON,DOWN
                nextSingleText $C0,ALLY_LEMON ; "Sir Astral, tell me.{W1}"
                entityActionsWait FOLLOWER_B
                 moveDown 1
                endActions
                nextText $0,FOLLOWER_B  ; "You're not at fault.{W1}"
                nextSingleText $0,FOLLOWER_B ; "It's not your fault.{N}The devils are to blame.{W1}"
                nextSingleText $C0,ALLY_LEMON ; "But...{W1}"
                shiver ALLY_LEMON
                csWait 50
                shiver ALLY_LEMON
                setFacing ALLY_LEMON,UP
                nextSingleText $C0,ALLY_LEMON ; "I have to die for my sins.{N}It will be my atonement.{W2}"
                setActscript ALLY_PETER,eas_Jump
                setActscriptWait ALLY_BOWIE,eas_Jump
                nextSingleText $C0,ALLY_LEMON ; "I have to die!{W1}"
                setFacing ALLY_LEMON,DOWN
                csWait 30
                entityActionsWait ALLY_LEMON
                 moveDown 3
                endActions
                nextSingleText $0,FOLLOWER_B ; "Oh, poor {NAME;28}.{W1}"
                setFacing ALLY_PETER,RIGHT
                nextText $0,ALLY_PETER  ; "Sir Astral, {NAME;28} has{N}fled. {W2}"
                nextSingleText $0,ALLY_PETER ; "Will you let him die?{W1}"
                nextSingleText $0,FOLLOWER_B ; "{NAME;28} is an immortal{N}vampire now.  He can't die{N}very easily.{W1}"
                setFacing FOLLOWER_B,RIGHT
                setFacing ALLY_BOWIE,LEFT
                nextSingleText $0,FOLLOWER_B ; "I think we'll meet him again.{N}{LEADER}, let's go.{W1}"
                csc_end
ce_4DD8C:       mainEntity 36,57,DOWN
                entity 33,59,RIGHT,ALLY_PETER,eas_Init
                entity 35,59,DOWN,ALLY_LEMON,eas_Init
                cscEntitiesEnd
