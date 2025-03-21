
; ASM FILE code\common\menus\caravan\CaravanMenu_1.asm :
; 0x21FD2..0x228A2 : Caravan functions

; =============== S U B R O U T I N E =======================================

targetItemSlot = -12
targetItemIndex = -10
targetMember = -8
itemSlot = -6
itemIndex = -4
member = -2

CaravanMenu:
                
                module
                movem.l d0-a5,-(sp)
                link    a6,#-12
                move.w  #2,d1           ; "{LEADER}, are you ready{N}for battle?{D3}"
                bsr.w   DisplayCaravanMessageWithPortrait
                moveq   #0,d1           ; animate-in from bottom
                bra.w   @StartCaravan   
@RestartCaravan:
                
                moveq   #-1,d1          ; animate-in from right
@StartCaravan:
                
                moveq   #0,d0           ; initial choice : up
                moveq   #MENU_CARAVAN,d2
                lea     (InitialStack).w,a0
                jsr     ExecuteDiamondMenu
                cmpi.w  #-1,d0
                beq.w   @ExitCaravan
                add.w   d0,d0
                move.w  rjt_CaravanMenu(pc,d0.w),d0
                jsr     rjt_CaravanMenu(pc,d0.w)
                bra.s   @RestartCaravan 
rjt_CaravanMenu:
                
                dc.w caravanMenu_Join-rjt_CaravanMenu
                dc.w caravanMenu_Depot-rjt_CaravanMenu
                dc.w caravanMenu_Rename-rjt_CaravanMenu
                dc.w caravanMenu_Purge-rjt_CaravanMenu
@ExitCaravan:
                
                moveq   #0,d0
                moveq   #0,d1
                move.w  #10,d1          ; "{LEADER}, take it easy!{W1}"
                bsr.w   DisplayCaravanMessageWithPortrait
                unlk    a6
                movem.l (sp)+,d0-a5
                rts

    ; End of function CaravanMenu

                modend

; =============== S U B R O U T I N E =======================================

targetItemSlot = -12
targetItemIndex = -10
targetMember = -8
itemSlot = -6
itemIndex = -4
member = -2

caravanMenu_Join:
                
                module
                moveq   #2,d1           ; ; reserve members
                bsr.w   PopulateGenericListWithMembersList
                tst.w   ((GENERIC_LIST_LENGTH-$1000000)).w
                beq.w   @NoReserveMembers
                
                ; Pick joiner
                move.w  #15,d1          ; "Who joins the battle party?{W2}"
                bsr.w   DisplayCaravanMessageWithPortrait
                jsr     InitializeMembersListScreen
                move.w  d0,member(a6)
                cmpi.w  #-1,d0
                beq.w   byte_220E8      ; @Exit
                
                jsr     GetCurrentHp
                tst.w   d1
                bne.s   @CheckBattleParty
                
                ; Joiner is dead
                move.w  member(a6),((DIALOGUE_NAME_INDEX_1-$1000000)).w
                txt     19              ; "{NAME} is dead.{N}Are you sure?"
                jsr     alt_YesNoPrompt
                tst.w   d0
                bne.w   @Restart
@CheckBattleParty:
                
                moveq   #1,d1           ; battle party members
                bsr.w   PopulateGenericListWithMembersList
                cmpi.w  #FORCE_MAX_SIZE,((GENERIC_LIST_LENGTH-$1000000)).w
                bcc.s   @ChooseRelief
                
                ; If force max size not reached, join immediately
                move.w  member(a6),d0
                jsr     JoinBattleParty
                move.w  member(a6),((DIALOGUE_NAME_INDEX_1-$1000000)).w
                move.w  #21,d1          ; "{NAME}, fight bravely in the{N}front.{W2}"
                bsr.w   DisplayCaravanMessageWithPortrait
                bra.s   @Goto_Restart
