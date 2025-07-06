
; ASM FILE data\graphics\battles\grounds\entries.asm :
; 0x1B8028..0x1B9A9A : Battlescene Grounds
pt_Grounds:     dc.l Ground00 ; 0
                dc.l Ground01 ; 1
                dc.l Ground02 ; 2
                dc.l Ground03 ; 3
                dc.l Ground04 ; 4
                dc.l Ground05 ; 5
                dc.l Ground06 ; 6
                dc.l Ground07 ; 7
                dc.l Ground08 ; 8
                dc.l Ground09 ; 9
                dc.l Ground10 ; 10
                dc.l Ground11 ; 11
                dc.l Ground12 ; 12
                dc.l Ground13 ; 13
                dc.l Ground14 ; 14
                dc.l Ground15 ; 15
                dc.l Ground16 ; 16
                dc.l Ground17 ; 17
                dc.l Ground18 ; 18
                dc.l Ground19 ; 19
                dc.l Ground20 ; 20
                dc.l Ground23 ; 23
                dc.l Ground24 ; 24
                dc.l Ground25 ; 25
                dc.l Ground26 ; 26
                dc.l Ground27 ; 27
                dc.l Ground28 ; 28
                dc.l Ground20 ; 29
                dc.l Ground08 ; 30
                dc.l Ground00 ; 31
                dc.l Ground01 ; 32
                dc.l Ground04 ; 33
                dc.l Ground02 ; 34
                dc.l Ground10 ; 35
                dc.l Ground02 ; 38
                dc.l Ground08 ; 39
                dc.l Ground00 ; 40
                dc.l Ground14 ; 41
                dc.l Ground18 ; 44
                dc.l Ground08 ; 45
                dc.l Ground09 ; 46
                dc.l Ground08 ; 48
                dc.l Ground10 ; 49
                dc.l Ground00 ; 50
                dc.l Ground09 ; 51
                dc.l Ground08 ; 52
                dc.l Ground10 ; 53
                dc.l Ground08 ; 54
                dc.l Ground08 ; 55
                dc.l Ground08 ; 57
                dc.l Ground08 ; 58
                dc.l Ground02 ; 59
                dc.l Ground08 ; 62
                dc.l Ground20 ; 64
