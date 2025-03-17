
; ASM FILE data\battles\entries\battle05\cs_afterbattle.asm :
; 0x4F47A..0x4F48A : Cutscene after battle 0
bbcs_05:  csc_end
bscs_battle05:  csc_end
rbcs_battle05:  csc_end
edcs_battle05:   textCursor STORYTEXT_OFFSET_DEFEAT_GALAM_GUARDS
                stopEntity 128
                setFacing ALLY_BOWIE,UP
                setFacing ALLY_SLADE,UP
                setActscriptWait ALLY_SLADE,eas_Init
                setCamDest 12,0
                csWait 30
                shiver 128
                nextSingleText $0,128   ; "You, rat!  I threw you into{N}jail after I took your{N}jewels....{W1}"
                setActscriptWait ALLY_SLADE,eas_Jump
                setActscriptWait ALLY_SLADE,eas_Jump
                nextText $0,ALLY_SLADE  ; "Hee, hee!  You expect a thief{N}to stay in jail?{W2}"
                nextSingleText $0,ALLY_SLADE ; "Give me the jewels.{W1}"
                entityActionsWait ALLY_SLADE
                 moveRight 1
                 moveUp 2
                endActions
                setFacing ALLY_SLADE,LEFT
                csWait 30
                nextSingleText $FF,255  ; "{NAME;5} searched the tool{N}bag of the Galam Knight.{W1}"
                csWait 40
                setFacing ALLY_SLADE,DOWN
                setActscriptWait ALLY_SLADE,eas_Jump
                setActscript ALLY_SLADE,eas_Jump
                nextSingleText $0,ALLY_SLADE ; "Yes!  I found one!{W1}"
                nextSingleText $FF,255  ; "{NAME;5} has the Jewel{N}of Light.{W1}"
                setFacing ALLY_SLADE,LEFT
                csWait 20
                setActscriptWait ALLY_SLADE,eas_BumpLeft
                shiver 128
                nextSingleText $0,ALLY_SLADE ; "Where is the other jewel?{W1}"
                shiver 128
                nextText $0,128         ; "K...King Galam...took it into{N}battle.{W2}"
                nextSingleText $0,128   ; "Take the jewel.  You won't{N}have it long.  We'll get it{N}back!{W1}"
                csc_end
abcs_battle05:  textCursor STORYTEXT_OFFSET_RETRIEVE_JEWEL_OF_LIGHT
                setActscriptWait ALLY_SLADE,eas_Init
                entityActionsWait ALLY_SLADE
                 moveDown 1
                 moveLeft 2
                endActions
                setFacing ALLY_SLADE,DOWN
                nextText $0,ALLY_SLADE  ; "This is the Jewel of Light{N}that I stole from the shrine.{W2}"
                nextSingleText $0,ALLY_SLADE ; "The other jewel is missing.{N}I'll give you this one now.{W1}"
                nextText $FF,255        ; "{LEADER} received the{N}Jewel of Light...{W2}{N}The jewel fused to{N}{LEADER}'s neck.{W1}"
                csWait 10
                setActscriptWait ALLY_SLADE,eas_Jump
                setActscriptWait ALLY_SLADE,eas_Jump
                nextText $0,ALLY_SLADE  ; "{LEADER}, did you use{N}magic?{W2}"
                setF FLAG_JEWELLIGHT                ; Set after Bowie obtains the jewel of light/evil... whichever it is
                csWait 30
                nextText $0,ALLY_SLADE  ; "Ummm...I can't remove it!{N}Is it cursed?{W2}"
                setActscriptWait ALLY_SLADE,eas_DeactivateAutoFacing
                nextText $0,ALLY_SLADE  ; "We'll go to the church{N}later to see if it's cursed.{N}At least we have it now.{W1}"
                nextText $0,ALLY_SLADE  ; "The knight said that King{N}Galam took the other jewel{N}with him.{W2}"
                nextSingleText $0,ALLY_SLADE ; "{LEADER}, I'll go to{N}Granseal with you.{W1}"
                join ALLY_SLADE
                nextText $0,ALLY_SLADE  ; "I have an obligation to find{N}the other jewel!{W2}"
                nextSingleText $0,ALLY_SLADE ; "Let's go to Granseal!{W1}"
                clearF FLAG_FOLLOWER_SLADE               ; Slade is a follower
                setF FLAG_BATTLE06_AVAILABLE         ; Battle 6 unlocked - BATTLE_TO_GRANSEAL               
                followEntity ALLY_SLADE,ALLY_BOWIE,2
                warp MAP_GALAM_CASTLE,16,18,DOWN
                csc_end
