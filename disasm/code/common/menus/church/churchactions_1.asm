
; ASM FILE code\common\menus\church\churchactions_1.asm :
; 0x20A02..0x21046 : Church functions

; =============== S U B R O U T I N E =======================================

cannotPromoteFlag = -36
promotionSectionLength = -34
promotionIndex = -32
promotionItem = -30
newClass = -28
currentClass = -26
stunnedMembersCount = -24
promotableMembersCount = -22
itemsHeldNumber = -20
cursedMembersCount = -18
poisonedMembersCount = -16
deadMembersCount = -14
member = -12
membersListLength = -10
actionCost = -8
currentGold = -4

ChurchMenuActions:
                
                movem.l d0-a5,-(sp)
                link    a6,#-36
                moveq   #0,d1
                move.w  ((CURRENT_PORTRAIT-$1000000)).w,d0
                blt.s   @txt_6E         
                jsr     j_InitPortraitWindow
@txt_6E:
                
                txt     110             ; "Welcome!{W2}{N}Your desire will be fulfilled!{W2}"
                clsTxt
                jsr     j_HidePortraitWindow
@StartMenu:
                
                moveq   #0,d0           ; initial choice : up
                moveq   #0,d1           ; animate-in direction : bottom
                moveq   #MENU_CHURCH,d2
                lea     (InitStack).w,a0
                jsr     j_ExecuteMenu
                cmpi.w  #$FFFF,d0
                beq.s   @ExitMenu
                bra.w   @CheckRaiseAction
@ExitMenu:
                
                moveq   #0,d1
                move.w  ((CURRENT_PORTRAIT-$1000000)).w,d0
                blt.s   @txt_71         
                jsr     j_InitPortraitWindow
@txt_71:
                
                txt     113             ; "{CLEAR}Be careful.  The light{N}is always on your side.{W1}"
                clsTxt
                jsr     j_HidePortraitWindow
                unlk    a6
                movem.l (sp)+,d0-a5
                rts
@CheckRaiseAction:
                
                cmpi.w  #0,d0
                bne.w   @CheckCureAction
                txt     118             ; "Let me investigate all{N}of you.{W2}"
                bsr.w   Church_GetCurrentForceMemberInfo
                clr.w   deadMembersCount(a6)
@CountDeadMembers_Loop:
                
                clr.w   d0
                move.b  (a0)+,d0
                move.w  d0,member(a6)
                jsr     j_GetCurrentHP
                tst.w   d1
                bhi.w   @RaiseNextMember
                addi.w  #1,deadMembersCount(a6)
                move.w  d0,((TEXT_NAME_INDEX_1-$1000000)).w
                txt     129             ; "Gosh!  {NAME} is{N}exhausted!{W2}"
                jsr     j_GetCurrentLevel
                mulu.w  #CHURCHMENU_PER_LEVEL_RAISE_COST,d1
                move.l  d1,actionCost(a6)
                jsr     j_GetClass
                move.w  #PROMOTIONSECTION_REGULAR_BASE,d2
                bsr.w   GetPromotionIndex
                cmpi.w  #0,cannotPromoteFlag(a6)
                beq.w   @ConfirmRaise
                addi.l  #CHURCHMENU_RAISE_COST_EXTRA_WHEN_PROMOTED,actionCost(a6)
@ConfirmRaise:
                
                move.l  actionCost(a6),((TEXT_NUMBER-$1000000)).w
                txt     130             ; "But I can recall the soul.{W2}{N}It will cost {#} gold{N}coins.  OK?"
                jsr     j_CreateGoldWindow
                jsr     j_YesNoChoiceBox
                jsr     j_HideGoldWindow
                cmpi.w  #0,d0
                beq.w   @CheckRaiseCost
                txt     124             ; "You don't need my help?{W2}"
                bra.w   @RaiseNextMember
@CheckRaiseCost:
                
                jsr     j_GetGold
                move.l  d1,currentGold(a6)
                move.l  actionCost(a6),d0
                cmp.l   d0,d1
                bcc.s   @DoRaise
                txt     125             ; "You can't afford it?!{N}What a pity....{W2}"
                bra.s   @RaiseNextMember
