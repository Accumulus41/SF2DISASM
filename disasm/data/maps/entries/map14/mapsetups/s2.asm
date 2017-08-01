
; ASM FILE data\maps\entries\map14\mapsetups\s2.asm :
; 0x58EBA..0x58F0E : 
ms_map14_EntityEvents:
		dc.b   1
		dc.b   1
		dc.b   0
		dc.b $24 
		dc.b 2
		dc.b 0
		dc.w sub_58EE4-ms_map14_EntityEvents
		dc.b 4
		dc.b 1
		dc.w sub_58EEA-ms_map14_EntityEvents
		dc.b 5
		dc.b 1
		dc.w sub_58EF0-ms_map14_EntityEvents
		dc.b 6
		dc.b 1
		dc.w sub_58EF6-ms_map14_EntityEvents
		dc.b $80
		dc.b 1
		dc.w sub_58EFC-ms_map14_EntityEvents
		dc.b $81
		dc.b 3
		dc.w sub_58F02-ms_map14_EntityEvents
		dc.b $82
		dc.b 1
		dc.w sub_58F08-ms_map14_EntityEvents
		dc.w $FD00
		dc.w return_58EE2-ms_map14_EntityEvents

; =============== S U B R O U T I N E =======================================

sub_58EDE:
		
		trap    #TEXTBOX
		dc.w $8CD               
						; "That's OK.  {NAME;3} needed{N}a bath anyway.{W1}"
return_58EE2:
		
		rts

	; End of function sub_58EDE


; =============== S U B R O U T I N E =======================================

sub_58EE4:
		
		trap    #TEXTBOX
		dc.w $8CF               
						; "I can't talk now!{N}I'm working!{W1}"
		rts

	; End of function sub_58EE4


; =============== S U B R O U T I N E =======================================

sub_58EEA:
		
		trap    #TEXTBOX
		dc.w $8CE               
						; "{LEADER}, bring that plank{N}above deck.{W1}"
		rts

	; End of function sub_58EEA


; =============== S U B R O U T I N E =======================================

sub_58EF0:
		
		trap    #TEXTBOX
		dc.w $8D0               
						; "Boy, I sure hope {NAME;3}{N}can swim....{W1}"
		rts

	; End of function sub_58EF0


; =============== S U B R O U T I N E =======================================

sub_58EF6:
		
		trap    #TEXTBOX
		dc.w $8D1               
						; "What can I do to help?{W1}"
		rts

	; End of function sub_58EF6


; =============== S U B R O U T I N E =======================================

sub_58EFC:
		
		trap    #TEXTBOX
		dc.w $8D2               
						; "Our home town will be{N}reborn!{W1}"
		rts

	; End of function sub_58EFC


; =============== S U B R O U T I N E =======================================

sub_58F02:
		
		trap    #TEXTBOX
		dc.w $8D3               
						; "They're mining granite for{N}our town at North Cliff.{W1}"
		rts

	; End of function sub_58F02


; =============== S U B R O U T I N E =======================================

sub_58F08:
		
		trap    #TEXTBOX
		dc.w $8D4               
						; "You had better bring up that{N}plank!{W1}"
		rts

	; End of function sub_58F08

