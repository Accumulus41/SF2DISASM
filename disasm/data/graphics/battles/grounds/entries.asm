
; ASM FILE data\graphics\battles\grounds\entries.asm :
; 0x1B8028..0x1B9A9A : Battlescene Grounds
pt_Grounds:     dc.l GroundPLAINS
                dc.l GroundGRASS
                dc.l GroundFOREST
                dc.l GroundHILLS
                dc.l GroundSKY
                dc.l GroundDESERT
                dc.l GroundBEACH
                dc.l GroundTOWER_EXTERIOR
                dc.l GroundCASTLE
                dc.l GroundTOWER_INTERIOR
                dc.l GroundCAVE
                dc.l GroundMOUNTAIN
                dc.l GroundTOWN
                dc.l GroundUNDERGROUND_SHRINE
                dc.l GroundRIVER
                dc.l GroundTAROS_SHRINE
                dc.l GroundVALLEY
                dc.l GroundCHESSBOARD
                dc.l GroundBRIDGE
                dc.l GroundMITULA_EXTERIOR
                dc.l GroundMITULA_INTERIOR
                dc.l GroundNAZCA
                dc.l GroundSWAMP
                dc.l GroundVS_ODDEYE
                dc.l GroundVS_GALAM
                dc.l GroundVS_ZEON
                dc.l GroundVS_BURROW
GroundPLAINS:       incbin "data/graphics/battles/grounds/groundpalette00.bin"
bsg00_rpbase:   dc.w GroundtilesCLEARING-bsg00_rpbase
GroundGRASS:       incbin "data/graphics/battles/grounds/groundpalette01.bin"
bsg01_rpbase:   dc.w GroundtilesLOAM-bsg01_rpbase
GroundFOREST:       incbin "data/graphics/battles/grounds/groundpalette02.bin"
bsg02_rpbase:   dc.w GroundtilesLOAM-bsg02_rpbase
GroundHILLS:       incbin "data/graphics/battles/grounds/groundpalette03.bin"
bsg03_rpbase:   dc.w GroundtilesSTONE-bsg03_rpbase
GroundSKY:       incbin "data/graphics/battles/grounds/groundpalette04.bin"
bsg04_rpbase:   dc.w GroundtilesCLEARING-bsg04_rpbase
GroundDESERT:       incbin "data/graphics/battles/grounds/groundpalette05.bin"
bsg05_rpbase:   dc.w GroundtilesSAND-bsg05_rpbase
GroundBEACH:       incbin "data/graphics/battles/grounds/groundpalette06.bin"
bsg06_rpbase:   dc.w GroundtilesSAND-bsg06_rpbase
GroundTOWER_EXTERIOR:       incbin "data/graphics/battles/grounds/groundpalette07.bin"
bsg07_rpbase:   dc.w GroundtilesSTONE-bsg07_rpbase
GroundCASTLE:       incbin "data/graphics/battles/grounds/groundpalette08.bin"
bsg08_rpbase:   dc.w GroundtilesCOBBLE-bsg08_rpbase
GroundTOWER_INTERIOR:       incbin "data/graphics/battles/grounds/groundpalette09.bin"
bsg09_rpbase:   dc.w GroundtilesSLAB-bsg09_rpbase
GroundCAVE:       incbin "data/graphics/battles/grounds/groundpalette10.bin"
bsg10_rpbase:   dc.w GroundtilesSTONE-bsg10_rpbase
GroundMOUNTAIN:       incbin "data/graphics/battles/grounds/groundpalette11.bin"
bsg11_rpbase:   dc.w GroundtilesSTONE-bsg11_rpbase
GroundTOWN:       incbin "data/graphics/battles/grounds/groundpalette12.bin"
bsg12_rpbase:   dc.w GroundtilesSTONE-bsg12_rpbase
GroundUNDERGROUND_SHRINE:       incbin "data/graphics/battles/grounds/groundpalette13.bin"
bsg13_rpbase:   dc.w GroundtilesSLAB-bsg13_rpbase
GroundRIVER:       incbin "data/graphics/battles/grounds/groundpalette14.bin"
bsg14_rpbase:   dc.w GroundtilesTIMBER-bsg14_rpbase
GroundTAROS_SHRINE:       incbin "data/graphics/battles/grounds/groundpalette15.bin"
bsg15_rpbase:   dc.w GroundtilesSLAB-bsg15_rpbase
GroundVALLEY:       incbin "data/graphics/battles/grounds/groundpalette16.bin"
bsg16_rpbase:   dc.w GroundtilesCLEARING-bsg16_rpbase
GroundCHESSBOARD:       incbin "data/graphics/battles/grounds/groundpalette17.bin"
bsg17_rpbase:   dc.w GroundtilesTILE-bsg17_rpbase
GroundBRIDGE:       incbin "data/graphics/battles/grounds/groundpalette18.bin"
bsg18_rpbase:   dc.w GroundtilesTIMBER-bsg18_rpbase
GroundMITULA_EXTERIOR:       incbin "data/graphics/battles/grounds/groundpalette19.bin"
bsg19_rpbase:   dc.w GroundtilesCLEARING-bsg19_rpbase
GroundMITULA_INTERIOR:       incbin "data/graphics/battles/grounds/groundpalette20.bin"
bsg20_rpbase:   dc.w GroundtilesTILE-bsg20_rpbase
GroundNAZCA:       incbin "data/graphics/battles/grounds/groundpalette23.bin"
bsg23_rpbase:   dc.w GroundtilesSTONE-bsg23_rpbase
GroundSWAMP:       incbin "data/graphics/battles/grounds/groundpalette24.bin"
bsg24_rpbase:   dc.w GroundtilesCLEARING-bsg24_rpbase
GroundVS_ODDEYE:       incbin "data/graphics/battles/grounds/groundpalette25.bin"
bsg25_rpbase:   dc.w GroundtilesCRYSTAL-bsg25_rpbase
GroundVS_GALAM:       incbin "data/graphics/battles/grounds/groundpalette26.bin"
bsg26_rpbase:   dc.w GroundtilesSOULS-bsg26_rpbase
GroundVS_ZEON:       incbin "data/graphics/battles/grounds/groundpalette27.bin"
bsg27_rpbase:   dc.w GroundtilesSOULS-bsg27_rpbase
GroundVS_BURROW:       incbin "data/graphics/battles/grounds/groundpalette28.bin"
bsg28_rpbase:   dc.w GroundtilesSTONE-bsg28_rpbase
GroundtilesCLEARING:  incbin "data/graphics/battles/grounds/groundtilesCLEARING.bin"
GroundtilesLOAM:  incbin "data/graphics/battles/grounds/groundtilesLOAM.bin"
GroundtilesSAND:  incbin "data/graphics/battles/grounds/groundtilesSAND.bin"
GroundtilesTIMBER:  incbin "data/graphics/battles/grounds/groundtilesTIMBER.bin"
GroundtilesSTONE:  incbin "data/graphics/battles/grounds/groundtilesSTONE.bin"
GroundtilesCOBBLE:  incbin "data/graphics/battles/grounds/groundtilesCOBBLE.bin"
GroundtilesSLAB:  incbin "data/graphics/battles/grounds/groundtilesSLAB.bin"
GroundtilesTILE:  incbin "data/graphics/battles/grounds/groundtilesTILE.bin"
GroundtilesCRYSTAL:  incbin "data/graphics/battles/grounds/groundtilesCRYSTAL.bin"
GroundtilesSOULS:  incbin "data/graphics/battles/grounds/groundtilesSOULS.bin"
