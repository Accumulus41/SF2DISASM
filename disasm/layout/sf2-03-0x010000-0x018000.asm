
; GAME SECTION 03 :
; 0x010000..0x018000 : Menu Engine
; FREE SPACE : 38 bytes.


                include "code\common\menus\menuenginecommon.asm"    ; Menu engine
				include "code\common\menus\diamondmenu.asm"
				include "code\common\menus\itemmenu.asm"
                include "code\common\menus\loadhighlightableicon.asm"    ; Load highlightable icon function
                include "code\common\menus\magicmenu.asm"    ; Magic menu actions
                include "data\graphics\tech\menus\diamondmenulayout.asm"    ; Diamond menu layout
                include "data\graphics\tech\menus\magicmenulayout-extendedspellnames.asm"
                include "data\graphics\tech\menus\itemmenulayout.asm"    ; Item menu layout
                include "code\common\menus\menuengine_02.asm"    ; Menu engine
				include "code\common\menus\equipmenu.asm"
                include "data\graphics\tech\windowlayouts\battleequipwindowlayout.asm"    ; Battle equip window layout
                include "code\common\menus\menuengine_03.asm"    ; Menu engine
                include "code\common\menus\buildfighterministatuswindow-standard.asm"
                include "data\graphics\tech\windowlayouts\fighterministatuswindowlayout.asm"    ; Fighter mini status window layout
                include "code\common\menus\portraitwindow.asm"    ; Menu engine
				include "code\common\menus\memberscreen.asm"
                include "code\common\menus\buildmemberstatswindow-standard.asm"
                include "code\common\menus\getcombatantportrait-standard.asm"
                include "data\graphics\tech\windowborder\entries.asm"    ; Windows border compressed tiles
                include "data\graphics\tech\windowlayouts\portraitwindowlayout.asm"    ; Member screen portrait window layout
                include "data\graphics\tech\windowlayouts\allykilldefeatwindowlayout.asm"    ; Member screen kills and defeat window layout
                include "data\graphics\tech\windowlayouts\goldwindowlayout.asm"    ; Member screen gold window layout
                include "code\common\menus\minimapscreen.asm"    ; Menu engine
				include "code\common\menus\endingkiss.asm"
				include "code\common\menus\goldwindow.asm"
				include "code\common\menus\memberslistscreen.asm"
                include "code\common\menus\writememberlisttext-standard.asm"
                include "code\common\menus\menuengine_06.asm"    ; Menu engine
				include "code\common\menus\shopscreen.asm"
				include "data\graphics\tech\windowlayouts\shopinventorylayout.asm"
				include "code\common\menus\yesnoprompt.asm"
				include "data\graphics\tech\windowlayouts\yesnopromptlayout.asm"
				include "code\common\menus\portraitfunctions.asm"
                include "code\common\menus\landeffectwindow.asm"    ; Menu engine
				include "code\common\menus\battlefieldsettingswindow.asm"
                include "data\graphics\tech\windowlayouts\battleconfigwindowlayout.asm"    ; Battle config window layout
                include "code\common\menus\nameallyscreen.asm"    ; Menu engine
                include "data\graphics\tech\windowlayouts\alphabetwindowlayout.asm"    ; Alphabet window layout
                include "data\graphics\tech\windowlayouts\namecharacterentrywindowlayout-menuenhancements.asm"
                include "data\graphics\tech\alphabethighlight\entries.asm"    ; Alphabet Highlight Tiles
                include "code\common\menus\numberprompt.asm"    ; Menu engine
				include "code\common\menus\timerwindow.asm"
                include "data\graphics\tech\windowlayouts\timerwindowlayout.asm"    ; Timer window layout
                include "code\specialscreens\witch\witchmainmenu.asm"    ; Witch main menu
                include "code\common\menus\nameunderportraitwindow.asm"    ; Menu engine
                
