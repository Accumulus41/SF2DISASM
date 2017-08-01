
; ASM FILE data\maps\entries\map43\mapsetups\s6.asm :
; 0x540A6..0x54348 : 

; =============== S U B R O U T I N E =======================================

ms_map43_InitFunction:
		
		lea     cs_540C0(pc), a0
		trap    #6
		trap    #SET_FLAG
		dc.w $264               
						; set after event at Hawel's house
		trap    #SET_FLAG
		dc.w $28A               
						; set after event at Hawel's house
		trap    #CLEAR_FLAG
		dc.w $48                
						; Kazin is a follower
		move.b  #$2B,((EGRESS_MAP_INDEX-$1000000)).w 
return_540BE:
		
		rts

	; End of function ms_map43_InitFunction

cs_540C0:
		textCursor $32B         
						; Initial text line $32B : "This is Hawel's house.{W1}"
		setActscript $0,$FF,eas_Init
						; 0015 SET ACTSCRIPT 0 FF 460CE
		setActscript $4,$FF,eas_Init
						; 0015 SET ACTSCRIPT 4 FF 460CE
		entityPosDir $80,$7,$4,$3
						; 0019 SET ENTITY POS AND FACING 80 7 4 3
		entityPosDir $0,$6,$B,$1
						; 0019 SET ENTITY POS AND FACING 0 6 B 1
		entityPosDir $4,$5,$B,$1
						; 0019 SET ENTITY POS AND FACING 4 5 B 1
		customActscript $80,$FF 
						; 0014 SET MANUAL ACTSCRIPT 80
		dc.w $14                
						;   0014 SET ANIM COUNTER $0
		dc.w 0
		dc.w $1B                
						;   001B SET FLIPPING $1
		dc.w 1
		dc.w $A                 
						;   000A UPDATE SPRITE
		dc.w $34                
						;   0034 JUMP TO ABSOLUTE ADDR. 0x451FC
		dc.l eas_Idle           
		dc.w $8080              
						; 0014 END OF CUSTOM ACTSCRIPT
		stopEntity $80          
						; 001C STOP ENTITY ANIM 80
		csc46 $0,$4             
						; 0046 UNKNOWN
		fadeInB                 
						; 0039 FADE IN FROM BLACK
		csWait $32              
						; WAIT 32
		setEntityDir $0,$2      
						; 0023 SET ENTITY FACING 0 2
		setEntityDir $4,$0      
						; 0023 SET ENTITY FACING 4 0
		csWait $1E              
						; WAIT 1E
		nextSingleText $0,$4    
						; "This is Hawel's house.{W1}"
		moveEntity $4,$FF,$2,$1 
						; 002D MOVE ENTITY 4 FF 2 1
		moreMove $1,$1
		moreMove $C,$14
		endMove $8080
		nextSingleText $0,$4    
						; "Sir Hawel!{N}Granseal friends are here!{W1}"
		csWait $46              
						; WAIT 46
		setEntityDir $4,$0      
						; 0023 SET ENTITY FACING 4 0
		csWait $28              
						; WAIT 28
		nextSingleText $0,$4    
						; "Strange...{N}There's no answer.{W2}{N}Has he gone somewhere?{N}Well, why don't you wait{N}for him inside?{W1}"
		entityNod $0            
						; 0026 MAKE ENTITY NOD 0
		moveEntity $0,$FF,$2,$2 
						; 002D MOVE ENTITY 0 FF 2 2
		endMove $8080
		csc43 $4,$9             
						; 0043 UNKNOWN, RELATED TO BLOCK COPY
		csc47 $4,$9             
						; 0047 UNKNOWN
		csc47 $B,$9             
						; 0047 UNKNOWN
		moveEntity $4,$0,$1,$3  
						; 002D MOVE ENTITY 4 0 1 3
		endMove $8080
		moveEntity $0,$FF,$1,$3 
						; 002D MOVE ENTITY 0 FF 1 3
		endMove $8080
		csWait $1E              
						; WAIT 1E
		customActscript $4,$FF  
						; 0014 SET MANUAL ACTSCRIPT 4
		dc.w $10                
						;   0010 SET SPEED X=$30 Y=$30
		dc.b $30
		dc.b $30
		dc.w $34                
						;   0034 JUMP TO ABSOLUTE ADDR. 0x451FC
		dc.l eas_Idle           
		dc.w $8080              
						; 0014 END OF CUSTOM ACTSCRIPT
		moveEntity $4,$FF,$0,$1 
						; 002D MOVE ENTITY 4 FF 0 1
		endMove $8080
		setEntityDir $4,$1      
						; 0023 SET ENTITY FACING 4 1
		playSound $FE           
						; 0005 PLAY SOUND 
		nextSingleText $0,$4    
						; "Wh...who are you?{N}Oh, Sir Hawel!{W1}"
		playSound MUSIC_ENEMY_ATTACK
						; 0005 PLAY SOUND MUSIC_ENEMY_ATTACK
		setCamDest $2,$0        
						; 0032 SET CAMERA DEST 2 0
		setEntityDir $81,$3     
						; 0023 SET ENTITY FACING 81 3
		setEntityDir $82,$3     
						; 0023 SET ENTITY FACING 82 3
		nextSingleText $0,$81   
						; "Oops!  You came back early!{W1}"
		moveEntity $4,$FF,$1,$1 
						; 002D MOVE ENTITY 4 FF 1 1
		endMove $8080
		nextSingleText $0,$4    
						; "You!  What did you{N}do to Sir Hawel?!{W1}"
		csWait $1E              
						; WAIT 1E
		setEntityDir $81,$0     
						; 0023 SET ENTITY FACING 81 0
		setEntityDir $82,$2     
						; 0023 SET ENTITY FACING 82 2
		csWait $1E              
						; WAIT 1E
		setEntityDir $81,$3     
						; 0023 SET ENTITY FACING 81 3
		setEntityDir $82,$3     
						; 0023 SET ENTITY FACING 82 3
		csWait $1E              
						; WAIT 1E
		setActscript $81,$0,eas_Jump
						; 0015 SET ACTSCRIPT 81 0 45E44
		setActscript $82,$FF,eas_Jump
						; 0015 SET ACTSCRIPT 82 FF 45E44
		setActscript $81,$0,eas_Jump
						; 0015 SET ACTSCRIPT 81 0 45E44
		setActscript $82,$FF,eas_Jump
						; 0015 SET ACTSCRIPT 82 FF 45E44
		customActscript $81,$FF 
						; 0014 SET MANUAL ACTSCRIPT 81
		dc.w $10                
						;   0010 SET SPEED X=$30 Y=$30
		dc.b $30
		dc.b $30
		dc.w $34                
						;   0034 JUMP TO ABSOLUTE ADDR. 0x451FC
		dc.l eas_Idle           
		dc.w $8080              
						; 0014 END OF CUSTOM ACTSCRIPT
		customActscript $82,$FF 
						; 0014 SET MANUAL ACTSCRIPT 82
		dc.w $10                
						;   0010 SET SPEED X=$30 Y=$30
		dc.b $30
		dc.b $30
		dc.w $34                
						;   0034 JUMP TO ABSOLUTE ADDR. 0x451FC
		dc.l eas_Idle           
		dc.w $8080              
						; 0014 END OF CUSTOM ACTSCRIPT
		setActscript $4,$FF,eas_Init
						; 0015 SET ACTSCRIPT 4 FF 460CE
		moveEntity $82,$0,$3,$2 
						; 002D MOVE ENTITY 82 0 3 2
		moreMove $0,$4
		moreMove $3,$5
		endMove $8080
		moveEntity $81,$0,$0,$1 
						; 002D MOVE ENTITY 81 0 0 1
		moreMove $3,$2
		moreMove $0,$4
		moreMove $3,$5
		endMove $8080
		moveEntity $4,$FF,$C,$14
						; 002D MOVE ENTITY 4 FF C 14
		moreMove $8,$14
		moreMove $D,$0
		moreMove $3,$1
		moreMove $0,$3
		endMove $8080
		playSound SFX_BLO       
						; 0005 PLAY SOUND SFX_BLO
		customActscript $4,$FF  
						; 0014 SET MANUAL ACTSCRIPT 4
		dc.w $14                
						;   0014 SET ANIM COUNTER $0
		dc.w 0
		dc.w $1B                
						;   001B SET FLIPPING $1
		dc.w 1
		dc.w $A                 
						;   000A UPDATE SPRITE
		dc.w $34                
						;   0034 JUMP TO ABSOLUTE ADDR. 0x451FC
		dc.l eas_Idle           
		dc.w $8080              
						; 0014 END OF CUSTOM ACTSCRIPT
		hideEntity $81          
						; 002E HIDE ENTITY 81
		hideEntity $82          
						; 002E HIDE ENTITY 82
		csWait $3C              
						; WAIT 3C
		setActscript $4,$FF,eas_Init
						; 0015 SET ACTSCRIPT 4 FF 460CE
		moveEntity $4,$FF,$0,$1 
						; 002D MOVE ENTITY 4 FF 0 1
		endMove $8080
		playSound $FD           
						; 0005 PLAY SOUND 
		nextSingleText $0,$80   
						; "Ohhh...{NAME;4}....{W1}"
		moveEntity $4,$FF,$2,$1 
						; 002D MOVE ENTITY 4 FF 2 1
		endMove $8080
		setEntityDir $4,$1      
						; 0023 SET ENTITY FACING 4 1
		nextSingleText $0,$4    
						; "Sir...you're alive!{W1}"
		playSound MUSIC_SAD_THEME_1
						; 0005 PLAY SOUND MUSIC_SAD_THEME_1
		nextSingleText $0,$80   
						; "...It's no use running after{N}them....{W1}"
		moveEntity $4,$FF,$2,$1 
						; 002D MOVE ENTITY 4 FF 2 1
		moreMove $1,$2
		endMove $8080
		nextSingleText $0,$4    
						; "Are you OK, sir?{N}Why did they do such a{N}cruel thing?{W1}"
		nextSingleText $0,$80   
						; "They were Galam soldiers.{N}They demanded my notes on{N}Ground Seal.{W2}{N}They suddenly snatched at{N}them, and...(cough)...{W1}"
		entityShiver $80        
						; 002A MAKE ENTITY SHIVER 80
		stopEntity $80          
						; 001C STOP ENTITY ANIM 80
		moveEntity $0,$FF,$0,$2 
						; 002D MOVE ENTITY 0 FF 0 2
		moreMove $1,$3
		endMove $8080
		setEntityDir $0,$0      
						; 0023 SET ENTITY FACING 0 0
		setEntityDir $4,$2      
						; 0023 SET ENTITY FACING 4 2
		nextSingleText $0,$0    
						; "(Whisper)....{W1}"
		nextSingleText $0,$80   
						; "Who...is...it?{N}What...did he...say?{W1}"
		setEntityDir $4,$1      
						; 0023 SET ENTITY FACING 4 1
		nextSingleText $0,$4    
						; "He's {LEADER} from{N}Granseal.  He said that{N}Ground Seal has opened.{W1}{N}And a serious disaster{N}took place!{W1}{N}He came to see you for{N}more information.{W1}"
		entityShiver $80        
						; 002A MAKE ENTITY SHIVER 80
		stopEntity $80          
						; 001C STOP ENTITY ANIM 80
		nextSingleText $0,$80   
						; "What?!  The door opened?{N}Who broke the ancient{N}seal?! {W1}"
		nextSingleText $0,$4    
						; "Calm down, sir.{N}Why are you so excited?{W1}"
		nextSingleText $0,$80   
						; "(Cough, cough)...{NAME;4},{N}listen to me carefully.{N}Grans Island is lost!{W2}{N}That tower is the sacred{N}seal that confines a terrible{N}devil.{W2}{N}Two jewels...(cough)...{N}were...installed to...{W1}"
		entityShiver $80        
						; 002A MAKE ENTITY SHIVER 80
		stopEntity $80          
						; 001C STOP ENTITY ANIM 80
		nextSingleText $0,$4    
						; "Stop talking, or you'll die.{W1}"
		nextText $0,$80         
						; "I'm almost dead anyway...{N}(cough)...(cough)....{W2}"
		nextSingleText $0,$80   
						; "{NAME;4}, look for the jewels...{N}to seal...ancient...{W1}"
		playSound $FD           
						; 0005 PLAY SOUND 
		entityShiver $80        
						; 002A MAKE ENTITY SHIVER 80
		stopEntity $80          
						; 001C STOP ENTITY ANIM 80
		entityPosDirFlash $80,$3F,$3F,$3
						; 0017 SET ENTITY POS AND FACING WITH FLASH 80 3F 3F 3
		moveEntity $4,$FF,$1,$1 
						; 002D MOVE ENTITY 4 FF 1 1
		endMove $8080
		nextSingleText $0,$4    
						; "Sir!  Sir Hawel!{N}Don't leave me alone!{N}Oh, no...!{W1}"
		stopEntity $4           
						; 001C STOP ENTITY ANIM 4
		csWait $3C              
						; WAIT 3C
		moveEntity $0,$FF,$0,$1 
						; 002D MOVE ENTITY 0 FF 0 1
		endMove $8080
		setEntityDir $0,$1      
						; 0023 SET ENTITY FACING 0 1
		csWait $1E              
						; WAIT 1E
		startEntity $4          
						; 001B START ENTITY ANIM 4
		setEntityDir $4,$3      
						; 0023 SET ENTITY FACING 4 3
		nextText $0,$4          
						; "Sir Hawel passed away.{W2}{N}I'm going to seal the tower.{N}It's Sir Hawel's last wish.{W2}"
		nextSingleText $0,$4    
						; "{LEADER}, please!{N}His wish is related to{N}your mission, right?{W2}{N}Can you go with me and{N}seal the tower?{W1}"
		join $8004              
						; 0008 JOIN FORCE 8004
		nextSingleText $0,$4    
						; "Now, let's go to the{N}Ancient Shrine!{W1}"
		followEntity $4,$0,$2   
						; 002C FOLLOW ENTITY 4 0 2
		clearF $48              
						; Kazin is a follower
		setStoryFlag $4         
						; Battle 4 unlocked
		csc_end                 
						; END OF CUTSCENE SCRIPT
