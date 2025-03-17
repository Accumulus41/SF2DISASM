
; ASM FILE code\gameflow\battle\battlefunctions\battlefunctions_1.asm :
; 0x23A84..0x23E50 : Battle functions

; =============== S U B R O U T I N E =======================================

; In: D0 = map index
;     D1 = battle index


BattleLoop:
                
                clearSavedByte PLAYER_TYPE
            if (MUSIC_RESUMING&RESUME_BATTLESCENE_MUSIC=1)
                activateMusicResuming
            endif
                setFlg  FLAG_GIZMOS             ; Set after first battle's cutscene OR first save? Checked at witch screens
                chkFlg  FLAG_SUSPENDED_BATTLE              ; checks if a game has been saved for copying purposes ? (or if saved from battle?)
                beq.s   @Initialize
                
                ; Start here if game was suspended mid-battle
                move.l  ((SAVED_SECONDS_COUNTER-$1000000)).w,((SECONDS_COUNTER-$1000000)).w
                clrFlg  FLAG_SUSPENDED_BATTLE              ; checks if a game has been saved for copying purposes ? (or if saved from battle?)
                jsr     ClearAiMoveInfo
                clr.b   ((VIEW_TARGET_ENTITY-$1000000)).w
                bsr.w   LoadBattle      
                bra.w   @ExecuteIndividualTurns_Loop
                bra.w   @Start          ; unreachable
@Initialize:
                
                clr.l   ((SECONDS_COUNTER-$1000000)).w
                
                movem.w d0-d1,-(sp)
                setSavedByte d0, CURRENT_MAP
                setSavedByte d1, CURRENT_BATTLE
                bsr.w   SetBaseVIntFunctions
                jsr     ExecuteBeforeBattleCutscene
                movem.w (sp)+,d0-d1
                
                setSavedByte d0, CURRENT_MAP
                setSavedByte d1, CURRENT_BATTLE
                move.w  #FLAG_BATTLEREGION_00,d1
@ClearBattleRegionFlags_Loop:
                
                jsr     ClearFlag     ; clear battle region flags
                addq.w  #1,d1
                cmpi.w  #FLAG_BATTLEREGION_15,d1
                ble.s   @ClearBattleRegionFlags_Loop
                
                bsr.w   HealLivingAndImmortalAllies
                jsr     InitializeAllAlliesBattlePositions
                jsr     InitializeAllEnemiesBattlePositions
                jsr     ClearAiMoveInfo
                clr.w   d0
                bsr.w   LoadBattle      
                jsr     ExecuteBattleStartCutscene
@Start:
                
                bsr.w   UpdateAllEnemiesAi ; start of battle loop
                jsr     ExecuteBattleRegionCutscene
                jsr     PopulateTargetsListWithRespawningEnemies
                move.w  ((TARGETS_LIST_LENGTH-$1000000)).w,d7
                beq.s   @Call_GenerateBattleTurnOrder
                
                subq.w  #1,d7
                lea     ((TARGETS_LIST-$1000000)).w,a0
@SpawnEnemies_Loop:
                
                clr.w   d0
                move.b  (a0)+,d0
                bsr.w   SpawnEnemyWithCamera
                dbf     d7,@SpawnEnemies_Loop
@Call_GenerateBattleTurnOrder:
                
                bsr.w   GenerateBattleTurnOrder
@ExecuteIndividualTurns_Loop:
                
                clr.w   d0              ; start of individual turn execution
                getBattleTurnActor d0
                cmpi.b  #-1,d0
                beq.s   @Start          
                
                bsr.w   ExecuteIndividualTurn
                jsr     ExecuteBattleCutscene_Defeated
                jsr     ProcessKilledCombatants(pc)
                nop
                bsr.w   GetRemainingCombatants
                tst.w   d2
                beq.w   BattleLoop_Defeat
                tst.w   d3
                beq.w   BattleLoop_Victory
                clr.w   d0
                getBattleTurnActor d0
                bsr.w   ProcessAfterTurnEffects
                jsr     ProcessKilledCombatants(pc)
                nop
                bsr.w   GetRemainingCombatants
                tst.w   d2
                beq.w   BattleLoop_Defeat
                tst.w   d3
                beq.w   BattleLoop_Victory
                addToSavedByte #TURN_ORDER_ENTRY_SIZE, CURRENT_BATTLE_TURN
                bra.s   @ExecuteIndividualTurns_Loop

    ; End of function BattleLoop


; =============== S U B R O U T I N E =======================================


KillRemainingEnemies:
                
                moveq   #COMBATANT_ENEMIES_COUNTER,d7
                move.w  #COMBATANT_ENEMIES_START,d0
                lea     ((DEAD_COMBATANTS_LIST-$1000000)).w,a0
                clr.w   ((DEAD_COMBATANTS_LIST_LENGTH-$1000000)).w
