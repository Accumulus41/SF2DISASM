
; ASM FILE music10.asm :
; 0x8325..0x87F5 : Music 10
Music_10:       db 0
		db 1
		db 0
		db 0C1h
		dw Music_10_Channel_0
		dw Music_10_Channel_1
		dw Music_10_Channel_2
		dw Music_10_Channel_3
		dw Music_10_Channel_4
		dw Music_10_Channel_5
		dw Music_10_Channel_6
		dw Music_10_Channel_7
		dw Music_10_Channel_9
		dw Music_10_Channel_9
Music_10_Channel_0:
		  ymStereo 0C0h
		  ymInst 4
		  ymVol 0Ch
		  release 01h
		  vibrato 02Fh
		mainLoopStart
		countedLoopStart 1
		        noteL B2,96
		        noteL B3,24
		        noteL B3,72
		countedLoopEnd
		        noteL As2,96
		        note  E3
		        note  As2
		        note  E3
		        note  Gs2
		        noteL Gs3,24
		        noteL Gs3,48
		        noteL G3,24
		        noteL F3,96
		        noteL F3,24
		        noteL F3,48
		        noteL Ds3,24
		        noteL D3,96
		        note  G2
		        note  Gs2
		        note  As2
		mainLoopEnd
Music_10_Channel_1:
		  ymStereo 0C0h
		  release 01h
		  vibrato 02Ch
		mainLoopStart
		  ymInst 22
		  ymVol 0Ch
		        noteL Gs4,18
		        noteL G4,16
		        noteL F4,14
		        noteL E4,72
		        noteL D4,24
		        note  E4
		        note  F4
		        noteL G4,18
		        noteL Gs4,16
		        noteL E5,14
		  ymSustain
		        noteL Cs5,96
		  ymVol 0Eh
		  release 01h
		        noteL B4,48
		  ymInst 16
		  ymVol 0Bh
		        noteL C6,0
		  ymSlide 07h
		        noteL D6,72
		  ymStopSlide
		  ymVol 08h
		        noteL D6,6
		  ymVol 0Bh
		        note  D6
		        note  Cs6
		        note  C6
		        noteL B5,24
		        noteL As5,48
		        noteL B5,24
		        noteL C6,18
		        noteL Cs6,16
		        noteL E6,14
		        noteL D6,36
		        noteL C6,6
		        note  B5
		        noteL As5,12
		  ymVol 08h
		        noteL As5,6
		  ymVol 06h
		        note  As5
		  ymSlide 014h
		  vibrato 070h
		  ymVol 0Ah
		        noteL F6,120
		  ymStopSlide
		  vibrato 02Ch
		  ymInst 49
		  ymVol 0Bh
		        noteL D4,48
		  ymSustain
		        noteL Ds4,96
		  ymVol 09h
		        noteL Ds4,12
		  ymVol 08h
		        note  Ds4
		  ymVol 07h
		        note  Ds4
		  ymVol 06h
		  release 01h
		        note  Ds4
		  ymVol 0Bh
		        noteL B3,48
		        note  C4
		  ymInst 40
		  ymVol 0Ah
		        noteL D4,24
		        note  Ds4
		        note  F4
		        note  G4
		        note  Gs4
		        note  G4
		        note  F4
		        note  Ds4
		        noteL D4,48
		        noteL C4,96
		        noteL Cs4,72
		        noteL D4,24
		mainLoopEnd
Music_10_Channel_2:
		  ymStereo 0C0h
		  release 01h
		  vibrato 02Ch
		  length 48
		mainLoopStart
		  ymInst 49
		  ymVol 0Bh
		        noteL G3,48
		  ymSustain
		        noteL Gs3,96
		  ymVol 09h
		        noteL Gs3,12
		  ymVol 08h
		        note  Gs3
		  ymVol 07h
		        note  Gs3
		  release 01h
		  ymVol 06h
		        note  Gs3
		  ymVol 0Bh
		        noteL G3,48
		        noteL Gs3,96
		  ymInst 40
		  ymVol 0Bh
		        noteL F4,120
		        noteL E4,24
		        note  Ds4
		        note  E4
		        noteL F4,72
		        noteL E4,24
		        noteL Ds4,48
		        note  D4
		  ymInst 9
		  ymVol 0Bh
		        noteL As4,0
		  ymSlide 0Ah
		        noteL C5,18
		  ymStopSlide
		  ymVol 0Ch
		        noteL As4,16
		        noteL Gs4,14
		        noteL G4,72
		        noteL F4,24
		        note  G4
		        note  Gs4
		  ymSustain
		        noteL B3,18
		  ymSlide 08h
		  release 01h
		        noteL C4,16
		  ymStopSlide
		        noteL G4,14
		        noteL F4,72
		  ymInst 47
		  ymVol 0Ch
		        noteL Ds4,24
		        note  F4
		        note  G4
		        note  Gs4
		        note  As4
		        note  C5
		        note  Ds5
		        note  D5
		        note  C5
		        note  B4
		        note  G4
		  ymSustain
		        noteL F4,18
		        noteL Ds4,16
		  release 01h
		        noteL Fs4,14
		  ymSustain
		        noteL F4,16
		  release 01h
		        note  Ds4
		        noteL B4,64
		  ymSustain
		        noteL As4,48
		  ymVol 0Bh
		        noteL As4,12
		  ymVol 0Ah
		        note  As4
		  ymVol 09h
		        note  As4
		  ymVol 08h
		  release 01h
		        note  As4
		mainLoopEnd
