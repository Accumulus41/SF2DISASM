
; ASM FILE data\maps\global\flagswitchedmaps.asm :
; 0x7988..0x799C : Flag-switched maps
table_FlagSwitchedMaps:
                flagSwitchedMap MAP_GRANSEAL, FLAG_MAPGRANS1, MAP_GRANSEAL_EARTHQUAKE 
                                                        ; Set after the end of battle 7's long sequence, cleared at docks?
                flagSwitchedMap MAP_OVERWORLD_AROUND_PACALON, FLAG_BATTLE30_COMPLETE, MAP_OVERWORLD_PACALON_2 
                                                        ; Battle 30 completed - BATTLE_VERSUS_ZALBARD              
                flagSwitchedMap MAP_ANCIENT_TOWER_UNDERGROUND_ROOM, MAP_ANCIENT_TOWER_UNDERGROUND_ROOM, FLAG_NASKA_FLIGHT, MAP_ZEON_ARENA 
                                                        ; Set after the Nazca ship shootdown scene
                flagSwitchedMapsEnd
