
; ASM FILE code\common\menus\shopscreen.asm :
; 0x147FA..0x14EFC : Menu engine, part 6 : Shop screen functions

; =============== S U B R O U T I N E =======================================

inventoryWindowLayoutLoadingSpace = -240
goldWindowLayoutEndAddress = -18
goldWindowSlot = -14
itemNameAndPriceWindowLayoutEndAddress = -12
itemNameAndPriceWindowSlot = -8
inventoryWindowLayoutEndAddress = -6
inventoryWindowSlot = -2

BuildShopInventoryScreen:
                
                move.w  ((CURRENT_SHOP_PAGE-$1000000)).w,d0
                mulu.w  #6,d0
                add.w   ((CURRENT_SHOP_SELECTION-$1000000)).w,d0
                cmp.w   ((GENERIC_LIST_LENGTH-$1000000)).w,d0
                blt.s   loc_14814
                clr.w   ((CURRENT_SHOP_PAGE-$1000000)).w
                clr.w   ((CURRENT_SHOP_SELECTION-$1000000)).w
loc_14814:
                
                link    a6,#-240

                ; Create shop inventory window
                move.w  #WINDOW_SHOP_INVENTORY_SIZE,d0
                move.w  #WINDOW_SHOP_INVENTORY_DEST,d1
                jsr     (CreateWindow).l
                move.w  d0,inventoryWindowSlot(a6)
                move.l  a1,inventoryWindowLayoutEndAddress(a6)
                bsr.w   LoadItemIconsAndPriceTagTiles

                ; Create shop item name and price window
                move.w  #WINDOW_SHOP_ITEM_NAME_AND_PRICE_SIZE,d0
                move.w  #WINDOW_SHOP_ITEM_NAME_AND_PRICE_DEST,d1
                jsr     (CreateWindow).l
                move.w  d0,itemNameAndPriceWindowSlot(a6)
                move.l  a1,itemNameAndPriceWindowLayoutEndAddress(a6)
                bsr.w   WriteItemNameAndGoldAmount

                ; Create gold window
                move.w  #WINDOW_SHOP_GOLD_SIZE,d0
                move.w  #WINDOW_SHOP_GOLD_DEST,d1
                jsr     (CreateWindow).l
                move.w  d0,goldWindowSlot(a6)
                move.l  a1,goldWindowLayoutEndAddress(a6)
                bsr.w   WriteGoldAmount

                ; Open windows
                move.w  inventoryWindowSlot(a6),d0
                move.w  #$201,d1
                moveq   #4,d2
                jsr     (MoveWindowWithSfx).l
                move.w  itemNameAndPriceWindowSlot(a6),d0
                move.w  #$106,d1
                move.w  ((CURRENT_SHOP_SELECTION-$1000000)).w,d2
                lsl.w   #2,d2
                lsl.w   #BYTE_SHIFT_COUNT,d2
                add.w   d2,d1
                moveq   #4,d2
                jsr     (MoveWindowWithSfx).l
                move.w  goldWindowSlot(a6),d0
                move.w  #$1617,d1
                moveq   #4,d2
                jsr     (MoveWindowWithSfx).l
                lea     tiles_ShopInventoryItemHighlight(pc), a0
                lea     ($FE00).l,a1
                move.w  #$100,d0
                jsr     (ApplyVIntVramDmaOnCompressedTiles).w
                jsr     (WaitForWindowMovementEnd).l
                bsr.w   UpdateShopItemNameAndPriceWindow
