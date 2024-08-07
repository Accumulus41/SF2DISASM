
; ASM FILE code\common\menus\menuengine_09.asm :
; 0x16282..0x16618 : Menu engine, part 9

; =============== S U B R O U T I N E =======================================

; In: D0 = default number
;     D1 = min number
;     D2 = max number
; 
; Out: D0 = chosen number

numberMax = -12
numberMin = -10
numberEntry = -8
windowSlot = -6
windowLayoutEndAddress = -4

NumberPrompt:
                
                movem.l d1-a1,-(sp)
                link    a6,#-16
                move.w  d0,numberEntry(a6)
                move.w  d1,numberMin(a6)
                move.w  d2,numberMax(a6)
                move.w  #WINDOW_NUMBERPROMPT_SIZE,d0
                move.w  #WINDOW_NUMBERPROMPT_ORIGIN,d1
                jsr     (CreateWindow).l
                move.w  d0,windowSlot(a6)
                move.l  a1,windowLayoutEndAddress(a6)
                bsr.w   WriteNumberPromptDigits
                move.w  windowSlot(a6),d0
                move.w  #WINDOW_NUMBERPROMPT_DESTINATION,d1
                moveq   #WINDOW_NUMBERPROMPT_ANIMATION_LENGTH,d2
                jsr     (MoveWindowWithSfx).l
                jsr     (WaitForWindowMovementEnd).l
@Loop:
                
                bsr.w   WriteNumberPromptDigits
                move.w  windowSlot(a6),d0
                move.w  #$8080,d1
                jsr     (SetWindowDestination).l
                btst    #INPUT_BIT_RIGHT,((CURRENT_PLAYER_INPUT-$1000000)).w
                beq.s   @CheckInput_Left
                moveq   #1,d3           ; add 1
                bsr.w   ModifyPromptNumber
@CheckInput_Left:
                
                btst    #INPUT_BIT_LEFT,((CURRENT_PLAYER_INPUT-$1000000)).w
                beq.s   @CheckInput_Down
                moveq   #-1,d3          ; subtract 1
                bsr.w   ModifyPromptNumber
@CheckInput_Down:
                
                btst    #INPUT_BIT_DOWN,((CURRENT_PLAYER_INPUT-$1000000)).w
                beq.s   @CheckInput_Up
                moveq   #10,d3          ; add 10
                bsr.w   ModifyPromptNumber
@CheckInput_Up:
                
                btst    #INPUT_BIT_UP,((CURRENT_PLAYER_INPUT-$1000000)).w
                beq.s   @CheckRemainingInputs
                moveq   #-10,d3         ; subtract 10
                bsr.w   ModifyPromptNumber
@CheckRemainingInputs:
                
                btst    #INPUT_BIT_B,((CURRENT_PLAYER_INPUT-$1000000)).w
                bne.w   @ReturnDefaultNumber
                btst    #INPUT_BIT_C,((CURRENT_PLAYER_INPUT-$1000000)).w
                bne.w   @ReturnChosenNumber
                btst    #INPUT_BIT_A,((CURRENT_PLAYER_INPUT-$1000000)).w
                bne.w   @ReturnChosenNumber
                movem.l d6-d7,-(sp)
                move.w  #$100,d6
                jsr     (GenerateRandomNumber).w
                movem.l (sp)+,d6-d7
                jsr     (WaitForVInt).w
                bra.s   @Loop
@ReturnDefaultNumber:
                
                move.w  #-1,numberEntry(a6)
@ReturnChosenNumber:
                
                move.w  windowSlot(a6),d0
                move.w  #WINDOW_NUMBERPROMPT_ORIGIN,d1
                moveq   #WINDOW_NUMBERPROMPT_ANIMATION_LENGTH,d2
                jsr     (MoveWindowWithSfx).l
                jsr     (WaitForWindowMovementEnd).l
                move.w  windowSlot(a6),d0
                jsr     (DeleteWindow).l
                move.w  numberEntry(a6),d0
                unlk    a6
                movem.l (sp)+,d1-a1
                rts

    ; End of function NumberPrompt


; =============== S U B R O U T I N E =======================================

; In: A6 = number prompt window stack

numberMax = -12
numberMin = -10
numberEntry = -8
windowSlot = -6
windowLayoutEndAddress = -4

WriteNumberPromptDigits:
                
                movea.l windowLayoutEndAddress(a6),a1
                move.w  #WINDOW_NUMBERPROMPT_SIZE,d0
                bsr.w   alt_WriteWindowTiles
                movea.l windowLayoutEndAddress(a6),a1
                adda.w  #WINDOW_NUMBERPROMPT_DIGITS_OFFSET,a1
                move.w  numberEntry(a6),d0
                ext.l   d0
                moveq   #$FFFFFFF2,d1
                moveq   #WINDOW_NUMBERPROMPT_DIGITS_NUMBER,d7
                bra.w   WriteTilesFromNumber

    ; End of function WriteNumberPromptDigits


