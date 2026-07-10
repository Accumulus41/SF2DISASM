
; ASM FILE code\common\tech\pointers\s16_iconspointer.asm :
; 0x1D8000..0x1D8004 : Game Section 16 Icons Pointer

    if (STANDARD_BUILD=1)
p_ItemIcons:    dc.l ItemIconMEDICAL_HERB
p_SpellIcons:   dc.l SpellIconHEAL
p_OtherIcons:   dc.l OtherIconBLANK
    else
p_Icons:        dc.l ItemIconMEDICAL_HERB
    endif