@ChooseRelief:
                
                move.w  #23,d1          ; "Choose a relief.{W2}"
                bsr.w   DisplayCaravanMessageWithPortrait
                jsr     InitializeMembersListScreen
                cmpi.w  #-1,d0
                beq.s   byte_220DE      ; @CloseDialogueWindowAndRestart
                
                ; Is leader leaving the battle party?
                tst.w   d0
                beq.s   @LeaderCannotLeave
                
                ; 
                move.w  d0,((DIALOGUE_NAME_INDEX_1-$1000000)).w
                jsr     LeaveBattleParty
                move.w  member(a6),d0
                jsr     JoinBattleParty
                move.w  member(a6),((DIALOGUE_NAME_INDEX_2-$1000000)).w
                move.w  #17,d1          ; "{NAME} returns to the{N}Caravan.{W2}{N}{NAME} joins the battle{N}party.{W2}"
                bsr.w   DisplayCaravanMessageWithPortrait
                bra.s   @Goto_RestartJoin
@LeaderCannotLeave:
                
                move.w  #20,d1          ; "{LEADER}!  What will they{N}do without you?!{W2}"
                bsr.w   DisplayCaravanMessageWithPortrait
@Goto_RestartJoin:
                
                bra.s   @Goto_Restart
byte_220DE:
                
                @CloseDialogueWindowAndRestart:
                txt     4               ; "Did you change your mind?{W2}"
                clsTxt
@Goto_Restart:
                
                bra.s   @Goto_Restart_0
byte_220E8:
                
                @Exit:
                txt     4               ; "Did you change your mind?{W2}"
                clsTxt
                rts
@Goto_Restart_0:
                
                bra.s   @Restart
@NoReserveMembers:
                
                move.w  #18,d1          ; "Oh, {LEADER}...there are{N}no reliefs.{W2}"
                bsr.w   DisplayCaravanMessageWithPortrait
                rts
@Restart:
                
                bra.w   caravanMenu_Join

    ; End of function caravanMenu_Join

                modend

; =============== S U B R O U T I N E =======================================


caravanMenu_Purge:
                
                module
                moveq   #1,d1           ; battle party members
                bsr.w   PopulateGenericListWithMembersList
                tst.w   ((GENERIC_LIST_LENGTH-$1000000)).w
                beq.s   @Return
                
                ; Pick a quitter
                move.w  #16,d1          ; "Who quits the battle party?{W2}"
                bsr.w   DisplayCaravanMessageWithPortrait
                jsr     InitializeMembersListScreen
                cmpi.w  #-1,d0
                beq.s   byte_22144      ; @Exit
                
                ; Is leader leaving the battle party?
                tst.w   d0
                beq.s   @LeaderCannotLeave
                jsr     LeaveBattleParty
                move.w  d0,((DIALOGUE_NAME_INDEX_1-$1000000)).w
                move.w  #22,d1          ; "{NAME}, why don't you{N}take a rest now?{W2}"
                bsr.w   DisplayCaravanMessageWithPortrait
                bra.s   @Goto_Restart
@LeaderCannotLeave:
                
                move.w  #20,d1          ; "{LEADER}!  What will they{N}do without you?!{W2}"
                bsr.w   DisplayCaravanMessageWithPortrait
@Goto_Restart:
                
                bra.s   @Goto_Restart_0
byte_22144:
                
                @Exit:
                txt     4               ; "Did you change your mind?{W2}"
                clsTxt
                rts
@Goto_Restart_0:
                
                bra.s   @Restart
@Return:
                
                rts
@Restart:
                
                bra.s   caravanMenu_Purge

    ; End of function caravanMenu_Purge

                modend

; =============== S U B R O U T I N E =======================================


caravanMenu_Depot:
                
                module
                moveq   #0,d1           ; animate-in from bottom
                bra.w   @Start          
@Restart:
                
                moveq   #-1,d1          ; animate-in from right
