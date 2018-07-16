
; ASM FILE music40.asm :
; 0xD877..0xDC9A : Music 40
Music_40:       db 0
		db 1
		db 0
		db 0C5h
		dw Music_8_Channel_0
		dw Music_8_Channel_1
		dw Music_8_Channel_2
		dw Music_8_Channel_3
		dw Music_8_Channel_4
		dw Music_8_Channel_5
		dw Music_8_Channel_6
		dw Music_8_Channel_7
		dw Music_8_Channel_9
		dw Music_8_Channel_9
Music_8_Channel_0:
		  ymStereo 0C0h
		  ymInst 25
		  ymVol 0Ch
		  release 01h
		  vibrato 02Ch
		mainLoopStart
		  ymSustain
		        noteL C2,180
		  vibrato 020h
		  release 01h
		        note  C2
		  vibrato 02Ch
		        noteL C2,36
		        note  B1
		  ymSustain
		        noteL A1,180
		  vibrato 020h
		  release 01h
		        note  A1
		  vibrato 02Ch
		        noteL A2,36
		        note  G2
		        noteL F2,108
		        note  As1
		        note  Ds2
		        note  Gs1
		        note  Cs2
		        note  Fs2
		        note  B1
		        noteL As1,36
		        note  C2
		        note  D2
		mainLoopEnd
Music_8_Channel_1:
		  ymStereo 0C0h
		  release 01h
		  length 18
		mainLoopStart
		  vibrato 02Ch
		  ymInst 40
		  ymVol 0Ch
		        noteL B3,18
		        note  C4
		        note  G4
		        note  Fs4
		        note  D4
		        note  E4
		        note  B4
		        note  A4
		        note  Fs4
		        note  G4
		        note  D5
		        noteL C5,9
		        note  B4
		  ymSustain
		        noteL C5,198
		  vibrato 020h
		  ymVol 09h
		        noteL C5,6
		  ymVol 07h
		        note  C5
		  ymVol 05h
		  release 01h
		        note  C5
		  vibrato 02Ch
		  ymVol 0Ch
		        noteL B3,18
		        note  C4
		        note  G4
		        note  Fs4
		        note  D4
		        note  E4
		        note  B4
		        note  A4
		        note  Fs4
		        note  G4
		        note  D5
		        noteL E5,9
		        note  D5
		        noteL E5,198
		  ymInst 26
		  ymVol 0Bh
		        noteL F3,36
		        note  G3
		        note  A3
		  ymVol 0Ch
		        noteL As3,27
		        note  C4
		        noteL As3,18
		        noteL A3,36
		  ymVol 0Bh
		        note  G3
		        note  A3
		        note  As3
		  ymVol 0Ch
		        noteL C4,18
		        note  D4
		        note  Ds4
		        note  G4
		        note  C5
		        noteL Ds5,6
		        note  F5
		        note  Fs5
		        noteL G5,54
		        noteL F5,18
		        note  Ds5
		        note  Cs5
		        note  C5
		        note  As4
		        note  C5
		        note  F4
		        note  Fs4
		        note  Gs4
		  ymSustain
		        noteL As4,216
		  vibrato 020h
		  ymVol 09h
		        noteL As4,6
		  ymVol 07h
		        note  As4
		  ymVol 05h
		  release 01h
		        note  As4
		mainLoopEnd