@DoRaise:
                
                moveq   #0,d1
                move.l  actionCost(a6),d1
                jsr     j_DecreaseGold
                move.w  member(a6),d0
                move.w  #200,d1
                jsr     j_IncreaseCurrentHP
                sndCom  MUSIC_REVIVE
                jsr     WaitForMusicResumeAndPlayerInput(pc)
                nop
                move.w  member(a6),d0
                bsr.w   UpdateAllyMapSprite
                move.w  member(a6),((TEXT_NAME_INDEX_1-$1000000)).w
                txt     131             ; "{NAME} is revived!{W2}"
@RaiseNextMember:
                
                dbf     d7,@CountDeadMembers_Loop
                cmpi.w  #0,deadMembersCount(a6)
                bne.w   @ExitSave
                txt     128             ; "Nobody is dead.{W2}"
                bra.w   @ExitSave
@CheckCureAction:
                
                cmpi.w  #1,d0
                bne.w   @CheckPromoAction
                txt     118             ; "Let me investigate all{N}of you.{W2}"
                bsr.w   Church_GetCurrentForceMemberInfo
                clr.w   poisonedMembersCount(a6)
                clr.w   cursedMembersCount(a6)
                clr.w   stunnedMembersCount(a6)
@CountPoisonedMembers_Loop:
                
                clr.w   d0
                move.b  (a0)+,d0
                movem.l a0,-(sp)
                move.w  d0,member(a6)
                jsr     j_GetCombatantEntryAddress
                lea     COMBATANT_OFFSET_STATUSEFFECTS(a0),a0
                move.w  (a0),d2
                move.w  d2,d3
                andi.w  #STATUSEFFECT_POISON,d3
                beq.w   @CureNextPoisonedMember
                addi.w  #1,poisonedMembersCount(a6)
                move.w  member(a6),((TEXT_NAME_INDEX_1-$1000000)).w
                txt     121             ; "Gosh!  {NAME} is{N}poisoned!{W2}"
                move.l  #CHURCHMENU_CURE_POISON_COST,actionCost(a6)
                move.l  actionCost(a6),((TEXT_NUMBER-$1000000)).w
                txt     123             ; "But I can treat you.{N}It will cost {#} gold{N}coins.  OK?"
                jsr     j_CreateGoldWindow
                jsr     j_YesNoChoiceBox
                jsr     j_HideGoldWindow
                cmpi.w  #0,d0
                beq.w   @CheckCurePoisonCost
                txt     124             ; "You don't need my help?{W2}"
                bra.w   @CureNextPoisonedMember
@CheckCurePoisonCost:
                
                jsr     j_GetGold
                move.l  d1,currentGold(a6)
                move.l  actionCost(a6),d0
                cmp.l   d0,d1
                bcc.s   @DoCurePoison
                txt     125             ; "You can't afford it?!{N}What a pity....{W2}"
                clr.w   d7
                bra.s   @CureNextPoisonedMember
@DoCurePoison:
                
                moveq   #0,d1
                move.l  actionCost(a6),d1
                jsr     j_DecreaseGold
                move.w  member(a6),d0
                move.w  d2,d1
                andi.w  #STATUSEFFECT_STUN|STATUSEFFECT_CURSE|STATUSEFFECT_MUDDLE2|STATUSEFFECT_MUDDLE|STATUSEFFECT_SLEEP|STATUSEFFECT_SILENCE|STATUSEFFECT_SLOW|STATUSEFFECT_BOOST|STATUSEFFECT_ATTACK,d1
                jsr     j_SetStatusEffects
                sndCom  MUSIC_CURE
                jsr     WaitForMusicResumeAndPlayerInput(pc)
                nop
                move.w  member(a6),((TEXT_NAME_INDEX_1-$1000000)).w
                txt     126             ; "{NAME} is no longer{N}poisoned.{W2}"
@CureNextPoisonedMember:
                
                movem.l (sp)+,a0
                dbf     d7,@CountPoisonedMembers_Loop
                cmpi.w  #0,poisonedMembersCount(a6)
                bne.w   @CureStun
                txt     119             ; "Nobody is poisoned.{W2}"