@CheckInputs:
                
                ; Check inputs
                move.w  ((CURRENT_SHOP_SELECTION-$1000000)).w,d0
                btst    #INPUT_BIT_RIGHT,((CURRENT_PLAYER_INPUT-$1000000)).w
                beq.s   @CheckLeft
                move.w  ((CURRENT_SHOP_PAGE-$1000000)).w,d2
                mulu.w  #ITEMS_PER_SHOP_PAGE,d2
                add.w   d0,d2
                addq.w  #1,d2
                cmp.w   ((GENERIC_LIST_LENGTH-$1000000)).w,d2
                bge.s   @CheckLeft
                addq.w  #1,d0
                sndCom  SFX_MENU_SELECTION
                cmp.w   ((LAST_ITEM_ON_PAGE-$1000000)).w,d0
                blt.s   @NextEntry
                addq.w  #1,((CURRENT_SHOP_PAGE-$1000000)).w
                clr.w   ((CURRENT_SHOP_SELECTION-$1000000)).w
                clr.b   ((WINDOW_LAYOUT_SHIFT_DIRECTION-$1000000)).w
                bsr.w   ShiftShopInventoryWindowLayout
                bra.w   @WaitForInput
@NextEntry:
                
                move.w  d0,((CURRENT_SHOP_SELECTION-$1000000)).w
                bsr.w   sub_14EC0
                bra.w   @WaitForInput
@CheckLeft:
                
                move.w  ((CURRENT_SHOP_SELECTION-$1000000)).w,d0
                btst    #INPUT_BIT_LEFT,((CURRENT_PLAYER_INPUT-$1000000)).w
                beq.s   @CheckUp
                move.w  ((CURRENT_SHOP_PAGE-$1000000)).w,d2
                mulu.w  #ITEMS_PER_SHOP_PAGE,d2
                add.w   d0,d2
                ble.s   @CheckUp
                subq.w  #1,d0
                sndCom  SFX_MENU_SELECTION
                bge.s   @PreviousEntry
                subq.w  #1,((CURRENT_SHOP_PAGE-$1000000)).w
                move.w  #5,((CURRENT_SHOP_SELECTION-$1000000)).w
                move.b  #1,((WINDOW_LAYOUT_SHIFT_DIRECTION-$1000000)).w
                bsr.w   ShiftShopInventoryWindowLayout
                bra.w   @WaitForInput
@PreviousEntry:
                
                move.w  d0,((CURRENT_SHOP_SELECTION-$1000000)).w
                bsr.w   sub_14EC0
                bra.w   @WaitForInput
@CheckUp:
                
                btst    #INPUT_BIT_UP,((CURRENT_PLAYER_INPUT-$1000000)).w
                beq.s   @CheckDown
                tst.w   ((CURRENT_SHOP_PAGE-$1000000)).w
                beq.s   @CheckDown
                subq.w  #1,((CURRENT_SHOP_PAGE-$1000000)).w
                sndCom  SFX_MENU_SELECTION
                move.b  #1,((WINDOW_LAYOUT_SHIFT_DIRECTION-$1000000)).w
                bsr.w   ShiftShopInventoryWindowLayout
@CheckDown:
                
                btst    #INPUT_BIT_DOWN,((CURRENT_PLAYER_INPUT-$1000000)).w
                beq.s   @CheckConfirmation
                move.w  ((CURRENT_SHOP_PAGE-$1000000)).w,d2
                addq.w  #1,d2
                mulu.w  #ITEMS_PER_SHOP_PAGE,d2
                cmp.w   ((GENERIC_LIST_LENGTH-$1000000)).w,d2
                bge.s   @CheckConfirmation
                addq.w  #1,((CURRENT_SHOP_PAGE-$1000000)).w
                sndCom  SFX_MENU_SELECTION
                move.w  ((CURRENT_SHOP_SELECTION-$1000000)).w,d0
                move.w  ((CURRENT_SHOP_PAGE-$1000000)).w,d2
                move.w  d2,d1           ; multiply page by 6
                add.w   d2,d2
                add.w   d1,d2
                add.w   d2,d2
                move.w  ((GENERIC_LIST_LENGTH-$1000000)).w,d1
                sub.w   d2,d1
                cmpi.w  #ITEMS_PER_SHOP_PAGE,d1
                ble.s   @LastViewableItem
                moveq   #ITEMS_PER_SHOP_PAGE,d1
@LastViewableItem:
                
                move.w  d1,((LAST_ITEM_ON_PAGE-$1000000)).w
