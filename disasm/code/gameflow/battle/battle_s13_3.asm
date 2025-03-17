
; ASM FILE code\gameflow\battle\battle_s13_3.asm :
; 0x1B1272..0x1B1A66 : Battle init, terrain, AI stuff to split more properly

; =============== S U B R O U T I N E =======================================


InitializeAllAlliesBattlePositions:
                
                movem.l d0-a6,-(sp)
                moveq   #COMBATANT_ALLIES_START,d0
                moveq   #COMBATANT_ALLIES_COUNTER,d7
                move.w  #-1,d1
@ResetPositions_Loop:
                
                jsr     SetCombatantX
                addq.b  #1,d0
                dbf     d7,@ResetPositions_Loop
                
                jsr     UpdateForce
                lea     ((BATTLE_PARTY_MEMBERS-$1000000)).w,a1
                move.w  ((BATTLE_PARTY_MEMBERS_NUMBER-$1000000)).w,d6
                subq.w  #1,d6
                moveq   #BATTLESPRITESET_SUBSECTION_SIZES,d1
                bsr.w   GetBattleSpritesetSubsection
                clr.w   d7
                move.b  (a0),d7
                subq.w  #1,d7
                bcs.w   @Done
                lea     BATTLESPRITESET_OFFSET_ALLY_ENTRIES(a0),a0
@InitPositions_Loop:
                
                move.b  (a1),d0         ; D0 = ally index from battle party members table
                jsr     GetCurrentHp
                tst.w   d1
                beq.s   @Skip           ; skip positioning if ally is dead
                clr.w   d1
                move.b  BATTLESPRITESET_ENTITYOFFSET_STARTING_X(a0),d1
                jsr     SetCombatantX
                move.b  BATTLESPRITESET_ENTITYOFFSET_STARTING_Y(a0),d1
                jsr     SetCombatantY
                lea     NEXT_BATTLESPRITESET_ENTITY(a0),a0
@Skip:
                
                addq.l  #1,a1
                subq.w  #1,d6
                bcs.w   @Done
                dbf     d7,@InitPositions_Loop
@LeaveBattleParty_Loop:
                
                move.b  (a1)+,d0
                jsr     LeaveBattleParty
                dbf     d6,@LeaveBattleParty_Loop
@Done:
                
                movem.l (sp)+,d0-a6
                rts

    ; End of function InitializeAllAlliesBattlePositions


; =============== S U B R O U T I N E =======================================


InitializeAllEnemiesBattlePositions:
                
                movem.l d0/d7,-(sp)
                move.b  #COMBATANT_ENEMIES_START,d0
                moveq   #COMBATANT_ENEMIES_COUNTER,d7
@InitPositions_Loop:
                
                bsr.w   InitializeEnemyBattlePosition
                addq.b  #1,d0
                dbf     d7,@InitPositions_Loop
                
                movem.l (sp)+,d0/d7
                rts

    ; End of function InitializeAllEnemiesBattlePositions


; =============== S U B R O U T I N E =======================================

; In: d0.b = combatant index


InitializeEnemyBattlePosition:
                
                movem.l d0-a6,-(sp)
                loadSavedDataAddress CURRENT_BATTLE, a0
                move.b  (a0),d1
                cmpi.b  #BATTLE_TO_MOUN,d1
                bne.s   loc_1B132E
                cmpi.b  #$8F,d0
                bne.s   loc_1B132E
                bsr.w   HasJaroJoinedTheForce ; HARDCODED check for Jaro in battle 32
                tst.w   d1
                beq.s   loc_1B132E
                bra.w   loc_1B139A      ; skip positioning enemy 15 in battle 32 if Jaro has joined the Force
loc_1B132E:
                
                moveq   #BATTLESPRITESET_SUBSECTION_ENEMIES,d1
                bsr.w   GetBattleSpritesetSubsection
                move.w  d1,d2
                bset    #COMBATANT_BIT_ENEMY,d2
                clr.w   d1
                cmp.b   d2,d0
                bcc.w   loc_1B1368
                move.b  d0,d1
                andi.l  #COMBATANT_MASK_INDEX_AND_SORT_BIT,d1
                mulu.w  #BATTLESPRITESET_ENTITY_ENTRY_SIZE,d1
                adda.w  d1,a0
                move.w  BATTLESPRITESET_ENTITYOFFSET_AI_ACTIVATION_FLAG(a0),d1
                andi.w  #BYTE_LOWER_NIBBLE_MASK,d1
                cmpi.w  #2,d1
                bge.w   loc_1B1368
                bsr.w   InitializeEnemyStats
                bra.w   loc_1B139A
