
; ASM FILE data\maps\entries\map54\3-flag-events.asm :
; 0xB71D8..0xB71EA : 
                fbcFlag ODDEYETILES1             ; Set after the first set of tile changes in the Oddeye battle
                  fbcSource 11, 53
                  fbcSize   13, 8
                  fbcDest   7, 18
                fbcFlag ODDEYETILES2             ; Set after the second set of tile changes in the Oddeye battle
                  fbcSource 0, 52
                  fbcSize   10, 7
                  fbcDest   13, 10
                endWord