Music_10_Channel_3:
		  ymStereo 0C0h
		  release 01h
		  vibrato 02Ch
		  length 48
		mainLoopStart
		  ymInst 49
		  ymVol 0Bh
		        noteL Cs3,48
		  ymSustain
		        noteL D3,96
		  ymVol 09h
		        noteL D3,12
		  ymVol 08h
		        note  D3
		  ymVol 07h
		        note  D3
		  release 01h
		  ymVol 06h
		        note  D3
		  ymVol 0Bh
		        noteL E3,48
		        noteL F3,96
		  ymInst 40
		  ymVol 0Ah
		        note  Gs3
		        note  Gs3
		        note  Gs3
		  ymSustain
		        note  Gs3
		  ymVol 08h
		        noteL Gs3,12
		  ymVol 07h
		        note  Gs3
		  ymVol 06h
		        note  Gs3
		  ymVol 05h
		  release 01h
		        note  Gs3
		  ymInst 49
		  ymVol 0Bh
		        noteL B3,48
		  ymSustain
		        noteL C4,96
		  ymVol 09h
		        noteL C4,12
		  ymVol 08h
		        note  C4
		  ymVol 07h
		        note  C4
		  ymVol 06h
		  release 01h
		        note  C4
		  ymVol 0Bh
		        noteL G3,48
		        noteL Gs3,96
		  ymInst 40
		  ymVol 0Ah
		        noteL D4,48
		        note  C4
		        note  B3
		        noteL G3,96
		        noteL Fs3,48
		        note  E3
		  ymSustain
		        note  F3
		  ymVol 0Ah
		        noteL F3,12
		  ymVol 09h
		        note  F3
		  ymVol 08h
		        note  F3
		  ymVol 07h
		  release 01h
		        note  F3
		mainLoopEnd
Music_10_Channel_4:
		  shifting 020h
		  length 12
		  ymStereo 080h
		  release 01h
		  vibrato 02Ch
		mainLoopStart
		  ymInst 22
		  ymVol 0Ah
		        noteL Gs4,18
		        note  G4
		  ymVol 0Ch
		        note  Gs4
		        noteL G4,16
		        noteL F4,14
		  ymVol 0Ah
		        noteL E4,36
		        noteL D4,24
		        note  E4
		        note  F4
		        noteL G4,18
		        note  Gs4
		  ymVol 0Ch
		        note  G4
		        noteL Gs4,16
		        noteL E5,14
		  ymSustain
		  ymVol 0Ah
		        noteL Cs5,60
		  ymVol 0Ch
		  release 01h
		        noteL B4,42
		  ymInst 16
		  ymVol 0Ah
		        noteL C6,0
		  ymSlide 07h
		        noteL D6,42
		  ymVol 0Bh
		  ymStopSlide
		        noteL C6,0
		  ymSlide 07h
		        noteL D6,30
		  ymStopSlide
		  ymVol 07h
		        noteL D6,6
		  ymVol 0Ah
		        note  D6
		        note  Cs6
		        note  C6
		        noteL B5,24
		        noteL As5,48
		        noteL B5,24
		        noteL C6,18
		        noteL Cs6,16
		        noteL E6,14
		        noteL D6,36
		        noteL C6,6
		        note  B5
		        noteL As5,12
		  ymVol 07h
		        noteL As5,6
		  ymVol 05h
		        noteL As5,12
		  ymSlide 014h
		  vibrato 075h
		  ymVol 09h
		        noteL F6,102
		  ymStopSlide
		  vibrato 02Ch
		  length 6
		  ymInst 9
		  ymVol 09h
		        noteL As4,0
		  ymSlide 0Ah
		        noteL C5,18
		  ymStopSlide
		  ymVol 0Ah
		        noteL As4,16
		        noteL Gs4,14
		        noteL G4,36
		        noteL F4,24
		        note  G4
		        note  Gs4
		  ymSustain
		        noteL B3,18
		  release 01h
		  ymSlide 08h
		        note  C4
		  ymStopSlide
		  ymSustain
		  ymVol 0Bh
		        note  B3
		  ymSlide 08h
		  release 01h
		        noteL C4,16
		  ymStopSlide
		        noteL G4,14
		  ymVol 0Ah
		        noteL F4,36
		  ymInst 47
		  ymVol 0Ah
		        noteL Ds4,24
		        note  F4
		        note  G4
		  ymInst 40
		  ymVol 09h
		        noteL D4,48
		        note  C4
		        note  B3
		        noteL G3,96
		        noteL Fs3,48
		        note  E3
		        note  F3
		mainLoopEnd