@Start:
                
                moveq   #0,d0           ; initial choice : up
                moveq   #MENU_DEPOT,d2
                lea     (InitialStack).w,a0
                jsr     ExecuteDiamondMenu
                cmpi.w  #-1,d0
                beq.w   @Return
                add.w   d0,d0
                move.w  rjt_CaravanDepotSubmenuActions(pc,d0.w),d0
                jsr     rjt_CaravanDepotSubmenuActions(pc,d0.w)
                bra.s   @Restart        
rjt_CaravanDepotSubmenuActions:
                
                dc.w caravanDepotSubmenu_Look-rjt_CaravanDepotSubmenuActions
                dc.w caravanDepotSubmenu_Deposit-rjt_CaravanDepotSubmenuActions
                dc.w caravanDepotSubmenu_Derive-rjt_CaravanDepotSubmenuActions
                dc.w caravanDepotSubmenu_Drop-rjt_CaravanDepotSubmenuActions
@Return:
                
                rts

    ; End of function caravanMenu_Depot

                modend

; =============== S U B R O U T I N E =======================================

targetItemSlot = -12
targetItemIndex = -10
targetMember = -8
itemSlot = -6
itemIndex = -4
member = -2

caravanDepotSubmenu_Look:
                
                module
                bsr.w   CopyCaravanItems
                tst.w   ((GENERIC_LIST_LENGTH-$1000000)).w
                beq.w   @StorehouseIsEmpty
                
                move.w  #MESSAGE_CARAVAN_APPRAISE_WHICH_ITEM,d1 ; "Appraise which item?{W2}"
                bsr.w   DisplayCaravanMessageWithPortrait
                jsr     BuildShopInventoryScreen
                move.w  d0,d2
                move.w  d1,itemSlot(a6)
                move.w  d2,itemIndex(a6)
                cmpi.w  #-1,d0
                beq.w   byte_222E0      ; @ChangedYourMind
                chkFlg  FLAG_FOLLOWER_ASTRAL              ; Astral is a follower
                bne.s   @AstralIsFollower
                moveq   #PORTRAIT_ROHDE,d0
                bra.s   @HasSpecialDescription
@AstralIsFollower:
                
                moveq   #PORTRAIT_ASTRAL,d0
@HasSpecialDescription:
                
                moveq   #0,d1
                jsr     OpenPortraitWindow
                move.w  itemIndex(a6),d1
                bsr.w   DisplaySpecialCaravanDescription
                bne.w   @IsUnsellable
                
                ; Check equipment type
                move.w  itemIndex(a6),d1
                jsr     GetEquipmentType
                tst.w   d2
                bne.s   @IsWeapon
                txt     92              ; "It's a tool.{W2}"
                bra.s   @HasUseSpell
@IsWeapon:
                
                cmpi.w  #EQUIPMENTTYPE_WEAPON,d2
                bne.s   byte_221F4      ; @Ring
                txt     90              ; "It's a weapon.{W2}"
                bra.s   @HasUseSpell
byte_221F4:
                
                @Ring:
                txt     91              ; "It's a ring.{W2}"
@HasUseSpell:
                
                move.w  itemIndex(a6),d1
                jsr     GetItemDefAddress
                cmpi.b  #SPELL_NOTHING,ITEMDEF_OFFSET_USE_SPELL(a0)
                beq.s   byte_22210      ; @NoEffect
                txt     93              ; "It has a special effect when{N}used in battle.{W2}"
                bra.s   @IsWeaponOrRing
byte_22210:
                
                @NoEffect:
                txt     94              ; "It has no effect in battle.{W2}"