Music_8_Channel_2:
		  ymStereo 0C0h
		  release 01h
		  length 18
		mainLoopStart
		  vibrato 02Ch
		  ymInst 40
		  ymVol 0Bh
		        noteL D3,18
		        note  E3
		        note  B3
		        note  A3
		        note  Fs3
		        note  G3
		        note  D4
		        note  C4
		        note  A3
		        note  B3
		        note  Fs4
		        noteL E4,9
		        note  D4
		  ymSustain
		        noteL E4,198
		  vibrato 020h
		  ymVol 08h
		        noteL E4,6
		  ymVol 06h
		        note  E4
		  ymVol 04h
		  release 01h
		        note  E4
		  vibrato 02Ch
		  ymVol 0Bh
		        noteL D3,18
		        note  E3
		        note  B3
		        note  A3
		        note  Fs3
		        note  G3
		        note  D4
		        note  C4
		        note  A3
		        note  B3
		        note  Fs4
		        noteL G4,9
		        note  Fs4
		        noteL G4,198
		  ymInst 27
		  ymVol 0Ah
		        noteL A3,27
		        note  G4
		        noteL F4,18
		        note  E4
		        note  C4
		        noteL D4,108
		  ymInst 3
		  ymVol 0Bh
		        noteL D4,27
		        note  A4
		        noteL G4,18
		        note  C5
		        note  F5
		  ymSustain
		        noteL Ds5,90
		  vibrato 020h
		  ymVol 08h
		        noteL Ds5,6
		  ymVol 06h
		        note  Ds5
		  release 01h
		  ymVol 04h
		        note  Ds5
		  vibrato 02Ch
		  ymInst 26
		  ymVol 0Bh
		        noteL Ds5,54
		        noteL Cs5,18
		        note  C5
		        note  As4
		        note  Gs4
		        note  Fs4
		        note  Gs4
		        note  Cs4
		        note  Ds4
		        note  F4
		        noteL Fs4,36
		  ymInst 27
		  ymVol 0Ah
		        noteL Ds4,54
		        noteL Cs4,18
		        noteL Gs4,36
		        note  Fs4
		  ymSustain
		        note  F4
		  vibrato 020h
		  ymVol 07h
		        noteL F4,6
		  ymVol 05h
		        note  F4
		  release 01h
		  ymVol 03h
		        note  F4
		mainLoopEnd
Music_8_Channel_3:
		  ymStereo 040h
		  shifting 020h
		  release 01h
		  length 27
		mainLoopStart
		  vibrato 02Ch
		  ymInst 40
		  ymVol 0Bh
		        noteL B3,18
		        note  C4
		        note  G4
		        note  Fs4
		        note  D4
		        note  E4
		        note  B4
		        note  A4
		        note  Fs4
		        note  G4
		        note  D5
		        noteL C5,9
		        note  B4
		  ymSustain
		        noteL C5,198
		  vibrato 020h
		  ymVol 08h
		        noteL C5,6
		  ymVol 06h
		        note  C5
		  ymVol 04h
		  release 01h
		        note  C5
		  vibrato 02Ch
		  ymVol 0Bh
		        noteL B3,18
		        note  C4
		        note  G4
		        note  Fs4
		        note  D4
		        note  E4
		        note  B4
		        note  A4
		        note  Fs4
		        note  G4
		        note  D5
		        noteL E5,9
		        note  D5
		        noteL E5,198
		  ymInst 27
		  ymVol 09h
		        noteL A3,27
		        note  G4
		        noteL F4,18
		        note  E4
		        note  C4
		        noteL D4,108
		  ymInst 3
		  ymVol 0Ah
		        noteL D4,27
		        note  A4
		        noteL G4,18
		        note  C5
		        note  F5
		        noteL Ds5,90
		  ymInst 26
		  ymVol 0Bh
		        noteL Ds5,6
		        note  F5
		        note  Fs5
		        noteL G5,54
		        noteL F5,18
		        note  Ds5
		        note  Cs5
		        note  C5
		        note  As4
		        note  C5
		        note  F4
		        note  Fs4
		        note  Gs4
		        noteL As4,36
		  ymInst 27
		  ymVol 09h
		        noteL Ds4,54
		        noteL Cs4,18
		        noteL Gs4,36
		        note  Fs4
		  ymSustain
		        note  F4
		  vibrato 020h
		  ymVol 06h
		        noteL F4,6
		  ymVol 04h
		        note  F4
		  release 01h
		  ymVol 02h
		        note  F4
		mainLoopEnd
