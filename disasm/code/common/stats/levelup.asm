
; ASM FILE code\common\stats\levelup.asm :
; 0x9484..0x9736 : Level Up functions

; =============== S U B R O U T I N E =======================================

; In: d0.w = ally index

ally = -2

LevelUp:
                
                movem.l d0-a1,-(sp)
                link    a6,#-16
                move.w  d0,ally(a6)
                bsr.w   GetClass        
                move.w  d1,d3
                
                ; Determine level cap for class
                moveq   #CHAR_LEVELCAP_PROMOTED,d2
                bsr.w   GetClassType
                bne.s   @Promoted
                moveq   #CHAR_LEVELCAP_BASE,d2
@Promoted:      bsr.w   GetCurrentLevel
@FindStatsBlockForClass:
                
                lsl.w   #2,d0
                getPointer p_pt_AllyStats, a0
                movea.l (a0,d0.w),a0
@FindStatsBlockForClass_Loop:
                
                tst.b   (a0)
                bmi.w   @Exit           ; exit function if no matching block found
                cmp.b   (a0)+,d3
                beq.s   @CheckLevelCap
@FindEndOfSpellList_Loop:
                
                cmpi.b  #ALLYSTATS_CODE_USE_FIRST_SPELL_LIST,(a0)+ ; loop until we come across an "end of spell list" control code
                bcs.s   @FindEndOfSpellList_Loop
                bra.s   @FindStatsBlockForClass_Loop
@CheckLevelCap:
                
                cmp.w   d2,d1
                blt.s   @CalculateStatGains
@Exit:
                
                lea     (LEVELUP_ARGUMENTS).l,a1
                move.b  #-1,(a1)+
                clr.b   (a1)+
                clr.b   (a1)+
                clr.b   (a1)+
                clr.b   (a1)+
                clr.b   (a1)+
                move.b  #-1,(a1)
                bra.w   @Done
@CalculateStatGains:
                
                lea     (LEVELUP_ARGUMENTS).l,a1
                move.w  ally(a6),d0
                bsr.w   GetCurrentLevel 
                move.w  d1,d5
                moveq   #0,d2
                moveq   #0,d3
                moveq   #0,d4
                move.b  (a0)+,d2
                move.b  (a0)+,d3
                move.b  (a0)+,d4
                bsr.w   GetBaseHP
                bsr.w   CalculateStatGain
                move.b  d1,1(a1)
                bsr.w   IncreaseBaseHP
                move.b  (a0)+,d2
                move.b  (a0)+,d3
                move.b  (a0)+,d4
                bsr.w   GetBaseMP
                bsr.w   CalculateStatGain
                move.b  d1,2(a1)
                bsr.w   IncreaseBaseMP
                move.b  (a0)+,d2
                move.b  (a0)+,d3
                move.b  (a0)+,d4
                bsr.w   GetBaseAtt
                bsr.w   CalculateStatGain
                move.b  d1,3(a1)
                bsr.w   IncreaseBaseAtt
                move.b  (a0)+,d2
                move.b  (a0)+,d3
                move.b  (a0)+,d4
                bsr.w   GetBaseDef
                bsr.w   CalculateStatGain
                move.b  d1,4(a1)
                bsr.w   IncreaseBaseDef
                move.b  (a0)+,d2
                move.b  (a0)+,d3
                move.b  (a0)+,d4
                bsr.w   GetBaseAgi
                bsr.w   CalculateStatGain
                move.b  d1,5(a1)
                bsr.w   IncreaseBaseAgi
                
                ; Increase level
                addq.w  #1,d5
                move.w  d5,d1
                bsr.w   SetLevel
                move.b  d5,(a1)
@FindLearnableSpell:
                
                move.b  #-1,6(a1)
@FindLearnableSpell_Loop:
                
                move.b  (a0)+,d2
                move.b  (a0)+,d1
                cmpi.b  #ALLYSTATS_CODE_USE_FIRST_SPELL_LIST,d2
                bne.s   @CheckSpellListEnd
                
                ; Get pointer to previous stats block
                move.w  d0,d2
                lsl.w   #INDEX_SHIFT_COUNT,d2
                getPointer p_pt_AllyStats, a0
                movea.l (a0,d2.w),a0
                lea     ALLYSTATS_OFFSET_SPELL_LIST(a0),a0
                bra.s   @FindLearnableSpell_Loop
@CheckSpellListEnd:
                
                cmpi.b  #-1,d2
                beq.w   @UpdateStats
                
                cmp.b   d2,d5
                bne.s   @FindLearnableSpell_Loop
                
                bsr.w   LearnSpell      
                tst.w   d2
                bne.s   @UpdateStats
                move.b  d1,6(a1)
@UpdateStats:
                
                bsr.w   ApplyStatusEffectsAndItemsOnStats
@Done:
                
                unlk    a6
                movem.l (sp)+,d0-a1
                rts

    ; End of function LevelUp


; =============== S U B R O U T I N E =======================================

; In: d0.w = ally index
;     d1.w = starting level