Music_10_Channel_5:
		  shifting 010h
		  length 6
		  ymStereo 040h
		  release 01h
		  vibrato 02Ch
		mainLoopStart
		  ymInst 22
		  ymVol 0Bh
		        noteL Gs4,18
		        noteL G4,16
		        noteL F4,14
		        noteL E4,72
		        noteL D4,24
		        note  E4
		        note  F4
		        noteL G4,18
		        noteL Gs4,16
		        noteL E5,14
		  ymSustain
		        noteL Cs5,96
		  ymVol 0Dh
		  release 01h
		        noteL B4,48
		  ymInst 40
		  ymVol 0Ah
		        noteL F4,120
		        noteL E4,24
		        note  Ds4
		        note  E4
		        noteL F4,72
		        noteL E4,24
		        noteL Ds4,48
		        note  D4
		  ymInst 9
		  ymVol 0Ah
		        noteL As4,0
		  ymSlide 0Ah
		        noteL C5,18
		  ymStopSlide
		  ymVol 0Bh
		        noteL As4,16
		        noteL Gs4,14
		        noteL G4,72
		        noteL F4,24
		        note  G4
		        note  Gs4
		  ymSustain
		        noteL B3,18
		  release 01h
		  ymSlide 08h
		        noteL C4,16
		  ymStopSlide
		        noteL G4,14
		        noteL F4,72
		  ymInst 47
		  ymVol 0Bh
		        noteL Ds4,24
		        note  F4
		        note  G4
		        note  Gs4
		        note  As4
		        note  C5
		        note  Ds5
		        note  D5
		        note  C5
		        note  B4
		        note  G4
		  ymSustain
		        noteL F4,18
		        noteL Ds4,16
		  release 01h
		        noteL Fs4,14
		  ymSustain
		        noteL F4,16
		  release 01h
		        note  Ds4
		        noteL B4,64
		        noteL As4,48
		mainLoopEnd
Music_10_Channel_6:
		  release 00h
		  vibrato 04Ch
		mainLoopStart
		countedLoopStart 1
		  psgInst 118
		        psgNoteL G6,4
		        psgNote  Gs6
		        psgNote  G6
		  psgInst 119
		        psgNote  Gs6
		        psgNote  G6
		        psgNote  Gs6
		  psgInst 120
		        psgNote  G6
		        psgNote  Gs6
		        psgNote  G6
		  psgInst 121
		        psgNote  Gs6
		        psgNote  G6
		        psgNote  Gs6
		  psgInst 122
		        psgNote  G6
		        psgNote  Gs6
		        psgNote  G6
		  psgInst 123
		        psgNote  Gs6
		        psgNote  G6
		        psgNote  Gs6
		  psgInst 124
		        psgNote  G6
		        psgNote  Gs6
		        psgNote  G6
		  psgInst 125
		        psgNote  Gs6
		        psgNote  G6
		        psgNote  Gs6
		        psgNote  G6
		        psgNote  Gs6
		        psgNote  G6
		  psgInst 124
		        psgNote  Gs6
		        psgNote  G6
		        psgNote  Gs6
		  psgInst 123
		        psgNote  G6
		        psgNote  Gs6
		        psgNote  G6
		  psgInst 122
		        psgNote  Gs6
		        psgNote  G6
		        psgNote  Gs6
		  psgInst 121
		        psgNote  G6
		        psgNote  Gs6
		        psgNote  G6
		  psgInst 120
		        psgNote  Gs6
		        psgNote  G6
		        psgNote  Gs6
		  psgInst 119
		        psgNote  G6
		        psgNote  Gs6
		        psgNote  G6
		  psgInst 118
		        psgNote  Gs6
		        psgNote  G6
		        psgNote  Gs6
		countedLoopEnd
		  psgInst 0
		  length 192
		        silence
		countedLoopStart 1
		  psgInst 118
		        psgNoteL E6,4
		        psgNote  F6
		        psgNote  E6
		  psgInst 119
		        psgNote  F6
		        psgNote  E6
		        psgNote  F6
		  psgInst 120
		        psgNote  E6
		        psgNote  F6
		        psgNote  E6
		  psgInst 121
		        psgNote  F6
		        psgNote  E6
		        psgNote  F6
		  psgInst 122
		        psgNote  E6
		        psgNote  F6
		        psgNote  E6
		  psgInst 123
		        psgNote  F6
		        psgNote  E6
		        psgNote  F6
		  psgInst 124
		        psgNote  E6
		        psgNote  F6
		        psgNote  E6
		  psgInst 125
		        psgNote  F6
		        psgNote  E6
		        psgNote  F6
		        psgNote  E6
		        psgNote  F6
		        psgNote  E6
		  psgInst 124
		        psgNote  F6
		        psgNote  E6
		        psgNote  F6
		  psgInst 123
		        psgNote  E6
		        psgNote  F6
		        psgNote  E6
		  psgInst 122
		        psgNote  F6
		        psgNote  E6
		        psgNote  F6
		  psgInst 121
		        psgNote  E6
		        psgNote  F6
		        psgNote  E6
		  psgInst 120
		        psgNote  F6
		        psgNote  E6
		        psgNote  F6
		  psgInst 119
		        psgNote  E6
		        psgNote  F6
		        psgNote  E6
		  psgInst 118
		        psgNote  F6
		        psgNote  E6
		        psgNote  F6
		countedLoopEnd
		  psgInst 0
		  length 192
		        silence
		mainLoopEnd
