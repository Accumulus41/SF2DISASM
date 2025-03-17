
; ASM FILE data\scripting\entity\followers.asm :
; 0x44338..0x4438A : Follower declarations
table_OverworldFollowers:
                follower FLAG_CARAVAN, FOLLOWER_A, MAPSPRITE_CARAVAN, 0
table_Followers:follower FLAG_FOLLOWER_START, ALLY_SARAH, $FF, 1
                follower FLAG_FOLLOWER_PETER, ALLY_PETER, $FF, 1
                follower FLAG_FOLLOWER_KAZIN, ALLY_KAZIN, $FF, 1
                follower FLAG_FOLLOWER_SLADE, ALLY_SLADE, $FF, 1
                follower FLAG_FOLLOWER_ASTRALKING, FOLLOWER_B, MAPSPRITE_ASTRAL, 1
                follower FLAG_FOLLOWER_START, ALLY_CHESTER, $FF, 1
                follower FLAG_FOLLOWER_ODDLER, FOLLOWER_B, MAPSPRITE_ODDLER, 1
                follower FLAG_FOLLOWER_LUKE, ALLY_LUKE, $FF, 1
                follower FLAG_FOLLOWER_FAIRY, FOLLOWER_C, MAPSPRITE_FAIRY, 1
                follower FLAG_FOLLOWER_ASTRAL, FOLLOWER_B, MAPSPRITE_ASTRAL, 1
                follower FLAG_FOLLOWER_ASTRALKING, FOLLOWER_A, MAPSPRITE_GRANSEAL_KING, 1
                follower FLAG_FOLLOWER_LEMON, ALLY_LEMON, $FF, 1
                follower FLAG_FOLLOWER_ASTRALKING, FOLLOWER_D, MAPSPRITE_MINISTER, 1
                follower FLAG_FOLLOWER_ZYNK, ALLY_ZYNK, $FF, 1
                follower FLAG_FOLLOWER_OLDMAN, FOLLOWER_A, MAPSPRITE_MAN3, 1
                follower FLAG_FOLLOWER_FRAYJA, ALLY_FRAYJA, $FF, 1
                follower FLAG_FOLLOWER_KINGMINISTER, FOLLOWER_A, MAPSPRITE_GRANSEAL_KING, 1
                follower FLAG_FOLLOWER_KINGMINISTER, FOLLOWER_D, MAPSPRITE_MINISTER, 1
                follower FLAG_FOLLOWER_ROHDE, ALLY_ROHDE, $FF, 1
				;follower , 30, $FF,1
                
                tableEnd.w