loc_1B1368:
                
                lsl.w   #BYTE_SHIFT_COUNT,d1
                jsr     SetActivationBitfield
                clr.w   d1
                jsr     SetMaxHp
                jsr     SetCurrentHp
                move.w  #-1,d1
                jsr     SetCombatantX
                clr.w   d1
                clr.w   d2
                move.b  BATTLESPRITESET_ENTITYOFFSET_AI_TRIGGER_REGION(a0),d1
                move.b  BATTLESPRITESET_ENTITYOFFSET_9(a0),d2
                jsr     SetAiRegion
loc_1B139A:
                
                movem.l (sp)+,d0-a6
                rts

    ; End of function InitializeEnemyBattlePosition


; =============== S U B R O U T I N E =======================================

; In: d0.w = combatant index
;     d1.w = AI activation flag
; 
; Out: CCR carry-bit clear if respawn


ResetEnemyStatsForRespawn:
                
                movem.l d0-a6,-(sp)
                move.w  d1,d2
                moveq   #BATTLESPRITESET_SUBSECTION_ENEMIES,d1
                bsr.w   GetBattleSpritesetSubsection
                bset    #7,d1
                cmp.b   d1,d0
                bcc.w   @PositionEnemyOffscreen
                move.b  d0,d1
                andi.l  #COMBATANT_MASK_INDEX_AND_SORT_BIT,d1
                mulu.w  #BATTLESPRITESET_ENTITY_ENTRY_SIZE,d1
                adda.w  d1,a0
                clr.w   d3
                clr.w   d4
                move.b  BATTLESPRITESET_ENTITYOFFSET_STARTING_X(a0),d3
                move.b  BATTLESPRITESET_ENTITYOFFSET_STARTING_Y(a0),d4
                bsr.w   IsEnemyStartingPositionOccupied
                bcs.w   @PositionEnemyOffscreen
                bsr.w   InitializeEnemyStats
                move.w  d2,d1
                jsr     SetActivationBitfield
                bra.w   @Done
@PositionEnemyOffscreen:
                
                clr.w   d1
                jsr     SetMaxHp
                jsr     SetCurrentHp
                move.w  #-1,d1
                jsr     SetCombatantX
                ori     #1,ccr
@Done:
                
                movem.l (sp)+,d0-a6
                rts

    ; End of function ResetEnemyStatsForRespawn


; =============== S U B R O U T I N E =======================================

; In: a0 = pointer to battle entity definition
;     d0.b = combatant index


InitializeEnemyStats:
                
                movem.l d0-a1,-(sp)
                clr.l   d1
                move.b  (a0),d1
                bsr.w   UpgradeRandomBattleEnemies
                move.w  d1,d6           ; d1.w, d6.w = upgraded enemy index
                mulu.w  #ENEMYDEF_ENTRY_SIZE,d1
                getPointer p_table_EnemyDefinitions, a1
                adda.w  d1,a1
                move.l  a0,-(sp)
                jsr     GetCombatantEntryAddress
                moveq   #COMBATANT_ENTRY_COUNTER,d7
