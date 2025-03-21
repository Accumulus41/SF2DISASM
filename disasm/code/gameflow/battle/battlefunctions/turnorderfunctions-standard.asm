
; ASM FILE code\gameflow\battle\turnorderfunctions-standard.asm :
; Standard reimplementation of battle turn order functions.

GenerateBattleTurnOrder:
                
                lea     ((BATTLE_TURN_ORDER-$1000000)).w,a0
                move.l  a0,-(sp)
                moveq   #ENTITY_TOTAL_COUNTER,d7
@ClearTurnOrder_Loop:
                
                move.w  #$FFFF,(a0)+
                dbf     d7,@ClearTurnOrder_Loop
                movea.l (sp)+,a0
                clr.w   d0
                moveq   #ENTITY_ALLY_COUNTER,d5
                bsr.w   AddRandomizedAGItoTurnOrder
                move.w  #COMBATANT_ENEMIES_START,d0
                moveq   #ENTITY_ENEMY_COUNTER,d5
                bsr.w   AddRandomizedAGItoTurnOrder
                moveq   #TURN_ORDER_ENTRIES_COUNTER,d6
@LoopAllCombatants:
                
                moveq   #TURN_ORDER_ENTRIES_MINUS_ONE_COUNTER,d7
                lea     ((BATTLE_TURN_ORDER-$1000000)).w,a0
@LoopEachCombatant:
                
                move.w  (a0),d0
                move.w  TURN_ORDER_ENTRY_SIZE(a0),d1
                cmp.b   d0,d1
                ble.s   @InOrder
                
                ; Swap entries
                move.w  d1,(a0)
                move.w  d0,TURN_ORDER_ENTRY_SIZE(a0)
@InOrder:
                
                addq.l  #TURN_ORDER_ENTRY_SIZE,a0
                dbf     d7,@LoopEachCombatant
                dbf     d6,@LoopAllCombatants
                clr.b   ((CURRENT_BATTLE_TURN-$1000000)).w
                rts

    ; End of function GenerateBattleTurnOrder


; =============== S U B R O U T I N E =======================================

; In: A0 = turn order in RAM
;     D0 = combatant index

AddRandomizedAGItoTurnOrder:
                
                jsr     GetCombatantX
                bmi.s   @HandleNextCombatant
                jsr     GetCurrentHP
                beq.s   @HandleNextCombatant         ; skip if combatant is not alive
                jsr     GetCurrentAGI
                move.w  d1,d3
                andi.w  #TWO_TURN_THRESHOLD,d1
                move.w  d1,d6
                lsr.w   #3,d6
                jsr     (GenerateRandomNumber).w
                add.w   d7,d1
                jsr     (GenerateRandomNumber).w
                sub.w   d7,d1
                moveq   #3,d6
                jsr     (GenerateRandomNumber).w
                subq.w  #1,d7
                add.w   d7,d1
                tst.b   d1
                bpl.s   @AddTurnData
                move.b  #TWO_TURN_THRESHOLD,d1 ; cap randomized AGI
@AddTurnData:
                
                mulu.w	#FIRST_TURN_SCALE,d1
                lsr.w	#4,d1
                move.b  d0,(a0)+
                move.b  d1,(a0)+
                
                move.b  d3,d1                           ; restore current AGI (byte only so we can branch on positive)
                bpl.s   @HandleNextCombatant
                
                ; Add a second turn if current AGI > 127
                andi.w  #TWO_TURN_THRESHOLD,d1
                move.w  d1,d6
                lsr.w   #3,d6
                jsr     (GenerateRandomNumber).w
                add.w   d7,d1
                jsr     (GenerateRandomNumber).w
                sub.w   d7,d1
                tst.b   d1
                bpl.s   @AddSecondTurnData
                move.b  #TWO_TURN_THRESHOLD,d1    ; Cap randomized AGI to prevent skipped turns
                
@AddSecondTurnData:
                
                mulu.w	#SECOND_TURN_SCALE,d1
                lsr.w	#4,d1
                move.w	#SECOND_TURN_START,d3
                lsr.w	#4,d3
                add.w	d3,d1
                move.b  d0,(a0)+
                move.b  d1,(a0)+
@HandleNextCombatant:
                
                addq.w  #1,d0
                dbf     d5,AddRandomizedAGItoTurnOrder
                
                rts

    ; End of function AddRandomizedAGItoTurnOrder
