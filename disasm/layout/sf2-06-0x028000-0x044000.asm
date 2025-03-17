
; GAME SECTION 06 :
; 0x028000..0x044000 : Fonts, Menu Tiles, Text Decoding Functions, SEGA Logo, Game Staff, Conf/Debug modes, End Kiss Sequence, Text Huffman Trees, Textbanks
; FREE SPACE : 6681 bytes.


                include "code\specialscreens\segalogo\segalogo_0.asm"    ; SEGA logo functions
                include "data\tech\configurationmodeinputsequence.asm"    ; Configuration mode input sequence
                align
                include "code\common\scripting\text\decoding.asm"    ; Text decoding functions
                include "code\common\tech\incbins\s06_incbins_textbanktrees.asm"    ; Game Section 06 Incbin Directives, part 3
                include "data\scripting\text\entries.asm"    ; Textbank entries