@Loop:
                
                move.b  (a1)+,(a0)+
                dbf     d7,@Loop
                
                movea.l (sp)+,a0
                jsr     GetMaxHp
                jsr     SetCurrentHp
                clr.w   d1
                move.b  BATTLESPRITESET_ENTITYOFFSET_STARTING_X(a0),d1
                jsr     SetCombatantX
                move.b  BATTLESPRITESET_ENTITYOFFSET_STARTING_Y(a0),d1
                jsr     SetCombatantY
                jsr     GetMoveType
                lsl.w   #NIBBLE_SHIFT_COUNT,d1
                andi.w  #BYTE_UPPER_NIBBLE_MASK,d1
                move.b  BATTLESPRITESET_ENTITYOFFSET_AI_COMMANDSET(a0),d2
                andi.w  #BYTE_LOWER_NIBBLE_MASK,d2
                or.w    d2,d1
                jsr     SetMoveType
                move.b  d6,d1
                jsr     SetEnemyIndex
                move.b  BATTLESPRITESET_ENTITYOFFSET_AI_TRIGGER_REGION(a0),d1
                move.b  BATTLESPRITESET_ENTITYOFFSET_9(a0),d2
                jsr     SetAiRegion
                move.b  BATTLESPRITESET_ENTITYOFFSET_ENTITY_TO_FOLLOW(a0),d1
                move.b  BATTLESPRITESET_ENTITYOFFSET_MOVE_TO_POSITION(a0),d2
                jsr     SetAiSpecialMoveOrders
                move.w  BATTLESPRITESET_ENTITYOFFSET_ITEMS(a0),d1
                bsr.w   InitializeEnemyItems
                jsr     GetActivationBitfield
                move.w  d1,d2
                andi.w  #WORD_UPPER_NIBBLE_MASK,d2
                move.w  BATTLESPRITESET_ENTITYOFFSET_AI_ACTIVATION_FLAG(a0),d1
                ror.w   #8,d1
                andi.w  #$FFF,d1
                or.w    d2,d1
                jsr     SetActivationBitfield
                jsr     ApplyItemsOnStats
                bsr.w   AdjustEnemyBaseAttForDifficulty
                jsr     ApplyStatusEffectsAndItemsOnStats
                jsr     GetMaxMP
                jsr     SetCurrentMP
                movem.l (sp)+,d0-a1
                rts

    ; End of function InitializeEnemyStats


; =============== S U B R O U T I N E =======================================


InitializeEnemyList:
                
                movem.l d1/a0-a1,-(sp)
                lea     ((ENEMY_LIST-$1000000)).w,a1
                moveq   #7,d1
loc_1B14E2:
                
                clr.l   (a1)+
                dbf     d1,loc_1B14E2
                moveq   #BATTLESPRITESET_SUBSECTION_ENEMIES,d1
                bsr.w   GetBattleSpritesetSubsection
                subq.w  #1,d1
                lea     ((ENEMY_LIST-$1000000)).w,a1
loc_1B14F4:
                
                move.b  (a0),(a1)+
                adda.w  #BATTLESPRITESET_ENTITY_ENTRY_SIZE,a0
                dbf     d1,loc_1B14F4
                movem.l (sp)+,d1/a0-a1
                rts

    ; End of function InitializeEnemyList


; =============== S U B R O U T I N E =======================================


InitializeEnemyItems:
                
                movem.l d0-a0,-(sp)
                cmpi.w  #ITEM_NOTHING,d1
                beq.w   loc_1B154E
                jsr     AddItem
                btst    #ITEMENTRY_BIT_EQUIPPED,d1
                beq.s   loc_1B154E
                move.w  d1,d3
                clr.w   d1
                jsr     GetItemBySlotAndHeldItemsNumber
                subi.w  #1,d2
                move.w  d2,d4
                clr.w   d5
loc_1B152E:
                
                move.w  d5,d1
                jsr     GetItemBySlotAndHeldItemsNumber
                cmp.b   d1,d3
                bne.s   loc_1B1546
                move.w  d5,d1
                jsr     EquipItemBySlot
                bra.w   loc_1B154E
loc_1B1546:
                
                addi.w  #1,d5
                dbf     d4,loc_1B152E
loc_1B154E:
                
                movem.l (sp)+,d0-a0
                rts

    ; End of function InitializeEnemyItems


; =============== S U B R O U T I N E =======================================

; Is enemy starting position d3.w,d4.w curently occupied?
; Return CCR carry-bit set if true.


IsEnemyStartingPositionOccupied:
                
                movem.l d0-d2/d7,-(sp)
                moveq   #COMBATANT_ALLIES_START,d0
                moveq   #COMBATANT_ALLIES_COUNTER,d7
loc_1B155C:
                
                jsr     GetCombatantX
                cmp.w   d1,d3
                bne.s   loc_1B1576
                jsr     GetCombatantY
                cmp.w   d1,d4
                ori     #1,ccr
                beq.w   loc_1B15A4
loc_1B1576:
                
                addq.w  #1,d0
                dbf     d7,loc_1B155C
                
                move.w  #COMBATANT_ENEMIES_START,d0
                moveq   #COMBATANT_ENEMIES_COUNTER,d7
loc_1B1582:
                
                jsr     GetCombatantX
                cmp.w   d1,d3
                bne.s   loc_1B159C
                jsr     GetCombatantY
                cmp.w   d1,d4
                ori     #1,ccr
                beq.w   loc_1B15A4