@CureStun:
                
                bsr.w   Church_CureStun
                bsr.w   Church_GetCurrentForceMemberInfo
@CountCursedMembers_Loop:
                
                clr.w   d0
                move.b  (a0)+,d0
                movem.l a0,-(sp)
                move.w  d0,member(a6)
                jsr     j_GetCombatantEntryAddress
                lea     COMBATANT_OFFSET_STATUSEFFECTS(a0),a0
                move.w  (a0),d2
                andi.w  #STATUSEFFECT_CURSE,d2
                beq.w   @CureNextCursedMember
                addi.w  #1,cursedMembersCount(a6)
                move.w  member(a6),((TEXT_NAME_INDEX_1-$1000000)).w
                txt     122             ; "Gosh!  {NAME} is{N}cursed!{W2}"
                clr.w   d1
                jsr     j_GetItemAndNumberHeld
                move.w  d2,itemsHeldNumber(a6)
                move.w  itemsHeldNumber(a6),d6
                subq.b  #1,d6
                clr.l   d3
@CalculateCureCurseCost_Loop:
                
                move.w  d6,d1
                jsr     j_GetItemAndNumberHeld
                jsr     j_IsItemCursed
                bcc.w   @IsNextItemCursed
                jsr     j_GetItemDefAddress
                clr.l   d4
                move.w  ITEMDEF_OFFSET_PRICE(a0),d4
                lsr.w   #2,d4           ; cure curse cost = 25% of item price
                add.l   d4,d3
@IsNextItemCursed:
                
                dbf     d6,@CalculateCureCurseCost_Loop
                move.l  d3,actionCost(a6)
                move.l  actionCost(a6),((TEXT_NUMBER-$1000000)).w
                txt     123             ; "But I can treat you.{N}It will cost {#} gold{N}coins.  OK?"
                jsr     j_CreateGoldWindow
                jsr     j_YesNoChoiceBox
                jsr     j_HideGoldWindow
                cmpi.w  #0,d0
                beq.w   @CheckCureCurseCost
                txt     124             ; "You don't need my help?{W2}"
                bra.w   @CureNextCursedMember
@CheckCureCurseCost:
                
                jsr     j_GetGold
                move.l  d1,currentGold(a6)
                move.l  actionCost(a6),d0
                cmp.l   d0,d1
                bcc.s   @DoCureCurse
                txt     125             ; "You can't afford it?!{N}What a pity....{W2}"
                clr.w   d7
                bra.s   @CureNextCursedMember
@DoCureCurse:
                
                moveq   #0,d1
                move.l  actionCost(a6),d1
                jsr     j_DecreaseGold
                move.w  member(a6),d0
                jsr     j_UnequipAllItemsIfNotCursed
                sndCom  MUSIC_CURE
                jsr     WaitForMusicResumeAndPlayerInput(pc)
                nop
                move.w  member(a6),((TEXT_NAME_INDEX_1-$1000000)).w
                txt     127             ; "{NAME} is no longer{N}cursed.{W2}"
@CureNextCursedMember:
                
                movem.l (sp)+,a0
                dbf     d7,@CountCursedMembers_Loop
                cmpi.w  #0,cursedMembersCount(a6)
                bne.w   @ExitSave
                txt     120             ; "Nobody is cursed.{W2}"
                bra.w   @ExitSave
@CheckPromoAction:
                
                cmpi.w  #2,d0
                bne.w   @StartSave      
                txt     118             ; "Let me investigate all{N}of you.{W2}"
                bsr.w   CountPromotableMembers
                cmpi.w  #0,promotableMembersCount(a6)
                bne.w   @StartPromo     
                txt     135             ; "{CLEAR}Well, nobody can be{N}promoted now.{W2}"
                bra.w   @ExitSave
@StartPromo:
                
                ; @StartPromo
                txt     136             ; "{CLEAR}Who do you want to{N}promote?{W2}"
                clsTxt
                move.b  #0,((byte_FFB13C-$1000000)).w
                jsr     j_InitMemberListScreen
                cmpi.w  #$FFFF,d0
                bne.w   @CheckPromotableClass
                txt     137             ; "Oh, I'm wrong.{W2}"
                bra.w   @ExitSave