Music_8_Channel_4:
		  shifting 020h
		  ymStereo 080h
		  length 9
		  ymInst 6
		  ymVol 0Bh
		  release 01h
		  vibrato 02Ch
		mainLoopStart
		repeatStart
		countedLoopStart 2
		        noteL G3,6
		        note  B3
		        note  C4
		        note  E4
		        note  C4
		        note  B3
		countedLoopEnd
		countedLoopStart 2
		        noteL A3,6
		        note  Cs4
		        note  D4
		        note  Fs4
		        note  D4
		        note  Cs4
		countedLoopEnd
		        noteL B3,6
		        note  C4
		        note  E4
		        note  G4
		        note  E4
		        note  C4
		        note  E4
		        note  G4
		        note  B4
		        note  C5
		        note  B4
		        note  G4
		        note  B4
		        note  C5
		        note  E5
		        note  G5
		        note  B5
		        note  C6
		        note  D6
		        note  Fs5
		        note  D6
		        note  C6
		        note  E5
		        note  C6
		        note  B5
		        note  D5
		        note  B5
		        note  A5
		        note  C5
		        note  A5
		        note  G5
		        note  B4
		        note  G5
		        note  E5
		        note  G4
		        note  E5
		repeatSection1Start
		repeatEnd
		repeatSection2Start
		countedLoopStart 2
		        noteL F3,6
		        note  A3
		        note  C4
		        note  E4
		        note  C4
		        note  A3
		countedLoopEnd
		countedLoopStart 2
		        noteL As3,6
		        note  D4
		        note  F4
		        note  A4
		        note  F4
		        note  D4
		countedLoopEnd
		countedLoopStart 2
		        noteL As3,6
		        note  D4
		        note  Ds4
		        note  G4
		        note  Ds4
		        note  D4
		countedLoopEnd
		countedLoopStart 2
		        noteL C4,6
		        note  Ds4
		        note  G4
		        note  Gs4
		        note  G4
		        note  Ds4
		countedLoopEnd
		        noteL Cs4,6
		        note  F4
		        note  Gs4
		        note  C5
		        note  Cs5
		        note  F5
		        note  Gs5
		        note  C5
		        note  Gs5
		        note  G5
		        note  As4
		        note  G5
		        note  F5
		        note  Gs4
		        note  F5
		        note  Cs5
		        note  F4
		        note  Cs5
		        note  F4
		        note  Fs4
		        note  As4
		        note  Cs5
		        note  F5
		        note  Fs5
		        note  As5
		        note  Cs5
		        note  As5
		        note  Fs5
		        note  As4
		        note  Fs5
		        note  F5
		        note  As4
		        note  F5
		        note  Cs5
		        note  F4
		        note  Cs5
		        note  As3
		        note  B3
		        note  Ds4
		        note  Fs4
		        note  As4
		        note  B4
		        note  As4
		        note  Fs4
		        note  As4
		        note  B4
		        note  Ds5
		        note  Fs5
		        note  As5
		        note  Fs5
		        note  As5
		        note  B5
		        note  Cs6
		        note  Ds6
		        note  D6
		        note  As5
		        note  Gs5
		        note  F5
		        note  D5
		        note  C5
		        note  As4
		        note  E4
		        note  F4
		        note  D5
		        note  A4
		        note  As4
		        noteL As5,36
		mainLoopEnd
