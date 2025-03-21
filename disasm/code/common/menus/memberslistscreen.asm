
; ASM FILE code\common\menus\memberslistscreen.asm :
; 0x12FE6..0x147FA : Members list screen functions

; =============== S U B R O U T I N E =======================================


InitializeMembersListScreen:
                
                clr.b   ((byte_FFB13C-$1000000)).w
                move.w  #ITEM_NOTHING,((SELECTED_ITEM_INDEX-$1000000)).w
                clr.b   ((CURRENT_MEMBERSUMMARY_PAGE-$1000000)).w
                cmpi.b  #WINDOW_MEMBERS_LIST_PAGE_NEWATTANDDEF,((CURRENT_MEMBERS_LIST_PAGE-$1000000)).w
                bne.s   @Continue
                clr.b   ((CURRENT_MEMBERS_LIST_PAGE-$1000000)).w
@Continue:
                
                bra.w   BuildMembersListScreen

    ; End of function InitializeMembersListScreen


; =============== S U B R O U T I N E =======================================


BuildMembersListScreen_NewAttAndDefPage:
                
                move.b  #WINDOW_MEMBERSUMMARY_PAGE_ITEMS,((CURRENT_MEMBERSUMMARY_PAGE-$1000000)).w
                move.w  ((SELECTED_ITEM_INDEX-$1000000)).w,d1
                jsr     GetEquipmentType
                tst.w   d2
                beq.s   loc_13020
                move.b  #WINDOW_MEMBERS_LIST_PAGE_NEWATTANDDEF,((CURRENT_MEMBERS_LIST_PAGE-$1000000)).w
                bra.s   loc_1302C
loc_13020:
                
                cmpi.b  #WINDOW_MEMBERS_LIST_PAGE_NEWATTANDDEF,((CURRENT_MEMBERS_LIST_PAGE-$1000000)).w
                blt.s   loc_1302C
                clr.b   ((CURRENT_MEMBERS_LIST_PAGE-$1000000)).w
loc_1302C:
                
                bra.w   BuildMembersListScreen

    ; End of function BuildMembersListScreen_NewAttAndDefPage


; =============== S U B R O U T I N E =======================================


BuildMembersListScreen_MagicPage:
                
                clr.b   ((byte_FFB13C-$1000000)).w
                move.w  #ITEM_NOTHING,((SELECTED_ITEM_INDEX-$1000000)).w
                move.b  #WINDOW_MEMBERSUMMARY_PAGE_MAGIC,((CURRENT_MEMBERSUMMARY_PAGE-$1000000)).w
                cmpi.b  #WINDOW_MEMBERS_LIST_PAGE_NEWATTANDDEF,((CURRENT_MEMBERS_LIST_PAGE-$1000000)).w
                bne.s   BuildMembersListScreen
                clr.b   ((CURRENT_MEMBERS_LIST_PAGE-$1000000)).w

    ; End of function BuildMembersListScreen_MagicPage


; =============== S U B R O U T I N E =======================================

statusEffects = -10
memberSummaryWindow = -8
portraitWindow = -6
membersListWindow = -4
selectedMember = -2

BuildMembersListScreen:
                
                addq.b  #1,((WINDOW_IS_PRESENT-$1000000)).w
                move.w  ((DISPLAYED_MEMBERS_LIST_FIRST_ENTRY-$1000000)).w,d0
                add.w   ((DISPLAYED_MEMBERS_LIST_SELECTED_ENTRY-$1000000)).w,d0
                cmp.w   ((GENERIC_LIST_LENGTH-$1000000)).w,d0
                blt.s   loc_13066
                clr.w   ((DISPLAYED_MEMBERS_LIST_FIRST_ENTRY-$1000000)).w
                clr.w   ((DISPLAYED_MEMBERS_LIST_SELECTED_ENTRY-$1000000)).w