@CheckPromotableClass:
                
                move.w  d0,member(a6)
                jsr     j_GetClass
                move.w  d1,currentClass(a6)
                move.w  #PROMOTIONSECTION_REGULAR_BASE,d2
                bsr.w   GetPromotionIndex
                cmpi.w  #0,cannotPromoteFlag(a6)
                beq.w   @CheckPromotableLevel
                move.w  member(a6),((TEXT_NAME_INDEX_1-$1000000)).w
                txt     142             ; "Hmmm...{D1} {NAME} had{N}better remain the current{N}class.{W2}"
                bra.w   @RestartPromo
@CheckPromotableLevel:
                
                jsr     j_GetCurrentLevel
                cmpi.w  #CHURCHMENU_MIN_PROMOTABLE_LEVEL,d1
                bcc.w   @ConfirmPromo
                move.w  member(a6),((TEXT_NAME_INDEX_1-$1000000)).w
                txt     138             ; "Hmmm...{NAME} needs{N}more experience!{W2}"
                bra.w   @RestartPromo
@ConfirmPromo:
                
                clr.w   newClass(a6)
                move.w  member(a6),((TEXT_NAME_INDEX_1-$1000000)).w
                txt     139             ; "{NAME} wants to be{N}promoted to the a fighting{N}class, right?"
                jsr     j_YesNoChoiceBox
                cmpi.w  #0,d0
                beq.w   @CheckSpecialPromo
                txt     137             ; "Oh, I'm wrong.{W2}"
                bra.w   @RestartPromo
@CheckSpecialPromo:
                
            if (CLASS_EXPANSIONS=0)
                move.w  currentClass(a6),d1
                move.w  #PROMOTIONSECTION_SPECIAL_BASE,d2
                bsr.w   GetPromotionIndex
                cmpi.w  #0,cannotPromoteFlag(a6)
                bne.w   @CheckRegularPromo
                clr.w   promotionItem(a6)
                move.w  promotionIndex(a6),d7
                subq.b  #1,d7
                move.w  #PROMOTIONSECTION_SPECIAL_ITEM,d2
                bsr.w   FindPromotionSection
                addq.w  #1,a0
@GetPromotionItemIndex_Loop:
                
                move.b  (a0)+,promotionItem(a6)
                dbf     d7,@GetPromotionItemIndex_Loop
                
                lea     ((TARGETS_LIST-$1000000)).w,a0
                move.w  ((TARGETS_LIST_LENGTH-$1000000)).w,d6
                subq.w  #1,d6
@ParseMemberItems_Loop:
                
                move.b  (a0)+,d0
                clr.w   d1
                jsr     j_GetItemAndNumberHeld
                cmpi.w  #0,d2
                beq.w   @ParseNextMemberItems
                move.w  d2,d7
                subq.w  #1,d7
@FindPromotionItem_Loop:
                
                move.w  d7,d1
                jsr     j_GetItemAndNumberHeld
                move.b  d1,d2
                cmp.b   promotionItem(a6),d2
                beq.w   @ConfirmSpecialPromo
                dbf     d7,@FindPromotionItem_Loop
@ParseNextMemberItems:
                
                dbf     d6,@ParseMemberItems_Loop
                
                bra.w   @CheckRegularPromo
@ConfirmSpecialPromo:
                
                move.w  d0,cursedMembersCount(a6) ; temporary variable : index of member holding promotion item
                move.w  d7,itemsHeldNumber(a6) ; temporary variable : item slot
                move.w  d1,promotionItem(a6)
                move.w  #PROMOTIONSECTION_SPECIAL_PROMO,d2
                bsr.w   FindPromotionSection
                addq.w  #1,a0
                move.w  promotionIndex(a6),d7
                subq.w  #1,d7
                clr.w   d0
@GetSpecialClass_Loop:
                
                move.b  (a0)+,d0
                dbf     d7,@GetSpecialClass_Loop
                
                move.w  d0,newClass(a6)
                move.w  member(a6),((TEXT_NAME_INDEX_1-$1000000)).w
                move.w  promotionItem(a6),((TEXT_NAME_INDEX_3-$1000000)).w
                move.w  newClass(a6),((TEXT_NAME_INDEX_2-$1000000)).w
                txt     143             ; "{NAME} can be promoted{N}to {CLASS} with the{N}{ITEM}.{W2}"
                txt     147             ; "OK?"
                jsr     j_YesNoChoiceBox
                cmpi.w  #0,d0
                beq.w   @CheckSORC
                txt     144             ; "Then"
                bra.w   @CheckRegularPromo