@IsWeaponOrRing:
                
                move.w  itemIndex(a6),d1
                jsr     GetEquipmentType
                tst.w   d2
                beq.w   @IsUnsellable
                
                cmpi.w  #ITEM_POWER_RING,d1 ; HARDCODED item indexes with special message
                beq.w   byte_222A4      ; @EverybodyCanEquipIt
                cmpi.w  #ITEM_PROTECT_RING,d1
                beq.w   byte_222A4      ; @EverybodyCanEquipIt
                cmpi.w  #ITEM_QUICK_RING,d1
                beq.w   byte_222A4      ; @EverybodyCanEquipIt
                cmpi.w  #ITEM_RUNNING_RING,d1
                beq.w   byte_222A4      ; @EverybodyCanEquipIt
                move.w  itemIndex(a6),d1
                move.w  d1,((DIALOGUE_NAME_INDEX_1-$1000000)).w
                txt     96              ; "The {ITEM} is for{N}"
                jsr     UpdateForce
                move.w  ((TARGETS_LIST_LENGTH-$1000000)).w,d7
                subq.w  #1,d7
                bcs.w   @IsUnsellable
                lea     ((TARGETS_LIST-$1000000)).w,a0
                
                clr.w   d3
@ClearCount:    clr.w   d6
@EquippableMessage_Loop:
                
                cmpi.w  #4,d6
                beq.s   @ClearCount
                move.l  d7,-(sp)
                move.b  (a0)+,d0
                jsr     IsWeaponOrRingEquippable
                movem.l (sp)+,d7
                bcc.s   @NextMember
                move.w  d0,((DIALOGUE_NAME_INDEX_1-$1000000)).w ; argument (character index) for trap #5 using a {NAME} command
                txt     98              ; "{DICT}{NAME},"
                addq.w  #1,d6
                moveq   #2,d3
                cmpi.w  #4,d6
                bne.s   @NextMember
                txt     99              ; "{N}"
@NextMember:    dbf     d7,@EquippableMessage_Loop

                tst.w   d3
                bne.s   byte_2229C      
                txt     97              ; "nobody so far.{W2}"
                bra.s   @Goto_IsUnsellable
byte_2229C:
                
                txt     100             ; "to equip.{W2}"
@Goto_IsUnsellable:
                
                bra.w   @IsUnsellable
byte_222A4:
                
                @EverybodyCanEquipIt:
                txt     95              ; "Everybody can equip it.{W2}"
@IsUnsellable:
                
                move.w  itemIndex(a6),d1
                jsr     GetItemDefAddress
                btst    #ITEMTYPE_BIT_UNSELLABLE,ITEMDEF_OFFSET_TYPE(a0)
                beq.s   @GetSellingPrice
                txt     102             ; "You can't sell it at a shop.{W2}"
                bra.s   byte_222D4      ; @CannotBeSold
@GetSellingPrice:
                
                clr.l   d1
                move.w  ITEMDEF_OFFSET_PRICE(a0),d1
                mulu.w  #ITEMSELLPRICE_MULTIPLIER,d1
                lsr.l   #ITEMSELLPRICE_BITSHIFTRIGHT,d1
                move.l  d1,((DIALOGUE_NUMBER-$1000000)).w
                txt     101             ; "It brings {#} gold coins{N}at a shop.{W2}"
byte_222D4:
                
                @CannotBeSold:
                clsTxt
                jsr     ClosePortraitWindow
                bra.s   @Goto_Restart
byte_222E0:
                
                @ChangedYourMind:
                txt     4               ; "Did you change your mind?{W2}"
                clsTxt
                rts
@Goto_Restart:
                
                bra.s   @Restart
@StorehouseIsEmpty:
                
                move.w  #MESSAGE_CARAVAN_WELL_THE_STOREHOUSE_IS_EMPTY,d1 
                                                        ; "Well, the storehouse is{N}empty.{W2}"
                bsr.w   DisplayCaravanMessageWithPortrait
                rts
@Restart:
                
                bra.w   caravanDepotSubmenu_Look

    ; End of function caravanDepotSubmenu_Look

                modend

; =============== S U B R O U T I N E =======================================


