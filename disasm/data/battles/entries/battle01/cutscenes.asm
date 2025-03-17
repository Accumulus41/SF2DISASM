
; ASM FILE data\battles\entries\battle01\cs_afterbattle.asm :
; 0x4F47A..0x4F48A : Cutscene after battle 0
bbcs_01:        textCursor STORYTEXT_OFFSET_ENTER_ANCIENT_TOWER
                loadMapFadeIn MAP_ANCIENT_TOWER_FIRST_ROOM,2,10
                loadMapEntities ce_49694
                setActscriptWait ALLY_BOWIE,eas_Init
                setPos ALLY_SARAH,8,17,UP
                setPos ALLY_CHESTER,7,17,UP
                setActscriptWait ALLY_SARAH,eas_Init
                fadeInB
                setCamDest 2,8
                csWait 60
                setFacing 135,DOWN
                nextText $0,135         ; "There you are, {LEADER}.{N}Stay here.{W2}"
                nextSingleText $0,135   ; "I'll take a look inside the{N}tower.{W1}"
                setCameraEntity 135
                entityActionsWait 135
                 moveUp 1
                endActions
                csWait 5
                setActscript 135,eas_2xRightLeft
                csWait 60
                nextSingleText $0,135   ; "Hmm, what a mysterious{N}tower.  I wonder who built{N}it?{W1}"
                entityActionsWait 135
                 moveUp 1
                 eaWait 60
                 moveUp 1
                endActions
                csWait 50
                nextSingleText $0,135   ; "I have a strange feeling{N}about this place.{W1}"
                entityActionsWait 135
                 moveUp 3
                endActions
                nextSingleText $0,135   ; "Oh, what's this?{N}I think I have seen this{N}symbol before....{W1}"
                csWait 40
                mapFadeOutToWhite
                csWait 30
                mapFadeInFromWhite
                csWait 30
                mapFadeOutToWhite
                csWait 30
                mapFadeInFromWhite
                csWait 5
                setActscript 135,eas_2xRightLeft
                csWait 30
                mapFadeOutToWhite
                csWait 30
                mapFadeInFromWhite
                csWait 30
                setCamDest 2,10
                csWait 5
                setActscript ALLY_CHESTER,eas_2xRightLeft
                csWait 60
                nextSingleText $0,ALLY_CHESTER ; "What's happening?{W1}"
                entityActionsWait ALLY_SARAH
                 moveUp 1
                endActions
                nextSingleText $0,ALLY_SARAH ; "Look!  Something is{N}appearing.  What's that?{W1}"
                setFacing 135,UP
                setCamDest 2,1
                setPos 128,7,4,DOWN
                animEntityFX 128,7
                setActscriptWait 128,eas_DeactivateAutoFacing
                setActscriptWait 135,eas_DeactivateAutoFacing
                entityActionsWait 135
                 moveDown 1
                endActions
                nextText $0,135         ; "An evil Gizmo!  A devil{N}that possesses people!{W2}"
                nextSingleText $0,135   ; "Why are you here?{W1}"
                csWait 30
                entityActionsWait 128
                 moveRight 1
                endActions
                entityActionsWait 135
                 moveRight 1
                endActions
                nextSingleText $0,135   ; "Where are you going?{N}What...wait!  You're here to{N}possess the King, aren't you?{W1}"
                entityActionsWait 128
                 moveLeft 1
                endActions
                entityActionsWait 135
                 moveLeft 1
                endActions
                nextSingleText $0,135   ; "I won't let you pass.{N}You shall not harm the King!{W1}"
                shiver 128
                csWait 30
                shiver 128
                setPos 129,7,4,DOWN
                setPos 130,7,4,DOWN
                setPos 131,7,4,DOWN
                setPos 132,7,4,DOWN
                setPos 133,7,4,DOWN
                setPos 134,7,4,DOWN
                setActscriptWait 129,eas_DeactivateAutoFacing
                setActscriptWait 130,eas_DeactivateAutoFacing
                setActscriptWait 131,eas_DeactivateAutoFacing
                setActscriptWait 132,eas_DeactivateAutoFacing
                setActscriptWait 133,eas_DeactivateAutoFacing
                setActscriptWait 134,eas_DeactivateAutoFacing
                entityActions 129
                 moveUp 1
                endActions
                entityActions 130
                 moveLeft 1
                endActions
                entityActions 131
                 moveDown 1
                 moveLeft 1
                endActions
                entityActions 132
                 moveRight 1
                 moveUp 1
                endActions
                entityActions 133
                 moveRight 2
                endActions
                entityActions 134
                 moveRight 2
                 moveDown 1
                endActions
                shiver 128
                csWait 30
                shiver 128
                csWait 30
                shiver 128
                csWait 60
                nextText $0,135         ; "This doesn't look good.{W2}"
                setFacing 135,DOWN
                nextSingleText $0,135   ; "We'll stop the evil Gizmo{N}here.  {LEADER}, defeat{N}these fiends!{W1}"
                csc_end