@CheckSORC:
                
                cmpi.w  #CLASS_SORC,newClass(a6)
                bne.w   @RemovePromotionItem
                move.w  member(a6),((TEXT_NAME_INDEX_1-$1000000)).w
                txt     145             ; "{NAME} loses all spells{N}that were learned.{N}OK?"
                jsr     j_YesNoChoiceBox
                cmpi.w  #0,d0
                bne.w   @RestartPromo
@RemovePromotionItem:
                
                move.w  cursedMembersCount(a6),d0 ; temporary variable : index of member holding promotion item
                move.w  itemsHeldNumber(a6),d1 ; temporary variable : item slot
                jsr     j_RemoveItemBySlot
				
            else
                move.w  currentClass(a6),d1
                move.w  #PROMOTIONSECTION_VIGOR_BASE,d2
                bsr.w   GetPromotionData
                cmpi.w  #0,cannotPromoteFlag(a6)
                bne.w   @CheckSpecialPromo2
                clr.w   promotionItem(a6)
                move.w  promotionIndex(a6),d7
                subq.w  #1,d7
                move.w  #PROMOTIONSECTION_VIGOR_PROMO,d2
                bsr.w   FindPromotionSection
                addq.w  #1,a0
                move.w  #ITEM_VIGOR_BALL,d1
                jsr     GetItemInventoryLocation
                cmpi.w  #$FFFF,d0
                beq.s   @CheckSpecialPromo2
                move.w  #ITEM_VIGOR_BALL,promotionItem(a6)
                clr.w   d0
                bsr.w   PromoWithItem
                jsr     YesNoChoiceBox
                cmpi.w  #0,d0
                beq.w   @ChangeSpells
                txt     $90             ; "Then"
				
@CheckSpecialPromo2:
                move.w  currentClass(a6),d1
                move.w  #PROMOTIONSECTION_FEATHER_BASE,d2
                bsr.w   GetPromotionData
                cmpi.w  #0,cannotPromoteFlag(a6)
                bne.w   @CheckSpecialPromo3
                clr.w   promotionItem(a6)
                move.w  promotionIndex(a6),d7
                subq.w  #1,d7
                move.w  #PROMOTIONSECTION_FEATHER_PROMO,d2
                bsr.w   FindPromotionSection
                addq.w  #1,a0
                move.w  #ITEM_ROC_FEATHER,d1
                jsr     GetItemInventoryLocation
                cmpi.w  #$FFFF,d0
                beq.s   @CheckSpecialPromo3
                move.w  #ITEM_ROC_FEATHER,promotionItem(a6)
                clr.w   d0
                bsr.w   PromoWithItem
                jsr     YesNoChoiceBox
                cmpi.w  #0,d0
                beq.w   @ChangeSpells
                txt     $90             ; "Then"
				
@CheckSpecialPromo3:
                move.w  currentClass(a6),d1
                move.w  #PROMOTIONSECTION_TRAINING_BASE,d2
                bsr.w   GetPromotionData
                cmpi.w  #0,cannotPromoteFlag(a6)
                bne.w   @CheckSpecialPromo4
                clr.w   promotionItem(a6)
                move.w  promotionIndex(a6),d7
                subq.w  #1,d7
                move.w  #PROMOTIONSECTION_TRAINING_PROMO,d2
                bsr.w   FindPromotionSection
                addq.w  #1,a0
                move.w  #ITEM_TACTICS_PRIMER,d1
                jsr     GetItemInventoryLocation
                cmpi.w  #$FFFF,d0
                beq.s   @CheckSpecialPromo4
                move.w  #ITEM_TACTICS_PRIMER,promotionItem(a6)
                clr.w   d0
                bsr.w   PromoWithItem
                jsr     YesNoChoiceBox
                cmpi.w  #0,d0
                beq.w   @ChangeSpells
                txt     $90             ; "Then"
				
