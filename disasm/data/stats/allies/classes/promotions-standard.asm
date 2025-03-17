
; ASM FILE data\stats\allies\classes\promotions-standard.asm :
; Promotions
table_Promotions: 
; Syntax        promotionSection [CLASS_]enum,..[CLASS_]enum
                
                promotionSection &      ; 00: Regular base classes
                    SDMN, KNTE, WARR, MAGE, PRST, ACHR, BDMN, WFMN, RNGR, PHNK, THIF, TORT, UNPRO14, UNPRO16, UNPRO17, UNPRO18
                
                promotionSection &      ; 01: Regular promoted classes
                    HERO, PLDN, GLDT, WIZ, VICR, SNIP, BDBT, WFBR, BWNT, PHNX, NINJ, MNST, PROMO17, PROMO18, PROMO19, PROMO20
                
                promotionSection &      ; 08: Vigor Ball base classes
                    PRST, NONE, NONE, NONE, NONE, NONE, NONE, NONE
                
                promotionSection &      ; 09: Vigor Ball promoted classes
                    MMNK, NONE, NONE, NONE, NONE, NONE, NONE, NONE
                
                promotionSection &      ; 02: Pegasus Wing base classes
                    KNTE, NONE, NONE, NONE, NONE, NONE, NONE, NONE
                
                promotionSection &      ; 03: Pegasus Wing promoted classes
                    PGNT, NONE, NONE, NONE, NONE, NONE, NONE, NONE
                
                promotionSection &      ; 04: Warrior Pride base classes
                    WARR, NONE, NONE, NONE, NONE, NONE, NONE, NONE
                
                promotionSection &      ; 05: Warrior Pride promoted classes
                    BRN, NONE, NONE, NONE, NONE, NONE, NONE, NONE
                
                promotionSection &      ; 06: Secret Book base classes
                    MAGE, NONE, NONE, NONE, NONE, NONE, NONE, NONE
                
                promotionSection &      ; 07: Secret Book promoted classes
                    SORC, NONE, NONE, NONE, NONE, NONE, NONE, NONE
                
                promotionSection &      ; 10: Silver Tank base classes
                    ACHR, NONE, NONE, NONE, NONE, NONE, NONE, NONE
                
                promotionSection &      ; 11: Silver Tank promoted classes
                    BRGN, NONE, NONE, NONE, NONE, NONE, NONE, NONE
                
                promotionSection &      ; 12:  base classes
                    NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE
                
                promotionSection &      ; 13:  promoted classes
                    NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE
                
                promotionSection &      ; 14:  base classes
                    NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE
                
                promotionSection &      ; 15:  promoted classes
                    NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE
                
                promotionSection &      ; 16:  base classes
                    NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE
                
                promotionSection &      ; 17:  promoted classes
                    NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE
                
                promotionSection &      ; 18: Location base classes
                    NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE
                
                promotionSection &      ; 19: Location promoted classes
                    NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE, NONE
                
                
table_PromotionItems:
                ; Item, base classes section, promoted classes section
                dc.b ITEM_VIGOR_BALL, 2, 3
                dc.b ITEM_PEGASUS_WING, 4, 5
                dc.b ITEM_WARRIORS_PRIDE, 6, 7
                dc.b ITEM_SECRET_BOOK, 8, 9
                dc.b ITEM_SILVER_TANK, 10, 11
				dc.b ITEM_PROMOITEM6, 12, 13
				dc.b ITEM_PROMOITEM7, 14, 15
				dc.b ITEM_PROMOITEM8, 16, 17
                
                tableEnd.b
                
                
table_LoseAllSpellsClasses:
                ; Class, replacement spell
                dc.b CLASS_SORC, SPELL_DAO
                
                tableEnd.b
                
                
table_DifferentWeaponTypeClasses:
                ; Classes that have their weapon unequipped when promoting
                dc.b CLASS_MMNK
                dc.b CLASS_NINJ
                
                tableEnd.b
