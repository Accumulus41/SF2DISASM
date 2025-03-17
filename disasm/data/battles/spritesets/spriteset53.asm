
; ASM FILE data\battles\spritesets\spriteset00.asm :
; 0x1B31A2..0x1B32E2 : Battle Spritesets 00
BattleSpriteset53:
                ; # Allies
                dc.b 12
                ; # Enemies
                dc.b 20
                ; # AI Regions
                dc.b 15
                ; # AI Points
                dc.b 15
                
                ; Allies
                allyCombatant 0, 3, 18
                combatantAiAndItem HEALER1, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, STARTING
                
                allyCombatant 1, 3, 19
                combatantAiAndItem HEALER1, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, STARTING
                
                allyCombatant 2, 2, 19
                combatantAiAndItem HEALER1, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, STARTING
                
                allyCombatant 3, 3, 17
                combatantAiAndItem HEALER1, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, STARTING
                
                allyCombatant 4, 2, 17
                combatantAiAndItem HEALER1, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, STARTING
                
                allyCombatant 5, 2, 18
                combatantAiAndItem HEALER1, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, STARTING
                
                allyCombatant 6, 1, 18
                combatantAiAndItem HEALER1, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, STARTING
                
                allyCombatant 7, 1, 17
                combatantAiAndItem HEALER1, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, STARTING
                
                allyCombatant 8, 1, 19
                combatantAiAndItem HEALER1, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, STARTING
                
                allyCombatant 9, 1, 20
                combatantAiAndItem HEALER1, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, STARTING
                
                allyCombatant 10, 1, 16
                combatantAiAndItem HEALER1, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, STARTING
                
                allyCombatant 11, 2, 16
                combatantAiAndItem HEALER1, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, STARTING
                
                ; Enemies
                enemyCombatant ZEON, 18, 5
                combatantAiAndItem SENTRY, NOTHING
                combatantBehavior MOVE_TO|0, 15, NONE, 15, 0, STARTING
                
                enemyCombatant GIZMO, 0, 0
                combatantAiAndItem SENTRY, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, NOSPAWN
                
                enemyCombatant GIZMO, 0, 0
                combatantAiAndItem SENTRY, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, NOSPAWN
                
                enemyCombatant GIZMO, 0, 0
                combatantAiAndItem SENTRY, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, NOSPAWN
                
                enemyCombatant GIZMO, 0, 0
                combatantAiAndItem SENTRY, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, NOSPAWN
                
                enemyCombatant GIZMO, 0, 0
                combatantAiAndItem SENTRY, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, NOSPAWN
                
                enemyCombatant GIZMO, 0, 0
                combatantAiAndItem SENTRY, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, NOSPAWN
                
                enemyCombatant GIZMO, 0, 0
                combatantAiAndItem SENTRY, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, NOSPAWN
                
                enemyCombatant GIZMO, 0, 0
                combatantAiAndItem SENTRY, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, NOSPAWN
                
                enemyCombatant GIZMO, 0, 0
                combatantAiAndItem SENTRY, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, NOSPAWN
                
                enemyCombatant GIZMO, 0, 0
                combatantAiAndItem SENTRY, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, NOSPAWN
                
                enemyCombatant GIZMO, 0, 0
                combatantAiAndItem SENTRY, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, NOSPAWN
                
                enemyCombatant GIZMO, 0, 0
                combatantAiAndItem SENTRY, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, NOSPAWN
                
                enemyCombatant GIZMO, 0, 0
                combatantAiAndItem SENTRY, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, NOSPAWN
                
                enemyCombatant GIZMO, 0, 0
                combatantAiAndItem SENTRY, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, NOSPAWN
                
                enemyCombatant GIZMO, 0, 0
                combatantAiAndItem SENTRY, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, NOSPAWN
                
                enemyCombatant GIZMO, 0, 0
                combatantAiAndItem SENTRY, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, NOSPAWN
                
                enemyCombatant GIZMO, 0, 0
                combatantAiAndItem SENTRY, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, NOSPAWN
                
                enemyCombatant GIZMO, 0, 0
                combatantAiAndItem SENTRY, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, NOSPAWN
                
                enemyCombatant GIZMO, 0, 0
                combatantAiAndItem SENTRY, NOTHING
                combatantBehavior NONE, 15, NONE, 15, 0, NOSPAWN
                
                ; AI Regions
                dc.b 4
                dc.b 0
                dc.b 0, 4
                dc.b 0, 22
                dc.b 13, 22
                dc.b 30, 4
                dc.b 0
                dc.b 0
                
                dc.b 4
                dc.b 0
                dc.b 0, 4
                dc.b 19, 24
                dc.b 30, 24
                dc.b 30, 4
                dc.b 0
                dc.b 0
                
                dc.b 4
                dc.b 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0
                dc.b 0
                
                dc.b 4
                dc.b 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0
                dc.b 0
                
                dc.b 4
                dc.b 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0
                dc.b 0
                
                dc.b 4
                dc.b 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0
                dc.b 0
                
                dc.b 4
                dc.b 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0
                dc.b 0
                
                dc.b 4
                dc.b 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0
                dc.b 0
                
                dc.b 4
                dc.b 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0
                dc.b 0
                
                dc.b 4
                dc.b 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0
                dc.b 0
                
                dc.b 4
                dc.b 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0
                dc.b 0
                
                dc.b 4
                dc.b 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0
                dc.b 0
                
                dc.b 4
                dc.b 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0
                dc.b 0
                
                dc.b 4
                dc.b 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0
                dc.b 0
                
                dc.b 4
                dc.b 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0, 0
                dc.b 0
                dc.b 0
                
                ; AI Points
                dc.b 18, 5
                dc.b 15, 22
				dc.b 0, 0
				dc.b 0, 0
				dc.b 0, 0
				dc.b 0, 0
				dc.b 0, 0
				dc.b 0, 0
				dc.b 0, 0
				dc.b 0, 0
				dc.b 0, 0
				dc.b 0, 0
				dc.b 0, 0
				dc.b 0, 0
				dc.b 0, 0
                