loc_1B159C:
                
                addq.w  #1,d0
                dbf     d7,loc_1B1582
                
                tst.b   d0
loc_1B15A4:
                
                movem.l (sp)+,d0-d2/d7
                rts

    ; End of function IsEnemyStartingPositionOccupied


; =============== S U B R O U T I N E =======================================

; Adjust enemy base ATT according to difficulty.
; If DIFFICULTY_FACTORS is enabled, adjust DEF and AGI as well.
;
;   In: d0.b = combatant index


AdjustEnemyBaseAttForDifficulty:
                                
@capEnemyStat:  macro
                cmpi.w #255,d1
                ble.s  @Continue\@
                move.w #255,d1
@Continue\@:
                endm
                
                move.l  d1,-(sp)
                jsr     GetDifficulty
                beq.w   @Done                   ; no adjustments if Normal Difficulty

                ; Hard Difficulty
                jsr     GetBaseATT
                mulu.w  #NORMAL_TO_HARD_ATT,d1  ; default: base ATT * 1.25
                lsr.w   #2,d1
                @capEnemyStat
                jsr     SetBaseATT
                jsr     GetBaseDEF
                mulu.w  #NORMAL_TO_HARD_DEF,d1  ; default: base DEF * 1
                lsr.w   #2,d1
                @capEnemyStat
                jsr     SetBaseDEF
                jsr     GetBaseAGI
                mulu.w  #NORMAL_TO_HARD_AGI,d1  ; default: base AGI * 1
                lsr.w   #2,d1
                @capEnemyStat
                jsr     SetBaseAGI
                jsr     GetDifficulty
                cmpi.w  #DIFFICULTY_HARD,d1
                beq.w   @Done
                
                ; Super Difficulty
                jsr     GetBaseATT
                mulu.w  #HARD_TO_SUPER_ATT,d1   ; default: base ATT * 1.25
                lsr.w   #2,d1
                @capEnemyStat
                jsr     SetBaseATT
                jsr     GetBaseDEF
                mulu.w  #HARD_TO_SUPER_DEF,d1   ; default: base DEF * 1
                lsr.w   #2,d1
                @capEnemyStat
                jsr     SetBaseDEF
                jsr     GetBaseAGI
                mulu.w  #HARD_TO_SUPER_AGI,d1   ; default: base AGI * 1
                lsr.w   #2,d1
                @capEnemyStat
                jsr     SetBaseAGI
                jsr     GetDifficulty
                cmpi.w  #DIFFICULTY_SUPER,d1
                beq.s   @Done

                ; Ouch Difficulty
                jsr     GetBaseATT
                mulu.w  #SUPER_TO_OUCH_ATT,d1   ; default: base ATT * 1
                lsr.w   #2,d1
                @capEnemyStat
                jsr     SetBaseATT
                jsr     GetBaseDEF
                mulu.w  #SUPER_TO_OUCH_DEF,d1   ; default: base DEF * 1
                lsr.w   #2,d1
                @capEnemyStat
                jsr     SetBaseDEF
                jsr     GetBaseAGI
                mulu.w  #SUPER_TO_OUCH_AGI,d1   ; default: base AGI * 1.5
                lsr.w   #2,d1
                @capEnemyStat
                jsr     SetBaseAGI
@Done:          move.l  (sp)+,d1
                rts

    ; End of function AdjustEnemyBaseAttForDifficulty


; =============== S U B R O U T I N E =======================================

; Get coordinates for AI special move order d0.w -> d1.w, d2.w


GetAiSpecialMoveOrderCoordinates:
                
                movem.l d0/a0,-(sp)
                btst    #6,d0
                bne.s   @GetAiPointCoordinates
                
                ; Get position of combatant to follow
                jsr     GetCombatantY
                move.w  d1,d2
                jsr     GetCombatantX
                bra.s   @Done
@GetAiPointCoordinates:
                
                moveq   #BATTLESPRITESET_SUBSECTION_AI_POINTS,d1
                bsr.w   GetBattleSpritesetSubsection
                andi.w  #BYTE_LOWER_NIBBLE_MASK,d0
                add.w   d0,d0
                adda.w  d0,a0
                clr.w   d1
                clr.w   d2
                move.b  (a0),d1
                move.b  1(a0),d2
