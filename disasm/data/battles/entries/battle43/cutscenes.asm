
; ASM FILE data\battles\entries\battle43\cs_afterbattle.asm :
; 0x4F47A..0x4F48A : Cutscene after battle 0
bbcs_43:  csc_end
bscs_battle43:  csc_end
rbcs_battle43:  csc_end
edcs_battle43:  reviveAlly 128
                csc_end
abcs_battle43:  setCamDest 8,2
                playSound $FD
                csWait 40
                playSound SFX_BIG_DOOR_RUMBLE
                playSound SFX_BLAST_SPELL
                playSound SFX_BLAST_SPELL
                playSound SFX_BLAST_SPELL
                playSound SFX_BIG_DOOR_RUMBLE
                playSound SFX_BLAST_SPELL
                playSound SFX_BLAST_SPELL
                flashScreenWhite $14
                hide 128
                playSound SFX_BIG_DOOR_RUMBLE
                playSound SFX_BLAST_SPELL
                playSound SFX_BLAST_SPELL
                playSound SFX_BIG_DOOR_RUMBLE
                playSound SFX_BLAST_SPELL
                flashScreenWhite $14
                setBlocks 12,54,7,4,10,3
                playSound SFX_BLAST_SPELL
                playSound SFX_BLAST_SPELL
                playSound SFX_BIG_DOOR_RUMBLE
                playSound SFX_BLAST_SPELL
                flashScreenWhite $14
                setBlocks 12,49,7,4,10,3
                playSound SFX_BLAST_SPELL
                playSound SFX_BLAST_SPELL
                playSound SFX_BIG_DOOR_RUMBLE
                playSound SFX_BLAST_SPELL
                flashScreenWhite $14
                setBlocks 12,44,7,4,10,3
                playSound SFX_BLAST_SPELL
                playSound SFX_BLAST_SPELL
                setQuake 3
                playSound SFX_BIG_DOOR_RUMBLE
                playSound SFX_BLAST_SPELL
                flashScreenWhite $14
                setBlocks 12,39,7,4,10,3
                playSound SFX_BLAST_SPELL
                playSound SFX_BLAST_SPELL
                setQuake 5
                playSound SFX_BIG_DOOR_RUMBLE
                csWait 120
                mapFadeOutToWhite
                csWait 40
                mapFadeInFromWhite
                warp MAP_ZEON_ARENA,12,11,UP
                setQuake 0
                clearF FLAG_FOLLOWER_PETER               ; Peter is a follower
                clearF FLAG_FOLLOWER_ASTRAL               ; Astral is a follower
                clearF FLAG_FOLLOWER_LEMON               ; Lemon is a follower
                clearF FLAG_FOLLOWER_ZYNK               ; Zynk is a follower
                csc_end
