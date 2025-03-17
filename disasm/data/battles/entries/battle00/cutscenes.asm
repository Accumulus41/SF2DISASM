
; ASM FILE data\battles\entries\battle00\cs_afterbattle.asm :
; 0x4F47A..0x4F48A : Cutscene after battle 0
bbcs_00:  csc_end
bscs_battle00:  csc_end
rbcs_battle00:  csc_end
edcs_battle00:  csc_end
abcs_battle00:  textCursor STORYTEXT_OFFSET_GAME_CLEAR
                playSound MUSIC_ITEM
                nextSingleText $FF,255  ; "Game over!{W1}"
                hideText
                csc_end