@Loop:
                
                jsr     GetCombatantX
                tst.b   d1
                bmi.w   @Skip           ; skip if already dead
                jsr     GetCombatantY
                tst.b   d1
                bmi.w   @Skip
                jsr     GetCurrentHp
                tst.w   d1
                beq.w   @Skip
                move.b  d0,(a0)+
                addq.w  #1,((DEAD_COMBATANTS_LIST_LENGTH-$1000000)).w
                moveq   #0,d1
                jsr     SetCurrentHp
@Skip:
                
                addq.w  #1,d0
                dbf     d7,@Loop
                rts

    ; End of function KillRemainingEnemies


; =============== S U B R O U T I N E =======================================


HealLivingAndImmortalAllies:
                
                movem.l d0-d2/d7-a0,-(sp)
                clr.w   d0
                moveq   #0,d2
                moveq   #COMBATANT_ALLIES_COUNTER,d7
                
@Loop:          lea     table_ImmortalAllies(pc), a0
                move.w  d0,d1
                jsr     (FindSpecialPropertyBytesAddressForObject).w
                bcc.s   @Immortal
                jsr     GetCurrentHP
                beq.s   @Dead           ; skip healing if character is dead
@Immortal:      jsr     GetMaxHP
                jsr     SetCurrentHP
                jsr     GetMaxMP
                jsr     SetCurrentMP
                jsr     GetStatusEffects
                andi.w  #STATUSEFFECT_STUN|STATUSEFFECT_POISON|STATUSEFFECT_CURSE,d1 ; cure all but lasting status effects
                jsr     SetStatusEffects
                jsr     ApplyStatusEffectsAndItemsOnStats
@Dead:          addq.w  #1,d0
                dbf     d7,@Loop
                
                movem.l (sp)+,d0-d2/d7-a0
                rts

    ; End of function HealLivingAndImmortalAllies


; =============== S U B R O U T I N E =======================================

; Get number of allies living, number of enemies living -> D2, D3


GetRemainingCombatants:
                
                clr.w   d2
                clr.w   d3
                clr.w   d0
                move.w  #COMBATANT_ALLIES_COUNTER,d7
@Allies_Loop:
                
                jsr     GetCombatantX
                tst.b   d1
                bmi.w   @DeadAlly
                jsr     GetCurrentHp
                tst.w   d1
                beq.w   @DeadAlly
                addq.w  #1,d2
@DeadAlly:
                
                addq.w  #1,d0
                dbf     d7,@Allies_Loop
                
                move.w  #COMBATANT_ENEMIES_START,d0
                move.w  #COMBATANT_ENEMIES_COUNTER,d7
@Enemies_Loop:
                
                jsr     GetCombatantX
                tst.b   d1
                bmi.w   @DeadEnemy
                jsr     GetCurrentHp
                tst.w   d1
                beq.w   @DeadEnemy
                addq.w  #1,d3
@DeadEnemy:
                
                addq.w  #1,d0
                dbf     d7,@Enemies_Loop
                
                clr.w   d0
                jsr     GetCurrentHp
                tst.w   d1
                bne.s   @Return
                clr.w   d2
@Return:
                
                rts

    ; End of function GetRemainingCombatants


; =============== S U B R O U T I N E =======================================


BattleLoop_Victory:
                
                bsr.w   HealLivingAndImmortalAllies
                movem.l d1-d2/a0,-(sp)
                lea     table_DisplayTimerBattles(pc), a0
                getSavedByte CURRENT_BATTLE, d1
                moveq   #0,d2
                jsr     (FindSpecialPropertyBytesAddressForObject).w
                movem.l (sp)+,d1-d2/a0
                bcs.s   @Continue
                jsr     CloseTimerWindow
@Continue:
                
                getSavedByte CURRENT_MAP, ((MAP_EVENT_PARAM_2-$1000000)).w
                jsr     (UpdateForceAndGetFirstBattlePartyMemberIndex).w
                jsr     GetCombatantX
                add.b   ((BATTLE_AREA_X-$1000000)).w,d1
                move.b  d1,((MAP_EVENT_PARAM_3-$1000000)).w
                jsr     GetCombatantY
                add.b   ((BATTLE_AREA_Y-$1000000)).w,d1
                move.b  d1,((MAP_EVENT_PARAM_4-$1000000)).w
                bsr.w   GetEntityIndexForCombatant
                lsl.w   #ENTITYDEF_SIZE_BITS,d0
                lea     ((ENTITY_DATA-$1000000)).w,a0
                move.b  ENTITYDEF_OFFSET_FACING(a0,d0.w),((MAP_EVENT_PARAM_5-$1000000)).w
                move.b  #0,((MAP_EVENT_PARAM_1-$1000000)).w
                jsr     ExecuteAfterBattleCutscene
                clr.w   d1
                getSavedByte CURRENT_BATTLE, d1
                addi.w  #FLAG_BATTLE00_AVAILABLE,d1
                jsr     ClearFlag
                addi.w  #FLAG_BATTLECOMPLETE_DIFF,d1
                jsr     SetFlag
                clr.w   d0
                clr.w   d1
                clr.w   d2
                clr.w   d3
                move.b  ((MAP_EVENT_PARAM_2-$1000000)).w,d0
                move.b  ((MAP_EVENT_PARAM_3-$1000000)).w,d1
                move.b  ((MAP_EVENT_PARAM_4-$1000000)).w,d2
                move.b  ((MAP_EVENT_PARAM_5-$1000000)).w,d3
                moveq   #1,d4
                rts

    ; End of function BattleLoop_Victory


