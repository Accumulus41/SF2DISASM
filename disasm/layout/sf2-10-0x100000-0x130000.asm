
; GAME SECTION 10 :
; 0x100000..0x130000 : Backgrounds, invocation sprites, title screen
; FREE SPACE : 432 bytes.

                include "code\gameflow\start\gameinit-standard.asm"    ; Game init
                include "code\gameflow\start\gameintro-standard.asm"    ; Game intro
                include "code\specialscreens\title\title.asm"    ; Title screen functions
                include "code\specialscreens\title\loadfont.asm"    ; Title screen font loading function
                include "code\common\tech\incbins\s06_incbins_titlescreen.asm"    ; Game Section 06 Incbin Directives, part 2
                include "code\specialscreens\title\graphics.asm"    ; Title Screen Graphics
                include "data\graphics\specialscreens\titlescreen\titlescreenlayouts.asm"    ; Title Screen Layouts
                include "code\specialscreens\witch\witchstart-standard.asm"    ; Start witch screen
                include "code\specialscreens\witch\soundtest-standard.asm"    ; Restored sound test
                include "code\specialscreens\suspend\suspend.asm"    ; Suspend functions
                include "code\specialscreens\witchend\witchend.asm"    ; Witch end functions