loc_13066:
                
                link    a6,#-16
                bsr.w   GetSelectedMember
                move.w  d0,selectedMember(a6)
                bsr.w   LoadCombatantPortrait
                move.w  #WINDOW_MEMBERS_LIST_SIZE,d0
                move.w  #WINDOW_MEMBERS_LIST_DEST,d1
                jsr     (CreateWindow).l
                move.w  d0,membersListWindow(a6)
                move.w  #$80A,d0
                move.w  #$F8F6,d1
                jsr     (CreateWindow).l
                move.w  d0,portraitWindow(a6)
                move.w  #WINDOW_MEMBERSUMMARY_SIZE,d0
                move.w  #WINDOW_MEMBERSUMMARY_DEST,d1
                jsr     (CreateWindow).l
                move.w  d0,memberSummaryWindow(a6)
                bsr.w   sub_1354C
                move.w  membersListWindow(a6),d0
                move.w  #$20E,d1
                moveq   #4,d2
                jsr     (MoveWindowWithSfx).l
                move.w  portraitWindow(a6),d0
                move.w  #$201,d1
                jsr     (MoveWindowWithSfx).l
                move.w  memberSummaryWindow(a6),d0
                move.w  #$A01,d1
                jsr     (MoveWindowWithSfx).l
                jsr     (WaitForVInt).w
                lea     tiles_TextHighlight(pc), a0
                lea     ($B800).l,a1
                move.w  #$A0,d0 
                moveq   #2,d1
                jsr     (ApplyVIntVramDma).w
                jsr     (WaitForDmaQueueProcessing).w
                jsr     (WaitForWindowMovementEnd).l
                moveq   #$14,d1
loc_13100:
                
                move.w  d1,-(sp)
                move.w  ((SELECTED_ITEM_INDEX-$1000000)).w,d1
                jsr     GetEquipmentType
                tst.w   d2
                beq.s   loc_13114
                moveq   #WINDOW_MEMBERLIST_PAGE_NEWAGIANDMOVE,d2
                bra.s   loc_13116
loc_13114:
                
                moveq   #WINDOW_MEMBERS_LIST_PAGE_STATS2,d2
loc_13116:
                
                move.w  (sp)+,d1
                btst    #INPUT_BIT_RIGHT,((CURRENT_PLAYER_INPUT-$1000000)).w
                beq.s   loc_13138
                move.b  ((CURRENT_MEMBERS_LIST_PAGE-$1000000)).w,d0
                addq.b  #1,d0
                sndCom  SFX_MENU_SELECTION
                cmp.b   d2,d0
                ble.s   loc_13130
                clr.b   d0
loc_13130:
                
                move.b  d0,((CURRENT_MEMBERS_LIST_PAGE-$1000000)).w
                bsr.w   sub_13478
loc_13138:
                
                btst    #INPUT_BIT_LEFT,((CURRENT_PLAYER_INPUT-$1000000)).w
                beq.s   loc_13156
                move.b  ((CURRENT_MEMBERS_LIST_PAGE-$1000000)).w,d0
                subq.b  #1,d0
                sndCom  SFX_MENU_SELECTION
                bge.s   loc_1314E
                move.b  d2,d0
loc_1314E:
                
                move.b  d0,((CURRENT_MEMBERS_LIST_PAGE-$1000000)).w
                bsr.w   sub_13478
loc_13156:
                
                btst    #INPUT_BIT_UP,((CURRENT_PLAYER_INPUT-$1000000)).w
                beq.s   loc_1319A
                move.w  ((DISPLAYED_MEMBERS_LIST_SELECTED_ENTRY-$1000000)).w,d0
                subq.w  #1,d0
                blt.s   loc_1317A
                clr.w   d1
                bsr.w   sub_133A0
                sndCom  SFX_MENU_SELECTION
                move.w  d0,((DISPLAYED_MEMBERS_LIST_SELECTED_ENTRY-$1000000)).w
                bsr.w   sub_13478
                bra.s   loc_1319A
loc_1317A:
                
                move.w  ((DISPLAYED_MEMBERS_LIST_FIRST_ENTRY-$1000000)).w,d0
                subq.w  #1,d0
                blt.s   loc_1319A
                clr.w   d1
                bsr.w   sub_133A0
                sndCom  SFX_MENU_SELECTION
                move.w  d0,((DISPLAYED_MEMBERS_LIST_FIRST_ENTRY-$1000000)).w
                move.b  #1,((word_FFAF9E-$1000000)).w
                bsr.w   sub_134A8