caravanDepotSubmenu_Deposit:
                
                module
                bsr.w   CopyCaravanItems
                cmpi.w  #CARAVAN_MAX_ITEMS_NUMBER,((GENERIC_LIST_LENGTH-$1000000)).w
                bcc.s   @Exit           
                
                moveq   #0,d1           ; all force members
                bsr.w   PopulateGenericListWithMembersList
                move.w  #MESSAGE_CARAVAN_STORE_WHOSE_ITEM,d1 ; "Store whose item?{W2}"
                bsr.w   DisplayCaravanMessageWithPortrait
                move.b  #1,((byte_FFB13C-$1000000)).w
                move.w  #ITEM_NOTHING,((SELECTED_ITEM_INDEX-$1000000)).w
                jsr     BuildMembersListScreen_NewAttAndDefPage
                move.w  d0,member(a6)
                move.w  d1,itemSlot(a6)
                move.w  d2,itemIndex(a6)
                cmpi.w  #-1,d0
                beq.s   byte_2236A      ; @ChangedYourMind
                
                bsr.w   IsItemInSlotEquippedAndCursed
                bcs.w   @Restart
                
                ; Deposit item
                move.w  itemIndex(a6),d1
                jsr     AddItemToCaravan
                move.w  itemSlot(a6),d1
                jsr     DropItemBySlot
                move.w  member(a6),((DIALOGUE_NAME_INDEX_1-$1000000)).w
                move.w  itemIndex(a6),((DIALOGUE_NAME_INDEX_2-$1000000)).w
                move.w  #MESSAGE_CARAVAN_ITEM_IS_NOW_IN_THE_STOREHOUSE,d1 
                                                        ; "{NAME}'s {ITEM}{N}is now in the storehouse.{W2}"
                bsr.w   DisplayCaravanMessageWithPortrait
                bra.s   @Goto_Restart
byte_2236A:
                
                @ChangedYourMind:
                txt     4               ; "Did you change your mind?{W2}"
                clsTxt
                rts
@Goto_Restart:
                
                bra.s   @Restart
@Exit:
                
                move.w  #MESSAGE_CARAVAN_SORRY_THERE_IS_NO_ROOM,d1 ; "Sorry, there's no room!{W2}"
                bsr.w   DisplayCaravanMessageWithPortrait
                rts
@Restart:
                
                bra.w   caravanDepotSubmenu_Deposit

    ; End of function caravanDepotSubmenu_Deposit

                modend

; =============== S U B R O U T I N E =======================================


caravanDepotSubmenu_Derive:
                
                module
                bsr.w   CopyCaravanItems
                tst.w   ((GENERIC_LIST_LENGTH-$1000000)).w
                beq.w   @Exit           
                
                ; Pick item from storehouse
                move.w  #MESSAGE_CARAVAN_CHOOSE_WHICH_ITEM,d1 ; "Choose which item?{W2}"
                bsr.w   DisplayCaravanMessageWithPortrait
                jsr     BuildShopInventoryScreen
                move.w  d0,d2
                move.w  d1,itemSlot(a6)
                move.w  d2,itemIndex(a6)
                cmpi.w  #-1,d2
                beq.w   byte_2247E      ; @ChangedYourMind
                move.w  d1,d0
                jsr     CheckBreakFlag
                beq.s   @NotBroken
                ori.w   #ITEM_BROKEN,itemIndex(a6)
                