Music_8_Channel_5:
		  ymStereo 0C0h
		  ymInst 6
		  ymVol 0Ch
		  release 01h
		  vibrato 02Ch
		mainLoopStart
		repeatStart
		countedLoopStart 2
		        noteL G3,6
		        note  B3
		        note  C4
		        note  E4
		        note  C4
		        note  B3
		countedLoopEnd
		countedLoopStart 2
		        noteL A3,6
		        note  Cs4
		        note  D4
		        note  Fs4
		        note  D4
		        note  Cs4
		countedLoopEnd
		        noteL B3,6
		        note  C4
		        note  E4
		        note  G4
		        note  E4
		        note  C4
		        note  E4
		        note  G4
		        note  B4
		        note  C5
		        note  B4
		        note  G4
		        note  B4
		        note  C5
		        note  E5
		        note  G5
		        note  B5
		        note  C6
		        note  D6
		        note  Fs5
		        note  D6
		        note  C6
		        note  E5
		        note  C6
		        note  B5
		        note  D5
		        note  B5
		        note  A5
		        note  C5
		        note  A5
		        note  G5
		        note  B4
		        note  G5
		        note  E5
		        note  G4
		        note  E5
		repeatSection1Start
		repeatEnd
		repeatSection2Start
		countedLoopStart 2
		        noteL F3,6
		        note  A3
		        note  C4
		        note  E4
		        note  C4
		        note  A3
		countedLoopEnd
		countedLoopStart 2
		        noteL As3,6
		        note  D4
		        note  F4
		        note  A4
		        note  F4
		        note  D4
		countedLoopEnd
		countedLoopStart 2
		        noteL As3,6
		        note  D4
		        note  Ds4
		        note  G4
		        note  Ds4
		        note  D4
		countedLoopEnd
		countedLoopStart 2
		        noteL C4,6
		        note  Ds4
		        note  G4
		        note  Gs4
		        note  G4
		        note  Ds4
		countedLoopEnd
		        noteL Cs4,6
		        note  F4
		        note  Gs4
		        note  C5
		        note  Cs5
		        note  F5
		        note  Gs5
		        note  C5
		        note  Gs5
		        note  G5
		        note  As4
		        note  G5
		        note  F5
		        note  Gs4
		        note  F5
		        note  Cs5
		        note  F4
		        note  Cs5
		        note  F4
		        note  Fs4
		        note  As4
		        note  Cs5
		        note  F5
		        note  Fs5
		        note  As5
		        note  Cs5
		        note  As5
		        note  Fs5
		        note  As4
		        note  Fs5
		        note  F5
		        note  As4
		        note  F5
		        note  Cs5
		        note  F4
		        note  Cs5
		        note  As3
		        note  B3
		        note  Ds4
		        note  Fs4
		        note  As4
		        note  B4
		        note  As4
		        note  Fs4
		        note  As4
		        note  B4
		        note  Ds5
		        note  Fs5
		        note  As5
		        note  Fs5
		        note  As5
		        note  B5
		        note  Cs6
		        note  Ds6
		        note  D6
		        note  As5
		        note  Gs5
		        note  F5
		        note  D5
		        note  C5
		        note  As4
		        note  E4
		        note  F4
		        note  D5
		        note  A4
		        note  As4
		        noteL As5,36
		mainLoopEnd
Music_8_Channel_6:
		  vibrato 04Fh
		mainLoopStart
		  psgInst 123
		countedLoopStart 1
		  release 04h
		        psgNoteL Cs7,12
		        psgNote  Cs7
		        psgNote  Cs7
		  release 01h
		        psgNoteL Cs7,72
		  release 04h
		        psgNoteL Ds7,12
		        psgNote  Ds7
		        psgNote  Ds7
		  release 01h
		        psgNoteL Ds7,72
		  release 04h
		        psgNoteL Cs7,12
		        psgNote  Cs7
		        psgNote  Cs7
		  release 01h
		        psgNoteL Cs7,72
		  release 04h
		        psgNoteL Ds7,12
		        psgNote  Ds7
		        psgNote  Ds7
		  release 01h
		        psgNoteL Cs7,36
		        psgNote  E7
		countedLoopEnd
		  length 6
		  psgInst 9
		        silence
		  psgInst 7
		        silence
		  psgInst 5
		        silence
		  psgInst 0
		countedLoopStart 3
		  length 210
		countedLoopEnd
		mainLoopEnd
Music_8_Channel_7:
		  vibrato 04Fh
		mainLoopStart
		countedLoopStart 1
		  psgInst 122
		  release 04h
		        psgNoteL A6,12
		        psgNote  A6
		        psgNote  A6
		  release 01h
		        psgNoteL A6,72
		  release 04h
		        psgNoteL B6,12
		        psgNote  B6
		        psgNote  B6
		  release 01h
		        psgNoteL B6,72
		  release 04h
		        psgNoteL A6,12
		        psgNote  A6
		        psgNote  A6
		  release 01h
		        psgNoteL A6,72
		  release 04h
		        psgNoteL B6,12
		        psgNote  B6
		        psgNote  B6
		  release 01h
		        psgNoteL A6,36
		        psgNote  Cs7
		countedLoopEnd
		  length 6
		  psgInst 8
		        silence
		  psgInst 6
		        silence
		  psgInst 4
		        silence
		  psgInst 0
		countedLoopStart 3
		  length 210
		countedLoopEnd
		mainLoopEnd
Music_8_Channel_9:
		channel_end
