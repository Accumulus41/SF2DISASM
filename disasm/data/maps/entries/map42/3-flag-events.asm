
; ASM FILE data\maps\entries\map42\3-flag-events.asm :
; 0xB1B0A..0xB1B24 : 
                fbcFlag SHRINEFORCE1             ; Set after the you're pulled toward the Force Sword in the Jewel Cave
                  fbcSource 0, 32
                  fbcSize   7, 6
                  fbcDest   0, 0
                fbcFlag SHRINEFORCE1             ; Set after the you're pulled toward the Force Sword in the Jewel Cave
                  fbcSource 33, 1
                  fbcSize   1, 1
                  fbcDest   26, 18
                fbcFlag SHRINEFORCE2             ; Set after you pull the Force Sword out
                  fbcSource 33, 2
                  fbcSize   1, 1
                  fbcDest   39, 2
                endWord
