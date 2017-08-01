
; ASM FILE data\maps\entries\map24\mapsetups\s6.asm :
; 0x59C36..0x59D08 : 

; =============== S U B R O U T I N E =======================================

ms_map24_InitFunction:
		
		trap    #SOUND_COMMAND
		dc.w MUSIC_HEADQUARTERS
		jsr     (FadeInFromBlack).w
		move.w  #$46,((CURRENT_SPEAK_SOUND-$1000000)).w 
		trap    #CHECK_FLAG
		dc.w $220               
						; battle 44 completed, fairy woods secret battle ?
		bne.w   loc_59CB2
		trap    #TEXTBOX
		dc.w $1D3               
						; "Welcome to the fairy woods{N}special stage!{W2}"
		trap    #TEXTBOX
		dc.w $1D4               
						; "How quickly can you defeat{N}all the hidden monsters?{W2}"
		trap    #TEXTBOX
		dc.w $1D5               
						; "Now, set a new record.{W2}"
		move.l  ((SPECIAL_BATTLE_RECORD-$1000000)).w,d0
		divs.w  #$3C,d0 
		move.w  d0,d1
		ext.l   d1
		move.l  d1,((TEXT_NUMBER-$1000000)).w
		trap    #TEXTBOX
		dc.w $1D6               
						; "Best record so far is{N}{#} min."
		swap    d0
		ext.l   d0
		move.l  d0,((TEXT_NUMBER-$1000000)).w
		trap    #TEXTBOX
		dc.w $1D7               
						; "{DICT} {#} sec.{W2}"
		trap    #TEXTBOX
		dc.w $1D8               
						; "Are you ready?"
		jsr     j_YesNoChoiceBox
		tst.w   d0
		bne.s   loc_59C92
		trap    #TEXTBOX
		dc.w $1D9               
						; "...set...GO!{W2}"
		lea     cs_StartSpecialBattle(pc), a0
		trap    #6
		bra.s   return_59C9C
loc_59C92:
		
		trap    #TEXTBOX
		dc.w $1DA               
						; "Oh, what a pity!{N}Please visit me anytime!!{W1}"
		lea     cs_LeaveSpecialBattle(pc), a0
						; some script
		trap    #6
return_59C9C:
		
		rts
cs_StartSpecialBattle:
		
		setStoryFlag $2C        
						; Battle 44 unlocked
		mapSysEvent $18011802   
						; 0007 EXECUTE MAP SYSTEM EVENT 18011802
		csc_end                 
						; END OF CUTSCENE SCRIPT
cs_LeaveSpecialBattle:
		
		mapSysEvent $171E1802   
						; 0007 EXECUTE MAP SYSTEM EVENT 171E1802
		csc_end                 
						; END OF CUTSCENE SCRIPT
loc_59CB2:
		
		move.l  ($FFFFDF22).w,d0
		divs.w  #$3C,d0 
		move.w  d0,d1
		ext.l   d1
		move.l  d1,((TEXT_NUMBER-$1000000)).w
		trap    #TEXTBOX
		dc.w $1DB               
						; "You recorded{N}{#} min."
		swap    d0
		ext.l   d0
		move.l  d0,((TEXT_NUMBER-$1000000)).w
		trap    #TEXTBOX
		dc.w $1DC               
						; "{DICT} {#} sec.{W2}"
		move.l  ((SPECIAL_BATTLE_TIME-$1000000)).w,d0
		cmp.l   ((SPECIAL_BATTLE_RECORD-$1000000)).w,d0
		bcc.s   loc_59CF0
		trap    #TEXTBOX
		dc.w $1DD               
						; "Congratulations!{N}You made it!"
		move.l  d0,((SPECIAL_BATTLE_RECORD-$1000000)).w
		trap    #SOUND_COMMAND
		dc.w MUSIC_ITEM
		jsr     j_FadeOut_WaitForP2Input
						; fade out music and wait for P2 input ?!
		bra.s   loc_59CF4
loc_59CF0:
		
		trap    #TEXTBOX
		dc.w $1DE               
						; "It was close!{W2}"
loc_59CF4:
		
		trap    #TEXTBOX
		dc.w $1DF               
						; "Come back again!{N}See ya!{W1}"
		trap    #TEXTBOX
		dc.w $FFFF
		lea     cs_LeaveSpecialBattle(pc), a0
		trap    #6
		trap    #CLEAR_FLAG
		dc.w $220               
						; Battle 44 completed
		rts

	; End of function ms_map24_InitFunction

