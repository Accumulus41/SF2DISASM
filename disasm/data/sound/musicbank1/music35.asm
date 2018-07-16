
; ASM FILE music35.asm :
; 0x9B7F..0xA011 : Music 35
Music_35:       db 0
		db 1
		db 0
		db 0BDh
		dw Music_3_Channel_0
		dw Music_3_Channel_1
		dw Music_3_Channel_2
		dw Music_3_Channel_3
		dw Music_3_Channel_4
		dw Music_3_Channel_5
		dw Music_3_Channel_6
		dw Music_3_Channel_7
		dw Music_3_Channel_9
		dw Music_3_Channel_9
Music_3_Channel_0:
		  ymStereo 0C0h
		mainLoopStart
		  ymInst 22
		  ymVol 0Ch
		  release 01h
		  vibrato 02Ch
		        noteL E4,96
		        note  Fs4
		        note  Gs4
		        note  Cs4
		        note  E4
		        note  Fs4
		        note  Gs4
		        note  Cs4
		        note  Cs5
		        noteL B4,192
		        noteL A4,32
		        note  Gs4
		        note  Fs4
		        noteL A4,48
		        noteL F4,24
		        note  G4
		        noteL A4,120
		        noteL C5,24
		        note  Gs4
		        note  As4
		        noteL C5,120
		        noteL Ds5,24
		        note  Cs5
		        note  Ds5
		        noteL C5,48
		        note  Gs5
		        noteL A4,192
		  ymVol 0Bh
		        noteL Fs4,48
		        note  Fs5
		        note  Ds5
		        note  B4
		        note  Cs5
		        note  A4
		        note  Gs4
		        note  E4
		        note  Fs4
		        note  Fs5
		        note  Ds5
		        note  B4
		        note  Cs5
		        noteL A4,144
		mainLoopEnd
Music_3_Channel_1:
		  ymStereo 0C0h
		mainLoopStart
		  ymInst 22
		  ymVol 0Bh
		  release 01h
		  vibrato 02Ch
		        noteL A3,96
		        note  B3
		        note  Cs4
		        note  Fs3
		        note  A3
		        note  B3
		        note  Cs4
		        note  Fs3
		        noteL D4,48
		        note  E4
		        note  Fs4
		        note  Gs4
		        noteL Gs4,32
		        note  Fs4
		        note  E4
		        noteL Cs4,96
		        noteL B3,120
		        noteL D4,24
		        note  E4
		        note  F4
		        noteL D4,120
		        noteL F4,24
		        note  G4
		        note  Gs4
		        noteL Gs4,120
		        noteL Ds4,48
		        noteL Cs4,72
		        noteL C4,48
		        note  B3
		        note  C4
		  ymVol 0Ah
		        note  D4
		        note  D5
		        note  B4
		        note  G4
		        note  A4
		        note  F4
		        note  E4
		        note  C4
		        note  D4
		        note  D5
		        note  B4
		        note  G4
		        note  A4
		        noteL F4,144
		mainLoopEnd
Music_3_Channel_2:
		  ymStereo 0C0h
		  ymInst 36
		  ymVol 0Ch
		  release 01h
		  vibrato 02Ch
		mainLoopStart
		        noteL F2,96
		        note  E2
		        note  A2
		        note  B2
		        note  D2
		        note  E2
		        note  A2
		        note  D3
		        note  B2
		        note  E3
		        note  A2
		        note  D3
		        noteL G2,192
		        note  As2
		        note  Fs2
		        note  F2
		  ymSustain
		        note  As2
		        note  As2
		        note  As2
		  release 01h
		        note  As2
		mainLoopEnd