@Done:
                
                movem.l (sp)+,d0/a0
                rts

    ; End of function GetAiSpecialMoveOrderCoordinates


; =============== S U B R O U T I N E =======================================

; In: d1.w = subsection index
; Out: a0 = subsection address, d1.w = subsection size


GetBattleSpritesetSubsection:
                
                movem.l d0/d2/a1,-(sp)
                move.b  d1,d2
                clr.w   d1
                clr.w   d0
                getSavedByte CURRENT_BATTLE, d0
                lsl.w   #INDEX_SHIFT_COUNT,d0
                getPointer p_pt_BattleSpritesets, a0
                movea.l (a0,d0.w),a0
                tst.b   d2
                beq.w   @ReturnInfo     ; 0 = Section sizes
                
                movea.l a0,a1           ; a1 = pointer to section sizes
                move.b  (a1),d1         ; allies size
                lea     BATTLESPRITESET_OFFSET_ALLY_ENTRIES(a0),a0
                subq.b  #1,d2
                beq.w   @ReturnInfo     ; 1 = Allies
                
                clr.l   d0
                move.b  BATTLESPRITESET_SIZEOFFSET_ENEMIES(a1),d1
                move.b  (a1),d0
                mulu.w  #BATTLESPRITESET_ENTITY_ENTRY_SIZE,d0 ; allies number * entry size
                adda.l  d0,a0
                subq.b  #1,d2
                beq.w   @ReturnInfo     ; 2 = Enemies
                
                clr.l   d0
                move.b  BATTLESPRITESET_SIZEOFFSET_REGIONS(a1),d1
                move.b  BATTLESPRITESET_SIZEOFFSET_ENEMIES(a1),d0
                mulu.w  #BATTLESPRITESET_ENTITY_ENTRY_SIZE,d0 ; enemies number * entry size
                adda.l  d0,a0
                subq.b  #1,d2
                beq.w   @ReturnInfo     ; 3 = AI-regions
                
                clr.l   d0
                move.b  BATTLESPRITESET_SIZEOFFSET_AI_POINTS(a1),d1
                move.b  BATTLESPRITESET_SIZEOFFSET_REGIONS(a1),d0
                mulu.w  #BATTLESPRITESET_REGION_ENTRY_SIZE,d0 ; regions number * entry size
                adda.l  d0,a0           ; 4 = AI-points
@ReturnInfo:
                
                movem.l (sp)+,d0/d2/a1
                rts

    ; End of function GetBattleSpritesetSubsection


; =============== S U B R O U T I N E =======================================

; Get starting X, Y for combatant d0.b -> d1.w, d2.w


GetCombatantStartingPosition:
                
                movem.l d0/d3-a6,-(sp)
                btst    #COMBATANT_BIT_ENEMY,d0
                bne.s   @Enemy
                move.w  #BATTLESPRITESET_SUBSECTION_ALLIES,d1
                bsr.s   GetBattleSpritesetSubsection
                cmp.b   d0,d1
                bge.s   @GetAllyEntryAddress
                move.w  #-1,d1          ; reset positions
                move.w  #-1,d2
                bra.w   @Done
@GetAllyEntryAddress:
                
                andi.w  #COMBATANT_MASK_ALL,d0
                mulu.w  #BATTLESPRITESET_ENTITY_ENTRY_SIZE,d0
                adda.w  d0,a0
                bra.s   @GetStartingPositions
@Enemy:
                
                move.w  #BATTLESPRITESET_SUBSECTION_ENEMIES,d1
                bsr.w   GetBattleSpritesetSubsection
                cmp.b   d0,d1
                bge.s   @GetEnemyEntryAddress
                move.w  #-1,d1          ; reset positions
                move.w  #-1,d2
                bra.w   @Done
@GetEnemyEntryAddress:
                
                andi.w  #COMBATANT_MASK_INDEX_AND_SORT_BIT,d0
                mulu.w  #BATTLESPRITESET_ENTITY_ENTRY_SIZE,d0
                adda.w  d0,a0
@GetStartingPositions:
                
                clr.w   d1
                clr.w   d2
                move.b  BATTLESPRITESET_ENTITYOFFSET_STARTING_X(a0),d1
                move.b  BATTLESPRITESET_ENTITYOFFSET_STARTING_Y(a0),d2
