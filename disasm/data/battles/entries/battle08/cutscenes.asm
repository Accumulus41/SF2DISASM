
; ASM FILE data\battles\entries\battle08\cs_afterbattle.asm :
; 0x4F47A..0x4F48A : Cutscene after battle 0
bbcs_08:        textCursor STORYTEXT_OFFSET_LOCATE_WORKER
                loadMapFadeIn MAP_OVERWORLD_NORTH_SOUTH_PARMECIA_JUNCTION,1,46
                loadMapEntities ce_4AA14
                setActscriptWait ALLY_BOWIE,eas_Init
                stopEntity 129
                customActscriptWait 129
                 ac_motion OFF          ;   
                 ac_orientLeft          ;   
                 ac_updateSprite        ;   
                 ac_jump eas_Idle       ;   
                ac_end
                jumpIfFlagSet ALLY_KIWI,cs_4A994 ; Kiwi joined
                setPos ALLY_KIWI,63,63,DOWN
cs_4A994:       playSound MUSIC_MAIN_THEME
                fadeInB
                nextSingleText $0,128   ; "It's over there!{N}There he is!{W1}"
                entityActionsWait 128
                 moveRight 2
                endActions
                setFacing 128,UP
                entityActionsWait 128
                 moveUp 1
                endActions
                setCameraEntity 129
                nextSingleText $0,128   ; "He's lying down!  Why?{N}What happened?{W1}"
                playSound MUSIC_ENEMY_ATTACK
                setCamDest 7,32
                setPos 131,12,35,DOWN
                csWait 20
                setPos 132,11,35,DOWN
                csWait 20
                setPos 133,13,35,DOWN
                csWait 30
                setPos 130,12,37,DOWN
                nextSingleText $C0,130  ; "Hee, hee!  More strangers{N}have arrived!{W1}"
                nextSingleText $C0,130  ; "You!  Did you hurt him?{W1}"
                nextText $C0,130        ; "This is my territory.{N}I protect it.{W2}"
                nextSingleText $C0,130  ; "You come here to save him?{N}Ha!{W1}"
                setFacing 130,UP
                nextSingleText $C0,130  ; "Everybody, attack!{W1}"
                setActscript 131,eas_Jump
                setActscript 132,eas_Jump
                setActscriptWait 133,eas_Jump
                csc_end
ce_4AA14:       mainEntity 4,50,RIGHT
                entity 5,50,RIGHT,MAPSPRITE_WORKER,eas_Init
                entity 4,49,RIGHT,ALLY_SARAH,eas_Init
                entity 4,51,RIGHT,ALLY_JAHA,eas_Init
                entity 3,50,RIGHT,ALLY_KAZIN,eas_Init
                entity 2,50,RIGHT,ALLY_CHESTER,eas_Init
                entity 1,50,RIGHT,ALLY_KIWI,eas_Init
                entity 14,34,DOWN,MAPSPRITE_WORKER,eas_Init
                entity 63,63,DOWN,MAPSPRITE_WITCH,eas_Init
                entity 63,63,DOWN,MAPSPRITE_GOBLIN,eas_Init
                entity 63,63,DOWN,MAPSPRITE_GREEN_OOZE,eas_Init
                entity 63,63,DOWN,MAPSPRITE_HUNTER_GOBLIN,eas_Init
                cscEntitiesEnd
bscs_battle08:  csc_end
rbcs_battle08:  csc_end
edcs_battle08:  csc_end
abcs_battle08:  textCursor STORYTEXT_OFFSET_WORKER_RECOVERED
                loadMapFadeIn MAP_OVERWORLD_NORTH_SOUTH_PARMECIA_JUNCTION,8,32
                loadMapEntities ce_4ABBE
                setActscriptWait ALLY_BOWIE,eas_Init
                stopEntity 129
                customActscriptWait 129
                 ac_motion OFF          ;   
                 ac_orientLeft          ;   
                 ac_updateSprite        ;   
                 ac_jump eas_Idle       ;   
                ac_end
                jumpIfFlagSet ALLY_KIWI,cs_4AAB6 ; Kiwi joined
                setPos ALLY_KIWI,63,63,DOWN
cs_4AAB6:       fadeInB
                nextSingleText $0,128   ; "Oh, my...hey!{N}Are you OK?!{W1}"
                setFacing 128,LEFT
                entityActionsWait 128
                 moveLeft 1
                endActions
                setFacing 128,UP
                entityActionsWait 128
                 moveUp 1
                endActions
                setFacing 128,RIGHT
                nextSingleText $0,128   ; "Oh!{W1}"
                setActscriptWait 129,eas_Init
                setSprite 129,MAPSPRITE_POSE1
                setFacing 129,LEFT
                nextSingleText $C0,129  ; "Oooh...unh...a big rock...{N}fell on me....{W1}"
                setSprite 129,MAPSPRITE_WORKER
                setFacing 129,DOWN
                nextSingleText $C0,129  ; "Huh?  Where is it?{W1}"
                setActscriptWait 129,eas_Init
                csWait 5
                setActscript 129,eas_2xRightLeft
                csWait 120
                setFacing 129,LEFT
                startEntity 129
                nextSingleText $C0,129  ; "It's...humph...{W1}"
                setFacing 129,DOWN
                nextSingleText $C0,129  ; "{LEADER}...how come{N}you're here?{W1}"
                setActscript 128,eas_BumpRight
                customActscriptWait 129
                 ac_setSpeed 32,32      ;   
                 ac_jump eas_Idle       ;   
                ac_end
                setActscriptWait 129,eas_4618A
                csWait 8
                entityActionsWait 129
                 moveRight 1
                endActions
                setFacing 129,DOWN
                headshake 129
                nextText $0,128         ; "What a fool.{N}We came to help you!{W2}"
                nextSingleText $0,128   ; "You would be dead if we{N}hadn't come.{W1}"
                setFacing 129,LEFT
                nextText $C0,129        ; "What are you talking about?{N}Oh, yeah!  I remember.{W2}"
                nextText $C0,129        ; "A huge rock fell on me after{N}you left.{W2}"
                nextText $C0,129        ; "It must have knocked me out.{N}Anyway, thank you.{W2}"
                nextSingleText $C0,129  ; "Look at that!{N}The tunnel is blocked by{N}a rockslide.{W1}"
                setFacing 129,RIGHT
                csWait 20
                setFacing ALLY_KIWI,RIGHT
                setCamDest 22,32
                csWait 30
                setCamDest 8,32
                entityActionsWait 128
                 moveRight 1
                endActions
                setActscriptWait 128,eas_Jump
                nextText $0,128         ; "Oh, what a pity.{N}Treasures may lie within....{W2}"
                nextSingleText $0,128   ; "I guess we'll never know.{W1}"
                setFacing 128,DOWN
                entityActionsWait 128
                 moveDown 1
                endActions
                nextSingleText $0,128   ; "{LEADER}, let's go back{N}to the ship.{W1}"
                warp MAP_OVERWORLD_NEW_GRANSEAL_SHORE,62,49,LEFT
                csc_end
ce_4ABBE:       mainEntity 14,37,UP
                entity 14,35,UP,MAPSPRITE_WORKER,eas_Init
                entity 13,36,UP,ALLY_SARAH,eas_Init
                entity 12,35,UP,ALLY_JAHA,eas_Init
                entity 15,36,UP,ALLY_KAZIN,eas_Init
                entity 16,35,UP,ALLY_CHESTER,eas_Init
                entity 16,34,LEFT,ALLY_KIWI,eas_Init
                entity 14,34,DOWN,MAPSPRITE_WORKER,eas_Init
                cscEntitiesEnd
