
; ASM FILE data\stats\allies\classes\classdefs.asm :
; 0x1EE890..0x1EE930 : Class definitions
table_ClassDefinitions:
                
; Syntax        mov        0-255 (game slows down at around 15)
;               resistance [RESISTANCE_]bitfield
;               moveType   [MOVETYPE_UPPER_]enum (or index)
;               prowess    [PROWESS_]bitfield
                
                mov 6                   ; 0: SDMN
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 7                   ; 1: KNTE
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   CENTAUR
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 5                   ; 2: WARR
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 5                   ; 3: MAGE
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   MAGE
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 5                   ; 4: PRST
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   HEALER
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 5                   ; 5: ACHR
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   ARCHER
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 6: BDMN
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   FLYING
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 5                   ; 7: WFMN
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   STEALTH
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 8: RNGR
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   CENTAUR_ARCHER
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 9: PHNK
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   HOVERING
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 7                   ; 10: THIF
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN16|DOUBLE_1IN16|COUNTER_1IN32
                
                mov 5                   ; 11: TORT
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   STEALTH
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 12: HERO
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN16|DOUBLE_1IN16|COUNTER_1IN8
                
                mov 7                   ; 13: PLDN
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   CENTAUR
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN16
                
                mov 7                   ; 14: PGNT
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   FLYING
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN16
                
                mov 5                   ; 15: GLDT
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN16
                
                mov 6                   ; 16: BRN
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL150_1IN8|DOUBLE_1IN32|COUNTER_1IN16
                
                mov 5                   ; 17: WIZ
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   MAGE
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN16
                
                mov 5                   ; 18: SORC
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   MAGE
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN16
                
                mov 5                   ; 19: VICR
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   HEALER
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN16
                
                mov 5                   ; 20: MMNK
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN8
                
                mov 6                   ; 21: SNIP
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   ARCHER
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN16
                
                mov 5                   ; 22: BRGN
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   BRASS_GUNNER
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN16
                
                mov 6                   ; 23: BDBT
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   FLYING
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN16
                
                mov 5                   ; 24: WFBR
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   STEALTH
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN8
                
                mov 6                   ; 25: BWNT
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   CENTAUR_ARCHER
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN16
                
                mov 7                   ; 26: PHNX
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|FIRE_MAJOR|STATUS_MAJOR
                moveType   FLYING
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN16
                
                mov 7                   ; 27: NINJ
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   STEALTH
                prowess    CRITICAL150_1IN8|DOUBLE_1IN16|COUNTER_1IN8
                
                mov 7                   ; 28: MNST
                resistance WATER_MAJOR|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_MAJOR|NEUTRAL_MAJOR|STATUS_MAJOR
                moveType   HOVERING
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN16
                
                mov 4                   ; 29: RBT
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_MINOR|STATUS_MINOR
                moveType   REGULAR
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN16
                
                mov 4                   ; 30: GLM
                resistance WATER_MINOR|LIGHTNING_NONE|ICE_NONE|WIND_NONE|EARTH_MINOR|FIRE_MAJOR|NEUTRAL_MINOR|STATUS_MINOR
                moveType   REGULAR
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN16
                
                mov 6                   ; 31: RDBN
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL150_1IN8|DOUBLE_1IN32|COUNTER_1IN8
                
                mov 6                   ; 32: 
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 33: 
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 34: 
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 35: 
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 36: 
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 37: 
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 38: 
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 39: 
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 40: 
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 41: 
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 42: 
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 43: 
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 44: 
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 45: 
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 46: 
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 47: 
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 48: 
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 49: 
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 50: 
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 51: 
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 52: 
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 53: 
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 54: 
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 55: 
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 56: 
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 57: 
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 58: 
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 59: 
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 60: 
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 61: 
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 62: 
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 63: 
                resistance WATER_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WIND_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                
                