; =============== S U B R O U T I N E =======================================

; In: A6 = number prompt window stack

numberMax = -12
numberMin = -10
numberEntry = -8
windowSlot = -6
windowLayoutEndAddress = -4

ModifyPromptNumber:
                
                move.w  numberEntry(a6),d0
                add.w   d3,d0
                cmp.w   numberMax(a6),d0
                blt.s   @MaxNumber_Skip
                move.w  numberMax(a6),d0
@MaxNumber_Skip:
                
                cmp.w   numberMin(a6),d0
                bge.s   @MinNumber_Skip
                move.w  numberMin(a6),d0
@MinNumber_Skip:
                
                move.w  d0,numberEntry(a6)
                sndCom  SFX_MENU_SELECTION
                rts

    ; End of function ModifyPromptNumber


; =============== S U B R O U T I N E =======================================

flag = -8
windowSlot = -6
windowLayoutEndAddress = -4

DebugSetFlag:
                
                movem.l d0-a1,-(sp)
                link    a6,#-16
                move.w  d0,flag(a6)
                move.w  #$703,d0
                move.w  #$2001,d1
                jsr     (CreateWindow).l
                move.w  d0,windowSlot(a6)
                move.l  a1,windowLayoutEndAddress(a6)
                bsr.s   WriteNumberPromptDigits
                move.w  windowSlot(a6),d0
                move.w  #$1801,d1
                moveq   #4,d2
                jsr     (MoveWindowWithSfx).l
                jsr     (WaitForWindowMovementEnd).l
loc_163F6:
                
                bsr.w   WriteDebugFlagSetterWindowLayout
                move.w  windowSlot(a6),d0
                move.w  #$8080,d1
                jsr     (SetWindowDestination).l
                btst    #INPUT_BIT_RIGHT,((CURRENT_PLAYER_INPUT-$1000000)).w
                beq.s   loc_16416
                moveq   #1,d3
                bsr.w   sub_164E8
loc_16416:
                
                btst    #INPUT_BIT_LEFT,((CURRENT_PLAYER_INPUT-$1000000)).w
                beq.s   loc_16424
                moveq   #-1,d3
                bsr.w   sub_164E8
loc_16424:
                
                btst    #INPUT_BIT_DOWN,((CURRENT_PLAYER_INPUT-$1000000)).w
                beq.s   loc_16432
                moveq   #$A,d3
                bsr.w   sub_164E8
loc_16432:
                
                btst    #INPUT_BIT_UP,((CURRENT_PLAYER_INPUT-$1000000)).w
                beq.s   loc_16440
                moveq   #$FFFFFFF6,d3
                bsr.w   sub_164E8
loc_16440:
                
                btst    #INPUT_BIT_B,((CURRENT_PLAYER_INPUT-$1000000)).w
                bne.w   loc_16484
                btst    #INPUT_BIT_C,((CURRENT_PLAYER_INPUT-$1000000)).w
                bne.w   byte_16464
                btst    #INPUT_BIT_A,((CURRENT_PLAYER_INPUT-$1000000)).w
                bne.w   byte_16474
loc_1645E:
                
                jsr     (WaitForVInt).w
                bra.s   loc_163F6
byte_16464:
                
                sndCom  SFX_VALIDATION
                move.w  flag(a6),d1
                jsr     j_SetFlag
                bra.s   loc_1645E
byte_16474:
                
                sndCom  SFX_VALIDATION
                move.w  flag(a6),d1
                jsr     j_ClearFlag
                bra.s   loc_1645E
loc_16484:
                
                move.w  windowSlot(a6),d0
                move.w  #$2001,d1
                moveq   #4,d2
                jsr     (MoveWindowWithSfx).l
                jsr     (WaitForWindowMovementEnd).l
                move.w  windowSlot(a6),d0
                jsr     (DeleteWindow).l
                unlk    a6
                movem.l (sp)+,d0-a1
                rts

    ; End of function DebugSetFlag


; =============== S U B R O U T I N E =======================================

flag = -8
windowSlot = -6
windowLayoutEndAddress = -4

WriteDebugFlagSetterWindowLayout:
                
                movea.l windowLayoutEndAddress(a6),a1
                move.w  #$703,d0
                bsr.w   alt_WriteWindowTiles
                movea.l windowLayoutEndAddress(a6),a1
                adda.w  #$10,a1
                move.w  flag(a6),d0
                ext.l   d0
                moveq   #-14,d1
                moveq   #3,d7
                bsr.w   WriteTilesFromNumber
                addq.l  #2,a1
                move.w  flag(a6),d1
                jsr     j_CheckFlag
                bne.s   loc_164E2
                move.w  #VDPTILE_NUMBER_0|VDPTILE_PALETTE3|VDPTILE_PRIORITY,(a1)
                bra.s   return_164E6