@AdjustPosition_Loop:
                
				; Adjust position in list if beyond last item
                cmp.w   d1,d0
                blt.w   @PositionSet
                subq.w  #1,d0
                bne.s   @AdjustPosition_Loop
@PositionSet:
                
                move.w  d0,((CURRENT_SHOP_SELECTION-$1000000)).w
                clr.b   ((WINDOW_LAYOUT_SHIFT_DIRECTION-$1000000)).w
                bsr.w   ShiftShopInventoryWindowLayout
@CheckConfirmation:
                
                btst    #INPUT_BIT_B,((CURRENT_PLAYER_INPUT-$1000000)).w
                bne.w   @Cancel
                btst    #INPUT_BIT_C,((CURRENT_PLAYER_INPUT-$1000000)).w
                bne.w   @Confirm
                btst    #INPUT_BIT_A,((CURRENT_PLAYER_INPUT-$1000000)).w
                bne.w   @Confirm
@WaitForInput:
                
                bsr.w   LoadShopInventoryHighlightSprites
                jsr     (WaitForVInt).w
                bra.w   @CheckInputs
@Cancel:
                
                moveq   #-1,d0
                bra.w   loc_14A0A
@Confirm:
                
                move.w  ((CURRENT_SHOP_PAGE-$1000000)).w,d1
                mulu.w  #ITEMS_PER_SHOP_PAGE,d1
                add.w   ((CURRENT_SHOP_SELECTION-$1000000)).w,d1
                lea     ((GENERIC_LIST-$1000000)).w,a0
                move.b  (a0,d1.w),d0
                andi.w  #BYTE_MASK,d0
loc_14A0A:
                
                movem.w d0-d1,-(sp)
                clr.w   d1
                bsr.s   LoadShopInventoryHighlightSprites
                move.w  ((DIALOGUE_WINDOW_INDEX-$1000000)).w,d0
                beq.s   loc_14A26
                subq.w  #1,d0
                move.w  #$8080,d1
                moveq   #4,d2
                jsr     (MoveWindow).l  
loc_14A26:
                
                move.w  inventoryWindowSlot(a6),d0
                move.w  #$2F7,d1
                moveq   #4,d2
                jsr     (MoveWindowWithSfx).l
                move.w  itemNameAndPriceWindowSlot(a6),d0
                move.w  #$F606,d1
                moveq   #4,d2
                jsr     (MoveWindowWithSfx).l
                move.w  goldWindowSlot(a6),d0
                move.w  #$2017,d1
                moveq   #4,d2
                jsr     (MoveWindowWithSfx).l
                jsr     (WaitForWindowMovementEnd).l
                move.w  goldWindowSlot(a6),d0
                jsr     (DeleteWindow).l
                move.w  itemNameAndPriceWindowSlot(a6),d0
                jsr     (DeleteWindow).l
                move.w  inventoryWindowSlot(a6),d0
                jsr     (DeleteWindow).l
                movem.w (sp)+,d0-d1
                unlk    a6
                rts

    ; End of function BuildShopInventoryScreen


; =============== S U B R O U T I N E =======================================


LoadShopInventoryHighlightSprites:
                
                lea     (SPRITE_BATTLE_CURSOR).l,a0
                cmpi.w  #7,d1
                bge.s   loc_14A9A
                move.w  #1,(a0)
                move.w  #1,VDPSPRITE_OFFSET_X(a0)
                bra.s   loc_14AAC
loc_14A9A:
                
                move.w  ((CURRENT_SHOP_SELECTION-$1000000)).w,d0
                lsl.w   #5,d0
                addi.w  #156,d0
                move.w  d0,VDPSPRITE_OFFSET_X(a0)
                move.w  #145,(a0)
