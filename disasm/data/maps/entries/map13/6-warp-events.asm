
; ASM FILE data\maps\entries\map13\6-warp-events.asm :
; 0x9F254..0x9F276 : 
                mWarp 9, 19  ; blacksmith door
                  warpNoScroll
                  warpMap    MAP_CURRENT
                  warpDest   37, 8
                  warpFacing UP
                mWarp 37, 9  ; blacksmith door
                  warpNoScroll
                  warpMap    MAP_CURRENT
                  warpDest   9, 20
                  warpFacing DOWN
                mWarp 255, 31  ; south exit
                  warpNoScroll
                  warpMap    MAP_OVERWORLD_NORTH_SOUTH_PARMECIA_JUNCTION
                  warpDest   43, 47
                  warpFacing DOWN
                mWarp 31, 255  ; east exit
                  warpNoScroll
                  warpMap    MAP_PATH_TO_MOUNT_VOLCANON
                  warpDest   1, 28
                  warpFacing RIGHT
                endWord