loc_1319A:
                
                btst    #INPUT_BIT_DOWN,((CURRENT_PLAYER_INPUT-$1000000)).w
                beq.s   loc_131F6
                move.w  ((DISPLAYED_MEMBERS_LIST_SELECTED_ENTRY-$1000000)).w,d0
                addq.w  #1,d0
                cmpi.w  #4,d0
                bgt.s   loc_131CE
                move.w  d0,d2
                add.w   ((DISPLAYED_MEMBERS_LIST_FIRST_ENTRY-$1000000)).w,d2
                cmp.w   ((GENERIC_LIST_LENGTH-$1000000)).w,d2
                bge.s   loc_131CC
                clr.w   d1
                bsr.w   sub_133A0
                sndCom  SFX_MENU_SELECTION
                move.w  d0,((DISPLAYED_MEMBERS_LIST_SELECTED_ENTRY-$1000000)).w
                bsr.w   sub_13478
loc_131CC:
                
                bra.s   loc_131F6
loc_131CE:
                
                move.w  ((DISPLAYED_MEMBERS_LIST_FIRST_ENTRY-$1000000)).w,d0
                addq.w  #1,d0
                move.w  d0,d2
                add.w   ((DISPLAYED_MEMBERS_LIST_SELECTED_ENTRY-$1000000)).w,d2
                cmp.w   ((GENERIC_LIST_LENGTH-$1000000)).w,d2
                bge.s   loc_131F6
                clr.w   d1
                bsr.w   sub_133A0
                sndCom  SFX_MENU_SELECTION
                move.w  d0,((DISPLAYED_MEMBERS_LIST_FIRST_ENTRY-$1000000)).w
                clr.b   ((word_FFAF9E-$1000000)).w
                bsr.w   sub_134A8
loc_131F6:
                
                btst    #INPUT_BIT_B,((CURRENT_PLAYER_INPUT-$1000000)).w
                bne.w   loc_13254
                btst    #INPUT_BIT_C,((CURRENT_PLAYER_INPUT-$1000000)).w
                bne.w   loc_13220
                btst    #INPUT_BIT_A,((CURRENT_PLAYER_INPUT-$1000000)).w
                bne.w   loc_13220
loc_13214:
                
                bsr.w   sub_133A0
                jsr     (WaitForVInt).w
                bra.w   loc_13100
loc_13220:
                
                move.w  ((DISPLAYED_MEMBERS_LIST_FIRST_ENTRY-$1000000)).w,d0
                add.w   ((DISPLAYED_MEMBERS_LIST_SELECTED_ENTRY-$1000000)).w,d0
                lea     ((GENERIC_LIST-$1000000)).w,a0
                move.b  (a0,d0.w),d0
                bsr.w   sub_132BC
                beq.s   loc_1323E
                sndCom  SFX_REFUSAL
                moveq   #$A,d1
                bra.s   loc_13214
loc_1323E:
                
                bsr.w   sub_13328
                cmpi.w  #-1,d1
                bne.s   loc_13250
                
                bsr.w   sub_13478
                moveq   #$14,d1
                bra.s   loc_13214
loc_13250:
                
                bra.w   loc_13256
loc_13254:
                
                moveq   #-1,d0
loc_13256:
                
                movem.w d0-d2,-(sp)
                clr.w   d1
                bsr.w   sub_133A0
                move.w  membersListWindow(a6),d0
                move.w  #$220,d1
                moveq   #4,d2
                jsr     (MoveWindowWithSfx).l
                move.w  portraitWindow(a6),d0
                move.w  #$F8F6,d1
                jsr     (MoveWindowWithSfx).l
                move.w  memberSummaryWindow(a6),d0
                move.w  #$20F3,d1
                jsr     (MoveWindowWithSfx).l
                jsr     (WaitForWindowMovementEnd).l
                move.w  membersListWindow(a6),d0
                jsr     (DeleteWindow).l
                move.w  portraitWindow(a6),d0
                jsr     (DeleteWindow).l
                move.w  memberSummaryWindow(a6),d0
                jsr     (DeleteWindow).l
                movem.w (sp)+,d0-d2
                unlk    a6
                subq.b  #1,((WINDOW_IS_PRESENT-$1000000)).w
                rts

    ; End of function BuildMembersListScreen