loc_14AAC:
                
                move.w  #VDPSPRITESIZE_V4|VDPSPRITESIZE_H4|9,VDPSPRITE_OFFSET_SIZE(a0)
                move.w  #VDPTILE_PORTRAITTILE49|VDPTILE_PALETTE3|VDPTILE_PRIORITY,VDPSPRITE_OFFSET_TILE(a0)
                addq.l  #VDP_SPRITE_SIZE,a0
                move.w  #1,(a0)
                move.w  #1,VDPSPRITE_OFFSET_X(a0)
                tst.w   ((CURRENT_SHOP_PAGE-$1000000)).w
                beq.s   loc_14AE6
                cmpi.w  #7,d1
                blt.s   loc_14ADA
                move.w  #152,VDPSPRITE_OFFSET_X(a0)
                move.w  #144,(a0)
loc_14ADA:
                
                move.w  #VDPSPRITESIZE_V1|VDPSPRITESIZE_H1|10,VDPSPRITE_OFFSET_SIZE(a0)
                move.w  #VDPTILE_PRIORITY|VDPTILE_PALETTE3|VDPTILE_FLIP|VDPTILE_V_ARROW,VDPSPRITE_OFFSET_TILE(a0)
loc_14AE6:
                
                addq.l  #VDP_SPRITE_SIZE,a0
                move.w  #1,(a0)
                move.w  #1,VDPSPRITE_OFFSET_X(a0)
                move.w  ((CURRENT_SHOP_PAGE-$1000000)).w,d0
                addq.w  #1,d0
                mulu.w  #ITEMS_PER_SHOP_PAGE,d0
                cmp.w   ((GENERIC_LIST_LENGTH-$1000000)).w,d0
                bge.s   loc_14B1E
                cmpi.w  #7,d1
                blt.s   loc_14B12
                move.w  #344,VDPSPRITE_OFFSET_X(a0)
                move.w  #168,(a0)
loc_14B12:
                
                move.w  #VDPSPRITESIZE_V1|VDPSPRITESIZE_H1|16,VDPSPRITE_OFFSET_SIZE(a0)
                move.w  #VDPTILE_PRIORITY|VDPTILE_PALETTE3|VDPTILE_V_ARROW,VDPSPRITE_OFFSET_TILE(a0)
loc_14B1E:
                
                subq.w  #1,d1
                bne.s   loc_14B24
                moveq   #20,d1
loc_14B24:
                
                bra.w   LinkHighlightSprites

    ; End of function LoadShopInventoryHighlightSprites


; =============== S U B R O U T I N E =======================================

; related to gold display

inventoryWindowLayoutLoadingSpace = -240
goldWindowLayoutEndAddress = -18
goldWindowSlot = -14
itemNameAndPriceWindowLayoutEndAddress = -12
itemNameAndPriceWindowSlot = -8
inventoryWindowLayoutEndAddress = -6
inventoryWindowSlot = -2

WriteGoldAmount:
                
                move.w  #$904,d0
                movea.l goldWindowLayoutEndAddress(a6),a1
                bsr.w   WriteWindowTiles
                lea     aGold(pc), a0   
                movea.l goldWindowLayoutEndAddress(a6),a1
                adda.w  #$14,a1
                moveq   #-18,d1
                moveq   #10,d7
                bsr.w   WriteTilesFromAsciiWithRegularFont
                jsr     GetGold
                move.l  d1,d0
                movea.l goldWindowLayoutEndAddress(a6),a1
                adda.w  #$26,a1 
                moveq   #7,d7
                jsr     WriteTilesFromNumber
                rts

    ; End of function WriteGoldAmount

aGold:          dc.b 'GOLD',0
                dc.b 0

; =============== S U B R O U T I N E =======================================

inventoryWindowLayoutLoadingSpace = -240
goldWindowLayoutEndAddress = -18
goldWindowSlot = -14
itemNameAndPriceWindowLayoutEndAddress = -12
itemNameAndPriceWindowSlot = -8
inventoryWindowLayoutEndAddress = -6
inventoryWindowSlot = -2

