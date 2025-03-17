
; ASM FILE data\battles\global\aicommandsets.asm :
; 0xE1AC..0xE25B : AI commands data
pt_AiCommandsets:
                dc.l AiCommandset00
                dc.l AiCommandset01
                dc.l AiCommandset02
                dc.l AiCommandset03
                dc.l AiCommandset04
                dc.l AiCommandset05
                dc.l AiCommandset06
                dc.l AiCommandset07
                dc.l AiCommandset08
                dc.l AiCommandset09
                dc.l AiCommandset10
                dc.l AiCommandset11
                dc.l AiCommandset12
                dc.l AiCommandset13
                dc.l AiCommandset14
                dc.l AiCommandset15
AiCommandset00: 
; Syntax        aiCommandset [AICOMMAND_]enum,..[AICOMMAND_]enum
;
; Note: Constant names ("enums"), shorthands (defined by macro), and numerical indexes are interchangeable.
                
                aiCommandset HEAL, &
                             SUPPORT, &
                             ATTACK, &
                             MOVE, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY
AiCommandset01: 
                aiCommandset SPECIAL_MOVE, &
                             HEAL, &
                             SUPPORT, &
                             ATTACK, &
                             MOVE2, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY
AiCommandset02: 
                aiCommandset HEAL2, &
                             SPECIAL_MOVE4, &
                             SUPPORT, &
                             ATTACK3, &
                             MOVE2, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY
AiCommandset03: 
                aiCommandset HEAL2, &
                             SPECIAL_MOVE4, &
                             SUPPORT, &
                             ATTACK3, &
                             MOVE, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY
AiCommandset04: 
                aiCommandset HEAL3, &
                             SPECIAL_MOVE5, &
                             SUPPORT, &
                             ATTACK2, &
                             MOVE3, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY
AiCommandset05: 
                aiCommandset HEAL3, &
                             SPECIAL_MOVE5, &
                             SUPPORT, &
                             ATTACK2, &
                             MOVE3, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY
AiCommandset06: 
                aiCommandset ATTACK, &
                             HEAL, &
                             SUPPORT, &
                             MOVE, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY
AiCommandset07: 
                aiCommandset SPECIAL_MOVE, &
                             ATTACK, &
                             HEAL, &
                             SUPPORT, &
                             MOVE, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY
AiCommandset08: 
                aiCommandset ATTACK, &
                             HEAL, &
                             SUPPORT, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY
AiCommandset09: 
                aiCommandset SPECIAL_MOVE3, &
                             ATTACK3, &
                             HEAL2, &
                             SUPPORT, &
                             SPECIAL_MOVE4, &
                             MOVE2, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY
AiCommandset10: 
                aiCommandset STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY
AiCommandset11: 
                aiCommandset STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY
AiCommandset12: 
                aiCommandset SPECIAL_MOVE4, &
                             SUPPORT, &
                             ATTACK3, &
                             HEAL2, &
                             MOVE, &
                             MOVE2, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY
AiCommandset13: 
                aiCommandset SPECIAL_MOVE5, &
                             ATTACK2, &
                             HEAL3, &
                             SUPPORT, &
                             SPECIAL_MOVE2, &
                             MOVE3, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY
AiCommandset14: 
                aiCommandset STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY
AiCommandset15: 
                aiCommandset SPECIAL_MOVE, &
                             ATTACK3, &
                             HEAL2, &
                             SUPPORT, &
                             SPECIAL_MOVE2, &
                             MOVE2, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY, &
                             STAY
table_E249:     
; These seem to correspond to the secondary characteristics of each AI script
;  for Heal, Attack, and Special Move, but not for Support or normal Move
;  with one byte per AI.
                
                dc.b 0
                dc.b 0
                dc.b 1
                dc.b 1
                dc.b 2
                dc.b 2
                dc.b 0
                dc.b 0
                dc.b 0
                dc.b 1
                dc.b 0
                dc.b 0
                dc.b 1
                dc.b 2
                dc.b 2
                dc.b 0
                dc.b 0
                dc.b 0