@NotBroken:     ; Pick recipient
                moveq   #0,d1           ; all force members
                bsr.w   PopulateGenericListWithMembersList
                move.w  itemIndex(a6),((DIALOGUE_NAME_INDEX_1-$1000000)).w
                move.w  #MESSAGE_CARAVAN_PASS_THE_ITEM_TO_WHOM,d1 ; "Pass the {ITEM}{N}to whom?{W2}"
                bsr.w   DisplayCaravanMessageWithPortrait
                move.b  #2,((byte_FFB13C-$1000000)).w
                move.w  itemIndex(a6),((SELECTED_ITEM_INDEX-$1000000)).w
                jsr     BuildMembersListScreen_NewAttAndDefPage
                move.w  d0,targetMember(a6)
                move.w  d1,targetItemSlot(a6)
                move.w  d2,targetItemIndex(a6)
                cmpi.w  #-1,d0
                beq.w   @Goto_Restart
                
                ; Is recipient's inventory full?
                clr.w   d1
                jsr     GetItemBySlotAndHeldItemsNumber
                cmpi.w  #COMBATANT_ITEMSLOTS,d2
                beq.s   @Exchange
                
                ; Derive item
                move.w  itemIndex(a6),d1
                jsr     AddItem
                move.w  itemSlot(a6),d1
                jsr     RemoveItemFromCaravan
                move.w  targetMember(a6),((DIALOGUE_NAME_INDEX_1-$1000000)).w
                move.w  itemIndex(a6),((DIALOGUE_NAME_INDEX_2-$1000000)).w
                move.w  #MESSAGE_CARAVAN_CHARACTER_NOW_HAS_THE_ITEM,d1 
                                                        ; "{NAME} now has the{N}{ITEM}.{W2}"
                bsr.w   DisplayCaravanMessageWithPortrait
                bra.s   @Goto_Restart
@Exchange:
                
                move.w  targetMember(a6),d1
                move.w  targetItemSlot(a6),d1
                bsr.w   IsItemInSlotEquippedAndCursed
                bcs.w   @Restart
                
                move.w  targetMember(a6),d0
                move.w  targetItemSlot(a6),d1
                jsr     RemoveItemBySlot
                move.w  itemSlot(a6),d1
                jsr     RemoveItemFromCaravan
                move.w  targetMember(a6),d0
                move.w  itemIndex(a6),d1
                jsr     AddItem
                move.w  targetItemIndex(a6),d1
                jsr     AddItemToCaravan
                move.w  itemIndex(a6),((DIALOGUE_NAME_INDEX_1-$1000000)).w
                move.w  targetMember(a6),((DIALOGUE_NAME_INDEX_2-$1000000)).w
                move.w  targetItemIndex(a6),((DIALOGUE_NAME_INDEX_3-$1000000)).w
                move.w  #MESSAGE_ITEMMENU_ITEM_IS_EXCHANGED_FOR,d1 ; "{ITEM} is exchanged{N}for {NAME}'s {ITEM}.{W2}"
                bsr.w   DisplayCaravanMessageWithPortrait
@Goto_Restart:
                
                bra.s   @Restart
byte_2247E:
                
                @ChangedYourMind:
                txt     4               ; "Did you change your mind?{W2}"
                clsTxt
                rts
@Exit:
                
                move.w  #MESSAGE_CARAVAN_WELL_THE_STOREHOUSE_IS_EMPTY,d1 
                                                        ; "Well, the storehouse is{N}empty.{W2}"
                bsr.w   DisplayCaravanMessageWithPortrait
                rts
@Restart:
                
                bra.w   caravanDepotSubmenu_Derive

    ; End of function caravanDepotSubmenu_Derive

                modend

; =============== S U B R O U T I N E =======================================

targetItemSlot = -12
targetItemIndex = -10
targetMember = -8
itemSlot = -6
itemIndex = -4
member = -2