Music_10_Channel_7:
		  psgInst 0
		  length 6
		  shifting 010h
		  release 00h
		  vibrato 04Ch
		mainLoopStart
		countedLoopStart 1
		  psgInst 116
		        psgNoteL G6,4
		        psgNote  Gs6
		        psgNote  G6
		  psgInst 117
		        psgNote  Gs6
		        psgNote  G6
		        psgNote  Gs6
		  psgInst 118
		        psgNote  G6
		        psgNote  Gs6
		        psgNote  G6
		  psgInst 119
		        psgNote  Gs6
		        psgNote  G6
		        psgNote  Gs6
		  psgInst 120
		        psgNote  G6
		        psgNote  Gs6
		        psgNote  G6
		  psgInst 121
		        psgNote  Gs6
		        psgNote  G6
		        psgNote  Gs6
		  psgInst 122
		        psgNote  G6
		        psgNote  Gs6
		        psgNote  G6
		  psgInst 123
		        psgNote  Gs6
		        psgNote  G6
		        psgNote  Gs6
		        psgNote  G6
		        psgNote  Gs6
		        psgNote  G6
		  psgInst 122
		        psgNote  Gs6
		        psgNote  G6
		        psgNote  Gs6
		  psgInst 121
		        psgNote  G6
		        psgNote  Gs6
		        psgNote  G6
		  psgInst 120
		        psgNote  Gs6
		        psgNote  G6
		        psgNote  Gs6
		  psgInst 119
		        psgNote  G6
		        psgNote  Gs6
		        psgNote  G6
		  psgInst 118
		        psgNote  Gs6
		        psgNote  G6
		        psgNote  Gs6
		  psgInst 117
		        psgNote  G6
		        psgNote  Gs6
		        psgNote  G6
		  psgInst 116
		        psgNote  Gs6
		        psgNote  G6
		        psgNote  Gs6
		countedLoopEnd
		  psgInst 0
		  length 192
		        silence
		countedLoopStart 1
		  psgInst 116
		        psgNoteL E6,4
		        psgNote  F6
		        psgNote  E6
		  psgInst 117
		        psgNote  F6
		        psgNote  E6
		        psgNote  F6
		  psgInst 118
		        psgNote  E6
		        psgNote  F6
		        psgNote  E6
		  psgInst 119
		        psgNote  F6
		        psgNote  E6
		        psgNote  F6
		  psgInst 120
		        psgNote  E6
		        psgNote  F6
		        psgNote  E6
		  psgInst 121
		        psgNote  F6
		        psgNote  E6
		        psgNote  F6
		  psgInst 122
		        psgNote  E6
		        psgNote  F6
		        psgNote  E6
		  psgInst 123
		        psgNote  F6
		        psgNote  E6
		        psgNote  F6
		        psgNote  E6
		        psgNote  F6
		        psgNote  E6
		  psgInst 122
		        psgNote  F6
		        psgNote  E6
		        psgNote  F6
		  psgInst 121
		        psgNote  E6
		        psgNote  F6
		        psgNote  E6
		  psgInst 120
		        psgNote  F6
		        psgNote  E6
		        psgNote  F6
		  psgInst 119
		        psgNote  E6
		        psgNote  F6
		        psgNote  E6
		  psgInst 118
		        psgNote  F6
		        psgNote  E6
		        psgNote  F6
		  psgInst 117
		        psgNote  E6
		        psgNote  F6
		        psgNote  E6
		  psgInst 116
		        psgNote  F6
		        psgNote  E6
		        psgNote  F6
		countedLoopEnd
		  psgInst 0
		  length 192
		        silence
		mainLoopEnd
Music_10_Channel_9:
		channel_end