InitializeAllyStats:
                
                movem.l d0-d2/a0,-(sp)
                move.w  d1,-(sp)        ; -> push starting level
                
                ; Get ally stats entry address -> A0
                move.w  d0,d2
                lsl.w   #INDEX_SHIFT_COUNT,d2
                getPointer p_pt_AllyStats, a0
                movea.l (a0,d2.w),a0
                
                ; Set starting values
                clr.w   d1
                addq.l  #ALLYSTATS_OFFSET_STARTING_HP,a0
                move.b  (a0)+,d1
                bsr.w   SetMaxHp
                bsr.w   SetCurrentHp
                bsr.w	SetBaseHp
                clr.w   d1
                addq.l  #ALLYSTATS_OFFSET_NEXT_STAT,a0
                move.b  (a0)+,d1
                bsr.w   SetMaxMp
                bsr.w   SetCurrentMp
                bsr.w	SetBaseMp
                clr.w   d1
                addq.l  #ALLYSTATS_OFFSET_NEXT_STAT,a0
                move.b  (a0)+,d1
                bsr.w   SetBaseAtt
                clr.w   d1
                addq.l  #ALLYSTATS_OFFSET_NEXT_STAT,a0
                move.b  (a0)+,d1
                bsr.w   SetBaseDef
                clr.w   d1
                addq.l  #ALLYSTATS_OFFSET_NEXT_STAT,a0
                move.b  (a0)+,d1
                bsr.w   SetBaseAgi
                moveq   #0,d1
                bsr.w   SetLevel
                moveq   #0,d1
                bsr.w   SetCurrentEXP
                bsr.w   SetDefeats
                bsr.w   SetKills
                
                ; Determine effective level
                move.w  (sp)+,d4        ; D4 <- pull starting level
                move.w  d4,d5
                cmpi.w  #CHAR_LEVELCAP_BASE,d4
                ble.s   @UnpromotedLevelUp_Counter
                move.w  #CHAR_LEVELCAP_BASE,d5
                
@UnpromotedLevelUp_Counter:
                subq    #1,d5
@UnpromotedLevelUp_Loop:
                
                bsr.w   LevelUp         
                dbf     d5,@UnpromotedLevelUp_Loop
                
                cmpi.w  #CHAR_LEVELCAP_BASE,d4
                ble.s   @Done
                lea     tbl_TrueClasses,a0
                adda.w  d0,a0
                adda.w  d0,a0
                move.b  1(a0),d1
                
                jsr     SetClass
                jsr     Promote
                jsr 	AlterSpells
                moveq   #0,d1
                bsr.w   SetLevel
                bsr.w   LevelUp
@Done:
                
                movem.l (sp)+,d0-d2/a0
                rts

    ; End of function InitializeAllyStats


; =============== S U B R O U T I N E =======================================

; In: d0.w = ally index
;     d1.w = starting level


InitAllyPromoStats:
                
                movea.l (p_table_AllyStartDefinitions).l,a0
                move.w  d0,d1
                mulu.w  #ALLYSTARTDEF_ENTRY_SIZE,d1
                adda.w  d1,a0
                move.w  (a0),d4
                cmpi.w  #CHAR_LEVELCAP_BASE,d4
                ble.s   @Done
                moveq   #31,d1
                bsr.w   SetLevel
                subi.w  #32,d4
                bmi.s   @Done
                
@PromotedLevelUp_Loop:
                
                bsr.w   LevelUp         
                dbf     d4,@PromotedLevelUp_Loop
@Done:
                rts


; =============== S U B R O U T I N E =======================================

; In: d1.w = current stat value
;     d2.w = growth curve index
;     d3.w = starting value
;     d4.w = projected value
;     d5.w = current level
; 
; Out: d1.w = stat gain value


CalculateStatGain:
                
                tst.b   d2
                bne.s   @CheckZero      ; keep going if curve type other than None
                move.w  #0,d1           ; otherwise, stat gain value = 0
                rts
                
@CheckZero:     tst.b   d5
                bne.s   @EvaluateLevel  ; keep going if level other than zero
                move.w  #0,d1           ; otherwise, stat gain value = 0
                rts
@EvaluateLevel:
                
                movem.l d0/d2-a0,-(sp)
                movem.w d1-d5,-(sp)     ; -> push function arguments
                cmpi.w  #CHAR_STATGAIN_PROJECTIONLEVEL,d5 ; If current level within projection
                blt.s   @Continue       ;  ...keep going.
                
                move.w  #256,d0
                move.w  #384,d4
                bra.s   @RandomizeStatGain
@Continue:
                
                andi.w  #GROWTHCURVE_MASK_INDEX,d2
                subq.w  #1,d2
                muls.w  #GROWTHCURVE_DEF_SIZE,d2
                getPointer p_table_StatGrowthCurves, a0
                adda.w  d2,a0
                move.w  d5,d2
                subq.w  #1,d2
                lsl.w   #2,d2
                adda.w  d2,a0
                move.w  (a0)+,d0        ; D0 = curve_param_1 for current level
                move.w  (a0)+,d7        ; D7 = curve_param_2 for current level
                sub.w   d3,d4           ; D4 = projected growth
                mulu.w  d7,d4
@RandomizeStatGain:
                
                move.w  #128,d6
                jsr     (GenerateRandomNumber).w
                add.w   d7,d4
                jsr     (GenerateRandomNumber).w
                sub.w   d7,d4
                addi.w  #128,d4
                lsr.w   #BYTE_SHIFT_COUNT,d4
                move.w  d4,d6           ; D6 = randomized stat gain
                movem.w (sp)+,d1-d5     ; D1-D5 <- pull function arguments
                sub.w   d3,d4           ; D4 = projected growth
                mulu.w  d4,d0
                addi.w  #128,d0
                lsr.w   #BYTE_SHIFT_COUNT,d0
                add.w   d3,d0           ; D0 = expected minimum stat for current level
                add.w   d6,d1
                cmp.w   d0,d1           ; If new value greater than or equal to expected minimum
                bge.s   @Done           ;  ...we're done.
                
                addq.w  #1,d6           ;  Otherwise, lovingly apply "loser pity bonus."
@Done:
                
                move.w  d6,d1           ; return stat gain value -> D1
                movem.l (sp)+,d0/d2-a0
                rts

    ; End of function CalculateStatGain