; =============== S U B R O U T I N E =======================================


sub_132BC:
                
                tst.b   ((CURRENT_MEMBERSUMMARY_PAGE-$1000000)).w
                bne.s   @Continue
                bra.s   @NoneToDisplay
@Continue:
                
                cmpi.b  #WINDOW_MEMBERSUMMARY_PAGE_ITEMS,((CURRENT_MEMBERSUMMARY_PAGE-$1000000)).w
                bne.w   @CheckSpells
                btst    #0,((byte_FFB13C-$1000000)).w
                beq.s   @Return
                cmpi.b  #1,((byte_FFB13C-$1000000)).w
                bne.s   @CheckEquipment
@CheckItems:
				
                clr.w   d1
                jsr     GetItemBySlotAndHeldItemsNumber
                tst.w   d2
                bne.s   @NoneToDisplay
                moveq   #-1,d1
                bra.s   @Return
@CheckEquipment:
                
                clr.w   d1
                jsr     GetEquippableWeapons
                move.w  d1,d2
                jsr     GetEquippableRings
                add.w   d1,d2
                bne.s   @NoneToDisplay
                moveq   #-1,d1
                bra.s   @Return
@CheckSpells:
                
                clr.w   d1
                jsr     GetSpellAndNumberOfSpells
                tst.w   d2
                bne.s   @NoneToDisplay
                moveq   #-1,d1
                bra.s   @Return
@NoneToDisplay:
                
                clr.w   d1
@Return:
                
                rts

    ; End of function sub_132BC


; =============== S U B R O U T I N E =======================================


sub_13328:
                
                module
                tst.b   ((CURRENT_MEMBERSUMMARY_PAGE-$1000000)).w
                beq.w   @Return
                cmpi.b  #WINDOW_MEMBERSUMMARY_PAGE_ITEMS,((CURRENT_MEMBERSUMMARY_PAGE-$1000000)).w
                bne.w   @MagicPage
                
                ; Items member summary page
                tst.b   ((byte_FFB13C-$1000000)).w
                beq.w   @Return
                
                cmpi.b  #1,((byte_FFB13C-$1000000)).w
                bne.s   loc_13358
                
                moveq   #$A,d1
                bsr.w   sub_133A0
                bsr.w   sub_13F14
                bra.w   @Return
loc_13358:
                
                cmpi.b  #2,((byte_FFB13C-$1000000)).w
                bne.s   loc_1337C
                
                clr.w   d1
                jsr     GetItemBySlotAndHeldItemsNumber
                cmpi.w  #COMBATANT_ITEMSLOTS,d2
                bne.s   @Goto_Return
                
                moveq   #$A,d1
                bsr.w   sub_133A0
                bsr.w   sub_13F14
@Goto_Return:
                
                bra.w   @Return
loc_1337C:
                
                moveq   #$A,d1
                bsr.w   sub_133A0
                bsr.w   sub_14108
@Return:
                
                rts
@MagicPage:
                
                moveq   #$A,d1
                bsr.w   sub_133A0
                bsr.w   sub_1445A       
                rts

    ; End of function sub_13328

                modend

; =============== S U B R O U T I N E =======================================

; In: D0 = combatant index

statusEffects = -10
memberSummaryWindow = -8
portraitWindow = -6
membersListWindow = -4
selectedMember = -2

LoadCombatantPortrait:
                
                move.w  selectedMember(a6),d0
                bsr.w   GetCombatantPortrait
                bra.w   LoadPortrait    

    ; End of function LoadCombatantPortrait


; =============== S U B R O U T I N E =======================================


sub_133A0:
                
                tst.b   ((HIDE_WINDOWS_TOGGLE-$1000000)).w
                beq.s   loc_133A8
                moveq   #1,d1
loc_133A8:
                
                move.w  d0,-(sp)
                lea     (SPRITE_BATTLE_CURSOR).l,a0
                lea     sprite_MembersListHighlight(pc), a1
                cmpi.w  #7,d1           ; blink on/off
                bge.s   loc_133C0
                move.w  #256,d0
                bra.s   loc_133C2
loc_133C0:
                
                clr.w   d0
