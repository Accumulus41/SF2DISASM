
; ASM FILE data\maps\mapsetups.asm :
; 0x4F6E2..0x4FA70 : Map setups table
MapSetups:      msMap 3, ms_map3
                msFlag FLAG_CASTLEGRANS4, ms_map3_flag609 ; set after the scene where Astral exorcises the Gizmo
                msFlag FLAG_BATTLE06_COMPLETE, ms_map3_flag506 ; Battle 6 completed
                msFlag FLAG_BATTLE43_COMPLETE, ms_map3_flag543 ; Battle 43 completed
                msMapEnd
                msMap 4, ms_map4        ; for map 4
                msMapEnd
                msMap 5, ms_map5        ; map 5
                msFlag FLAG_HAWELS2, ms_map5_flag650 ; set after event at Hawel's house
                msFlag FLAG_BATTLE30_COMPLETE, ms_map5_flag530 ; Battle 30 completed
                msFlag ALLY_LEMON, ms_map5_flag28 ; Lemon joined
                msMapEnd
                msMap 6, ms_map6
                msFlag FLAG_NEWGRANS1, ms_map6_flag701 ; set after the scene with Peter and the kids in New Granseal
                msFlag FLAG_NEWGRANS2, ms_map6_flag702 ; set after the scene with Peter at the Castle (ends with you leaving the Castle)
                msMapEnd
                msMap 7, ms_map7
                msFlag FLAG_NEWGRANS1, ms_map7_flag701 ; set after the scene with Peter and the kids in New Granseal
                msFlag FLAG_NEWGRANS2, ms_map7     ; set after the scene with Peter at the Castle (ends with you leaving the Castle)
                msFlag FLAG_CASTLENEWGRANS2, ms_map7_flag805 ; set after coming back to New Granseal after Creed's Mansion,when Astral joins
                msMapEnd
                msMap 8, ms_map8
                msFlag FLAG_RIBBLE1, ms_map8_flag708 ; set after the scene in Ribble where the mayor confronts Bowie
                msMapEnd
                msMap 9, ms_map9
                msFlag FLAG_BATTLE18_COMPLETE, ms_map9_flag518 ; Battle 18 completed
                msMapEnd
                msMap 10, ms_map10
                msFlag FLAG_SHRINEVOLCANON1, ms_map10_flag722 ; set after speaking with Volcanon
                msMapEnd
                msMap 11, ms_map11
                msMapEnd
                msMap 12, ms_map12
                msMapEnd
                msMap 13, ms_map13
                msFlag FLAG_POLCA1, ms_map13_flag710 ; set after Oddler wanders down from the mountain
                msFlag FLAG_BEDOE6, ms_map13_flag799 ; set after you agree to kill Zeon in Bedoe (King's yes/no dialog)
                msFlag FLAG_BATTLE13_COMPLETE, ms_map13_flag513 ; Battle 13 completed
                msMapEnd
                msMap 14, ms_map14
                msFlag FLAG_BATTLE08_PRESCENE, ms_map14_flag458
                msMapEnd
                msMap 15, ms_map15
                msFlag FLAG_BATTLE30_COMPLETE, ms_map15_flag530 ; Battle 30 completed
                msMapEnd
                msMap 16, ms_map16
                msFlag FLAG_CASTLEGALAM5, ms_map16_flag663 ; set after Galam and Lemon leave with their army
                msFlag FLAG_BATTLE30_COMPLETE, ms_map16_flag530 ; Battle 30 completed
                msMapEnd
                msMap 17, ms_map17
                msFlag FLAG_BATTLE05_COMPLETE, ms_map17_flag505 ; Battle 5 completed
                msFlag FLAG_BATTLE30_COMPLETE, ms_map17_flag530 ; Battle 30 completed
                msMapEnd
                msMap 18, ms_map18
                msFlag FLAG_BATTLE30_COMPLETE, ms_map18_flag530 ; Battle 30 completed
                msMapEnd
                msMap 19, ms_map19
                msFlag FLAG_BATTLE01_COMPLETE, ms_map19_flag501 ; Battle 1 completed
                msFlag FLAG_CASTLEGRANS4, ms_map19_flag609 ; set after the scene where Astral exorcises the Gizmo
                msFlag FLAG_BATTLE06_COMPLETE, ms_map19_flag506 ; Battle 6 completed
                msFlag FLAG_BATTLE07_COMPLETE, ms_map19_flag507 ; Battle 7 completed
                msFlag FLAG_BATTLE43_COMPLETE, ms_map19_flag543 ; Battle 43 completed
                msFlag FLAG_CASTLEGRANS9, ms_map19_flag982
                msMapEnd
                msMap 20, ms_map20
                msFlag FLAG_BATTLE01_COMPLETE, ms_map20_flag501 ; Battle 1 completed
                msFlag FLAG_CASTLEGRANS4, ms_map20_flag609 ; set after the scene where Astral exorcises the Gizmo
                msFlag FLAG_BATTLE06_COMPLETE, ms_map20_flag506 ; Battle 6 completed
                msFlag FLAG_BATTLE43_COMPLETE, ms_map20_flag543 ; Battle 43 completed
                msMapEnd
                msMap 21, ms_map21
                msFlag FLAG_BATTLE01_COMPLETE, ms_map21_flag501 ; Battle 1 completed
                msFlag FLAG_CASTLEGRANS4, ms_map21_flag609 ; set after the scene where Astral exorcises the Gizmo
                msFlag FLAG_BATTLE06_COMPLETE, ms_map21_flag506 ; Battle 6 completed
                msFlag FLAG_BATTLE43_COMPLETE, ms_map21_flag543 ; Battle 43 completed
                msMapEnd
                msMap 22, ms_map22
                msFlag FLAG_BATTLE22_COMPLETE, ms_map22_flag522 ; Battle 22 completed
                msMapEnd
                msMap 23, ms_map23
                msFlag FLAG_CREEDSMANSION1, ms_map23_flag762 ; set after the fairy tags along at Creed's
                msMapEnd
                msMap 24, ms_map24
                msMapEnd
                msMap 25, ms_map25
                msMapEnd
                msMap 26, ms_map26
                msMapEnd
                msMap 27, ms_map27
                msFlag FLAG_BATTLE23_COMPLETE, ms_map27_flag523 ; Battle 23 completed
                msMapEnd
                msMap 28, ms_map28
                msMapEnd
                msMap 29, ms_map29
                msMapEnd
                msMap 30, ms_map30
                msFlag FLAG_CREEDSMANSION4, ms_map30_flag785 ; set after the fairy tags along at Creed's
                msFlag FLAG_DWARVENMINE3, ms_map30_flag761 ; set after the dwarf gives Bowie the cannon
                msMapEnd
                msMap 31, ms_map31
                msFlag FLAG_MOUNUNDERGROUND1, ms_map31_flag830 ; set after the Gyan join scene in the Moun underground
                msMapEnd
                msMap 33, ms_map33
                msFlag FLAG_BATTLE23_COMPLETE, ms_map33_flag523 ; Battle 23 completed
                msFlag FLAG_CREEDSMANSION3, ms_map33    ; set after the scene where Creed restores the Force and heads down the basement
                msFlag FLAG_EVILSPIRIT1, ms_map33_flag784 ; set after the event in the basement of Creed's Mansion
                msFlag FLAG_CREEDSMANSION5, ms_map33_flag786 ; set after Oddler elects to stay behind at Creed's Mansion
                msFlag FLAG_GARDENMITULA1, ms_map33     ; Frayja joined
                msMapEnd
                msMap 34, ms_map34
                msFlag FLAG_EVILSPIRIT1, ms_map34_flag784 ; set after the event in the basement of Creed's Mansion
                msMapEnd
                msMap 36, ms_map36
                msFlag FLAG_BATTLE30_COMPLETE, ms_map36_flag530 ; Battle 30 completed
                msMapEnd
                msMap 37, ms_map37
                msFlag FLAG_NASKA_FLIGHT, ms_map37_flag999 ; set after the Nazca ship shootdown scene
                msMapEnd
                msMap 38, ms_map38
                msMapEnd
                msMap 39, ms_map39
                msFlag FLAG_MOUNUNDERGROUND1, ms_map39_flag830 ; set after the Gyan join scene in the Moun underground
                msMapEnd
                msMap 40, ms_map40
                msFlag FLAG_BATTLE06_COMPLETE, ms_map40_flag506 ; Battle 6 completed
                msFlag FLAG_BATTLE07_COMPLETE, ms_map40    ; Battle 7 completed
                msMapEnd
                msMap 41, ms_map41
                msMapEnd
                msMap 42, ms_map42
                msMapEnd
                msMap 43, ms_map43
                msFlag FLAG_HAWELS1, ms_map43_flag612 ; set after event at Hawel's house
                msMapEnd
                msMap 44, ms_map44
                msFlag FLAG_CASTLEGRANS4, ms_map44_flag609 ; set after the scene where Astral exorcises the Gizmo
                msFlag FLAG_BATTLE06_COMPLETE, ms_map44_flag506 ; Battle 6 completed
                msFlag FLAG_BATTLE07_COMPLETE, ms_map44_flag507 ; Battle 7 completed
                msMapEnd
                msMap 45, ms_map45
                msMapEnd
                msMap 46, ms_map46
                msMapEnd
                msMap 51, ms_map51
                msFlag FLAG_BATTLE20_COMPLETE, ms_map51_flag520 ; Battle 20 completed
                msMapEnd
                msMap 52, ms_map52
                msFlag FLAG_BATTLE12_COMPLETE, ms_map52_flag512 ; Battle 12 completed
                msMapEnd
                msMap 55, ms_map55
                msMapEnd
                msMap 56, ms_map56
                msMapEnd
                msMap 59, ms_map59
                msFlag FLAG_BATTLE43_COMPLETE, ms_map59_flag543 ; Battle 43 completed
                msMapEnd
                msMap 61, ms_map61
                msFlag FLAG_RUINS2, ms_map61_flag729 ; ???
                msMapEnd
                msMap 62, ms_map62
                msFlag FLAG_FOLLOWER_OLDMAN, ms_map62_flag77 ; Old man is a follower
                msMapEnd
                msMap 63, ms_map63
                msFlag ALLY_CLAUDE, ms_map63_flag29 ; Claude joined
                msMapEnd
                msMap 0, ms_map0
                msMapEnd
                msMap 1, ms_map1
                msMapEnd
                msMap 2, ms_map2
                msFlag FLAG_BATTLE30_COMPLETE, ms_map2_flag530 ; Battle 30 completed
                msMapEnd
                msMap 80, ms_map66
                msMapEnd
                msMap 81, ms_map67
                msMapEnd
                msMap 82, ms_map68
                msMapEnd
                msMap 83, ms_map69
                msMapEnd
                msMap 84, ms_map70
                msMapEnd
                msMap 86, ms_map72
                msMapEnd
                msMap 87, ms_map73
                msMapEnd
                msMap 88, ms_map74
                msMapEnd
                msMap 89, ms_map75
                msMapEnd
                msMap 90, ms_map76
                msMapEnd
                msMap 91, ms_map77
                msMapEnd
                msEnd