Music_3_Channel_3:
		  ymStereo 0C0h
		  release 01h
		  vibrato 02Ch
		  length 12
		mainLoopStart
		  length 12
		countedLoopStart 3
		  ymInst 17
		  ymVol 08h
		        noteL A4,24
		  ymVol 0Ah
		        note  A5
		  ymVol 08h
		        note  A4
		  ymVol 09h
		        noteL E5,12
		        note  E5
		  ymVol 08h
		        noteL A4,24
		  ymVol 0Ah
		        note  A5
		  ymVol 08h
		        noteL A4,48
		countedLoopEnd
		        noteL A4,24
		  ymVol 0Ah
		        note  A5
		  ymVol 08h
		        note  A4
		  ymVol 09h
		        noteL E5,12
		        note  E5
		  ymVol 08h
		        noteL A4,24
		  ymVol 0Ah
		        note  B5
		  ymVol 08h
		        noteL B4,48
		        noteL B4,24
		  ymVol 0Ah
		        note  B5
		  ymVol 08h
		        note  B4
		  ymVol 09h
		        noteL E5,12
		        note  E5
		  ymVol 08h
		        noteL A4,24
		  ymVol 0Ah
		        note  A5
		  ymVol 08h
		        noteL A4,48
		        noteL A4,24
		  ymVol 0Ah
		        note  A5
		  ymVol 08h
		        note  A4
		        noteL D5,12
		        note  D5
		        noteL A4,24
		  ymVol 0Ah
		        noteL D6,72
		  ymVol 08h
		        noteL D4,24
		        note  D5
		        note  D4
		        noteL Gs4,12
		        note  Gs4
		        noteL D4,24
		        noteL D5,72
		        noteL Gs4,24
		  ymVol 0Ah
		        note  Gs5
		  ymVol 08h
		        note  Gs4
		  ymVol 09h
		        noteL Ds5,12
		        note  Ds5
		  ymVol 08h
		        noteL Gs4,24
		  ymVol 09h
		        note  Ds5
		  ymVol 0Ah
		        noteL Gs5,48
		        noteL F5,24
		        note  A5
		  ymVol 09h
		        note  C5
		        note  F5
		  ymVol 08h
		        note  A4
		        note  C5
		        noteL F4,36
		  shifting 020h
		  ymStereo 080h
		  ymInst 22
		  ymVol 09h
		        noteL D4,48
		        note  D5
		        note  B4
		        note  G4
		        note  A4
		        note  F4
		        note  E4
		        note  C4
		        note  D4
		        note  D5
		        note  B4
		        note  G4
		        note  A4
		        noteL F4,144
		  ymStereo 0C0h
		  shifting 00h
		mainLoopEnd
Music_3_Channel_4:
		  length 12
		  shifting 020h
		  ymStereo 040h
		mainLoopStart
		  ymInst 22
		  ymVol 0Bh
		  release 01h
		  vibrato 02Ch
		        noteL E4,96
		        note  Fs4
		        note  Gs4
		        note  Cs4
		        note  E4
		        note  Fs4
		        note  Gs4
		        note  Cs4
		  ymVol 0Ah
		        noteL D4,48
		        note  E4
		        note  Fs4
		        note  Gs4
		        noteL Gs4,32
		        note  Fs4
		        note  E4
		  ymVol 0Bh
		        note  A4
		        note  Gs4
		        note  Fs4
		        noteL A4,48
		        noteL F4,24
		        note  G4
		        note  A4
		  ymVol 0Ah
		        note  D4
		        note  E4
		        note  F4
		        note  D4
		  ymVol 0Bh
		        note  C5
		        note  Gs4
		        note  As4
		        note  C5
		  ymVol 0Ah
		        note  F4
		        note  G4
		        note  Gs4
		        note  Gs4
		  ymVol 0Bh
		        note  Ds5
		        note  Cs5
		        note  Ds5
		        noteL C5,48
		        note  Gs5
		        note  A4
		  ymVol 0Ah
		        note  C4
		        note  B3
		        note  C4
		        note  Fs4
		        note  Fs5
		        note  Ds5
		        note  B4
		        note  Cs5
		        note  A4
		        note  Gs4
		        note  E4
		        note  Fs4
		        note  Fs5
		        note  Ds5
		        note  B4
		        note  Cs5
		        noteL A4,144
		mainLoopEnd