@Done:
                
                movem.l (sp)+,d0/d3-a6
                rts

    ; End of function GetCombatantStartingPosition


; =============== S U B R O U T I N E =======================================

; related to player controlled movement on the battlefield
; 
; In: d1.w, d2.w = x, y


sub_1B16FE:
                
                movem.l d1-a6,-(sp)
                move.w  d2,d7
                move.w  d1,d6
                move.w  #BATTLESPRITESET_SUBSECTION_ENEMIES,d1
                bsr.w   GetBattleSpritesetSubsection
                move.w  d1,d5
                subi.w  #1,d5
                move.w  #COMBATANT_ENEMIES_START,d0
                tst.w   d1
                bne.s   loc_1B1724
                move.w  #-1,d0
                bra.w   loc_1B177A
loc_1B1724:
                
                move.b  BATTLESPRITESET_ENTITYOFFSET_STARTING_X(a0),d1
                move.b  BATTLESPRITESET_ENTITYOFFSET_STARTING_Y(a0),d2
                cmp.b   d1,d6
                bne.s   loc_1B176A
                cmp.b   d2,d7
                bne.s   loc_1B176A
                jsr     GetActivationBitfield
                cmpi.w  #$200,d1
                bne.s   loc_1B176A
                jsr     GetAiRegion
                cmpi.w  #$F,d1
                bne.s   loc_1B176A
                cmpi.w  #$F,d2
                bne.s   loc_1B176A
                jsr     GetMaxHp
                tst.w   d1
                bne.s   loc_1B176A
                jsr     GetActivationBitfield
                bsr.w   ResetEnemyStatsForRespawn
                bra.w   loc_1B177A
loc_1B176A:
                
                addi.w  #1,d0
                adda.w  #BATTLESPRITESET_ENTITY_ENTRY_SIZE,a0
                dbf     d5,loc_1B1724
                move.w  #-1,d0
loc_1B177A:
                
                movem.l (sp)+,d1-a6
                rts

    ; End of function sub_1B16FE


; =============== S U B R O U T I N E =======================================

; Is current battle upgradable? Return d1.w = -1 if true.


IsBattleUpgradable:
                
                movem.l d0/d2-a6,-(sp)
                clr.w   d1              ; clear d1 for "false"
                loadSavedDataAddress CURRENT_BATTLE, a0
                clr.w   d7
                move.b  (a0),d7         ; d7 contains battle index
                clr.w   d6
                lea     list_RandomBattles(pc), a0 ; point to length of table
                nop
                move.b  (a0)+,d6        ; put length of table in d6
                tst.b   d6
                bne.s   @Continue       ; if d6 not zero
                bra.w   @Done           ; else
@Continue:
                
                subi.w  #1,d6           ; d6--
@Loop:
                
                move.b  (a0)+,d0        ; put next byte in d0
                cmp.b   d7,d0
                bne.s   @Next           ; while d0 not battle index
                move.w  #-1,d1          ; else, battle index is in the list, put -1 in d1.w, for "true"
                bra.w   @Done
@Next:
                
                dbf     d6,@Loop
@Done:
                
                movem.l (sp)+,d0/d2-a6
                rts

    ; End of function IsBattleUpgradable


; =============== S U B R O U T I N E =======================================

; Strange use case where "Battle completed" flag is set for battle 4 in spite of being alreeady set earlier.


UpgradeBattle:
                
                movem.l d0-a6,-(sp)
                loadSavedDataAddress CURRENT_BATTLE, a0
                move.b  (a0),d7
                lea     list_RandomBattles(pc), a1
                nop
                clr.w   d2
                move.b  (a1),d2
                subi.w  #1,d2
                adda.w  #1,a1
                clr.w   d3
@ReadRandomBattleList_Loop:
                
                move.b  (a1,d3.w),d1
                cmp.b   d1,d7
                bne.s   @CheckNextBattle
                addi.w  #FLAG_BATTLE00_COMPLETE,d1
                jsr     SetFlag
                bra.w   @ExitLoop
@CheckNextBattle:
                
                addi.w  #1,d3
                dbf     d2,@ReadRandomBattleList_Loop
@ExitLoop:
                
                movem.l (sp)+,d0-a6
                rts

    ; End of function UpgradeBattle


; =============== S U B R O U T I N E =======================================

; Should random battle enemies be upgraded? Return d1.w = 1 if so.