; =============== S U B R O U T I N E =======================================


BattleLoop_Defeat:
                
                bsr.w   UpdateBattleUnlockedFlag
                clr.w   ((DIALOGUE_NAME_INDEX_1-$1000000)).w
                sndCom  MUSIC_SAD_THEME_2
                txt     363             ; "{LEADER} is exhausted.{W1}"
                clsTxt
				bsr.w   HealLivingAndImmortalAllies
                jsr     GetGold
                lsr.l   #1,d1           ; divide current gold amount by 2
                jsr     SetGold
                jsr     GetEgressPositionForBattle(pc)
                nop
                moveq   #-1,d4
                
                ; Losable battles
                movem.l d1-d2/a0,-(sp)
                clr.w   d1
                lea     table_LosableBattles(pc), a0
                getSavedByte CURRENT_BATTLE, d1
                moveq   #1,d2
                jsr     (FindSpecialPropertyBytesAddressForObject).w
                bcs.s   @Done
                addi.w  #FLAG_BATTLE00_AVAILABLE,d1
                jsr     ClearFlag
                addi.w  #FLAG_BATTLECOMPLETE_DIFF,d1
                jsr     SetFlag
                cmpi.b  #TERMINATOR_BYTE,(a0)
                beq.s   @Done
                move.b  (a0),d0
                clr.w   d4
@Done:          movem.l (sp)+,d1-d2/a0
@Return:        rts

    ; End of function BattleLoop_Defeat


; =============== S U B R O U T I N E =======================================

itemOrSpellIndex = -4
combatant = -2

ExecuteBattleaction_AngelWing:
                
                move.w  combatant(a6),d0
                move.w  ((BATTLEACTION_ITEM_SLOT-$1000000)).w,d1
                jsr     RemoveItemBySlot
                bsr.w   CloseBattlefieldWindows
                move.w  combatant(a6),((DIALOGUE_NAME_INDEX_1-$1000000)).w
                move.w  ((BATTLEACTION_ITEM_OR_SPELL-$1000000)).w,((DIALOGUE_NAME_INDEX_2-$1000000)).w
                andi.w  #ITEMENTRY_MASK_INDEX,((DIALOGUE_NAME_INDEX_2-$1000000)).w
                txt     275             ; "{NAME} used{N}{ITEM}!"
                bra.w   byte_23DFA

    ; End of function ExecuteBattleaction_AngelWing


; =============== S U B R O U T I N E =======================================

itemOrSpellIndex = -4
combatant = -2

ExecuteBattleaction_Egress:
                
                move.w  combatant(a6),d0
                move.w  ((BATTLEACTION_ITEM_OR_SPELL-$1000000)).w,d1
                jsr     GetSpellCost
                jsr     DecreaseCurrentMp
                bsr.w   CloseBattlefieldWindows
                move.w  combatant(a6),((DIALOGUE_NAME_INDEX_1-$1000000)).w
                move.w  ((BATTLEACTION_ITEM_OR_SPELL-$1000000)).w,((DIALOGUE_NAME_INDEX_2-$1000000)).w
                andi.w  #SPELLENTRY_MASK_INDEX,((DIALOGUE_NAME_INDEX_2-$1000000)).w
                move.l  #1,((DIALOGUE_NUMBER-$1000000)).w
                txt     274             ; "{NAME} cast{N}{SPELL} level {#}!"
byte_23DFA:
                
                sndCom  SFX_SPELL_CAST
                jsr     ExecuteFlashScreenScript
                clsTxt
                bsr.w   UpdateBattleUnlockedFlag
                unlk    a6
                movem.l (sp)+,d0
                bsr.w   GetEgressPositionForBattle
                clr.w   d4
                rts

    ; End of function ExecuteBattleaction_Egress


; =============== S U B R O U T I N E =======================================


UpdateBattleUnlockedFlag:
                
                clr.w   d1
                getSavedByte CURRENT_BATTLE, d1
                addi.w  #FLAG_BATTLE00_COMPLETE,d1
                jsr     CheckFlag     ; Check whether current battle is marked as completed
                beq.s   @Return
                subi.w  #FLAG_BATTLECOMPLETE_DIFF,d1
                jsr     ClearFlag     ; ...and if so, mark it as "locked".
@Return:
                
                rts

    ; End of function UpdateBattleUnlockedFlag


; =============== S U B R O U T I N E =======================================


CloseBattlefieldWindows:
                
                jsr     CloseLandEffectWindow
                jsr     CloseMiniStatusWindow
                clr.b   ((IS_TARGETING-$1000000)).w
                jsr     CloseMiniStatusWindow
                rts

    ; End of function CloseBattlefieldWindows

