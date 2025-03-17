
; ASM FILE data\battles\entries\battle12\cs_afterbattle.asm :
; 0x4F47A..0x4F48A : Cutscene after battle 0
bbcs_12:  csc_end
bscs_battle12:  csc_end
rbcs_battle12:  csc_end
edcs_battle12:  textCursor STORYTEXT_OFFSET_VOLCANO_DEATH_LINE
                cameraSpeed $20
                setCameraEntity 128
                nextSingleText $0,128   ; "How can you...defeat...{N}devils?{W1}"
                setCameraEntity ALLY_BOWIE
                nextText $0,128         ; "Ah!  You have the Jewel of{N}Evil around your neck.{W2}"
                nextSingleText $0,128   ; "It's you, {LEADER}.{N}We've been waiting for you.{W1}"
                setF FLAG_VOLCANO3                ; Set after winning the cliff battle outside Bedoe, before Peter delivers lines
                csc_end
abcs_battle12:  textCursor STORYTEXT_OFFSET_THEY_WERE_WAITING
                warp MAP_PATH_TO_MOUNT_VOLCANON,23,8,LEFT
                csc_end