Music_3_Channel_5:
		  shifting 020h
		  ymStereo 080h
		  release 01h
		  vibrato 02Ch
		  length 8
		mainLoopStart
		  length 24
		countedLoopStart 3
		  ymInst 17
		  ymVol 07h
		        noteL A4,24
		  ymVol 09h
		        note  A5
		  ymVol 07h
		        note  A4
		  ymVol 08h
		        noteL E5,12
		        note  E5
		  ymVol 07h
		        noteL A4,24
		  ymVol 09h
		        note  A5
		  ymVol 07h
		        noteL A4,48
		countedLoopEnd
		        noteL A4,24
		  ymVol 09h
		        note  A5
		  ymVol 07h
		        note  A4
		  ymVol 08h
		        noteL E5,12
		        note  E5
		  ymVol 07h
		        noteL A4,24
		  ymVol 09h
		        note  B5
		  ymVol 07h
		        noteL B4,48
		        noteL B4,24
		  ymVol 09h
		        note  B5
		  ymVol 07h
		        note  B4
		  ymVol 08h
		        noteL E5,12
		        note  E5
		  ymVol 07h
		        noteL A4,24
		  ymVol 09h
		        note  A5
		  ymVol 07h
		        noteL A4,48
		        noteL A4,24
		  ymVol 09h
		        note  A5
		  ymVol 07h
		        note  A4
		        noteL D5,12
		        note  D5
		        noteL A4,24
		  ymVol 09h
		        noteL D6,72
		  ymVol 07h
		        noteL D4,24
		        note  D5
		        note  D4
		        noteL Gs4,12
		        note  Gs4
		        noteL D4,24
		        noteL D5,72
		        noteL Gs4,24
		  ymVol 09h
		        note  Gs5
		  ymVol 07h
		        note  Gs4
		  ymVol 08h
		        noteL Ds5,12
		        note  Ds5
		  ymVol 07h
		        noteL Gs4,24
		  ymVol 08h
		        note  Ds5
		  ymVol 09h
		        noteL Gs5,48
		        noteL F5,24
		        note  A5
		  ymVol 08h
		        note  C5
		        note  F5
		  ymVol 07h
		        note  A4
		        note  C5
		        note  F4
		  length 192
		        silence
		        silence
		        silence
		mainLoopEnd
Music_3_Channel_6:
		  vibrato 04Ch
		  psgInst 0
		  length 56
		mainLoopStart
		  release 01h
		  psgInst 0
		  length 144
		countedLoopStart 8
		  length 192
		countedLoopEnd
		  psgInst 124
		        psgNoteL B4,8
		        psgNoteL Cs5,6
		        psgNote  Ds5
		        psgNoteL F5,4
		        psgNote  G5
		        psgNote  A5
		        psgNote  B5
		        psgNote  Cs6
		        psgNote  Ds6
		        psgNote  Cs6
		        psgNote  B5
		        psgNote  A5
		        psgNote  B5
		        psgNote  A5
		        psgNoteL G5,6
		        psgNoteL F5,4
		        psgNote  Ds5
		        psgNote  Cs5
		        psgNote  Ds5
		        psgNoteL Cs5,6
		        psgNoteL Gs4,4
		        psgNote  As4
		        psgNote  C5
		        psgNote  D5
		        psgNote  E5
		        psgNote  D5
		        psgNote  C5
		        psgNote  D5
		        psgNote  E5
		        psgNote  Fs5
		        psgNote  E5
		        psgNote  C5
		        psgNote  D5
		        psgNote  E5
		        psgNote  Fs5
		        psgNote  Gs5
		        psgNote  Fs5
		        psgNote  E5
		        psgNote  Fs5
		        psgNote  Gs5
		        psgNote  As5
		        psgNote  Gs5
		        psgNote  As5
		  length 6
		        psgNote  C6
		        psgNoteL D6,4
		        psgNote  E6
		        psgNote  Fs6
		        psgNote  Gs6
		        psgNote  As6
		        psgNote  Gs6
		        psgNote  Fs6
		        psgNote  E6
		        psgNote  D6
		        psgNote  E6
		        silence
		        psgNote  Fs6
		        psgNote  Gs6
		        psgNote  As6
		        psgNote  C7
		        psgNote  As6
		        psgNote  Gs6
		        psgNote  Fs6
		        psgNote  E6
		        psgNote  D6
		        psgNote  C6
		        psgNote  As5
		        silence
		        psgNote  A5
		        psgNote  G5
		        psgNote  F5
		        psgNote  Ds5
		        psgNote  F5
		        psgNote  Cs5
		        psgNote  B4
		        psgNote  Cs5
		        psgNote  Ds5
		        psgNote  Cs5
		        psgNote  Ds5
		        silence
		        psgNote  F5
		        psgNote  Ds5
		        psgNote  Cs5
		        psgNote  B4
		        psgNote  Cs5
		        psgNote  G4
		        psgNote  A4
		        psgNote  G4
		        psgNote  A4
		        psgNote  G4
		        silence
		        psgNote  B4
		        psgNote  Cs5
		        psgNote  Ds5
		        psgNote  F5
		        psgNote  G5
		        psgNote  A5
		        psgNote  B5
		        psgNote  Cs6
		        psgNote  Ds6
		        psgNote  Cs6
		        psgNote  B5
		        psgNoteL A5,6
		        psgNote  B5
		        psgNoteL A5,4
		        psgNote  G5
		        psgNote  F5
		        psgNote  Ds5
		        psgNote  Cs5
		        psgNote  Ds5
		        psgNote  Cs5
		        psgNote  B4
		        psgNote  A4
		        silence
		        psgNote  Gs4
		        psgNote  As4
		        psgNote  C5
		        psgNoteL D5,6
		        psgNote  E5
		        psgNoteL D5,4
		        psgNote  C5
		        psgNote  D5
		        psgNoteL E5,6
		        psgNote  Fs5
		        psgNoteL E5,4
		        psgNote  C5
		        psgNote  D5
		        psgNote  E5
		        psgNote  Fs5
		        psgNote  Gs5
		        psgNote  Fs5
		        psgNote  E5
		        psgNote  Fs5
		        psgNote  Gs5
		        psgNote  As5
		        psgNote  Gs5
		  length 6
		        psgNote  C6
		        psgNoteL D6,4
		        psgNote  E6
		        psgNote  Fs6
		        psgNote  Gs6
		        psgNote  As6
		        psgNote  Gs6
		        psgNote  Fs6
		        silence
		        psgNoteL Fs6,6
		        psgNoteL Gs6,4
		        psgNote  As6
		        psgNoteL C7,6
		        psgNoteL As6,4
		        psgNote  Gs6
		        psgNote  Fs6
		        psgNote  E6
		        psgNote  D6
		        psgNote  C6
		        psgNote  As5
		        psgNote  A5
		        psgNote  G5
		        psgNote  F5
		        psgNote  Ds5
		        psgNote  Cs5
		        psgNote  Ds5
		        psgNote  Cs5
		        psgNote  B4
		        psgNote  Cs5
		        psgNote  Ds5
		        psgNote  Cs5
		        psgNote  Ds5
		  release 00h
		        psgNote  Cs5
		        psgNote  Ds5
		        psgNote  Cs5
		        psgNote  Ds5
		  psgInst 123
		        psgNote  Cs5
		        psgNote  Ds5
		        psgNote  Cs5
		        psgNote  Ds5
		  psgInst 122
		        psgNote  Cs5
		        psgNote  Ds5
		        psgNote  Cs5
		        psgNote  Ds5
		  psgInst 121
		        psgNote  Cs5
		        psgNote  Ds5
		        psgNote  Cs5
		        psgNote  Ds5
		  psgInst 120
		        psgNote  Cs5
		        psgNote  Ds5
		        psgNote  Cs5
		        psgNote  Ds5
		  psgInst 119
		        psgNote  Cs5
		        psgNote  Ds5
		        psgNote  Cs5
		        psgNote  Ds5
		        psgNoteL Cs5,8
		mainLoopEnd