@CheckSpecialPromo4:
                move.w  currentClass(a6),d1
                move.w  #PROMOTIONSECTION_TOME_BASE,d2
                bsr.w   GetPromotionData
                cmpi.w  #0,cannotPromoteFlag(a6)
                bne.w   @CheckSpecialPromo5
                clr.w   promotionItem(a6)
                move.w  promotionIndex(a6),d7
                subq.w  #1,d7
                move.w  #PROMOTIONSECTION_TOME_PROMO,d2
                bsr.w   FindPromotionSection
                addq.w  #1,a0
                move.w  #ITEM_ARS_INNOVA,d1
                jsr     GetItemInventoryLocation
                cmpi.w  #$FFFF,d0
                beq.s   @CheckSpecialPromo5
                move.w  #ITEM_ARS_INNOVA,promotionItem(a6)
                clr.w   d0
                bsr.w   PromoWithItem
                jsr     YesNoChoiceBox
                cmpi.w  #0,d0
                beq.w   @ChangeSpells
                txt     $90             ; "Then"
				
@CheckSpecialPromo5:
                move.w  currentClass(a6),d1
                move.w  #PROMOTIONSECTION_NASKA_BASE,d2
                bsr.w   GetPromotionData
                cmpi.w  #0,cannotPromoteFlag(a6)
                bne.w   @CheckRegularPromo
                clr.w   promotionItem(a6)
                move.w  promotionIndex(a6),d7
                subq.w  #1,d7
                move.w  #PROMOTIONSECTION_NASKA_PROMO,d2
                bsr.w   FindPromotionSection
                addq.w  #1,a0
                move.w  #ITEM_NASKA_PLANS,d1
                jsr     GetItemInventoryLocation
                cmpi.w  #$FFFF,d0
                beq.s   @CheckRegularPromo
                move.w  #ITEM_NASKA_PLANS,promotionItem(a6)
                clr.w   d0
                bsr.w   PromoWithItem
                jsr     YesNoChoiceBox
                cmpi.w  #0,d0
                beq.w   @ChangeSpells
                txt     $90             ; "Then"
                bra.w   @CheckRegularPromo
@ChangeSpells:
                
                cmpi.w  #CLASS_SORC,newClass(a6)
                bne.w   @RemovePromoItem
                move.w  member(a6),((TEXT_NAME_INDEX_1-$1000000)).w
                txt     $91             ; "{NAME} loses all spells{N}that were learned.{N}OK?"
                jsr     YesNoChoiceBox
                cmpi.w  #0,d0
                bne.w   @RestartPromo
@RemovePromoItem:
                
                move.w  promotionItem(a6),d0
                jsr     RemoveItemFromInventory
            endif
			
                bra.w   @DoPromo
@CheckRegularPromo:
                
                move.w  #PROMOTIONSECTION_REGULAR_BASE,d2
                move.w  currentClass(a6),d1
                bsr.w   GetPromotionIndex
                move.w  promotionIndex(a6),d7
                subq.w  #1,d7
                move.w  #1,d2
                bsr.w   FindPromotionSection
                addq.w  #1,a0
                clr.w   d0
@GetNewClass_Loop:
                
                move.b  (a0)+,d0
                dbf     d7,@GetNewClass_Loop
                
                move.w  d0,newClass(a6)
                move.w  member(a6),((TEXT_NAME_INDEX_1-$1000000)).w
                move.w  newClass(a6),((TEXT_NAME_INDEX_2-$1000000)).w
                txt     146             ; "{NAME} can be promoted{N}to {CLASS}.{N}OK?"
                jsr     j_YesNoChoiceBox
                cmpi.w  #0,d0
                bne.w   @RestartPromo
