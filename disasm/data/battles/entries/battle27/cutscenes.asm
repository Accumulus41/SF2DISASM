
; ASM FILE data\battles\entries\battle27\cs_afterbattle.asm :
; 0x4F47A..0x4F48A : Cutscene after battle 0
bbcs_27:  csc_end
bscs_battle27:  textCursor STORYTEXT_OFFSET_TRAVEL_ABOVE_PACALON
                cameraSpeed $30
                setCameraEntity 133
                nextSingleText $0,133   ; "Where did you come from?{N}What are you doing here?{W1}"
                setCameraEntity 132
                nextSingleText $0,132   ; "Don't you know about the{N}restrictions?{W1}"
                setCameraEntity 128
                nextSingleText $0,128   ; "Even if you didn't know,{N}that's just to bad.{W1}"
                csc_end
rbcs_battle27:  csc_end
edcs_battle27:  csc_end
abcs_battle27:  csc_end
