
; ASM FILE data\battles\global\regionactivatedcutscenes.asm :
; 0x47EC8..0x47EEA : Region-activated cutscenes data
table_BattleRegionCutscenes:
                dc.b BATTLE_TO_MOUN     ; battle index
                dc.b 0                  ; region index
                dc.w FLAG_JARO_DEFECTS                ; associated flag
                dc.l rbcs_battle32
                dc.b BATTLE_TO_MOUN
                dc.b 1
                dc.w FLAG_JARO_DEFECTS
                dc.l rbcs_battle32
                dc.b BATTLE_VERSUS_ODD_EYE
                dc.b 0
                dc.w FLAG_ODDEYETILES1
                dc.l rbcs_battle40_1
                dc.b BATTLE_VERSUS_ODD_EYE
                dc.b 1
                dc.w FLAG_ODDEYETILES2
                dc.l rbcs_battle40_2
                dc.w TERMINATOR_WORD