DetermineBattleUpgrade:
                
                movem.l d0/d2-a6,-(sp)
                loadSavedDataAddress CURRENT_BATTLE, a0
                move.b  (a0),d7
                lea     list_RandomBattles(pc), a1
                nop
                clr.w   d2
                move.b  (a1),d2
                subi.w  #1,d2
                adda.w  #1,a1
                clr.w   d3
@FindBattle_Loop:
                
                clr.w   d1
                move.b  (a1,d3.w),d1
                cmp.b   d1,d7
                bne.s   @Next
                addi.w  #FLAG_BATTLE00_COMPLETE,d1
                jsr     CheckFlag
                bne.s   @AllowUpgrade
                clr.w   d1
                bra.s   @Goto_Done
@AllowUpgrade:
                
                move.w  #1,d1
@Goto_Done:
                
                bra.w   @Done
@Next:
                
                addi.w  #1,d3
                dbf     d2,@FindBattle_Loop
@Done:
                
                movem.l (sp)+,d0/d2-a6
                rts

    ; End of function DetermineBattleUpgrade


; =============== S U B R O U T I N E =======================================

; Upgrade enemy index d1.w -> d1.w


UpgradeRandomBattleEnemies:
                
                movem.l d0/d2-a6,-(sp)
                move.w  d1,d5           ; D5 = original enemy index backup
                bsr.w   IsBattleUpgradable
                tst.w   d1
                bne.s   @DetermineUpgrade
                move.w  d5,d1
                bra.w   @Done
@DetermineUpgrade:
                
                bsr.s   DetermineBattleUpgrade
                tst.w   d1
                bne.s   @DoUpgrade
                move.w  d5,d1
                bra.w   @Done
@DoUpgrade:
                
                clr.w   d4
                clr.l   d1
                
                ; Get pointer to enemy upgrade data based on move type -> A0
                move.b  d5,d1
				cmpi.b	#ENEMY_SPECIALS_START,d5
				bcc.s	@Done
                mulu.w  #ENEMYDEF_ENTRY_SIZE,d1
                lea     table_EnemyDefinitions, a1
                adda.w  d1,a1
                clr.w   d3
                move.b  d5,d3           ; D3 = original enemy index backup
@GetLeaderEffectiveLevel:
                
                clr.w   d2
                clr.w   d0
                
                ; Get Bowie's effective level -> D2
                jsr     GetCurrentLevel
                move.w  d1,d2
                clr.w   d1
				adda.w  #ENEMYDEF_ENTRY_SIZE,a1
				move.b	ENEMYDEF_OFFSET_LEVEL(a1),d1
                sub.w   d1,d2           ; subtract enemy level from Bowie's effective level
				cmpi.w  #$4,d2
                ble.s   @Default2
                addi.w  #$1,d3
                bra.s   @GetLeaderEffectiveLevel
@Default2:
                
                cmp.b   d5,d3
				beq.s   @NormalFoe
				moveq   #4,d0
                jsr     (GenerateRandomOrDebugNumber).w
				tst.w   d0
				bne.s   @NormalFoe
				addi.w  #1,d3
@NormalFoe:
                move.w  d3,d1           ; D1 = upgraded enemy index
@Done:
                
                movem.l (sp)+,d0/d2-a6
                rts

    ; End of function UpgradeRandomBattleEnemies


; =============== S U B R O U T I N E =======================================

; Has Jaro joined the Force? Return d1.w = 1 if true.


HasJaroJoinedTheForce:
                
                movem.l d0/d2-a6,-(sp)
                jsr     UpdateForce
                lea     ((TARGETS_LIST_LENGTH-$1000000)).w,a0
                move.w  (a0),d7
                subi.w  #1,d7
                lea     ((TARGETS_LIST-$1000000)).w,a0
                clr.l   d6
@Loop:
                
                clr.w   d0
                move.b  (a0,d6.w),d0
                cmpi.b  #ALLY_JARO,d0
                bne.s   @Next           ; keep checking force members until we either find Jaro or reach end of the list
                move.w  #1,d1
                bra.w   @Found          ; Jaro is found, so we're done
@Next:
                
                addi.w  #1,d6
                dbf     d7,@Loop
                clr.w   d1              ; reached end of the list without finding Jaro
@Found:
                
                movem.l (sp)+,d0/d2-a6
                rts

    ; End of function HasJaroJoinedTheForce