WriteItemNameAndGoldAmount:
                
                move.w  #$A05,d0
                movea.l itemNameAndPriceWindowLayoutEndAddress(a6),a1
                bsr.w   WriteWindowTiles
                bsr.w   GetCurrentShopSelection
                move.w  d0,d1
                move.w  d1,-(sp)
                jsr     FindItemName
                movea.l itemNameAndPriceWindowLayoutEndAddress(a6),a1
                adda.w  #$16,a1
                moveq   #-20,d1
                bsr.w   WriteTilesFromAsciiWithRegularFont
                move.w  (sp)+,d1
                jsr     GetItemDefAddress
                clr.l   d0
                move.w  ITEMDEF_OFFSET_PRICE(a0),d0
                movea.l itemNameAndPriceWindowLayoutEndAddress(a6),a1
                adda.w  #$44,a1 
                moveq   #5,d7
                jsr     WriteTilesFromNumber
                rts

    ; End of function WriteItemNameAndGoldAmount


; =============== S U B R O U T I N E =======================================

; Load item icons and price tag tiles based on generic index list.

inventoryWindowLayoutLoadingSpace = -240
goldWindowLayoutEndAddress = -18
goldWindowSlot = -14
itemNameAndPriceWindowLayoutEndAddress = -12
itemNameAndPriceWindowSlot = -8
inventoryWindowLayoutEndAddress = -6
inventoryWindowSlot = -2

LoadItemIconsAndPriceTagTiles:
                
                movea.l inventoryWindowLayoutEndAddress(a6),a1
                lea     layout_ShopInventoryWindow(pc), a0
                move.w  #324,d7
                jsr     (CopyBytes).w   
                bsr.w   *+4
                lea     (byte_FF6942).l,a0
                move.w  #1599,d7
@Clear_Loop:
                
                move.l  #-1,(a0)+
                dbf     d7,@Clear_Loop
                
                lea     ((GENERIC_LIST-$1000000)).w,a1
                move.w  ((CURRENT_SHOP_PAGE-$1000000)).w,d0
                move.w  d0,d1           ; multiply page by 6
                add.w   d0,d0
                add.w   d1,d0
                add.w   d0,d0
                adda.w  d0,a1
                move.w  ((GENERIC_LIST_LENGTH-$1000000)).w,d1
                sub.w   d0,d1
                cmpi.w  #ITEMS_PER_SHOP_PAGE,d1
                ble.s   @loc_1
                moveq   #ITEMS_PER_SHOP_PAGE,d1
@loc_1:
                
                move.w  d1,((LAST_ITEM_ON_PAGE-$1000000)).w
                move.w  d1,d7
                subq.w  #1,d7
                lea     (FF6802_LOADING_SPACE).l,a0
                movea.l inventoryWindowLayoutEndAddress(a6),a2
                adda.w  #$3C,a2 
@Main_Loop:
                
                clr.w   d0
                move.b  (a1)+,d0
                move.w  d7,-(sp)
                bsr.w   LoadIconPixels  
                move.l  a0,-(sp)
                move.w  d0,d1
                jsr     GetItemDefAddress
                clr.l   d0
                move.w  ITEMDEF_OFFSET_PRICE(a0),d0
                movea.l (sp)+,a0
                bsr.w   LoadPriceTagTiles
                move.w  #VDPTILE_SHOP_PRICE_TAG_STRING|VDPTILE_PALETTE3|VDPTILE_PRIORITY,(a2)
                addq.l  #VDP_SPRITE_SIZE,a2
                move.w  (sp)+,d7
                dbf     d7,@Main_Loop
                
                lea     (FF6802_LOADING_SPACE).l,a0
                lea     ($B800).l,a1
                move.w  #$3C0,d0
                moveq   #2,d1
                jsr     (ApplyVIntVramDma).w
                jsr     (WaitForDmaQueueProcessing).w
                rts

    ; End of function LoadItemIconsAndPriceTagTiles


; =============== S U B R O U T I N E =======================================

; Load shop price tag pixels into space at a0.


LoadPriceTagTiles:
                
                movem.l a1-a2,-(sp)
                andi.l  #WORD_MASK,d0
                move.l  a0,-(sp)
                lea     tiles_PriceTagBlank(pc), a1
                moveq   #31,d7
