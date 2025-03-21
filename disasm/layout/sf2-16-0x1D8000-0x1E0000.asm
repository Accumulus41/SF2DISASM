
; GAME SECTION 16 :
; 0x1D8000..0x1E0000 : Icons
; FREE SPACE : 126 bytes.

                include "data\graphics\icons\entries.asm"    ; Icons
                
                ; Relocated data
                include "data\maps\global\flagswitchedmaps.asm"    ; Flag-switched maps
                include "data\battles\global\battlemapcoords.asm"    ; Battle map coords
                include "data\maps\global\savepointmapcoords.asm"    ; Save point map coords
                include "data\maps\global\raftresetmapcoords.asm"    ; Raft reset map coords
                include "data\stats\spells\extendedspellnames-standard.asm"
                include "data\stats\allies\allynames-capitalized.asm"
                include "data\stats\enemies\enemynames-capitalized.asm"
                align
                include "data\graphics\tech\windowlayouts\memberstatswindowlayout-menuenhancements.asm"
                include "data\stats\items\itemdefs.asm"    ; Item definitions
                include "data\stats\spells\spelldefs.asm"    ; Spell definitions
                include "data\graphics\tech\backgroundlayout.asm"    ; Battlescene Background Layout
                include "data\stats\items\itemnames.asm"    ; Item names
                include "data\stats\allies\classes\classnames.asm"    ; Class names
                include "data\stats\allies\classes\fullclassnames-standard.asm"
                align
                include "code\common\tech\incbins\s06_incbins_graphics.asm"    ; Game Section 06 Incbin Directives, part 1
                include "data\scripting\gamestaff.asm"    ; Game Staff
                align
                include "data\graphics\maps\mappalettes\entries.asm"    ; Map palettes
                include "data\maps\entries.asm"    ; Map entries
                align
                include "data\graphics\battles\spells\animations\boltanimdata.asm"    ; Bolt spell animation data
                align
                include "data\graphics\battles\battlesprites\allies\animations\entries.asm"    ; Ally animations
                align
                include "data\graphics\battles\battlesprites\enemies\animations\entries.asm"    ; Enemy animations
                align
                include "code\specialscreens\endkiss\graphics.asm"    ; End Kiss Graphics
                align
                include "data\battles\terrainentries.asm"    ; Battle terrain data
                include "data\stats\enemies\enemydefs.asm"    ; Enemy definitions
                include "data\battles\spritesets\entries.asm"    ; Battle Spritesets
                align
                include "code\specialscreens\witch\graphics.asm"    ; Witch Screen
                align
                include "code\specialscreens\witchend\graphics.asm"    ; Witch End Screen
                align
                include "data\graphics\portraits\entries.asm"    ; Portraits
                align
                include "data\stats\allies\growthcurves.asm"    ; Stat growth curves
                include "data\stats\allies\stats\entries.asm"    ; Ally stats
                align
                include "data\stats\allies\allystartdefs.asm"    ; Ally start definitions
                include "data\stats\allies\classes\classdefs.asm"    ; Class definitions
                include "code\specialscreens\jewelend\graphics.asm"    ; Jewel End Graphics
                align
                include "code\specialscreens\suspend\graphics.asm"    ; Suspend String Graphics
                align
                include "code\common\tech\incbins\s17_incbins_basetiles.asm"    ; Game Section 17 Incbin Directives
                
                align $1E0000