loc_164E2:
                
                move.w  #VDPTILE_NUMBER_1|VDPTILE_PALETTE3|VDPTILE_PRIORITY,(a1)
return_164E6:
                
                rts

    ; End of function WriteDebugFlagSetterWindowLayout


; =============== S U B R O U T I N E =======================================

flag = -8
windowSlot = -6
windowLayoutEndAddress = -4

sub_164E8:
                
                move.w  flag(a6),d0
                add.w   d3,d0
                cmpi.w  #0,d0
                bge.s   loc_164F8
                move.w  #0,d0
loc_164F8:
                
                cmpi.w  #$3FF,d0
                blt.s   loc_16502
                move.w  #$3FF,d0
loc_16502:
                
                move.w  d0,flag(a6)
                sndCom  SFX_MENU_SELECTION
                rts

    ; End of function sub_164E8


; =============== S U B R O U T I N E =======================================


OpenTimerWindow:
                
                movem.l d0-d1/a0-a1,-(sp)
                tst.w   ((TIMER_WINDOW_INDEX-$1000000)).w
                bne.s   @Skip
                
                move.w  #WINDOW_TIMER_SIZE,d0        ; width height
                move.w  #WINDOW_TIMER_DEST,d1        ; X-Y screen pos
                jsr     (CreateWindow).l
                bsr.w   WriteTimerDigits
                move.w  #$8080,d1
                jsr     (SetWindowDestination).l
                addq.w  #1,d0
                move.w  d0,((TIMER_WINDOW_INDEX-$1000000)).w
                trap    #VINT_FUNCTIONS
                dc.w VINTS_ADD
                dc.l VInt_UpdateTimerWindow
                move.l  #-1,((SPECIAL_BATTLE_TIME-$1000000)).w
                addq.b  #1,((WINDOW_IS_PRESENT-$1000000)).w
@Skip:
                
                movem.l (sp)+,d0-d1/a0-a1
                rts

    ; End of function OpenTimerWindow


; =============== S U B R O U T I N E =======================================


CloseTimerWindow:
                
                movem.l d0-d1/a0-a1,-(sp)
                move.w  ((TIMER_WINDOW_INDEX-$1000000)).w,d0
                beq.s   @Skip
                
                subq.w  #1,d0
                move.w  #$2020,d1
                jsr     (SetWindowDestination).l
                jsr     (WaitForVInt).w
                jsr     (DeleteWindow).l
                clr.w   ((TIMER_WINDOW_INDEX-$1000000)).w
                trap    #VINT_FUNCTIONS
                dc.w VINTS_REMOVE
                dc.l VInt_UpdateTimerWindow
                subq.b  #1,((WINDOW_IS_PRESENT-$1000000)).w
@Skip:
                
                movem.l (sp)+,d0-d1/a0-a1
                rts

    ; End of function CloseTimerWindow


; =============== S U B R O U T I N E =======================================


VInt_UpdateTimerWindow:
                
                movem.l d0-d1/a0-a1,-(sp)
                move.w  ((TIMER_WINDOW_INDEX-$1000000)).w,d0
                beq.s   loc_165BA
                move.l  ((SECONDS_COUNTER-$1000000)).w,d1
                cmp.l   ((SPECIAL_BATTLE_TIME-$1000000)).w,d1
                beq.s   loc_165BA
                move.l  d1,((SPECIAL_BATTLE_TIME-$1000000)).w
                subq.w  #1,d0
                bsr.w   WriteTimerDigits
                sndCom  SFX_MENU_SELECTION
                tst.b   ((HIDE_WINDOWS_TOGGLE-$1000000)).w
                bne.s   loc_165BA
                move.w  #$8080,d1
                jsr     (SetWindowDestination).l
loc_165BA:
                
                movem.l (sp)+,d0-d1/a0-a1
                rts

    ; End of function VInt_UpdateTimerWindow


; =============== S U B R O U T I N E =======================================


WriteTimerDigits:
                
                move.w  d0,-(sp)
                clr.w   d1
                jsr     (GetWindowTileAddress).l
                movem.l a1,-(sp)
                lea     layout_TimerWindow(pc), a0
                moveq   #64,d7
                jsr     (CopyBytes).w   
                movem.l (sp)+,a1
                adda.w  #34,a1
                move.l  ((SECONDS_COUNTER-$1000000)).w,d0
                divu.w  #60,d0
                move.l  d0,-(sp)
                ext.l   d0
                cmpi.l  #999,d0
                bcs.s   loc_165FA
                move.l  #999,d0
loc_165FA:
                
                moveq   #-16,d1
                moveq   #3,d7
                bsr.w   WriteTilesFromNumber
                move.l  (sp)+,d0
                swap    d0
                ext.l   d0
                addi.w  #100,d0
                addq.l  #2,a1
                moveq   #2,d7
                bsr.w   WriteTilesFromNumber
                move.w  (sp)+,d0
                rts

    ; End of function WriteTimerDigits

