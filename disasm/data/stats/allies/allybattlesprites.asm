
; ASM FILE data\stats\allies\allybattlesprites.asm :
; 0x1F806..0x1F914 : Ally battlesprites table
table_AllyBattlesprites:
                
; Syntax        allyBattleSprAndPlt [CLASS_]enum, [ALLYBATTLESPRITE_]enum, palette
;
; Notes: 3 entries per ally, 3 bytes per entry.
;        Palette range varies depending on the sprite.
;        Constant names ("enums"), shorthands (defined by macro), and numerical indexes are interchangeable.
                
; 0: BOWIE
                allyBattleSprAndPlt SDMN, SF2_SDMN, 0
                allyBattleSprAndPlt HERO, SF2_HERO, 0
                allyBattleSprAndPlt NONE, NONE, 0
                
; 1: SARAH
                allyBattleSprAndPlt PRST, SF2_PRST, 0
                allyBattleSprAndPlt VICR, SF2_VICR, 1
                allyBattleSprAndPlt MMNK, SF2_MMNK, 1
                
; 2: CHESTER
                allyBattleSprAndPlt KNTE, SF2_KNTE, 0
                allyBattleSprAndPlt PLDN, SF2_PLDN, 0
                allyBattleSprAndPlt PGNT, SF2_PGNT, 0
                
; 3: JAHA
                allyBattleSprAndPlt WARR, SF2_WARR, 0
                allyBattleSprAndPlt GLDT, SF2_GLDT, 1
                allyBattleSprAndPlt BRN, SF2_BRN, 1
                
; 4: KAZIN
                allyBattleSprAndPlt MAGE, SF2_MAGE, 0
                allyBattleSprAndPlt WIZ, SF2_WIZ, 2
                allyBattleSprAndPlt SORC, SF2_SORC, 0
                
; 5: SLADE
                allyBattleSprAndPlt THIF, SF2_THIF, 0
                allyBattleSprAndPlt NINJ, SF2_NINJ, 0
                allyBattleSprAndPlt NONE, NONE, 0
                
; 6: KIWI
                allyBattleSprAndPlt TORT, SF2_TORT, 0
                allyBattleSprAndPlt MNST, SF2_MNST, 0
                allyBattleSprAndPlt NONE, NONE, 0
                
; 7: PETER
                allyBattleSprAndPlt PHNK, SF2_PHNK, 0
                allyBattleSprAndPlt PHNX, SF2_PHNX, 0
                allyBattleSprAndPlt NONE, NONE, 0
                
; 8: MAY
                allyBattleSprAndPlt RNGR, SF2_RNGR, 0
                allyBattleSprAndPlt BWNT, SF2_BWNT, 0
                allyBattleSprAndPlt NONE, NONE, 0
                
; 9: GERHALT
                allyBattleSprAndPlt WFMN, SF2_WFMN, 0
                allyBattleSprAndPlt WFBR, SF2_WFBR, 0
                allyBattleSprAndPlt NONE, NONE, 0
                
; 10: LUKE
                allyBattleSprAndPlt BDMN, SF2_BDMN, 0
                allyBattleSprAndPlt BDBT, SF2_BDBT, 0
                allyBattleSprAndPlt NONE, NONE, 0
                
; 11: ROHDE
                allyBattleSprAndPlt BRGN, SF2_BRGN, 1
                allyBattleSprAndPlt NONE, NONE, 0
                allyBattleSprAndPlt NONE, NONE, 0
                
; 12: RICK
                allyBattleSprAndPlt KNTE, SF2_KNTE, 1
                allyBattleSprAndPlt PLDN, SF2_PLDN, 1
                allyBattleSprAndPlt PGNT, SF2_PGNT, 1
                
; 13: ELRIC
                allyBattleSprAndPlt ACHR, SF2_ACHR, 1
                allyBattleSprAndPlt SNIP, SF2_SNIP, 0
                allyBattleSprAndPlt BRGN, SF2_BRGN, 0
                
; 14: ERIC
                allyBattleSprAndPlt KNTE, SF2_KNTE, 2
                allyBattleSprAndPlt PLDN, SF2_PLDN, 3
                allyBattleSprAndPlt PGNT, SF2_PGNT, 2
                
