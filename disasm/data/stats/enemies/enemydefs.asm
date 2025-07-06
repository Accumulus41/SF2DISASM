
; ASM FILE data\stats\enemies\enemydefs.asm :
; 0x1B1A66..0x1B30EE : Enemy definitions
table_EnemyDefinitions:
                
; Syntax        unknownByte    ?
;               spellPower     [SPELLPOWER_]REGULAR *or* [SPELLPOWER_]ENHANCED
;               level          0-255
;               maxHp          0-32767
;               maxMp          0-255
;               baseAtt        0-255
;               baseDef        0-255
;               baseAgi        0-127 + 128 for second turn
;               baseMov        0-255 (game slows down at around 15)
;               baseResistance [RESISTANCE_]bitfield
;               baseProwess    [PROWESS_]bitfield
;               items &
;                   [ITEM_]enum[|EQUIPPED], &
;                   [ITEM_]enum[|EQUIPPED], &
;                   [ITEM_]enum[|EQUIPPED], &
;                   [ITEM_]enum[|EQUIPPED]
;               spells &
;                   [SPELL_]enum[|level], &
;                   [SPELL_]enum[|level], &
;                   [SPELL_]enum[|level], &
;                   [SPELL_]enum[|level]
;               initialStatus  [STATUSEFFECT_]bitfield
;               moveType       [MOVETYPE_UPPER]enum
;               unknownWord    ?
;
;        level: LV1 = 0 (default when omitted)
;               LV2 = 64
;               LV3 = 128
;               LV4 = 192
;
; Note: Constant names ("enums"), shorthands (defined by macro), and numerical indexes are interchangeable.
                
                unknownByte 0           ; 0: OOZE
                spellPower REGULAR
                level    0
                maxHp    9
                maxMp    0
                baseAtt  9
                baseDef  6
                baseAgi  5
                baseMov  4
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_MAJOR|FIRE_WEAKNESS|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   8224
                
                unknownByte 1           ; 1: HUGE RAT
                spellPower REGULAR
                level    0
                maxHp    10
                maxMp    0
                baseAtt  10
                baseDef  8
                baseAgi  7
                baseMov  6
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      STEALTH
                unknownWord   8224
                
                unknownByte 2           ; 2: GALAM SOLDIER
                spellPower REGULAR
                level    2
                maxHp    11
                maxMp    0
                baseAtt  8
                baseDef  10
                baseAgi  8
                baseMov  6
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    SHORT_AXE|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   8224
                
                unknownByte 3           ; 3: GALAM KNIGHT
                spellPower REGULAR
                level    3
                maxHp    16
                maxMp    0
                baseAtt  9
                baseDef  11
                baseAgi  12
                baseMov  7
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    SHORT_SPEAR|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      CENTAUR
                unknownWord   8224
                
                unknownByte 4           ; 4: GOBLIN
                spellPower REGULAR
                level    6
                maxHp    18
                maxMp    0
                baseAtt  14
                baseDef  13
                baseAgi  13
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    SHORT_AXE|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   8224
                
                unknownByte 5           ; 5: GREEN OOZE
                spellPower REGULAR
                level    5
                maxHp    17
                maxMp    0
                baseAtt  18
                baseDef  12
                baseAgi  12
                baseMov  4
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_MAJOR|FIRE_WEAKNESS|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   8224
                
                unknownByte 6           ; 6: DARK DWARF
                spellPower REGULAR
                level    7
                maxHp    21
                maxMp    0
                baseAtt  18
                baseDef  17
                baseAgi  18
                baseMov  4
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    SHORT_AXE|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   8224
                
                unknownByte 7           ; 7: HOBGOBLIN
                spellPower REGULAR
                level    9
                maxHp    21
                maxMp    0
                baseAtt  10
                baseDef  19
                baseAgi  19
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    MIDDLE_AXE|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   8224
                
                unknownByte 8           ; 8: ZOMBIE
                spellPower REGULAR
                level    11
                maxHp    27
                maxMp    0
                baseAtt  26
                baseDef  20
                baseAgi  18
                baseMov  5
                baseresistance WIND_WEAKNESS|LIGHTNING_NONE|ICE_MAJOR|FIRE_WEAKNESS|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_IMMUNITY
                baseProwess    CRITICAL_POISON|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   8224
                
                unknownByte 9           ; 9: GOLEM
                spellPower REGULAR
                level    14
                maxHp    24
                maxMp    0
                baseAtt  28
                baseDef  24
                baseAgi  19
                baseMov  4
                baseresistance WIND_NONE|LIGHTNING_MINOR|ICE_MAJOR|FIRE_WEAKNESS|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_IMMUNITY
                baseProwess    CRITICAL150_1IN8|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   8224
                
                unknownByte 11          ; 10: SOULSOWER
                spellPower REGULAR
                level    16
                maxHp    27
                maxMp    0
                baseAtt  35
                baseDef  32
                baseAgi  25
                baseMov  4
                baseresistance WIND_NONE|LIGHTNING_WEAKNESS|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_STUN|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   8224
                
                unknownByte 12          ; 11: ORC
                spellPower REGULAR
                level    18
                maxHp    30
                maxMp    0
                baseAtt  22
                baseDef  37
                baseAgi  27
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN8|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    STEEL_LANCE|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   8224
                
                unknownByte 16          ; 12: BUBBLING OOZE
                spellPower REGULAR
                level    21
                maxHp    32
                maxMp    0
                baseAtt  38
                baseDef  35
                baseAgi  26
                baseMov  4
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_MAJOR|FIRE_WEAKNESS|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_SILENCE|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    AQUA|LV2, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   8224
                
                unknownByte 17          ; 13: SKELETON
                spellPower ENHANCED
                level    21
                maxHp    30
                maxMp    0
                baseAtt  26
                baseDef  40
                baseAgi  30
                baseMov  6
                baseresistance WIND_WEAKNESS|LIGHTNING_MINOR|ICE_MAJOR|FIRE_WEAKNESS|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_IMMUNITY
                baseProwess    CRITICAL150_1IN8|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    BROAD_SWORD|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   8224
                
                unknownByte 18          ; 14: DARK SOLDIER
                spellPower ENHANCED
                level    23
                maxHp    35
                maxMp    17
                baseAtt  31
                baseDef  46
                baseAgi  34
                baseMov  4
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    LARGE_AXE|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    ATTACK, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   8192
                
                unknownByte 19          ; 15: LIZARDMAN
                spellPower ENHANCED
                level    24
                maxHp    40
                maxMp    0
                baseAtt  34
                baseDef  45
                baseAgi  38
                baseMov  6
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_WEAKNESS|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN8|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    LARGE_AXE|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   8192
                
                unknownByte 20          ; 16: WORM
                spellPower ENHANCED
                level    25
                maxHp    45
                maxMp    0
                baseAtt  60
                baseDef  40
                baseAgi  34
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_POISON|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      STEALTH
                unknownWord   8192
                
                unknownByte 21          ; 17: DARK KNIGHT
                spellPower ENHANCED
                level    27
                maxHp    50
                maxMp    0
                baseAtt  36
                baseDef  48
                baseAgi  40
                baseMov  7
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN4|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    CHROME_LANCE|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      CENTAUR
                unknownWord   8192
                
                unknownByte 22          ; 18: ORC LORD
                spellPower ENHANCED
                level    27
                maxHp    46
                maxMp    13
                baseAtt  40
                baseDef  44
                baseAgi  37
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN8|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    HEAVY_LANCE|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    DISPEL, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   8224
                
                unknownByte 23          ; 19: DEVIL SOLDIER
                spellPower ENHANCED
                level    29
                maxHp    60
                maxMp    16
                baseAtt  45
                baseDef  48
                baseAgi  43
                baseMov  6
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_MINOR
                baseProwess    CRITICAL150_1IN8|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    GREAT_AXE|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    BOOST|LV2, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   8224
                
                unknownByte 24          ; 20: CERBERUS
                spellPower ENHANCED
                level    30
                maxHp    51
                maxMp    0
                baseAtt  70
                baseDef  44
                baseAgi  45
                baseMov  6
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_WEAKNESS|FIRE_MAJOR|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN16|COUNTER_1IN16
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    FLAME, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      STEALTH
                unknownWord   8224
                
                unknownByte 25          ; 21: MUD MAN
                spellPower ENHANCED
                level    31
                maxHp    55
                maxMp    0
                baseAtt  76
                baseDef  51
                baseAgi  41
                baseMov  4
                baseresistance WIND_NONE|LIGHTNING_MINOR|ICE_MAJOR|FIRE_WEAKNESS|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_IMMUNITY
                baseProwess    CRITICAL150_1IN8|DOUBLE_1IN16|COUNTER_1IN16
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   8224
                
                unknownByte 26          ; 22: DRAGONEWT
                spellPower ENHANCED
                level    32
                maxHp    60
                maxMp    0
                baseAtt  44
                baseDef  42
                baseAgi  46
                baseMov  6
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN8|DOUBLE_1IN16|COUNTER_1IN16
                items &
                    HEAT_AXE|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   8224
                
                unknownByte 27          ; 23: PURPLE WORM
                spellPower ENHANCED
                level    32
                maxHp    58
                maxMp    0
                baseAtt  78
                baseDef  46
                baseAgi  43
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_POISON|DOUBLE_1IN16|COUNTER_1IN16
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      STEALTH
                unknownWord   8224
                
                unknownByte 28          ; 24: EXECUTIONER
                spellPower ENHANCED
                level    33
                maxHp    64
                maxMp    0
                baseAtt  46
                baseDef  46
                baseAgi  45
                baseMov  6
                baseresistance WIND_MINOR|LIGHTNING_MINOR|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_MINOR
                baseProwess    CRITICAL_SILENCE|DOUBLE_1IN16|COUNTER_1IN16
                items &
                    BATTLE_SWORD|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   8192
                
                unknownByte 29          ; 25: HELL HOUND
                spellPower ENHANCED
                level    35
                maxHp    62
                maxMp    0
                baseAtt  84
                baseDef  49
                baseAgi  50
                baseMov  6
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_WEAKNESS|FIRE_MAJOR|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN16|COUNTER_1IN16
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    FLAME|LV2, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      STEALTH
                unknownWord   8192
                
                unknownByte 30          ; 26: MINOTAUR
                spellPower ENHANCED
                level    35
                maxHp    58
                maxMp    0
                baseAtt  51
                baseDef  51
                baseAgi  44
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN8|DOUBLE_1IN16|COUNTER_1IN16
                items &
                    ATLAS_AXE|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   8192
                
                unknownByte 31          ; 27: CYCLOPS
                spellPower ENHANCED
                level    36
                maxHp    64
                maxMp    0
                baseAtt  88
                baseDef  51
                baseAgi  46
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN4|DOUBLE_1IN16|COUNTER_1IN16
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   8192
                
                unknownByte 33          ; 28: HYDRA
                spellPower ENHANCED
                level    39
                maxHp    70
                maxMp    0
                baseAtt  96
                baseDef  62
                baseAgi  50
                baseMov  4
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_WEAKNESS|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN8|COUNTER_1IN8
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      STEALTH
                unknownWord   8224
                
                unknownByte 34          ; 29: CHAOS WARRIOR
                spellPower ENHANCED
                level    40
                maxHp    76
                maxMp    23
                baseAtt  92
                baseDef  50
                baseAgi  54
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_MAJOR
                baseProwess    CRITICAL_STUN|DOUBLE_1IN16|COUNTER_1IN16
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    ATTACK, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   8192
                
                unknownByte 35          ; 30: REAPER
                spellPower ENHANCED
                level    41
                maxHp    82
                maxMp    31
                baseAtt  60
                baseDef  49
                baseAgi  57
                baseMov  6
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_MAJOR
                baseProwess    CRITICAL_MUDDLE|DOUBLE_1IN16|COUNTER_1IN16
                items &
                    BATTLE_SWORD|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    MUDDLE|LV2, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   8192
                
                unknownByte 36          ; 31: EVIL BEAST
                spellPower ENHANCED
                level    42
                maxHp    84
                maxMp    0
                baseAtt  98
                baseDef  51
                baseAgi  60
                baseMov  6
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_SLEEP|DOUBLE_1IN16|COUNTER_1IN16
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   8192
                
                unknownByte 37          ; 32: PYROHYDRA
                spellPower ENHANCED
                level    44
                maxHp    80
                maxMp    0
                baseAtt  101
                baseDef  53
                baseAgi  55
                baseMov  4
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_WEAKNESS|FIRE_MAJOR|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN8|DOUBLE_1IN8|COUNTER_1IN8
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    FLAME|LV3, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      STEALTH
                unknownWord   8192
                
                unknownByte 0           ; 33: BLUE DRAGON
                spellPower ENHANCED
                level    50
                maxHp    90
                maxMp    0
                baseAtt  113
                baseDef  58
                baseAgi  76
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 34
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 35
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 36
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 37
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 38
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 39
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 40
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 41
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 42
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 43
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 44
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 45
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 46
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 47
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 48
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 49
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 39          ; 50: GIZMO
                spellPower REGULAR
                level    0
                maxHp    5
                maxMp    0
                baseAtt  7
                baseDef  5
                baseAgi  5
                baseMov  5
                baseresistance WIND_WEAKNESS|LIGHTNING_NONE|ICE_MAJOR|FIRE_WEAKNESS|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_MINOR
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      HOVERING
                unknownWord   8192
                
                unknownByte 40          ; 51: HUGE BAT
                spellPower REGULAR
                level    0
                maxHp    11
                maxMp    0
                baseAtt  12
                baseDef  8
                baseAgi  8
                baseMov  6
                baseresistance WIND_WEAKNESS|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_SLEEP|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      FLYING
                unknownWord   8192
                
                unknownByte 41          ; 52: VAMPIRE BAT
                spellPower REGULAR
                level    7
                maxHp    20
                maxMp    8
                baseAtt  21
                baseDef  16
                baseAgi  16
                baseMov  6
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_POISON|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    BLAZE|LV2, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      FLYING
                unknownWord   8192
                
                unknownByte 42          ; 53: EVIL CLOUD
                spellPower REGULAR
                level    10
                maxHp    22
                maxMp    0
                baseAtt  24
                baseDef  18
                baseAgi  17
                baseMov  5
                baseresistance WIND_WEAKNESS|LIGHTNING_NONE|ICE_MAJOR|FIRE_WEAKNESS|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_MINOR
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      HOVERING
                unknownWord   8192
                
                unknownByte 43          ; 54: GARGOYLE
                spellPower REGULAR
                level    15
                maxHp    29
                maxMp    0
                baseAtt  31
                baseDef  23
                baseAgi  21
                baseMov  6
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      FLYING
                unknownWord   8240
                
                unknownByte 44          ; 55: HARPY
                spellPower REGULAR
                level    18
                maxHp    32
                maxMp    10
                baseAtt  39
                baseDef  38
                baseAgi  29
                baseMov  7
                baseresistance WIND_WEAKNESS|LIGHTNING_NONE|ICE_NONE|FIRE_WEAKNESS|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_POISON|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    DISPEL, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      FLYING
                unknownWord   8240
                
                unknownByte 45          ; 56: LESSER DEMON
                spellPower ENHANCED
                level    22
                maxHp    40
                maxMp    21
                baseAtt  49
                baseDef  37
                baseAgi  32
                baseMov  6
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_MINOR
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    BLAZE|LV3, &
                    BOOST|LV2, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      FLYING
                unknownWord   8240
                
                unknownByte 46          ; 57: WYVERN
                spellPower ENHANCED
                level    26
                maxHp    46
                maxMp    0
                baseAtt  58
                baseDef  39
                baseAgi  36
                baseMov  7
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_WEAKNESS|FIRE_MAJOR|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_POISON|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    FLAME, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      FLYING
                unknownWord   8240
                
                unknownByte 47          ; 58: HARPY QUEEN
                spellPower ENHANCED
                level    27
                maxHp    53
                maxMp    20
                baseAtt  65
                baseDef  39
                baseAgi  43
                baseMov  7
                baseresistance WIND_WEAKNESS|LIGHTNING_NONE|ICE_NONE|FIRE_WEAKNESS|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_SILENCE|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    FREEZE|LV2, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      FLYING
                unknownWord   8208
                
                unknownByte 48          ; 59: PEGASUS KNIGHT
                spellPower ENHANCED
                level    30
                maxHp    65
                maxMp    0
                baseAtt  40
                baseDef  37
                baseAgi  47
                baseMov  7
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_MINOR
                baseProwess    CRITICAL150_1IN8|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    CHROME_LANCE|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      FLYING
                unknownWord   8208
                
                unknownByte 49          ; 60: GRIFFIN
                spellPower ENHANCED
                level    32
                maxHp    60
                maxMp    0
                baseAtt  77
                baseDef  45
                baseAgi  48
                baseMov  7
                baseresistance WIND_WEAKNESS|LIGHTNING_WEAKNESS|ICE_NONE|FIRE_WEAKNESS|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN8|DOUBLE_1IN16|COUNTER_1IN16
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      FLYING
                unknownWord   8208
                
                unknownByte 50          ; 61: MIST DEMON
                spellPower ENHANCED
                level    36
                maxHp    68
                maxMp    28
                baseAtt  80
                baseDef  41
                baseAgi  51
                baseMov  6
                baseresistance WIND_WEAKNESS|LIGHTNING_NONE|ICE_MAJOR|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_MINOR
                baseProwess    CRITICAL_SILENCE|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    MUDDLE|LV2, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      HOVERING
                unknownWord   8208
                
                unknownByte 51          ; 62: WHITE DRAGON
                spellPower ENHANCED
                level    38
                maxHp    66
                maxMp    0
                baseAtt  85
                baseDef  50
                baseAgi  53
                baseMov  6
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_MAJOR|FIRE_WEAKNESS|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN8|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    SNOW, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      FLYING
                unknownWord   8208
                
                unknownByte 52          ; 63: DEMON
                spellPower ENHANCED
                level    40
                maxHp    75
                maxMp    38
                baseAtt  90
                baseDef  50
                baseAgi  55
                baseMov  6
                baseresistance WIND_NONE|LIGHTNING_WEAKNESS|ICE_NONE|FIRE_MINOR|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_MAJOR
                baseProwess    CRITICAL_MAGIC_DRAIN|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    BOLT|LV2, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      FLYING
                unknownWord   8208
                
                unknownByte 53          ; 64: CHAOS DRAGON
                spellPower ENHANCED
                level    41
                maxHp    83
                maxMp    0
                baseAtt  93
                baseDef  48
                baseAgi  57
                baseMov  6
                baseresistance WIND_NONE|LIGHTNING_WEAKNESS|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN4|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    SNOW|LV2, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      FLYING
                unknownWord   8208
                
                unknownByte 54          ; 65: DEVIL GRIFFIN
                spellPower ENHANCED
                level    42
                maxHp    89
                maxMp    0
                baseAtt  96
                baseDef  47
                baseAgi  59
                baseMov  7
                baseresistance WIND_WEAKNESS|LIGHTNING_NONE|ICE_WEAKNESS|FIRE_MAJOR|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_IMMUNITY
                baseProwess    CRITICAL150_1IN8|DOUBLE_1IN16|COUNTER_1IN8
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    FLAME|LV3, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      FLYING
                unknownWord   8208
                
                unknownByte 55          ; 66: ARCH DEMON
                spellPower ENHANCED
                level    44
                maxHp    99
                maxMp    65
                baseAtt  99
                baseDef  46
                baseAgi  61
                baseMov  6
                baseresistance WIND_NONE|LIGHTNING_WEAKNESS|ICE_NONE|FIRE_MINOR|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_MAJOR
                baseProwess    CRITICAL_SLOW|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    BOLT|LV3, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      FLYING
                unknownWord   8208
                
                unknownByte 0           ; 67
                spellPower REGULAR
                level    50
                maxHp    100
                maxMp    0
                baseAtt  117
                baseDef  54
                baseAgi  72
                baseMov  6
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      FLYING
                unknownWord   20480
                
                unknownByte 0           ; 68
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 69
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 70
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 71
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 72
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 73
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 74
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 75
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 76
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 77
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 78
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 79
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 56          ; 80: GALAM ARCHER
                spellPower REGULAR
                level    3
                maxHp    15
                maxMp    0
                baseAtt  7
                baseDef  10
                baseAgi  10
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    WOODEN_ARROW|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      ARCHER
                unknownWord   8208
                
                unknownByte 57          ; 81: HUNTER GOBLIN
                spellPower REGULAR
                level    7
                maxHp    24
                maxMp    0
                baseAtt  8
                baseDef  12
                baseAgi  14
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN16|COUNTER_1IN16
                items &
                    IRON_ARROW|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      STEALTH_ARCHER
                unknownWord   8208
                
                unknownByte 58          ; 82: DEATH ARCHER
                spellPower REGULAR
                level    10
                maxHp    27
                maxMp    0
                baseAtt  13
                baseDef  19
                baseAgi  20
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    IRON_ARROW|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      ARCHER
                unknownWord   8208
                
                unknownByte 60          ; 83: ARROW LAUNCHER
                spellPower REGULAR
                level    17
                maxHp    33
                maxMp    0
                baseAtt  15
                baseDef  24
                baseAgi  23
                baseMov  4
                baseresistance WIND_NONE|LIGHTNING_WEAKNESS|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_MINOR
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    STEEL_ARROW|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      BRASS_GUNNER
                unknownWord   8208
                
                unknownByte 62          ; 84: DARK SNIPER
                spellPower ENHANCED
                level    24
                maxHp    38
                maxMp    0
                baseAtt  11
                baseDef  37
                baseAgi  35
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN16|COUNTER_1IN16
                items &
                    HYPER_CANNON|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      STEALTH_ARCHER
                unknownWord   8208
                
                unknownByte 63          ; 85: BOW MASTER
                spellPower ENHANCED
                level    30
                maxHp    46
                maxMp    0
                baseAtt  50
                baseDef  53
                baseAgi  40
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    ASSAULT_SHELL|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      ARCHER
                unknownWord   8208
                
                unknownByte 64          ; 86: BOW RIDER
                spellPower ENHANCED
                level    33
                maxHp    61
                maxMp    0
                baseAtt  44
                baseDef  55
                baseAgi  44
                baseMov  7
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN8|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    HYPER_CANNON|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      CENTAUR_ARCHER
                unknownWord   8208
                
                unknownByte 65          ; 87: DARK GUNNER
                spellPower ENHANCED
                level    38
                maxHp    60
                maxMp    0
                baseAtt  48
                baseDef  56
                baseAgi  45
                baseMov  4
                baseresistance WIND_NONE|LIGHTNING_WEAKNESS|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_MAJOR
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN16|COUNTER_1IN32
                items &
                    BUSTER_SHOT|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      BRASS_GUNNER
                unknownWord   8208
                
                unknownByte 66          ; 88: HORSEMAN
                spellPower ENHANCED
                level    41
                maxHp    67
                maxMp    0
                baseAtt  59
                baseDef  57
                baseAgi  55
                baseMov  7
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN8|DOUBLE_1IN16|COUNTER_1IN32
                items &
                    BUSTER_SHOT|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      CENTAUR_ARCHER
                unknownWord   8208
                
                unknownByte 0           ; 89
                spellPower REGULAR
                level    50
                maxHp    82
                maxMp    0
                baseAtt  67
                baseDef  66
                baseAgi  71
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      STEALTH_ARCHER
                unknownWord   20480
                
                unknownByte 0           ; 90
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 91
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 92
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 93
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 94
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 95
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 96
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 97
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 98
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 99
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 67          ; 100: GALAM MAGE
                spellPower REGULAR
                level    3
                maxHp    14
                maxMp    5
                baseAtt  8
                baseDef  9
                baseAgi  11
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_MINOR|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    SHORT_ROD|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    BLAZE, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      MAGE
                unknownWord   8208
                
                unknownByte 68          ; 101: WITCH
                spellPower REGULAR
                level    7
                maxHp    21
                maxMp    10
                baseAtt  9
                baseDef  12
                baseAgi  15
                baseMov  6
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_MINOR|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    BRONZE_ROD|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    FREEZE, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      MAGE
                unknownWord   8208
                
                unknownByte 69          ; 102: MASTER MAGE
                spellPower REGULAR
                level    14
                maxHp    28
                maxMp    14
                baseAtt  11
                baseDef  18
                baseAgi  22
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_MINOR|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    IRON_ROD|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    BLAZE|LV2, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      MAGE
                unknownWord   8208
                
                unknownByte 70          ; 103: DARK MADAM
                spellPower REGULAR
                level    17
                maxHp    29
                maxMp    17
                baseAtt  19
                baseDef  31
                baseAgi  29
                baseMov  6
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_MINOR|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    POWER_STICK|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    FREEZE|LV2, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      MAGE
                unknownWord   8208
                
                unknownByte 0           ; 104
                spellPower REGULAR
                level    21
                maxHp    33
                maxMp    26
                baseAtt  22
                baseDef  33
                baseAgi  35
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    BOLT, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 72          ; 105: WIZARD
                spellPower ENHANCED
                level    26
                maxHp    37
                maxMp    37
                baseAtt  32
                baseDef  40
                baseAgi  44
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_MINOR|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    FLAIL|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    BLAZE|LV3, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      MAGE
                unknownWord   8208
                
                unknownByte 73          ; 106: NECROMANCER
                spellPower ENHANCED
                level    30
                maxHp    47
                maxMp    42
                baseAtt  45
                baseDef  44
                baseAgi  51
                baseMov  6
                baseresistance WIND_NONE|LIGHTNING_MINOR|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_IMMUNITY
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    FLAIL|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    FREEZE|LV3, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      MAGE
                unknownWord   8208
                
                unknownByte 74          ; 107: CHAOS WIZARD
                spellPower ENHANCED
                level    36
                maxHp    53
                maxMp    49
                baseAtt  47
                baseDef  48
                baseAgi  59
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    GREAT_ROD|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    BLAZE|LV4, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      MAGE
                unknownWord   8208
                
                unknownByte 75          ; 108: DEMON MASTER
                spellPower ENHANCED
                level    42
                maxHp    73
                maxMp    68
                baseAtt  48
                baseDef  50
                baseAgi  65
                baseMov  6
                baseresistance WIND_NONE|LIGHTNING_MINOR|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_IMMUNITY
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    MYSTERY_STAFF|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    FREEZE|LV4, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      MAGE
                unknownWord   8192
                
                unknownByte 0           ; 109
                spellPower REGULAR
                level    50
                maxHp    85
                maxMp    90
                baseAtt  56
                baseDef  60
                baseAgi  71
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    BOLT|LV4, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      HOVERING
                unknownWord   20480
                
                unknownByte 0           ; 110
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 111
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 112
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 113
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 114
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 115
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 116
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 117
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 118
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 119
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 76          ; 120: DARK CLERIC
                spellPower REGULAR
                level    3
                maxHp    15
                maxMp    7
                baseAtt  11
                baseDef  11
                baseAgi  13
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    SHORT_ROD|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    HEAL, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      HEALER
                unknownWord   12288
                
                unknownByte 77          ; 121: DEATH MONK
                spellPower REGULAR
                level    8
                maxHp    23
                maxMp    13
                baseAtt  22
                baseDef  14
                baseAgi  18
                baseMov  6
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN4|DOUBLE_1IN16|COUNTER_1IN16
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    HEAL|LV2, &
                    BLAST, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      HEALER
                unknownWord   12288
                
                unknownByte 78          ; 122: BLACK MONK
                spellPower REGULAR
                level    14
                maxHp    30
                maxMp    19
                baseAtt  27
                baseDef  18
                baseAgi  21
                baseMov  6
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN4|DOUBLE_1IN16|COUNTER_1IN16
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    HEAL|LV2, &
                    BLAST, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      HEALER
                unknownWord   12288
                
                unknownByte 79          ; 123: HIGH PRIEST
                spellPower REGULAR
                level    17
                maxHp    30
                maxMp    29
                baseAtt  20
                baseDef  31
                baseAgi  23
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    POWER_STICK|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    HEAL|LV3, &
                    BLAST|LV2, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      HEALER
                unknownWord   12288
                
                unknownByte 81          ; 124: DARK BISHOP
                spellPower ENHANCED
                level    23
                maxHp    39
                maxMp    38
                baseAtt  28
                baseDef  38
                baseAgi  27
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    FLAIL|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    AURA, &
                    BLAST|LV3, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      HEALER
                unknownWord   12288
                
                unknownByte 0           ; 125: MASTER MONK
                spellPower ENHANCED
                level    28
                maxHp    47
                maxMp    39
                baseAtt  22
                baseDef  45
                baseAgi  31
                baseMov  6
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL125_1IN4|DOUBLE_1IN8|COUNTER_1IN16
                items &
                    BRASS_KNUCKLES|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    HEAL|LV4, &
                    DISPEL, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      HEALER
                unknownWord   12288
                
                unknownByte 0           ; 126: SHAMAN
                spellPower ENHANCED
                level    32
                maxHp    56
                maxMp    46
                baseAtt  45
                baseDef  42
                baseAgi  40
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_MAGIC_DRAIN|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    WISH_STAFF|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    AURA|LV2, &
                    BLAST|LV3, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      HEALER
                unknownWord   12288
                
                unknownByte 0           ; 127: EVIL BISHOP
                spellPower ENHANCED
                level    38
                maxHp    64
                maxMp    51
                baseAtt  54
                baseDef  48
                baseAgi  46
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    GREAT_ROD|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    AURA|LV2, &
                    BLAST|LV3, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      HEALER
                unknownWord   12288
                
                unknownByte 0           ; 128: BLUE SHAMAN
                spellPower ENHANCED
                level    42
                maxHp    72
                maxMp    60
                baseAtt  64
                baseDef  54
                baseAgi  51
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_SILENCE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    HOLY_STAFF|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    AURA|LV3, &
                    BLAST|LV4, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      HEALER
                unknownWord   12288
                
                unknownByte 0           ; 129
                spellPower REGULAR
                level    50
                maxHp    90
                maxMp    101
                baseAtt  80
                baseDef  67
                baseAgi  60
                baseMov  6
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 130
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 131
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 132
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 133
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 134
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 135
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 136
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 137
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 138
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 139
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 140
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 141
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 142
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 143
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 144
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 145
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 146
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 147
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 148
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 149
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 150
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 151
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 152
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 153
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 154
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 155
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 156
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 157
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 158
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 159
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 160
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 161
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 162
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 163
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 164
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 165
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 166
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 167
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 168
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 169
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 170
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 171
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 172
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 173
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 174
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 175
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 176
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 177
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 178
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 179
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 180
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 181
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 182
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 183
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 184
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 185
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 186
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 187
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 188
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 189
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 190
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 191
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 192
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 193
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 194
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 195
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 196
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 197
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 198
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 199
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 200
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 201
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 202
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 203
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 204
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 205
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 206
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 207
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 208
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 209
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 210: JAR
                spellPower ENHANCED
                level    32
                maxHp    59
                maxMp    0
                baseAtt  35
                baseDef  44
                baseAgi  46
                baseMov  7
                baseresistance WIND_MAJOR|LIGHTNING_MAJOR|ICE_MAJOR|FIRE_MAJOR|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_IMMUNITY
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    CHROME_LANCE|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      FLYING
                unknownWord   8192
                
                unknownByte 10          ; 211: KRAKEN LEG
                spellPower REGULAR
                level    14
                maxHp    24
                maxMp    0
                baseAtt  31
                baseDef  26
                baseAgi  19
                baseMov  6
                baseresistance WIND_NONE|LIGHTNING_WEAKNESS|ICE_WEAKNESS|FIRE_MINOR|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN4|DOUBLE_1IN16|COUNTER_1IN16
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      AQUATIC
                unknownWord   8224
                
                unknownByte 59          ; 212: KRAKEN ARM
                spellPower REGULAR
                level    16
                maxHp    30
                maxMp    0
                baseAtt  34
                baseDef  28
                baseAgi  22
                baseMov  6
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN8|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      AQUATIC
                unknownWord   8208
                
                unknownByte 0           ; 213: KRAKEN HEAD
                spellPower REGULAR
                level    18
                maxHp    35
                maxMp    0
                baseAtt  40
                baseDef  29
                baseAgi  153
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_WEAKNESS|ICE_WEAKNESS|FIRE_MINOR|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_MAJOR
                baseProwess    CRITICAL150_1IN4|DOUBLE_1IN8|COUNTER_1IN8
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    AQUA|LV3, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      AQUATIC
                unknownWord   4096
                
                unknownByte 13          ; 214: PAWN
                spellPower ENHANCED
                level    19
                maxHp    36
                maxMp    0
                baseAtt  26
                baseDef  37
                baseAgi  25
                baseMov  6
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_IMMUNITY
                baseProwess    CRITICAL150_1IN8|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    BATTLE_AXE|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   8224
                
                unknownByte 14          ; 215: KNIGHT
                spellPower ENHANCED
                level    20
                maxHp    48
                maxMp    0
                baseAtt  25
                baseDef  34
                baseAgi  29
                baseMov  7
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_IMMUNITY
                baseProwess    CRITICAL150_1IN4|DOUBLE_1IN16|COUNTER_1IN16
                items &
                    POWER_SPEAR|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   8224
                
                unknownByte 80          ; 216: EVIL BISHOP
                spellPower ENHANCED
                level    19
                maxHp    33
                maxMp    36
                baseAtt  26
                baseDef  37
                baseAgi  25
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    POWER_STICK|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    HEAL|LV3, &
                    BLAST|LV2, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      HEALER
                unknownWord   12288
                
                unknownByte 61          ; 217: ROOK
                spellPower REGULAR
                level    19
                maxHp    40
                maxMp    0
                baseAtt  22
                baseDef  31
                baseAgi  27
                baseMov  4
                baseresistance WIND_NONE|LIGHTNING_WEAKNESS|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_IMMUNITY
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN16|COUNTER_1IN32
                items &
                    ROBIN_ARROW|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      BRASS_GUNNER
                unknownWord   8208
                
                unknownByte 71          ; 218: QUEEN
                spellPower ENHANCED
                level    20
                maxHp    30
                maxMp    26
                baseAtt  25
                baseDef  36
                baseAgi  35
                baseMov  6
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_MINOR|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_IMMUNITY
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    POWER_STICK|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    FREEZE|LV2, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      MAGE
                unknownWord   8208
                
                unknownByte 0           ; 219: KING
                spellPower ENHANCED
                level    24
                maxHp    55
                maxMp    28
                baseAtt  29
                baseDef  40
                baseAgi  161
                baseMov  6
                baseresistance WIND_MINOR|LIGHTNING_MINOR|ICE_MINOR|FIRE_MINOR|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_IMMUNITY
                baseProwess    CRITICAL125_1IN4|DOUBLE_1IN8|COUNTER_1IN16
                items &
                    FLAIL|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    BLAZE|LV2, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      MAGE
                unknownWord   4096
                
                unknownByte 15          ; 220: RAT
                spellPower REGULAR
                level    22
                maxHp    41
                maxMp    0
                baseAtt  45
                baseDef  32
                baseAgi  30
                baseMov  6
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN16
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      STEALTH
                unknownWord   8224
                
                unknownByte 0           ; 221: WILLARD
                spellPower ENHANCED
                level    25
                maxHp    50
                maxMp    0
                baseAtt  50
                baseDef  36
                baseAgi  165
                baseMov  6
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_MAJOR
                baseProwess    CRITICAL150_1IN4|DOUBLE_1IN16|COUNTER_1IN16
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      STEALTH
                unknownWord   0
                
                unknownByte 0           ; 222: TAROS
                spellPower REGULAR
                level    20
                maxHp    49
                maxMp    0
                baseAtt  9
                baseDef  32
                baseAgi  151
                baseMov  0
                baseresistance WIND_MAJOR|LIGHTNING_MAJOR|ICE_MAJOR|FIRE_MAJOR|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_IMMUNITY
                baseProwess    CRITICAL150_1IN4|DOUBLE_1IN16|COUNTER_1IN8
                items &
                    TAROS_SWORD|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   4096
                
                unknownByte 0           ; 223: PRISM FLOWER
                spellPower ENHANCED
                level    40
                maxHp    62
                maxMp    0
                baseAtt  16
                baseDef  55
                baseAgi  44
                baseMov  0
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_MAJOR|FIRE_WEAKNESS|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_IMMUNITY
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   4096
                
                unknownByte 32          ; 224: BURST ROCK
                spellPower ENHANCED
                level    48
                maxHp    45
                maxMp    0
                baseAtt  0
                baseDef  60
                baseAgi  43
                baseMov  4
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL150_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   8224
                
                unknownByte 38          ; 225: ZEON GUARD
                spellPower ENHANCED
                level    55
                maxHp    130
                maxMp    150
                baseAtt  109
                baseDef  54
                baseAgi  64
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_MAJOR
                baseProwess    CRITICAL_SLOW|DOUBLE_1IN16|COUNTER_1IN16
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    DEMON, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   8192
                
                unknownByte 0           ; 226
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 227
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 228
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 229
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 230: DARK SMOKE
                spellPower REGULAR
                level    99
                maxHp    18
                maxMp    20
                baseAtt  18
                baseDef  13
                baseAgi  141
                baseMov  6
                baseresistance WIND_WEAKNESS|LIGHTNING_NONE|ICE_MAJOR|FIRE_WEAKNESS|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_MAJOR
                baseProwess    CRITICAL_SILENCE|DOUBLE_1IN16|COUNTER_1IN16
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    DISPEL, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      HOVERING
                unknownWord   0
                
                unknownByte 0           ; 231: RED BARON
                spellPower ENHANCED
                level    99
                maxHp    150
                maxMp    0
                baseAtt  42
                baseDef  59
                baseAgi  190
                baseMov  6
                baseresistance WIND_MINOR|LIGHTNING_MINOR|ICE_MINOR|FIRE_MINOR|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_IMMUNITY
                baseProwess    CRITICAL125_1IN4|DOUBLE_1IN4|COUNTER_1IN4
                items &
                    DARK_SWORD|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   4096
                
                unknownByte 0           ; 232: GALAM
                spellPower ENHANCED
                level    99
                maxHp    240
                maxMp    180
                baseAtt  49
                baseDef  50
                baseAgi  208
                baseMov  6
                baseresistance WIND_MAJOR|LIGHTNING_MAJOR|ICE_MAJOR|FIRE_MAJOR|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_IMMUNITY
                baseProwess    CRITICAL125_1IN4|DOUBLE_1IN8|COUNTER_1IN4
                items &
                    DEMON_ROD|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    DEMON, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   4096
                
                unknownByte 0           ; 233
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 234
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 235
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 236
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 237
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 238
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 239
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 240
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 241
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 242
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 243
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 244
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 245
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 246: ZALBARD
                spellPower ENHANCED
                level    99
                maxHp    80
                maxMp    65
                baseAtt  73
                baseDef  50
                baseAgi  180
                baseMov  5
                baseresistance WIND_MINOR|LIGHTNING_MINOR|ICE_NONE|FIRE_MAJOR|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_IMMUNITY
                baseProwess    CRITICAL125_1IN4|DOUBLE_1IN8|COUNTER_1IN4
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    BOLT|LV2, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      MAGE
                unknownWord   4096
                
                unknownByte 0           ; 247: CAMEELA
                spellPower ENHANCED
                level    99
                maxHp    99
                maxMp    0
                baseAtt  42
                baseDef  52
                baseAgi  186
                baseMov  6
                baseresistance WIND_MINOR|LIGHTNING_MINOR|ICE_MINOR|FIRE_MINOR|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_IMMUNITY
                baseProwess    CRITICAL125_1IN4|DOUBLE_1IN4|COUNTER_1IN4
                items &
                    IRON_BALL|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   4096
                
                unknownByte 0           ; 248: GESHP
                spellPower ENHANCED
                level    99
                maxHp    180
                maxMp    120
                baseAtt  78
                baseDef  51
                baseAgi  191
                baseMov  6
                baseresistance WIND_MAJOR|LIGHTNING_MAJOR|ICE_MAJOR|FIRE_MAJOR|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_IMMUNITY
                baseProwess    CRITICAL125_1IN4|DOUBLE_1IN8|COUNTER_1IN8
                items &
                    FLAIL|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    FREEZE|LV4, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      MAGE
                unknownWord   4096
                
                unknownByte 0           ; 249: ODD EYE
                spellPower ENHANCED
                level    99
                maxHp    200
                maxMp    160
                baseAtt  64
                baseDef  54
                baseAgi  195
                baseMov  6
                baseresistance WIND_MINOR|LIGHTNING_MINOR|ICE_MINOR|FIRE_MINOR|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_IMMUNITY
                baseProwess    CRITICAL_SLEEP|DOUBLE_1IN8|COUNTER_1IN4
                items &
                    COUNTER_SWORD|EQUIPPED, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    ODDEYE, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      MAGE
                unknownWord   4096
                
                unknownByte 0           ; 250: ZEON
                spellPower ENHANCED
                level    99
                maxHp    500
                maxMp    180
                baseAtt  102
                baseDef  50
                baseAgi  203
                baseMov  0
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_IMMUNITY
                baseProwess    CRITICAL125_1IN4|DOUBLE_1IN4|COUNTER_1IN4
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    DEMON|LV2, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   4096
                
                unknownByte 0           ; 251
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 252
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 253
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 254
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
                unknownByte 0           ; 255
                spellPower REGULAR
                level    1
                maxHp    1
                maxMp    1
                baseAtt  1
                baseDef  1
                baseAgi  1
                baseMov  5
                baseresistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                baseProwess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                items &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                spells &
                    NOTHING, &
                    NOTHING, &
                    NOTHING, &
                    NOTHING
                initialStatus NONE
                moveType      REGULAR
                unknownWord   20480
                