@DoPromo:
                
                move.w  currentClass(a6),((TEXT_NAME_INDEX_1-$1000000)).w
                move.w  member(a6),((TEXT_NAME_INDEX_2-$1000000)).w
                move.w  newClass(a6),((TEXT_NAME_INDEX_3-$1000000)).w
                txt     140             ; "Now, let me conduct the{N}rite.{D1}  The light blesses...{N}{D1}{CLASS} {NAME}...{W2}{N}with a class of {CLASS}!{W2}"
                move.w  member(a6),d0
                move.w  newClass(a6),d1
                jsr     j_SetClass
                jsr     j_Promote
                cmpi.w  #CLASS_SORC,newClass(a6)
                bne.s   @CheckNewWeaponTypeClasses
                bsr.w   ReplaceSpellsWithSORCdefaults
@CheckNewWeaponTypeClasses:
                
                cmpi.w  #CLASS_MMNK,newClass(a6)
                beq.s   @UnequipWeapon  
                cmpi.w  #CLASS_NINJ,newClass(a6)
                beq.s   @UnequipWeapon  
                bra.w   @sndCom_PromotionMusic
@UnequipWeapon:
                
                move.w  member(a6),d0   ; new class uses a different type of weapon, so unequip weapon
                jsr     j_GetEquippedWeapon
                cmpi.w  #$FFFF,d1
                beq.s   @sndCom_PromotionMusic
                jsr     j_UnequipWeapon
@sndCom_PromotionMusic:
                
                sndCom  MUSIC_PROMOTION
                jsr     WaitForMusicResumeAndPlayerInput(pc)
                nop
                move.w  member(a6),d0
                bsr.w   UpdateAllyMapSprite
                move.w  member(a6),((TEXT_NAME_INDEX_1-$1000000)).w
                move.w  newClass(a6),((TEXT_NAME_INDEX_2-$1000000)).w
                txt     141             ; "{NAME} was successfully{N}promoted to {CLASS}.{W2}"
                move.w  member(a6),d0
                move.b  #1,d1
                jsr     j_SetLevel
                clr.w   d1
                jsr     j_SetCurrentEXP
@RestartPromo:
                
                bra.w   @StartPromo     
@StartSave:
                
                ; @StartSave
                txt     114             ; "May I record your adventure{N}now?"
                jsr     j_YesNoChoiceBox
                cmpi.w  #0,d0
                beq.w   @DoSaveGame
                txt     124             ; "You don't need my help?{W2}"
                bra.w   @ExitSave
@DoSaveGame:
                
                move.b  ((CURRENT_MAP-$1000000)).w,((EGRESS_MAP_INDEX-$1000000)).w
                move.w  ((CURRENT_SAVE_SLOT-$1000000)).w,d0
                setFlg  399             ; Set after first battle's cutscene OR first save? Checked at witch screens
                jsr     (SaveGame).w
                sndCom  MUSIC_SAVE
                jsr     WaitForMusicResumeAndPlayerInput(pc)
                nop
                txt     115             ; "{CLEAR}The light allows you to{N}resume your adventure!{W1}"
                txt     116             ; "{CLEAR}Will you continue your{N}adventure?"
                jsr     j_YesNoChoiceBox
                cmpi.w  #0,d0
                beq.w   @ExitMenu
                txt     117             ; "{CLEAR}Then, take a rest before{N}you continue.{W1}"
                jsr     (FadeOutToBlack).w
                jmp     (WitchSuspend).w
                bra.w   *+4
@ExitSave:
                
                clsTxt
                txt     112             ; "{CLEAR}Do you have another desire?"
                jsr     j_YesNoChoiceBox
                cmpi.w  #0,d0
                bne.w   @ExitMenu
                clsTxt
                bra.w   @StartMenu      

    ; End of function ChurchMenuActions
	
            if (CLASS_EXPANSIONS=1)

; =============== S U B R O U T I N E =======================================

PromoWithItem:
                
                move.b  (a0)+,d0
                dbf     d7,PromoWithItem
                move.w  d0,newClass(a6)
                move.w  member(a6),((TEXT_NAME_INDEX_1-$1000000)).w
                move.w  promotionItem(a6),((TEXT_NAME_INDEX_3-$1000000)).w
                move.w  newClass(a6),((TEXT_NAME_INDEX_2-$1000000)).w
                txt     $8F             ; "{NAME} can be promoted{N}to {CLASS} with the{N}{ITEM}.{W2}"
                txt     $93             ; "OK?"
                rts

    ; End of function PromoWithItem
	
            endif