loc_133C2:
                
                move.w  ((DISPLAYED_MEMBERS_LIST_SELECTED_ENTRY-$1000000)).w,d2
                lsl.w   #NIBBLE_SHIFT_COUNT,d2
                add.w   d2,d0
                moveq   #WINDOW_MEMBERS_LIST_HIGHLIGHTSPRITES_COUNTER,d7
loc_133CC:
                
                move.w  (a1)+,(a0)
                add.w   d0,(a0)
                move.w  (a1)+,d2
                move.w  d2,VDPSPRITE_OFFSET_SIZE(a0)
                move.w  (a1)+,VDPSPRITE_OFFSET_TILE(a0)
                move.w  (a1)+,VDPSPRITE_OFFSET_X(a0)
                addq.l  #VDP_SPRITE_SIZE,a0
                dbf     d7,loc_133CC
                
                move.w  #1,(a0)
                move.w  #1,VDPSPRITE_OFFSET_X(a0)
                tst.w   ((DISPLAYED_MEMBERS_LIST_FIRST_ENTRY-$1000000)).w
                beq.s   loc_13404
                
                cmpi.w  #7,d1           ; blink on/off
                blt.s   loc_13404
                move.w  #151,VDPSPRITE_OFFSET_X(a0)
                move.w  #260,(a0)
loc_13404:
                
                move.w  #WINDOW_MEMBERS_LIST_SPRITELINK_DOWNARROW,VDPSPRITE_OFFSET_SIZE(a0)
                move.w  #VDPTILE_V_ARROW|VDPTILE_FLIP|VDPTILE_PALETTE3|VDPTILE_PRIORITY,VDPSPRITE_OFFSET_TILE(a0)
                addq.l  #VDP_SPRITE_SIZE,a0
                move.w  #1,(a0)
                move.w  #1,VDPSPRITE_OFFSET_X(a0)
                move.w  ((DISPLAYED_MEMBERS_LIST_FIRST_ENTRY-$1000000)).w,d0
                addq.w  #5,d0
                cmp.w   ((GENERIC_LIST_LENGTH-$1000000)).w,d0
                bge.s   loc_13438
                
                cmpi.w  #7,d1           ; blink on/off
                blt.s   loc_13438
                move.w  #151,VDPSPRITE_OFFSET_X(a0)
                move.w  #333,(a0)
loc_13438:
                
                move.w  #WINDOW_MEMBERS_LIST_SPRITELINK_UPARROW,VDPSPRITE_OFFSET_SIZE(a0)
                move.w  #VDPTILE_V_ARROW|VDPTILE_PALETTE3|VDPTILE_PRIORITY,VDPSPRITE_OFFSET_TILE(a0)
                subq.w  #1,d1
                bne.s   loc_1344A
                moveq   #20,d1
loc_1344A:
                
                move.w  (sp)+,d0
                bsr.w   sub_101E6
                rts

    ; End of function sub_133A0

sprite_MembersListHighlight:
                
; Syntax        vdpSprite y, [VDPSPRITESIZE_]bitfield|link, vdpTile, x
;
;      vdpTile: [VDPTILE_]enum[|MIRROR|FLIP|palette|PRIORITY]
;
;      palette: PALETTE1 = 0 (default when omitted)
;               PALETTE2 = $2000
;               PALETTE3 = $4000
;               PALETTE4 = $6000
;
; Note: Constant names ("enums"), shorthands (defined by macro), and numerical indexes are interchangeable.
                
                vdpSprite 260, V2|H4|9, 1472|PALETTE3|PRIORITY, 156
                vdpSprite 260, V2|H2|10, 1474|PALETTE3|PRIORITY, 188
                vdpSprite 260, V2|H4|11, 1472|MIRROR|PALETTE3|PRIORITY, 204

; =============== S U B R O U T I N E =======================================

;     Get index of currently selected force member (in menus).
;     Out: D0 = selected index (capped to 255)


GetSelectedMember:
                
                move.w  ((DISPLAYED_MEMBERS_LIST_FIRST_ENTRY-$1000000)).w,d0
                add.w   ((DISPLAYED_MEMBERS_LIST_SELECTED_ENTRY-$1000000)).w,d0
                lea     ((GENERIC_LIST-$1000000)).w,a0
                move.b  (a0,d0.w),d0
                andi.w  #BYTE_MASK,d0
                rts

    ; End of function GetSelectedMember