@LoadBlankTiles_Loop:
                
                move.l  (a1)+,(a0)+
                dbf     d7,@LoadBlankTiles_Loop
                
                movea.l (sp)+,a0
                adda.w  #$14,a0
                jsr     (WriteAsciiNumber).w
                lea     ((byte_FFDE85-$1000000)).w,a2
                moveq   #4,d7
@Main_Loop:
                
                clr.w   d0
                move.b  (a2)+,d0
                cmpi.w  #$20,d0 
                beq.s   @Next
                
                subi.w  #$30,d0 
                mulu.w  #$14,d0
                lea     tiles_PriceTagNumbers(pc), a1
                adda.w  d0,a1
                move.l  (a1)+,(a0)+
                move.l  (a1)+,(a0)+
                move.l  (a1)+,(a0)+
                move.l  (a1)+,(a0)+
                move.l  (a1)+,(a0)+
                bra.s   @Continue
@Next:
                
                adda.w  #$14,a0
@Continue:
                
                dbf     d7,@Main_Loop
                
                addq.w  #8,a0
                movem.l (sp)+,a1-a2
                rts

    ; End of function LoadPriceTagTiles


; =============== S U B R O U T I N E =======================================

; Load icon pixels for item d1.w to loading space in a0.


LoadIconPixels:
                
                move.l  a1,-(sp)
                move.w  d0,-(sp)
                getPointer p_Icons, a1
                move.w  d0,d1
                add.w   d0,d0
                add.w   d1,d0
                lsl.w   #6,d0
                addIconOffset d0, a1
                moveq   #ICON_PIXELS_LONGWORD_COUNTER,d7 
@Loop:
                
                move.l  (a1)+,(a0)+
                dbf     d7,@Loop
                
                ; Clean corners
                ori.w   #$F,-2(a0)
                ori.w   #$F000,-$24(a0)
                ori.w   #$F,-$9E(a0)
                ori.w   #$F000,-$C0(a0)
                move.w  (sp)+,d0
                movea.l (sp)+,a1
                rts

    ; End of function LoadIconPixels


; =============== S U B R O U T I N E =======================================

; Get index of currently selected item in shop/caravan (from index list) -> d0.w


GetCurrentShopSelection:
                
                move.w  ((CURRENT_SHOP_PAGE-$1000000)).w,d0
                move.w  d0,d1
                add.w   d0,d0
                add.w   d1,d0
                add.w   d0,d0           ; index effectively multiplied by 6 (i.e. number of items per page)
                move.w  ((CURRENT_SHOP_SELECTION-$1000000)).w,d1
                add.w   d1,d0
                lea     ((GENERIC_LIST-$1000000)).w,a0
                move.b  (a0,d0.w),d0
                andi.w  #BYTE_MASK,d0
                rts

    ; End of function GetCurrentShopSelection


; =============== S U B R O U T I N E =======================================

inventoryWindowLayoutLoadingSpace = -240
goldWindowLayoutEndAddress = -18
goldWindowSlot = -14
itemNameAndPriceWindowLayoutEndAddress = -12
itemNameAndPriceWindowSlot = -8
inventoryWindowLayoutEndAddress = -6
inventoryWindowSlot = -2

sub_14D0C:
                
                bsr.w   *+4
                movea.l inventoryWindowLayoutEndAddress(a6),a0
                movea.l a0,a1
                adda.w  #$A2,a0
                adda.w  #$36,a1
                move.w  #108,d7
                jsr     (CopyBytes).w   
                lea     ShopInventoryWindowLayoutSpacerLine(pc), a0
                movea.l inventoryWindowLayoutEndAddress(a6),a1
                adda.w  #$A2,a1 
                move.w  #54,d7
                jsr     (CopyBytes).w   
                lea     ShopInventoryWindowLayoutSpacerLine(pc), a0
                movea.l inventoryWindowLayoutEndAddress(a6),a1
                adda.w  #$D8,a1
                jsr     (CopyBytes).w   
