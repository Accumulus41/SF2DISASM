
; ASM FILE data\maps\entries\map41\3-flag-events.asm :
; 0xB14FC..0xB14FE : 
                fbcFlag FLAG_SHRINEFORCE2             ; Set after retrieving the Force Sword
                  fbcSource 13, 7
                  fbcSize   3, 3
                  fbcDest   5, 5
                fbcFlag RUINS3             ; Set after the old man opens the door to the Woodel Panel shrine interior
                  fbcSource 30, 0
                  fbcSize   1, 1
                  fbcDest   23, 4
                endWord