; =============== S U B R O U T I N E =======================================

statusEffects = -10
memberSummaryWindow = -8
portraitWindow = -6
membersListWindow = -4
selectedMember = -2

sub_13478:
                
                bsr.w   sub_1354C
                move.w  membersListWindow(a6),d0
                move.w  #$8080,d1
                jsr     (SetWindowDestination).l
                move.w  memberSummaryWindow(a6),d0
                move.w  #$8080,d1
                jsr     (SetWindowDestination).l
                bsr.w   LoadCombatantPortrait
                moveq   #$A,d1
                rts

    ; End of function sub_13478


; =============== S U B R O U T I N E =======================================


CopyWords:
                
                move.w  (a0)+,(a1)+
                dbf     d7,CopyWords
                rts

    ; End of function CopyWords


; =============== S U B R O U T I N E =======================================

statusEffects = -10
memberSummaryWindow = -8
portraitWindow = -6
membersListWindow = -4
selectedMember = -2

sub_134A8:
                
                move.w  d0,-(sp)
                move.w  membersListWindow(a6),d0
                clr.w   d1
                jsr     (GetWindowTileAddress).l
                movea.l a1,a0
                tst.b   ((word_FFAF9E-$1000000)).w
                beq.s   loc_134E0
                
                adda.w  #$74,a0 
                adda.w  #$AE,a1 
                move.w  #522,d7
                jsr     (CopyBytes).w   
                lea     layout_13EDE(pc), a0
                suba.w  #$38,a1 
                move.w  #54,d7
                jsr     (CopyBytes).w   
                bra.s   loc_13510
loc_134E0:
                
                adda.w  #$E8,a0 
                adda.w  #$AE,a1 
                move.w  #464,d7
                jsr     (CopyBytes).w   
                lea     layout_13EDE(pc), a0
                suba.w  #$38,a1 
                move.w  #54,d7
                jsr     (CopyBytes).w   
                lea     layout_13EDE(pc), a0
                adda.w  #$20A,a1
                move.w  #54,d7
                jsr     (CopyBytes).w   
loc_13510:
                
                move.w  membersListWindow(a6),d0
                move.w  #$8080,d1
                jsr     (SetWindowDestination).l
                jsr     (WaitForVInt).w
                bsr.w   sub_1354C
                move.w  membersListWindow(a6),d0
                move.w  #$8080,d1
                jsr     (SetWindowDestination).l
                move.w  memberSummaryWindow(a6),d0
                move.w  #$8080,d1
                jsr     (SetWindowDestination).l
                move.w  (sp)+,d0
                bsr.w   LoadCombatantPortrait
                moveq   #$A,d1
                rts

    ; End of function sub_134A8


; =============== S U B R O U T I N E =======================================

statusEffects = -10
memberSummaryWindow = -8
portraitWindow = -6
membersListWindow = -4
selectedMember = -2

sub_1354C:
                
                move.w  ((DISPLAYED_MEMBERS_LIST_SELECTED_ENTRY-$1000000)).w,d0
                add.w   ((DISPLAYED_MEMBERS_LIST_FIRST_ENTRY-$1000000)).w,d0
                lea     ((GENERIC_LIST-$1000000)).w,a0
                move.b  (a0,d0.w),d0
                andi.w  #ALLY_MASK_INDEX,d0
                move.w  d0,selectedMember(a6)
                move.w  membersListWindow(a6),d0
                clr.w   d1
                jsr     (GetWindowTileAddress).l
                move.w  selectedMember(a6),d0
                bsr.w   WriteMembersListText
                move.w  memberSummaryWindow(a6),d0
                clr.w   d1
                jsr     (GetWindowTileAddress).l
                move.w  selectedMember(a6),d0
                bsr.w   BuildMemberSummaryWindow
                move.w  portraitWindow(a6),d0
                lea     tiles_WindowBorder(pc), a0
                clr.w   d1
                jsr     (GetWindowTileAddress).l
                move.w  #160,d7
                jsr     (CopyBytes).w   
                rts

    ; End of function sub_1354C