loc_14D4A:
                
                move.w  inventoryWindowSlot(a6),d0
                move.w  #$8080,d1
                jsr     (SetWindowDestination).l
                move.w  itemNameAndPriceWindowSlot(a6),d0
                move.w  #$8080,d1
                jsr     (SetWindowDestination).l
                jmp     (WaitForVInt).w

    ; End of function sub_14D0C


; =============== S U B R O U T I N E =======================================

inventoryWindowLayoutLoadingSpace = -240
goldWindowLayoutEndAddress = -18
goldWindowSlot = -14
itemNameAndPriceWindowLayoutEndAddress = -12
itemNameAndPriceWindowSlot = -8
inventoryWindowLayoutEndAddress = -6
inventoryWindowSlot = -2

sub_14D6A:
                
                lea     ShopInventoryWindowLayoutSpacerLine(pc), a0
                movea.l inventoryWindowLayoutEndAddress(a6),a1
                adda.w  #$36,a1 
                move.w  #54,d7
                jsr     (CopyBytes).w   
                lea     ShopInventoryWindowLayoutSpacerLine(pc), a0
                movea.l inventoryWindowLayoutEndAddress(a6),a1
                adda.w  #$6C,a1 
                move.w  #54,d7
                jsr     (CopyBytes).w   
                lea     inventoryWindowLayoutLoadingSpace(a6),a0
                movea.l inventoryWindowLayoutEndAddress(a6),a1
                adda.w  #$A2,a1 
                move.w  #108,d7
                jsr     (CopyBytes).w   
                bsr.w   sub_14DBE
                lea     inventoryWindowLayoutLoadingSpace(a6),a0
                movea.l inventoryWindowLayoutEndAddress(a6),a1
                adda.w  #$36,a1 
                move.w  #216,d7
                jsr     (CopyBytes).w   

    ; End of function sub_14D6A


; =============== S U B R O U T I N E =======================================


sub_14DBE:
                
                bra.s   loc_14D4A

    ; End of function sub_14DBE


; =============== S U B R O U T I N E =======================================

inventoryWindowLayoutLoadingSpace = -240
goldWindowLayoutEndAddress = -18
goldWindowSlot = -14
itemNameAndPriceWindowLayoutEndAddress = -12
itemNameAndPriceWindowSlot = -8
inventoryWindowLayoutEndAddress = -6
inventoryWindowSlot = -2

sub_14DC0:
                
                bsr.w   *+4
                movea.l inventoryWindowLayoutEndAddress(a6),a0
                movea.l a0,a1
                adda.w  #$36,a0
                adda.w  #$A2,a1
                move.w  #108,d7
                jsr     (CopyBytes).w   
                lea     ShopInventoryWindowLayoutSpacerLine(pc), a0
                movea.l inventoryWindowLayoutEndAddress(a6),a1
                adda.w  #$36,a1
                move.w  #54,d7
                jsr     (CopyBytes).w   
                lea     ShopInventoryWindowLayoutSpacerLine(pc), a0
                movea.l inventoryWindowLayoutEndAddress(a6),a1
                adda.w  #$6C,a1
                move.w  #54,d7
                jsr     (CopyBytes).w   
                bra.w   loc_14D4A

    ; End of function sub_14DC0


; =============== S U B R O U T I N E =======================================

inventoryWindowLayoutLoadingSpace = -240
goldWindowLayoutEndAddress = -18
goldWindowSlot = -14
itemNameAndPriceWindowLayoutEndAddress = -12
itemNameAndPriceWindowSlot = -8
inventoryWindowLayoutEndAddress = -6
inventoryWindowSlot = -2

sub_14E06:
                
                lea     ShopInventoryWindowLayoutSpacerLine(pc), a0
                movea.l inventoryWindowLayoutEndAddress(a6),a1
                adda.w  #$A2,a1
                move.w  #54,d7
                jsr     (CopyBytes).w   
                lea     ShopInventoryWindowLayoutSpacerLine(pc), a0
                movea.l inventoryWindowLayoutEndAddress(a6),a1
                adda.w  #$D8,a1
                move.w  #54,d7
                jsr     (CopyBytes).w   
                lea     inventoryWindowLayoutLoadingSpace(a6),a0
                movea.l inventoryWindowLayoutEndAddress(a6),a1
                adda.w  #$6C,a0
                adda.w  #$36,a1
                move.w  #108,d7
                jsr     (CopyBytes).w   
                bsr.w   sub_14E5E
                lea     inventoryWindowLayoutLoadingSpace(a6),a0
                movea.l inventoryWindowLayoutEndAddress(a6),a1
                adda.w  #$36,a1
                move.w  #216,d7
                jsr     (CopyBytes).w   

    ; End of function sub_14E06


