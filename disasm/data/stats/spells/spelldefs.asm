
; ASM FILE data\stats\spells\spelldefs.asm :
; 0x176A6..0x1796E : Spell definitions
table_SpellDefinitions:
                
; Syntax        entry      [SPELL_]enum[|level]
;               mpCost     0-255
;               animation  [SPELLANIMATION_]enum[|variation]
;               properties [SPELLPROPS_]bitfield
;               range      min, max 0-3
;               radius     0-2
;               power      0-255
;
;        level: LV1 = 0 (default when omitted)
;               LV2 = 64
;               LV3 = 128
;               LV4 = 192
;
;    variation: VARIATION1 = 0 (default when omitted)
;               VARIATION2 = 32
;               VARIATION3 = 96
;               VARIATION4 = 128
;
; Note: Constant names ("enums"), shorthands (defined by macro), and numerical indexes are interchangeable.
                
                entry      EGRESS       ; EGRESS 1
                mpCost     8
                animation  NONE
                properties TYPE_SPECIAL|TARGET_TEAMMATES|AFFECTEDBYSILENCE
                range      0, 0
                radius     0
                power      0
                
                entry      EGRESS|LV2       ; EGRESS 2
                mpCost     4
                animation  NONE
                properties TYPE_SPECIAL|TARGET_TEAMMATES|AFFECTEDBYSILENCE
                range      0, 0
                radius     0
                power      0
                
                entry      EGRESS|LV3       ; EGRESS 3
                mpCost     2
                animation  NONE
                properties TYPE_SPECIAL|TARGET_TEAMMATES|AFFECTEDBYSILENCE
                range      0, 0
                radius     0
                power      0
                
                entry      EGRESS|LV4       ; EGRESS 4
                mpCost     1
                animation  NONE
                properties TYPE_SPECIAL|TARGET_TEAMMATES|AFFECTEDBYSILENCE
                range      0, 0
                radius     0
                power      0
                
                entry      HEAL         ; HEAL 1
                mpCost     3
                animation  HEALING_FAIRY
                properties TYPE_HEAL|TARGET_TEAMMATES|AFFECTEDBYSILENCE
                range      0, 1
                radius     0
                power      15
                
                entry      HEAL|LV2     ; HEAL 2
                mpCost     5
                animation  HEALING_FAIRY|VARIATION2
                properties TYPE_HEAL|TARGET_TEAMMATES|AFFECTEDBYSILENCE
                range      0, 2
                radius     0
                power      15
                
                entry      HEAL|LV3     ; HEAL 3
                mpCost     10
                animation  HEALING_FAIRY|VARIATION3
                properties TYPE_HEAL|TARGET_TEAMMATES|AFFECTEDBYSILENCE
                range      0, 3
                radius     0
                power      30
                
                entry      HEAL|LV4     ; HEAL 4
                mpCost     20
                animation  HEALING_FAIRY|VARIATION4
                properties TYPE_HEAL|TARGET_TEAMMATES|AFFECTEDBYSILENCE
                range      0, 1
                radius     0
                power      255
                
                entry      AURA         ; AURA 1
                mpCost     7
                animation  HEALING_FAIRY
                properties TYPE_HEAL|TARGET_TEAMMATES|AFFECTEDBYSILENCE
                range      0, 3
                radius     1
                power      15
                
                entry      AURA|LV2     ; AURA 2
                mpCost     11
                animation  HEALING_FAIRY|VARIATION2
                properties TYPE_HEAL|TARGET_TEAMMATES|AFFECTEDBYSILENCE
                range      0, 3
                radius     2
                power      15
                
                entry      AURA|LV3     ; AURA 3
                mpCost     15
                animation  HEALING_FAIRY|VARIATION3
                properties TYPE_HEAL|TARGET_TEAMMATES|AFFECTEDBYSILENCE
                range      0, 3
                radius     2
                power      30
                
                entry      AURA|LV4     ; AURA 4
                mpCost     20
                animation  HEALING_FAIRY|VARIATION4
                properties TYPE_HEAL|TARGET_TEAMMATES|AFFECTEDBYSILENCE
                range      0, 0
                radius     0
                power      255
                
                entry      DETOX        ; DETOX 1
                mpCost     3
                animation  DETOX
                properties TYPE_HEAL|TARGET_TEAMMATES|AFFECTEDBYSILENCE
                range      0, 1
                radius     0
                power      0
                
                entry      DETOX|LV2    ; DETOX 2
                mpCost     6
                animation  DETOX|VARIATION2
                properties TYPE_HEAL|TARGET_TEAMMATES|AFFECTEDBYSILENCE
                range      0, 2
                radius     0
                power      0
                
                entry      DETOX|LV3    ; DETOX 3
                mpCost     10
                animation  DETOX|VARIATION3
                properties TYPE_HEAL|TARGET_TEAMMATES|AFFECTEDBYSILENCE
                range      0, 2
                radius     0
                power      0
                
                entry      DETOX|LV4    ; DETOX 4
                mpCost     16
                animation  DETOX|VARIATION4
                properties TYPE_HEAL|TARGET_TEAMMATES|AFFECTEDBYSILENCE
                range      0, 3
                radius     2
                power      0
                
                entry      ATTACK       ; ATTACK 1
                mpCost     7
                animation  BUFF1
                properties TYPE_SUPPORT|TARGET_TEAMMATES|AFFECTEDBYSILENCE
                range      1, 3
                radius     0
                power      0
                
                entry      ATTACK|LV2       ; ATTACK 2
                mpCost     13
                animation  BUFF1
                properties TYPE_SUPPORT|TARGET_TEAMMATES|AFFECTEDBYSILENCE
                range      1, 3
                radius     1
                power      0
                
                entry      ATTACK|LV3       ; ATTACK 3
                mpCost     18
                animation  BUFF1
                properties TYPE_SUPPORT|TARGET_TEAMMATES|AFFECTEDBYSILENCE
                range      1, 3
                radius     2
                power      0
                
                entry      ATTACK|LV4       ; ATTACK 4
                mpCost     24
                animation  BUFF1
                properties TYPE_SUPPORT|TARGET_TEAMMATES|AFFECTEDBYSILENCE
                range      1, 3
                radius     3
                power      0
                
                entry      BOOST        ; BOOST 1
                mpCost     2
                animation  BUFF1
                properties TYPE_SUPPORT|TARGET_TEAMMATES|AFFECTEDBYSILENCE
                range      0, 1
                radius     1
                power      0
                
                entry      BOOST|LV2    ; BOOST 2
                mpCost     5
                animation  BUFF1|VARIATION2
                properties TYPE_SUPPORT|TARGET_TEAMMATES|AFFECTEDBYSILENCE
                range      0, 2
                radius     2
                power      0
                
                entry      BOOST|LV3        ; BOOST 3
                mpCost     9
                animation  BUFF1
                properties TYPE_SUPPORT|TARGET_TEAMMATES|AFFECTEDBYSILENCE
                range      0, 3
                radius     3
                power      0
                
                entry      BOOST|LV4    ; BOOST 4
                mpCost     13
                animation  BUFF1|VARIATION2
                properties TYPE_SUPPORT|TARGET_TEAMMATES|AFFECTEDBYSILENCE
                range      0, 4
                radius     4
                power      0
                
                entry      SLOW         ; SLOW 1
                mpCost     3
                animation  DEBUFF1
                properties TYPE_SUPPORT|AFFECTEDBYSILENCE
                range      1, 1
                radius     1
                power      0
                
                entry      SLOW|LV2     ; SLOW 2
                mpCost     6
                animation  DEBUFF1|VARIATION2
                properties TYPE_SUPPORT|AFFECTEDBYSILENCE
                range      1, 2
                radius     2
                power      0
                
                entry      SLOW|LV3         ; SLOW 3
                mpCost     9
                animation  DEBUFF1
                properties TYPE_SUPPORT|AFFECTEDBYSILENCE
                range      1, 3
                radius     3
                power      0
                
                entry      SLOW|LV4     ; SLOW 4
                mpCost     12
                animation  DEBUFF1|VARIATION2
                properties TYPE_SUPPORT|AFFECTEDBYSILENCE
                range      1, 4
                radius     4
                power      0
                
                entry      DISPEL       ; DISPEL 1
                mpCost     5
                animation  DEBUFF1
                properties TYPE_SUPPORT|AFFECTEDBYSILENCE
                range      1, 2
                radius     1
                power      0
                
                entry      DISPEL|LV2       ; DISPEL 2
                mpCost     8
                animation  DEBUFF1
                properties TYPE_SUPPORT|AFFECTEDBYSILENCE
                range      1, 3
                radius     2
                power      0
                
                entry      DISPEL|LV3       ; DISPEL 3
                mpCost     12
                animation  DEBUFF1
                properties TYPE_SUPPORT|AFFECTEDBYSILENCE
                range      1, 4
                radius     2
                power      0
                
                entry      DISPEL|LV4       ; DISPEL 4
                mpCost     15
                animation  DEBUFF1
                properties TYPE_SUPPORT|AFFECTEDBYSILENCE
                range      1, 5
                radius     3
                power      0
                
                entry      MUDDLE       ; MUDDLE 1
                mpCost     6
                animation  DEBUFF1
                properties TYPE_SUPPORT|AFFECTEDBYSILENCE
                range      1, 2
                radius     1
                power      0
                
                entry      MUDDLE|LV2   ; MUDDLE 2
                mpCost     11
                animation  DEBUFF1
                properties TYPE_SUPPORT|AFFECTEDBYSILENCE
                range      1, 2
                radius     2
                power      0
                
                entry      MUDDLE|LV3       ; MUDDLE 3
                mpCost     18
                animation  DEBUFF1
                properties TYPE_SUPPORT|AFFECTEDBYSILENCE
                range      1, 3
                radius     2
                power      0
                
                entry      MUDDLE|LV4   ; MUDDLE 4
                mpCost     25
                animation  DEBUFF1
                properties TYPE_SUPPORT|AFFECTEDBYSILENCE
                range      1, 3
                radius     3
                power      0
                
                entry      DESOUL       ; DESOUL 1
                mpCost     8
                animation  DESOUL
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     0
                power      0
                
                entry      DESOUL|LV2   ; DESOUL 2
                mpCost     13
                animation  DESOUL|VARIATION2
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     1
                power      0
                
                entry      DESOUL|LV3       ; DESOUL 1
                mpCost     20
                animation  DESOUL
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     2
                power      0
                
                entry      DESOUL|LV4   ; DESOUL 2
                mpCost     27
                animation  DESOUL|VARIATION2
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     3
                power      0
                
                entry      SLEEP        ; SLEEP 1
                mpCost     4
                animation  DEBUFF1
                properties TYPE_SUPPORT|AFFECTEDBYSILENCE
                range      1, 2
                radius     1
                power      0
                
                entry      SLEEP|LV2        ; SLEEP 2
                mpCost     8
                animation  DEBUFF1
                properties TYPE_SUPPORT|AFFECTEDBYSILENCE
                range      1, 2
                radius     2
                power      0
                
                entry      SLEEP|LV3        ; SLEEP 3
                mpCost     12
                animation  DEBUFF1
                properties TYPE_SUPPORT|AFFECTEDBYSILENCE
                range      1, 2
                radius     3
                power      0
                
                entry      SLEEP|LV4        ; SLEEP 4
                mpCost     16
                animation  DEBUFF1
                properties TYPE_SUPPORT|AFFECTEDBYSILENCE
                range      1, 2
                radius     4
                power      0
                
                entry      SPOIT        ; SPOIT 1
                mpCost     0
                animation  ABSORB
                properties TYPE_SPECIAL
                range      1, 2
                radius     0
                power      10
                
                entry      SPOIT|LV2        ; SPOIT 2
                mpCost     0
                animation  ABSORB
                properties TYPE_SPECIAL
                range      1, 2
                radius     0
                power      20
                
                entry      SPOIT|LV3        ; SPOIT 3
                mpCost     0
                animation  ABSORB
                properties TYPE_SPECIAL
                range      1, 2
                radius     0
                power      35
                
                entry      SPOIT|LV4        ; SPOIT 4
                mpCost     0
                animation  ABSORB
                properties TYPE_SPECIAL
                range      1, 2
                radius     0
                power      50
                
                entry      HEALIN       ; HEALIN 1
                mpCost     0
                animation  HEALING_FAIRY
                properties TYPE_HEAL|TARGET_TEAMMATES
                range      0, 1
                radius     0
                power      10
                
                entry      HEALIN|LV2   ; HEALIN 2
                mpCost     0
                animation  HEALING_FAIRY|VARIATION2
                properties TYPE_HEAL|TARGET_TEAMMATES
                range      0, 1
                radius     0
                power      20
                
                entry      HEALIN|LV3   ; HEALIN 3
                mpCost     0
                animation  HEALING_FAIRY|VARIATION3
                properties TYPE_HEAL|TARGET_TEAMMATES
                range      0, 1
                radius     0
                power      30
                
                entry      HEALIN|LV4   ; HEALIN 4
                mpCost     0
                animation  HEALING_FAIRY|VARIATION3
                properties TYPE_HEAL|TARGET_TEAMMATES
                range      0, 1
                radius     0
                power      50
                
                entry      POWDER       ; POWDER 1
                mpCost     0
                animation  NONE
                properties TYPE_HEAL|TARGET_TEAMMATES
                range      0, 1
                radius     0
                power      0
                
                entry      POWDER|LV2       ; POWDER 2
                mpCost     0
                animation  NONE
                properties TYPE_HEAL|TARGET_TEAMMATES
                range      0, 1
                radius     0
                power      0
                
                entry      POWDER|LV3       ; POWDER 3
                mpCost     0
                animation  NONE
                properties TYPE_HEAL|TARGET_TEAMMATES
                range      0, 1
                radius     0
                power      0
                
                entry      POWDER|LV4       ; POWDER 4
                mpCost     0
                animation  NONE
                properties TYPE_HEAL|TARGET_TEAMMATES
                range      0, 1
                radius     0
                power      0
                
                entry      G_TEAR       ; G.TEAR 1
                mpCost     0
                animation  NONE
                properties TYPE_HEAL|TARGET_TEAMMATES
                range      0, 1
                radius     0
                power      10
                
                entry      G_TEAR|LV2   ; G.TEAR 2
                mpCost     0
                animation  NONE
                properties TYPE_HEAL|TARGET_TEAMMATES
                range      0, 1
                radius     0
                power      20
                
                entry      G_TEAR|LV3   ; G.TEAR 3
                mpCost     0
                animation  NONE
                properties TYPE_HEAL|TARGET_TEAMMATES
                range      0, 1
                radius     0
                power      30
                
                entry      G_TEAR|LV4   ; G.TEAR 4
                mpCost     0
                animation  NONE
                properties TYPE_HEAL|TARGET_TEAMMATES
                range      0, 1
                radius     0
                power      50
                
                entry      SHINE        ; SHINE 1
                mpCost     0
                animation  NONE
                properties TYPE_HEAL|TARGET_TEAMMATES
                range      0, 0
                radius     0
                power      255
                
                entry      SHINE|LV2        ; SHINE 2
                mpCost     0
                animation  NONE
                properties TYPE_HEAL|TARGET_TEAMMATES
                range      0, 0
                radius     0
                power      255
                
                entry      SHINE|LV3        ; SHINE 3
                mpCost     0
                animation  NONE
                properties TYPE_HEAL|TARGET_TEAMMATES
                range      0, 0
                radius     0
                power      255
                
                entry      SHINE|LV4        ; SHINE 4
                mpCost     0
                animation  NONE
                properties TYPE_HEAL|TARGET_TEAMMATES
                range      0, 0
                radius     0
                power      255
                
                entry      BLAZE        ; BLAZE 1
                mpCost     2
                animation  BLAZE
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     0
                power      6
                
                entry      BLAZE|LV2    ; BLAZE 2
                mpCost     6
                animation  BLAZE|VARIATION2
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     1
                power      10
                
                entry      BLAZE|LV3    ; BLAZE 3
                mpCost     10
                animation  BLAZE|VARIATION3
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     1
                power      15
                
                entry      BLAZE|LV4    ; BLAZE 4
                mpCost     10
                animation  BLAZE|VARIATION4
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     0
                power      40
                
                entry      FREEZE       ; FREEZE 1
                mpCost     3
                animation  FREEZE
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     0
                power      10
                
                entry      FREEZE|LV2   ; FREEZE 2
                mpCost     7
                animation  FREEZE|VARIATION2
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     1
                power      12
                
                entry      FREEZE|LV3   ; FREEZE 3
                mpCost     12
                animation  FREEZE|VARIATION3
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 3
                radius     1
                power      18
                
                entry      FREEZE|LV4   ; FREEZE 4
                mpCost     12
                animation  FREEZE|VARIATION4
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 3
                radius     0
                power      50
                
                entry      BOLT         ; BOLT 1
                mpCost     8
                animation  BOLT
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     1
                power      14
                
                entry      BOLT|LV2     ; BOLT 2
                mpCost     15
                animation  BOLT|VARIATION2
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 3
                radius     2
                power      16
                
                entry      BOLT|LV3     ; BOLT 3
                mpCost     20
                animation  BOLT|VARIATION3
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 3
                radius     2
                power      25
                
                entry      BOLT|LV4     ; BOLT 4
                mpCost     20
                animation  BOLT|VARIATION4
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 3
                radius     0
                power      60
                
                entry      BLAST        ; BLAST 1
                mpCost     2
                animation  BLAST
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 1
                radius     0
                power      6
                
                entry      BLAST|LV2    ; BLAST 2
                mpCost     5
                animation  BLAST|VARIATION2
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     1
                power      8
                
                entry      BLAST|LV3    ; BLAST 3
                mpCost     8
                animation  BLAST|VARIATION3
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     1
                power      12
                
                entry      BLAST|LV4    ; BLAST 4
                mpCost     8
                animation  BLAST|VARIATION4
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     0
                power      30
                
                entry      WIZ5        ; WIZ5 1
                mpCost     2
                animation  BLAST
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 1
                radius     0
                power      6
                
                entry      WIZ5|LV2    ; WIZ5 2
                mpCost     5
                animation  BLAST|VARIATION2
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     1
                power      8
                
                entry      WIZ5|LV3    ; WIZ5 3
                mpCost     8
                animation  BLAST|VARIATION3
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     1
                power      12
                
                entry      WIZ5|LV4    ; WIZ5 4
                mpCost     8
                animation  BLAST|VARIATION4
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     0
                power      30
                
                entry      WIZ6        ; WIZ6 1
                mpCost     2
                animation  BLAST
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 1
                radius     0
                power      6
                
                entry      WIZ6|LV2    ; WIZ6 2
                mpCost     5
                animation  BLAST|VARIATION2
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     1
                power      8
                
                entry      WIZ6|LV3    ; WIZ6 3
                mpCost     8
                animation  BLAST|VARIATION3
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     1
                power      12
                
                entry      WIZ6|LV4    ; WIZ6 4
                mpCost     8
                animation  BLAST|VARIATION4
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     0
                power      30
                
                entry      KATON        ; KATON 1
                mpCost     6
                animation  BLAZE|VARIATION2
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     1
                power      12
                
                entry      KATON|LV2    ; KATON 2
                mpCost     10
                animation  BLAZE|VARIATION3
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     1
                power      16
                
                entry      KATON|LV3    ; KATON 3
                mpCost     12
                animation  BLAZE|VARIATION4
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     0
                power      42
                
                entry      KATON|LV4    ; KATON 4
                mpCost     25
                animation  BLAZE|VARIATION4
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 3
                radius     1
                power      42
                
                entry      NINJ2        ; NINJ2 1
                mpCost     6
                animation  BLAZE|VARIATION2
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     1
                power      12
                
                entry      NINJ2|LV2    ; NINJ2 2
                mpCost     10
                animation  BLAZE|VARIATION3
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     1
                power      16
                
                entry      NINJ2|LV3    ; NINJ2 3
                mpCost     12
                animation  BLAZE|VARIATION4
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     0
                power      42
                
                entry      NINJ2|LV4    ; NINJ2 4
                mpCost     25
                animation  BLAZE|VARIATION4
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 3
                radius     1
                power      42
                
                entry      RAIJIN       ; RAIJIN 1
                mpCost     15
                animation  BOLT|VARIATION2
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 3
                radius     2
                power      18
                
                entry      RAIJIN|LV2   ; RAIJIN 2
                mpCost     18
                animation  BOLT|VARIATION3
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 3
                radius     2
                power      26
                
                entry      RAIJIN|LV3   ; RAIJIN 3
                mpCost     20
                animation  BOLT|VARIATION4
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 3
                radius     0
                power      58
                
                entry      RAIJIN|LV4   ; RAIJIN 4
                mpCost     32
                animation  BOLT|VARIATION4
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 3
                radius     1
                power      58
                
                entry      NINJ4       ; NINJ4 1
                mpCost     15
                animation  BOLT|VARIATION2
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 3
                radius     2
                power      18
                
                entry      NINJ4|LV2   ; NINJ4 2
                mpCost     18
                animation  BOLT|VARIATION3
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 3
                radius     2
                power      26
                
                entry      NINJ4|LV3   ; NINJ4 3
                mpCost     20
                animation  BOLT|VARIATION4
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 3
                radius     0
                power      58
                
                entry      NINJ4|LV4   ; NINJ4 4
                mpCost     32
                animation  BOLT|VARIATION4
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 3
                radius     1
                power      58
                
                entry      NINJ5       ; NINJ5 1
                mpCost     15
                animation  BOLT|VARIATION2
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 3
                radius     2
                power      18
                
                entry      NINJ5|LV2   ; NINJ5 2
                mpCost     18
                animation  BOLT|VARIATION3
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 3
                radius     2
                power      26
                
                entry      NINJ5|LV3   ; NINJ5 3
                mpCost     20
                animation  BOLT|VARIATION4
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 3
                radius     0
                power      58
                
                entry      NINJ5|LV4   ; NINJ5 4
                mpCost     32
                animation  BOLT|VARIATION4
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 3
                radius     1
                power      58
                
                entry      NINJ6       ; NINJ6 1
                mpCost     15
                animation  BOLT|VARIATION2
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 3
                radius     2
                power      18
                
                entry      NINJ6|LV2   ; NINJ6 2
                mpCost     18
                animation  BOLT|VARIATION3
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 3
                radius     2
                power      26
                
                entry      NINJ6|LV3   ; NINJ6 3
                mpCost     20
                animation  BOLT|VARIATION4
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 3
                radius     0
                power      58
                
                entry      NINJ6|LV4   ; NINJ6 4
                mpCost     32
                animation  BOLT|VARIATION4
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 3
                radius     1
                power      58
                
                entry      DAO          ; DAO 1
                mpCost     8
                animation  DAO
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     1
                power      18
                
                entry      DAO|LV2      ; DAO 2
                mpCost     15
                animation  DAO|VARIATION2
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     1
                power      40
                
                entry      DAO|LV3          ; DAO 3
                mpCost     8
                animation  DAO
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     1
                power      18
                
                entry      DAO|LV4      ; DAO 4
                mpCost     15
                animation  DAO|VARIATION2
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     1
                power      40
                
                entry      APOLLO       ; APOLLO 1
                mpCost     10
                animation  APOLLO
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     1
                power      23
                
                entry      APOLLO|LV2   ; APOLLO 2
                mpCost     17
                animation  APOLLO|VARIATION2
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     1
                power      50
                
                entry      APOLLO|LV3       ; APOLLO 3
                mpCost     10
                animation  APOLLO
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     1
                power      23
                
                entry      APOLLO|LV4   ; APOLLO 4
                mpCost     17
                animation  APOLLO|VARIATION2
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     1
                power      50
                
                entry      NEPTUN       ; NEPTUN 1
                mpCost     12
                animation  NEPTUN
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     1
                power      30
                
                entry      NEPTUN|LV2   ; NEPTUN 2
                mpCost     19
                animation  NEPTUN|VARIATION2
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     1
                power      61
                
                entry      NEPTUN|LV3       ; NEPTUN 3
                mpCost     12
                animation  NEPTUN
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     1
                power      30
                
                entry      NEPTUN|LV4   ; NEPTUN 4
                mpCost     19
                animation  NEPTUN|VARIATION2
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     1
                power      61
                
                entry      ATLAS        ; ATLAS 1
                mpCost     14
                animation  ATLAS
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     1
                power      35
                
                entry      ATLAS|LV2    ; ATLAS 2
                mpCost     23
                animation  ATLAS|VARIATION2
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 3
                radius     1
                power      73
                
                entry      ATLAS|LV3        ; ATLAS 3
                mpCost     14
                animation  ATLAS
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 2
                radius     1
                power      35
                
                entry      ATLAS|LV4    ; ATLAS 4
                mpCost     23
                animation  ATLAS|VARIATION2
                properties TYPE_ATTACK|AFFECTEDBYSILENCE
                range      1, 3
                radius     1
                power      73
                
                entry      FLAME        ; FLAME 1
                mpCost     0
                animation  FLAME_BREATH
                properties TYPE_ATTACK
                range      1, 1
                radius     0
                power      16
                
                entry      FLAME|LV2    ; FLAME 2
                mpCost     0
                animation  FLAME_BREATH|VARIATION2
                properties TYPE_ATTACK
                range      1, 1
                radius     0
                power      24
                
                entry      FLAME|LV3    ; FLAME 3
                mpCost     0
                animation  FLAME_BREATH|VARIATION3
                properties TYPE_ATTACK
                range      1, 1
                radius     0
                power      34
                
                entry      FLAME|LV4    ; FLAME 4
                mpCost     0
                animation  FLAME_BREATH|VARIATION3
                properties TYPE_ATTACK
                range      1, 1
                radius     0
                power      34
                
                entry      SNOW         ; SNOW 1
                mpCost     0
                animation  SNOW_BREATH|VARIATION2
                properties TYPE_ATTACK
                range      1, 1
                radius     0
                power      20
                
                entry      SNOW|LV2     ; SNOW 2
                mpCost     0
                animation  SNOW_BREATH|VARIATION3
                properties TYPE_ATTACK
                range      1, 1
                radius     0
                power      28
                
                entry      SNOW|LV3     ; SNOW 3
                mpCost     0
                animation  SNOW_BREATH|VARIATION4
                properties TYPE_ATTACK
                range      1, 1
                radius     0
                power      35
                
                entry      SNOW|LV4     ; SNOW 4
                mpCost     0
                animation  SNOW_BREATH|VARIATION4
                properties TYPE_ATTACK
                range      1, 1
                radius     0
                power      35
                
                entry      DEMON        ; DEMON 1
                mpCost     0
                animation  DEMON_BREATH
                properties TYPE_ATTACK
                range      1, 2
                radius     1
                power      34
                
                entry      DEMON|LV2    ; DEMON 2
                mpCost     0
                animation  DEMON_BREATH|VARIATION2
                properties TYPE_ATTACK
                range      1, 3
                radius     2
                power      38
                
                entry      DEMON|LV3        ; DEMON 3
                mpCost     0
                animation  DEMON_BREATH
                properties TYPE_ATTACK
                range      1, 2
                radius     1
                power      34
                
                entry      DEMON|LV4    ; DEMON 4
                mpCost     0
                animation  DEMON_BREATH|VARIATION2
                properties TYPE_ATTACK
                range      1, 3
                radius     2
                power      38
                
                entry      AQUA         ; AQUA 1
                mpCost     0
                animation  BUBBLE_BREATH
                properties TYPE_ATTACK
                range      1, 1
                radius     0
                power      9
                
                entry      AQUA|LV2     ; AQUA 2
                mpCost     0
                animation  BUBBLE_BREATH|VARIATION2
                properties TYPE_ATTACK
                range      1, 1
                radius     0
                power      15
                
                entry      AQUA|LV3         ; AQUA 3
                mpCost     0
                animation  BUBBLE_BREATH
                properties TYPE_ATTACK
                range      1, 3
                radius     0
                power      13
                
                entry      AQUA|LV4     ; AQUA 4
                mpCost     0
                animation  BUBBLE_BREATH|VARIATION2
                properties TYPE_ATTACK
                range      1, 3
                radius     0
                power      21
                
                entry      KIWI         ; KIWI 1
                mpCost     0
                animation  FLAME_BREATH|VARIATION3
                properties TYPE_ATTACK
                range      1, 1
                radius     0
                power      28
                
                entry      KIWI|LV2     ; KIWI 2
                mpCost     0
                animation  FLAME_BREATH|VARIATION3
                properties TYPE_ATTACK
                range      1, 1
                radius     0
                power      36
                
                entry      KIWI|LV3     ; KIWI 3
                mpCost     0
                animation  FLAME_BREATH|VARIATION3
                properties TYPE_ATTACK
                range      1, 1
                radius     0
                power      45
                
                entry      KIWI|LV4     ; KIWI 4
                mpCost     0
                animation  FLAME_BREATH|VARIATION3
                properties TYPE_ATTACK
                range      1, 1
                radius     0
                power      58
                
                entry      ODDEYE       ; ODDEYE 1
                mpCost     0
                animation  ODD_EYE_BEAM
                properties TYPE_ATTACK
                range      1, 3
                radius     1
                power      20
                
                entry      ODDEYE|LV2       ; ODDEYE 1
                mpCost     0
                animation  ODD_EYE_BEAM
                properties TYPE_ATTACK
                range      1, 3
                radius     1
                power      27
                
                entry      ODDEYE|LV3       ; ODDEYE 1
                mpCost     0
                animation  ODD_EYE_BEAM
                properties TYPE_ATTACK
                range      1, 4
                radius     2
                power      27
                
                entry      ODDEYE|LV4       ; ODDEYE 1
                mpCost     0
                animation  ODD_EYE_BEAM
                properties TYPE_ATTACK
                range      1, 4
                radius     2
                power      35
                
                entry      38
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      38|LV2
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      38|LV3
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      38|LV4
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      39
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      39|LV2
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      39|LV3
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      39|LV4
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      40
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      40|LV2
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      40|LV3
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      40|LV4
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      41
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      41|LV2
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      41|LV3
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      41|LV4
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      42
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      42|LV2
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      42|LV3
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      42|LV4
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      43
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      43|LV2
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      43|LV3
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      43|LV4
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      44
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      44|LV2
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      44|LV3
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      44|LV4
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      45
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      45|LV2
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      45|LV3
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      45|LV4
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      46
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      46|LV2
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      46|LV3
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      46|LV4
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      47
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      47|LV2
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      47|LV3
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      47|LV4
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      FBALL        ; F.BALL 1
                mpCost     0
                animation  BLAZE|VARIATION3
                properties TYPE_ATTACK
                range      1, 1
                radius     0
                power      20
                
                entry      FBALL|LV2        ; F.BALL 1
                mpCost     0
                animation  BLAZE|VARIATION3
                properties TYPE_ATTACK
                range      1, 1
                radius     0
                power      25
                
                entry      FBALL|LV3        ; F.BALL 1
                mpCost     0
                animation  BLAZE|VARIATION3
                properties TYPE_ATTACK
                range      1, 1
                radius     0
                power      32
                
                entry      FBALL|LV4        ; F.BALL 1
                mpCost     0
                animation  BLAZE|VARIATION3
                properties TYPE_ATTACK
                range      1, 1
                radius     0
                power      45
                
                entry      BREZAD       ; BREZAD 1
                mpCost     0
                animation  FREEZE|VARIATION3
                properties TYPE_ATTACK
                range      1, 1
                radius     0
                power      33
                
                entry      BREZAD|LV2       ; BREZAD 1
                mpCost     0
                animation  FREEZE|VARIATION3
                properties TYPE_ATTACK
                range      1, 1
                radius     0
                power      39
                
                entry      BREZAD|LV3       ; BREZAD 1
                mpCost     0
                animation  FREEZE|VARIATION3
                properties TYPE_ATTACK
                range      1, 1
                radius     0
                power      48
                
                entry      BREZAD|LV4       ; BREZAD 1
                mpCost     0
                animation  FREEZE|VARIATION3
                properties TYPE_ATTACK
                range      1, 1
                radius     0
                power      64
                
                entry      THUNDR       ; THUNDR 1
                mpCost     0
                animation  BOLT|VARIATION3
                properties TYPE_ATTACK
                range      1, 1
                radius     0
                power      50
                
                entry      THUNDR|LV2       ; THUNDR 1
                mpCost     0
                animation  BOLT|VARIATION3
                properties TYPE_ATTACK
                range      1, 1
                radius     0
                power      62
                
                entry      THUNDR|LV3       ; THUNDR 1
                mpCost     0
                animation  BOLT|VARIATION3
                properties TYPE_ATTACK
                range      1, 1
                radius     0
                power      78
                
                entry      THUNDR|LV4       ; THUNDR 1
                mpCost     0
                animation  BOLT|VARIATION3
                properties TYPE_ATTACK
                range      1, 1
                radius     0
                power      100
                
                entry      51
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      51|LV2
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      51|LV3
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      51|LV4
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      52
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      52|LV2
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      52|LV3
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      52|LV4
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      53
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      53|LV2
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      53|LV3
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      53|LV4
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      54
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      54|LV2
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      54|LV3
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      54|LV4
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      55
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      55|LV2
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      55|LV3
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      55|LV4
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      56
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      56|LV2
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      56|LV3
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      56|LV4
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      57
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      57|LV2
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      57|LV3
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      57|LV4
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      58
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      58|LV2
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      58|LV3
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      58|LV4
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      59
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      59|LV2
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      59|LV3
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      59|LV4
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      60
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      60|LV2
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      60|LV3
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      60|LV4
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      61
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      61|LV2
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      61|LV3
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      61|LV4
                mpCost     0
                animation  NONE
                properties TYPE_ATTACK
                range      0, 0
                radius     0
                power      0
                
                entry      B_ROCK       ; B.ROCK 1
                mpCost     0
                animation  BURST_ROCK_EXPLOSION
                properties TYPE_ATTACK
                range      0, 0
                radius     2
                power      0
                
                entry      B_ROCK|LV2
                mpCost     0
                animation  BURST_ROCK_EXPLOSION
                properties TYPE_ATTACK
                range      0, 0
                radius     2
                power      0
                
                entry      B_ROCK|LV3
                mpCost     0
                animation  BURST_ROCK_EXPLOSION
                properties TYPE_ATTACK
                range      0, 0
                radius     3
                power      0
                
                entry      B_ROCK|LV4
                mpCost     0
                animation  BURST_ROCK_EXPLOSION
                properties TYPE_ATTACK
                range      0, 0
                radius     3
                power      0
