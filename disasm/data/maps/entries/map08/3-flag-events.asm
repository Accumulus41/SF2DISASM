
; ASM FILE data\maps\entries\map08\3-flag-events.asm :
; 0x9BB2E..0x9BB58 : 
                fbcFlag RIBBLE3             ; Set after you open the tree in Ribble with the wooden plank
                  fbcSource 32, 14
                  fbcSize   2, 2
                  fbcDest   15, 19
                fbcFlag RIBBLE2             ; Set after the mayor in Ribble scene... this flag unlocks the doors
                  fbcSource 32, 3
                  fbcSize   2, 1
                  fbcDest   6, 15
                fbcFlag RIBBLE2             ; Set after the mayor in Ribble scene... this flag unlocks the doors
                  fbcSource 32, 2
                  fbcSize   1, 1
                  fbcDest   25, 12
                fbcFlag RIBBLE2             ; Set after the mayor in Ribble scene... this flag unlocks the doors
                  fbcSource 32, 2
                  fbcSize   1, 1
                  fbcDest   7, 25
                fbcFlag RIBBLE2             ; Set after the mayor in Ribble scene... this flag unlocks the doors
                  fbcSource 32, 2
                  fbcSize   1, 1
                  fbcDest   22, 24
                endWord