; =============== S U B R O U T I N E =======================================


sub_14E5E:
                
                bra.w   loc_14D4A

    ; End of function sub_14E5E


; =============== S U B R O U T I N E =======================================

inventoryWindowLayoutLoadingSpace = -240
goldWindowLayoutEndAddress = -18
goldWindowSlot = -14
itemNameAndPriceWindowLayoutEndAddress = -12
itemNameAndPriceWindowSlot = -8
inventoryWindowLayoutEndAddress = -6
inventoryWindowSlot = -2

ShiftShopInventoryWindowLayout:
                
                movea.l inventoryWindowLayoutEndAddress(a6),a0
                adda.w  #$36,a0
                lea     inventoryWindowLayoutLoadingSpace(a6),a1
                move.w  #216,d7
                jsr     (CopyBytes).w   
                tst.b   ((WINDOW_LAYOUT_SHIFT_DIRECTION-$1000000)).w
                bne.s   loc_14E82
                bsr.w   sub_14D0C
                bra.s   loc_14E86
loc_14E82:
                
                bsr.w   sub_14DC0
loc_14E86:
                
                bsr.w   LoadItemIconsAndPriceTagTiles
                movea.l inventoryWindowLayoutEndAddress(a6),a0
                adda.w  #$36,a0
                lea     inventoryWindowLayoutLoadingSpace(a6),a1
                move.w  #216,d7
                jsr     (CopyBytes).w   
                tst.b   ((WINDOW_LAYOUT_SHIFT_DIRECTION-$1000000)).w
                bne.s   loc_14EAA
                bsr.w   sub_14D6A
                bra.s   loc_14EAE
loc_14EAA:
                
                bsr.w   sub_14E06
loc_14EAE:
                
                move.w  inventoryWindowSlot(a6),d0
                move.w  #$201,d1
                moveq   #4,d2
                jsr     (MoveWindow).l  
                bra.s   UpdateShopItemNameAndPriceWindow

    ; End of function ShiftShopInventoryWindowLayout


; =============== S U B R O U T I N E =======================================

inventoryWindowLayoutLoadingSpace = -240
goldWindowLayoutEndAddress = -18
goldWindowSlot = -14
itemNameAndPriceWindowLayoutEndAddress = -12
itemNameAndPriceWindowSlot = -8
inventoryWindowLayoutEndAddress = -6
inventoryWindowSlot = -2

sub_14EC0:
                
                move.w  itemNameAndPriceWindowSlot(a6),d0
                move.w  #$2000,d1
                jsr     (SetWindowDestination).l
                move.w  inventoryWindowSlot(a6),d0
                move.w  #$201,d1
                moveq   #4,d2
                jsr     (MoveWindow).l  

    ; End of function sub_14EC0


; =============== S U B R O U T I N E =======================================


UpdateShopItemNameAndPriceWindow:
                
                bsr.w   WriteItemNameAndGoldAmount
                move.w  -8(a6),d0
                move.w  ((CURRENT_SHOP_SELECTION-$1000000)).w,d1
                ror.w   #6,d1
                ori.w   #$106,d1
                moveq   #4,d2
                jsr     (MoveWindow).l  
                moveq   #$A,d1
                rts

    ; End of function UpdateShopItemNameAndPriceWindow

tiles_PriceTagBlank:
                incbin "data/graphics/tech/pricetagblanktiles.bin"
tiles_PriceTagNumbers:
                incbin "data/graphics/tech/pricetagnumberstiles.bin"
				