caravanDepotSubmenu_Drop:
                
                module
                bsr.w   CopyCaravanItems
                tst.w   ((GENERIC_LIST_LENGTH-$1000000)).w
                beq.w   @Exit           
                
                move.w  #MESSAGE_CARAVAN_DISCARD_WHICH_ITEM,d1 ; "Discard which item?{W2}"
                bsr.w   DisplayCaravanMessageWithPortrait
                jsr     BuildShopInventoryScreen
                move.w  d0,d2
                move.w  d1,itemSlot(a6)
                move.w  d2,itemIndex(a6)
                move.w  itemIndex(a6),d1
                jsr     IsItemUnsellable
                bcs.w   @Restart
                cmpi.w  #-1,itemIndex(a6)
                beq.s   byte_2251E      ; @ChangedYourMind
                
                ; Confirm discard
                move.w  itemIndex(a6),((DIALOGUE_NAME_INDEX_1-$1000000)).w
                txt     44              ; "The {ITEM} will be{N}discarded.  Are you sure?"
                jsr     alt_YesNoPrompt
                tst.w   d0
                bne.s   byte_22518      ; @CancelDiscard
                
                move.w  itemSlot(a6),d1
                jsr     RemoveItemFromCaravan
                move.w  itemIndex(a6),d1
                jsr     GetItemDefAddress
                btst    #ITEMTYPE_BIT_RARE,ITEMDEF_OFFSET_TYPE(a0)
                beq.s   @Continue
                jsr     AddItemToDeals
@Continue:
                
                move.w  itemIndex(a6),((DIALOGUE_NAME_INDEX_1-$1000000)).w
                move.w  #MESSAGE_ITEMMENU_DISCARDED_THE_ITEM,d1 ; "Discarded the {ITEM}.{W2}"
                bsr.w   DisplayCaravanMessageWithPortrait
                bra.s   @Goto_Restart
byte_22518:
                
                @CancelDiscard:
                txt     4               ; "Did you change your mind?{W2}"
@Goto_Restart:
                
                bra.s   @Restart
byte_2251E:
                
                @ChangedYourMind:
                txt     4               ; "Did you change your mind?{W2}"
                clsTxt
                rts
@Exit:
                
                move.w  #MESSAGE_CARAVAN_WELL_THE_STOREHOUSE_IS_EMPTY,d1 
                                                        ; "Well, the storehouse is{N}empty.{W2}"
                bsr.w   DisplayCaravanMessageWithPortrait
                rts
@Restart:
                
                bra.w   caravanDepotSubmenu_Drop

    ; End of function caravanDepotSubmenu_Drop

                modend

; =============== S U B R O U T I N E =======================================


CaravanMenu_Rename:
                
                module
                move.w  #24,d1          ; "Use whose item?{D1}"
                bsr.w   DisplayCaravanMessageWithPortrait
@Start:
                
                moveq   #0,d1           ; all force members
                bsr.w   PopulateGenericListWithMembersList
                jsr     InitializeMembersListScreen
                move.w  d0,member(a6)
                cmpi.w  #$FFFF,d0
                beq.s   byte_225FA      ; Exit Rename action
                jsr     NameAlly
loc_22604:
                
                move.w  #27,d1          ; "Use another item?{N}"
                bsr.w   DisplayCaravanMessageWithPortrait
                bra.w   @Start          
byte_225FA:
                
                
                ; Exit Item Use action
                txt     4               ; "Did you change your mind?{W2}"
                clsTxt
                rts
                modend

; =============== S U B R O U T I N E =======================================

; Return CCR zero-bit set if special description was found.
; (Only used for Chirrup Sandals.)


DisplaySpecialCaravanDescription:
                
                movem.l d0-d1/a0,-(sp)
                andi.w  #ITEMENTRY_MASK_INDEX,d1
                lea     table_SpecialCaravanDescriptions(pc), a0
@FindItem_Loop:
                
                cmpi.w  #-1,(a0)
                beq.w   @Done
                cmp.b   (a0),d1
                bne.s   @Next
                move.b  1(a0),d1        ; d1.b = number of lines to display
                subq.w  #1,d1
                move.w  2(a0),d0        ; d2.w = first message index
@DisplayText_Loop:
                
                jsr     (DisplayText).w 
                addq.w  #1,d0
                dbf     d1,@DisplayText_Loop
                
                moveq   #-1,d0
                bra.w   @Done
@Next:
                
                adda.w  #4,a0
                bra.s   @FindItem_Loop
@Done:
                
                movem.l (sp)+,d0-d1/a0
                rts

    ; End of function DisplaySpecialCaravanDescription