; 15: KARNA
                allyBattleSprAndPlt PRST, SF2_PRST, 1
                allyBattleSprAndPlt VICR, SF2_VICR, 2
                allyBattleSprAndPlt MMNK, SF2_MMNK, 2
                
; 16: RANDOLF
                allyBattleSprAndPlt WARR, SF2_WARR, 1
                allyBattleSprAndPlt GLDT, SF2_GLDT, 2
                allyBattleSprAndPlt BRN, SF2_BRN, 2
                
; 17: TYRIN
                allyBattleSprAndPlt MAGE, SF2_MAGE, 1
                allyBattleSprAndPlt WIZ, SF2_WIZ, 1
                allyBattleSprAndPlt SORC, SF2_SORC, 1
                
; 18: JANET
                allyBattleSprAndPlt ACHR, SF2_ACHR, 0
                allyBattleSprAndPlt SNIP, SF2_SNIP, 1
                allyBattleSprAndPlt BRGN, SF2_BRGN, 2
                
; 19: HIGINS
                allyBattleSprAndPlt PLDN, SF2_PLDN, 2
                allyBattleSprAndPlt NONE, NONE, 0
                allyBattleSprAndPlt NONE, NONE, 0
                
; 20: SKREECH
                allyBattleSprAndPlt BDBT, SF2_BDBT, 1
                allyBattleSprAndPlt NONE, NONE, 0
                allyBattleSprAndPlt NONE, NONE, 0
                
; 21: TAYA
                allyBattleSprAndPlt SORC, SF2_SRCS, 0
                allyBattleSprAndPlt NONE, NONE, 0
                allyBattleSprAndPlt NONE, NONE, 0
                
; 22: FRAYJA
                allyBattleSprAndPlt VICR, SF2_VICR, 0
                allyBattleSprAndPlt NONE, NONE, 0
                allyBattleSprAndPlt NONE, NONE, 0
                
; 23: JARO
                allyBattleSprAndPlt PGNT, SF2_PGNT, 3
                allyBattleSprAndPlt NONE, NONE, 0
                allyBattleSprAndPlt NONE, NONE, 0
                
; 24: GYAN
                allyBattleSprAndPlt GLDT, SF2_GLDT, 0
                allyBattleSprAndPlt NONE, NONE, 0
                allyBattleSprAndPlt NONE, NONE, 0
                
; 25: SHEELA
                allyBattleSprAndPlt MMNK, SF2_MMNK, 0
                allyBattleSprAndPlt NONE, NONE, 0
                allyBattleSprAndPlt NONE, NONE, 0
                
; 26: ZYNK
                allyBattleSprAndPlt RBT, SF2_RBT, 0
                allyBattleSprAndPlt NONE, NONE, 0
                allyBattleSprAndPlt NONE, NONE, 0
                
; 27: CHAZ
                allyBattleSprAndPlt WIZ, SF2_WIZ, 0
                allyBattleSprAndPlt NONE, NONE, 0
                allyBattleSprAndPlt NONE, NONE, 0
                
; 28: LEMON
                allyBattleSprAndPlt RDBN, SF2_BRN, 0
                allyBattleSprAndPlt NONE, NONE, 0
                allyBattleSprAndPlt NONE, NONE, 0
                
; 29: CLAUDE
                allyBattleSprAndPlt GLM, SF2_GLM, 0
                allyBattleSprAndPlt NONE, NONE, 0
                allyBattleSprAndPlt NONE, NONE, 0
                
                ; Additional entries to be defined with force members expansion patch
            if (STANDARD_BUILD&EXPANDED_FORCE_MEMBERS=1)
; 30: 
                allyBattleSprAndPlt RDBN, SF2_SDMN, 0
                allyBattleSprAndPlt NONE, NONE, 0
                allyBattleSprAndPlt NONE, NONE, 0
                
; 31: 
                allyBattleSprAndPlt RDBN, SF2_SDMN, 0
                allyBattleSprAndPlt NONE, NONE, 0
                allyBattleSprAndPlt NONE, NONE, 0
                
            endif