Ground00:       incbin "data/graphics/battles/grounds/groundpalette00.bin"
bsg00_rpbase:   dc.w GroundTiles00-bsg00_rpbase
Ground01:       incbin "data/graphics/battles/grounds/groundpalette01.bin"
bsg01_rpbase:   dc.w GroundTiles01-bsg01_rpbase
Ground02:       incbin "data/graphics/battles/grounds/groundpalette02.bin"
bsg02_rpbase:   dc.w GroundTiles01-bsg02_rpbase
Ground03:       incbin "data/graphics/battles/grounds/groundpalette03.bin"
bsg03_rpbase:   dc.w GroundTiles03-bsg03_rpbase
Ground04:       incbin "data/graphics/battles/grounds/groundpalette04.bin"
bsg04_rpbase:   dc.w GroundTiles00-bsg04_rpbase
Ground05:       incbin "data/graphics/battles/grounds/groundpalette05.bin"
bsg05_rpbase:   dc.w GroundTiles05-bsg05_rpbase
Ground06:       incbin "data/graphics/battles/grounds/groundpalette06.bin"
bsg06_rpbase:   dc.w GroundTiles05-bsg06_rpbase
Ground07:       incbin "data/graphics/battles/grounds/groundpalette07.bin"
bsg07_rpbase:   dc.w GroundTiles03-bsg07_rpbase
Ground08:       incbin "data/graphics/battles/grounds/groundpalette08.bin"
bsg08_rpbase:   dc.w GroundTiles08-bsg08_rpbase
Ground09:       incbin "data/graphics/battles/grounds/groundpalette09.bin"
bsg09_rpbase:   dc.w GroundTiles09-bsg09_rpbase
Ground10:       incbin "data/graphics/battles/grounds/groundpalette10.bin"
bsg10_rpbase:   dc.w GroundTiles03-bsg10_rpbase
Ground11:       incbin "data/graphics/battles/grounds/groundpalette11.bin"
bsg11_rpbase:   dc.w GroundTiles03-bsg11_rpbase
Ground12:       incbin "data/graphics/battles/grounds/groundpalette12.bin"
bsg12_rpbase:   dc.w GroundTiles03-bsg12_rpbase
Ground13:       incbin "data/graphics/battles/grounds/groundpalette13.bin"
bsg13_rpbase:   dc.w GroundTiles09-bsg13_rpbase
Ground14:       incbin "data/graphics/battles/grounds/groundpalette14.bin"
bsg14_rpbase:   dc.w GroundTiles14-bsg14_rpbase
Ground15:       incbin "data/graphics/battles/grounds/groundpalette15.bin"
bsg15_rpbase:   dc.w GroundTiles09-bsg15_rpbase
Ground16:       incbin "data/graphics/battles/grounds/groundpalette16.bin"
bsg16_rpbase:   dc.w GroundTiles00-bsg16_rpbase
Ground17:       incbin "data/graphics/battles/grounds/groundpalette17.bin"
bsg17_rpbase:   dc.w GroundTiles17-bsg17_rpbase
Ground18:       incbin "data/graphics/battles/grounds/groundpalette18.bin"
bsg18_rpbase:   dc.w GroundTiles14-bsg18_rpbase
Ground19:       incbin "data/graphics/battles/grounds/groundpalette19.bin"
bsg19_rpbase:   dc.w GroundTiles00-bsg19_rpbase
Ground20:       incbin "data/graphics/battles/grounds/groundpalette20.bin"
bsg20_rpbase:   dc.w GroundTiles17-bsg20_rpbase
Ground23:       incbin "data/graphics/battles/grounds/groundpalette23.bin"
bsg23_rpbase:   dc.w GroundTiles03-bsg23_rpbase
Ground24:       incbin "data/graphics/battles/grounds/groundpalette24.bin"
bsg24_rpbase:   dc.w GroundTiles00-bsg24_rpbase
Ground25:       incbin "data/graphics/battles/grounds/groundpalette25.bin"
bsg25_rpbase:   dc.w GroundTiles25-bsg25_rpbase
Ground26:       incbin "data/graphics/battles/grounds/groundpalette26.bin"
bsg26_rpbase:   dc.w GroundTiles26-bsg26_rpbase
Ground27:       incbin "data/graphics/battles/grounds/groundpalette27.bin"
bsg27_rpbase:   dc.w GroundTiles26-bsg27_rpbase
Ground28:       incbin "data/graphics/battles/grounds/groundpalette28.bin"
bsg28_rpbase:   dc.w GroundTiles03-bsg28_rpbase
GroundTiles00:  incbin "data/graphics/battles/grounds/groundtiles00.bin"
GroundTiles01:  incbin "data/graphics/battles/grounds/groundtiles01.bin"
GroundTiles05:  incbin "data/graphics/battles/grounds/groundtiles05.bin"
GroundTiles14:  incbin "data/graphics/battles/grounds/groundtiles14.bin"
GroundTiles03:  incbin "data/graphics/battles/grounds/groundtiles03.bin"
GroundTiles08:  incbin "data/graphics/battles/grounds/groundtiles08.bin"
GroundTiles09:  incbin "data/graphics/battles/grounds/groundtiles09.bin"
GroundTiles17:  incbin "data/graphics/battles/grounds/groundtiles17.bin"
GroundTiles25:  incbin "data/graphics/battles/grounds/groundtiles25.bin"
GroundTiles26:  incbin "data/graphics/battles/grounds/groundtiles26.bin"

GroundTiles02:  incbin "data/graphics/battles/grounds/groundtiles00.bin"
GroundTiles04:  incbin "data/graphics/battles/grounds/groundtiles01.bin"
GroundTiles06:  incbin "data/graphics/battles/grounds/groundtiles05.bin"
GroundTiles07:  incbin "data/graphics/battles/grounds/groundtiles14.bin"
GroundTiles10:  incbin "data/graphics/battles/grounds/groundtiles03.bin"
GroundTiles11:  incbin "data/graphics/battles/grounds/groundtiles08.bin"
GroundTiles12:  incbin "data/graphics/battles/grounds/groundtiles09.bin"
GroundTiles13:  incbin "data/graphics/battles/grounds/groundtiles17.bin"
GroundTiles15:  incbin "data/graphics/battles/grounds/groundtiles25.bin"
GroundTiles16:  incbin "data/graphics/battles/grounds/groundtiles26.bin"
