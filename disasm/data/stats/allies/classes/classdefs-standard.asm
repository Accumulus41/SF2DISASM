
; ASM FILE data\stats\allies\classes\classdefs.asm :
; 0x1EE890..0x1EE930 : Class definitions
table_ClassDefs:  
; Syntax        mov        0-255 (game slows down at around 15)
;               resistance [RESISTANCE_]bitfield
;               moveType   [MOVETYPE_UPPER_]enum (or index)
;               prowess    [PROWESS_]bitfield
                
                mov 6                   ; 0: SDMN
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 7                   ; 1: KNTE
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   CENTAUR
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 5                   ; 2: WARR
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 5                   ; 3: MAGE
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   MAGE
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 5                   ; 4: PRST
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   HEALER
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 5                   ; 5: ACHR
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   ARCHER
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 6: BDMN
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   FLYING
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 5                   ; 7: WFMN
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   STEALTH
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 8: RNGR
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   CENTAUR_ARCHER
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 9: PHNK
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   HOVERING
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 7                   ; 10: THIF
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN16|DOUBLE_1IN16|COUNTER_1IN32
                
                mov 5                   ; 11: TORT
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   STEALTH
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 12: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 13: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 14: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 15: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 16: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 17: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 18: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 19: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 20: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 21: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 22: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 23: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 24: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 25: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 26: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 27: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 28: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 29: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 30: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 31: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
;======================================================================================================
				
                mov 6                   ; 32: HERO
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN16|DOUBLE_1IN16|COUNTER_1IN8
                
                mov 7                   ; 33: PLDN
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   CENTAUR
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN16
                
                mov 5                   ; 34: GLDT
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN16
                
                mov 5                   ; 35: WIZ
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   MAGE
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN16
                
                mov 5                   ; 36: VICR
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   HEALER
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN16
                
                mov 6                   ; 37: SNIP
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   ARCHER
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN16
                
                mov 6                   ; 38: BDBT
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   FLYING
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN16
                
                mov 5                   ; 39: WFBR
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   STEALTH
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN8
                
                mov 6                   ; 40: BWNT
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   CENTAUR_ARCHER
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN16
                
                mov 7                   ; 41: PHNX
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_MAJOR|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_MAJOR
                moveType   FLYING
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN16
                
                mov 7                   ; 42: NINJ
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   STEALTH
                prowess    CRITICAL150_1IN8|DOUBLE_1IN16|COUNTER_1IN8
                
                mov 7                   ; 43: MNST
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_MAJOR|STATUS_MAJOR
                moveType   HOVERING
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN16
                
                mov 4                   ; 44: RBT
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_MINOR|STATUS_MINOR
                moveType   REGULAR
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN16
                
                mov 4                   ; 45: GLM
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_MAJOR|WATER_NONE|EARTH_NONE|NEUTRAL_MINOR|STATUS_MINOR
                moveType   REGULAR
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN16
                
                mov 6                   ; 46: RDBN
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL150_1IN8|DOUBLE_1IN32|COUNTER_1IN8
                    
                mov 6                   ; 47: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 48: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 49: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 50: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 51: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 52: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 53: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 54: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 55: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 56: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 57: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 58: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 59: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 60: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 61: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 62: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
                    
                mov 6                   ; 63: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL_NONE|DOUBLE_1IN32|COUNTER_1IN32
				
;======================================================================================================
                
                mov 5                   ; 64: MMNK
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN8
                
                mov 6                   ; 65: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 66: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 67: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 68: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 69: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 70: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 71: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 72: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 73: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 74: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 75: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 76: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 77: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 78: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 79: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
				
;======================================================================================================
                
                mov 7                   ; 80: PGNT
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   FLYING
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN16
                
                mov 6                   ; 81: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 82: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 83: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 84: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 85: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 86: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 87: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 88: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 89: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 90: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 91: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 92: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 93: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 94: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 95: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
				
;======================================================================================================
                
                mov 6                   ; 96: BRN
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL150_1IN8|DOUBLE_1IN32|COUNTER_1IN16
                
                mov 6                   ; 97: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 98: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 99: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 100: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 101: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 102: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 103: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 104: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 105: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 106: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 107: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 108: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 109: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 110: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 111: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
				
;======================================================================================================
                
                mov 5                   ; 112: SORC
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   MAGE
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN16
                
                mov 6                   ; 113: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 114: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 115: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 116: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 117: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 118: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 119: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 120: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 121: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 122: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 123: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 124: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 125: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 126: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 127: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
				
;======================================================================================================
                
                mov 5                   ; 128: BRGN
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   BRASS_GUNNER
                prowess    CRITICAL125_1IN16|DOUBLE_1IN32|COUNTER_1IN16
                
                mov 6                   ; 129: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 130: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 131: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 132: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 133: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 134: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 135: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 136: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 137: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 138: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 139: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 140: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 141: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 142: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 143: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
				
;======================================================================================================
                
                mov 6                   ; 144: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 145: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 146: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 147: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 148: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 149: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 150: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 151: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 152: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 153: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 154: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 155: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 156: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 157: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 158: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 159: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
				
;======================================================================================================
                
                mov 6                   ; 160: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 161: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 162: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 163: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 164: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 165: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 166: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 167: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 168: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 169: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 170: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 171: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 172: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 173: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 174: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 175: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
				
;======================================================================================================
                
                mov 6                   ; 176: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 177: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 178: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 179: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 180: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 181: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 182: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 183: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 184: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 185: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 186: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 187: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 188: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 189: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 190: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 191: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
				
;======================================================================================================
                
                mov 6                   ; 192: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 193: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 194: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 195: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 196: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 197: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 198: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 199: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 200: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 201: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 202: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 203: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 204: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 205: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 206: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 207: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
				
;======================================================================================================
                
                mov 6                   ; 208: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 209: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 210: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 211: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 212: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 213: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 214: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 215: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 216: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 217: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 218: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 219: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 220: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 221: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 222: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                mov 6                   ; 223: 
                resistance WIND_NONE|LIGHTNING_NONE|ICE_NONE|FIRE_NONE|WATER_NONE|EARTH_NONE|NEUTRAL_NONE|STATUS_NONE
                moveType   REGULAR
                prowess    CRITICAL125_1IN32|DOUBLE_1IN32|COUNTER_1IN32
                
                