ce_49694:       mainEntity 7,16,UP
                entity 63,63,DOWN,MAPSPRITE_MIST_DEMON,eas_Init
                entity 63,63,DOWN,MAPSPRITE_GIZMO,eas_Init
                entity 63,63,DOWN,MAPSPRITE_GIZMO,eas_Init
                entity 63,63,DOWN,MAPSPRITE_GIZMO,eas_Init
                entity 63,63,DOWN,MAPSPRITE_GIZMO,eas_Init
                entity 63,63,DOWN,MAPSPRITE_GIZMO,eas_Init
                entity 63,63,DOWN,MAPSPRITE_GIZMO,eas_Init
                entity 7,11,UP,MAPSPRITE_ASTRAL,eas_Init
                cscEntitiesEnd
bscs_battle01:  csc_end
rbcs_battle01:  csc_end
edcs_battle01:  csc_end
abcs_battle01:  textCursor STORYTEXT_OFFSET_GIZMO_ESCAPES
                resetForceBattleStats
                loadMapFadeIn MAP_ANCIENT_TOWER_FIRST_ROOM,2,0
                loadMapEntities ce_497F6
                setActscriptWait ALLY_BOWIE,eas_Init
                setPos ALLY_SARAH,8,7,UP
                setPos ALLY_CHESTER,8,8,UP
                fadeInB
                csWait 40
                nextSingleText $0,129   ; "Well done, {LEADER}!{N}What should I do with this{N}devil?{W1}"
                setFacing 129,UP
                csWait 40
                shiver 128
                csWait 30
                shiver 128
                csWait 30
                mapFadeOutToWhite
                csWait 30
                mapFadeInFromWhite
                csWait 5
                setActscript 129,eas_2xRightLeft
                csWait 5
                setActscript ALLY_BOWIE,eas_2xRightLeft
                csWait 30
                mapFadeOutToWhite
                csWait 30
                mapFadeInFromWhite
                csWait 30
                mapFadeOutToWhite
                animEntityFX 128,6
                setSprite 128,MAPSPRITE_BLANK
                setPos 128,7,10,DOWN
                setSprite 128,MAPSPRITE_MIST_DEMON
                mapFadeInFromWhite
                csWait 30
                entityActionsWait 129
                 moveUp 1
                endActions
                nextSingleText $0,129   ; "Oh, it disappeared?!{W1}"
                csWait 5
                setActscript 129,eas_2xRightLeft
                csWait 120
                entityActionsWait 129
                 moveDown 1
                endActions
                nextSingleText $0,129   ; "Oh, there it is!{W1}"
                setFacing ALLY_BOWIE,DOWN
                setFacing ALLY_SARAH,DOWN
                setFacing ALLY_CHESTER,DOWN
                setCamDest 2,3
                csWait 70
                mapFadeOutToWhite
                animEntityFX 128,6
                setSprite 128,MAPSPRITE_BLANK
                setPos 128,7,16,DOWN
                setSprite 128,MAPSPRITE_MIST_DEMON
                mapFadeInFromWhite
                csWait 30
                nextSingleText $0,129   ; "It disappeared again.{W1}"
                setCamDest 2,10
                nextSingleText $0,129   ; "There it is!{W1}"
                entityActions 128
                 moveDown 4
                endActions
                animEntityFX 128,6
                csWait 20
                hide 128
                setCamDest 2,2
                setFacing 129,RIGHT
                nextSingleText $0,129   ; "We must hurry to the King!{W1}"
                entityActionsWait 129
                 moveDown 6
                endActions
                hide 129
                csWait 40
                csc_end
ce_497F6:       mainEntity 8,6,UP
                entity 7,4,DOWN,MAPSPRITE_MIST_DEMON,eas_Init
                entity 7,6,RIGHT,MAPSPRITE_ASTRAL,eas_Init
                cscEntitiesEnd