Music_3_Channel_7:
		  shifting 010h
		  release 01h
		  vibrato 04Ch
		  psgInst 0
		  length 70
		mainLoopStart
		  psgInst 0
		  release 01h
		  length 144
		countedLoopStart 8
		  length 192
		countedLoopEnd
		  psgInst 122
		        psgNoteL B4,8
		        psgNoteL Cs5,6
		        psgNote  Ds5
		        psgNoteL F5,4
		        psgNote  G5
		        psgNote  A5
		        psgNote  B5
		        psgNote  Cs6
		        psgNote  Ds6
		        psgNote  Cs6
		        psgNote  B5
		        psgNote  A5
		        psgNote  B5
		        psgNote  A5
		        psgNoteL G5,6
		        psgNoteL F5,4
		        psgNote  Ds5
		        psgNote  Cs5
		        psgNote  Ds5
		        psgNoteL Cs5,6
		        psgNoteL Gs4,4
		        psgNote  As4
		        psgNote  C5
		        psgNote  D5
		        psgNote  E5
		        psgNote  D5
		        psgNote  C5
		        psgNote  D5
		        psgNote  E5
		        psgNote  Fs5
		        psgNote  E5
		        psgNote  C5
		        psgNote  D5
		        psgNote  E5
		        psgNote  Fs5
		        psgNote  Gs5
		        psgNote  Fs5
		        psgNote  E5
		        psgNote  Fs5
		        psgNote  Gs5
		        psgNote  As5
		        psgNote  Gs5
		        psgNote  As5
		  length 6
		        psgNote  C6
		        psgNoteL D6,4
		        psgNote  E6
		        psgNote  Fs6
		        psgNote  Gs6
		        psgNote  As6
		        psgNote  Gs6
		        psgNote  Fs6
		        psgNote  E6
		        psgNote  D6
		        psgNote  E6
		        silence
		        psgNote  Fs6
		        psgNote  Gs6
		        psgNote  As6
		        psgNote  C7
		        psgNote  As6
		        psgNote  Gs6
		        psgNote  Fs6
		        psgNote  E6
		        psgNote  D6
		        psgNote  C6
		        psgNote  As5
		        silence
		        psgNote  A5
		        psgNote  G5
		        psgNote  F5
		        psgNote  Ds5
		        psgNote  F5
		        psgNote  Cs5
		        psgNote  B4
		        psgNote  Cs5
		        psgNote  Ds5
		        psgNote  Cs5
		        psgNote  Ds5
		        silence
		        psgNote  F5
		        psgNote  Ds5
		        psgNote  Cs5
		        psgNote  B4
		        psgNote  Cs5
		        psgNote  G4
		        psgNote  A4
		        psgNote  G4
		        psgNote  A4
		        psgNote  G4
		        silence
		        psgNote  B4
		        psgNote  Cs5
		        psgNote  Ds5
		        psgNote  F5
		        psgNote  G5
		        psgNote  A5
		        psgNote  B5
		        psgNote  Cs6
		        psgNote  Ds6
		        psgNote  Cs6
		        psgNote  B5
		        psgNoteL A5,6
		        psgNote  B5
		        psgNoteL A5,4
		        psgNote  G5
		        psgNote  F5
		        psgNote  Ds5
		        psgNote  Cs5
		        psgNote  Ds5
		        psgNote  Cs5
		        psgNote  B4
		        psgNote  A4
		        silence
		        psgNote  Gs4
		        psgNote  As4
		        psgNote  C5
		        psgNoteL D5,6
		        psgNote  E5
		        psgNoteL D5,4
		        psgNote  C5
		        psgNote  D5
		        psgNoteL E5,6
		        psgNote  Fs5
		        psgNoteL E5,4
		        psgNote  C5
		        psgNote  D5
		        psgNote  E5
		        psgNote  Fs5
		        psgNote  Gs5
		        psgNote  Fs5
		        psgNote  E5
		        psgNote  Fs5
		        psgNote  Gs5
		        psgNote  As5
		        psgNote  Gs5
		  length 6
		        psgNote  C6
		        psgNoteL D6,4
		        psgNote  E6
		        psgNote  Fs6
		        psgNote  Gs6
		        psgNote  As6
		        psgNote  Gs6
		        psgNote  Fs6
		        silence
		        psgNoteL Fs6,6
		        psgNoteL Gs6,4
		        psgNote  As6
		        psgNoteL C7,6
		        psgNoteL As6,4
		        psgNote  Gs6
		        psgNote  Fs6
		        psgNote  E6
		        psgNote  D6
		        psgNote  C6
		        psgNote  As5
		        psgNote  A5
		        psgNote  G5
		        psgNote  F5
		        psgNote  Ds5
		        psgNote  Cs5
		        psgNote  Ds5
		        psgNote  Cs5
		        psgNote  B4
		        psgNote  Cs5
		        psgNote  Ds5
		        psgNote  Cs5
		        psgNote  Ds5
		  release 00h
		        psgNote  Cs5
		        psgNote  Ds5
		        psgNote  Cs5
		        psgNote  Ds5
		  psgInst 121
		        psgNote  Cs5
		        psgNote  Ds5
		        psgNote  Cs5
		        psgNote  Ds5
		  psgInst 120
		        psgNote  Cs5
		        psgNote  Ds5
		        psgNote  Cs5
		        psgNote  Ds5
		  psgInst 119
		        psgNote  Cs5
		        psgNote  Ds5
		        psgNote  Cs5
		        psgNote  Ds5
		  psgInst 118
		        psgNote  Cs5
		        psgNote  Ds5
		        psgNote  Cs5
		        psgNote  Ds5
		  psgInst 117
		        psgNote  Cs5
		        psgNote  Ds5
		        psgNote  Cs5
		        psgNote  Ds5
		        psgNoteL Cs5,8
		mainLoopEnd
Music_3_Channel_9:
		channel_end
