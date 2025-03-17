
; GAME SECTION 02 :
; 0x008000..0x010000 : Character Stats Engine, Battle engine, Item Effects Engine, Enemy AI Engine
; FREE SPACE : 121 bytes.


                ; Stats engine
                include "code\common\stats\statsengine_1.asm"    ; Character stats engine, part 1
                include "code\common\stats\getcombatanttype.asm"    ; Combatant type getter function
                includeIfStandard "code\common\stats\getclasstype-standard.asm"
                include "data\stats\allies\classes\classtypes.asm"    ; Class types table
                include "code\common\stats\statsengine_2.asm"    ; Character stats engine, part 2
                include "code\common\stats\levelup.asm"    ; Level Up functions
                include "code\common\stats\statsengine_3.asm"    ; Character stats engine, part 3
                includeIfStandard "code\common\stats\caravaninventoryfunctions-standard.asm"
                
                ; Battleactions engine
                include "code\gameflow\battle\battleactions\battleactionsengine_1.asm"    ; Battleactions Engine, part 1
                include "code\gameflow\battle\battleactions\determineineffectiveattack.asm"    ; Determine ineffective attack function
                include "code\gameflow\battle\battleactions\initbattlesceneproperties.asm"    ; Init Battlescene Properties function
                includeIfStandard "code\gameflow\battle\battleactions\createbattlescenemessage-standard.asm"
                includeIfStandard "code\gameflow\battle\battleactions\createbattlesceneanimation-standard.asm"
                includeIfStandard "data\stats\spells\spellcastmessages-standard.asm"
                includeIfStandard "data\graphics\battles\specialbattleanimations-standard.asm"
                alignIfStandard
                include "code\gameflow\battle\battleactions\battleactionsengine_2.asm"    ; Battleactions Engine, part 2
                includeIfStandard "code\gameflow\battle\battleactions\isabletocounterattack-standard.asm"
                includeIfStandard "code\gameflow\battle\battleactions\getspellanimation-standard.asm"
                includeIfStandard "data\stats\enemies\specialcounterattackenemies-standard.asm"
                includeIfStandard "data\graphics\battles\attackspellanimations-standard.asm"
                alignIfStandard
                include "code\gameflow\battle\battleactions\battleactionsengine_3.asm"    ; Battleactions Engine, part 3
                include "data\battles\global\halvedexpearnedbattles.asm"    ; Halved EXP earned battles table
                align
                include "code\gameflow\battle\battleactions\battleactionsengine_4.asm"    ; Battleactions Engine, part 4
                includeIfStandard "code\gameflow\battle\battleactions\attack-standard.asm"
                includeIfStandard "code\gameflow\battle\battleactions\determinedodge-standard.asm"
                includeIfStandard "code\gameflow\battle\battleactions\calculatedamage-standard.asm"
                includeIfStandard "data\stats\items\lifestealweapons-standard.asm"
                includeIfStandard "data\battles\global\landeffectdamagemultipliers-standard.asm"
                includeIfStandard "data\stats\specialmovetypes-standard.asm"
                alignIfStandard
                include "code\gameflow\battle\battleactions\determinecriticalhit.asm"    ; Determine critical hit function
                include "data\stats\allies\classes\criticalhitdefs.asm"    ; Critical hit settings definitions
                include "code\gameflow\battle\battleactions\battleactionsengine_5.asm"    ; Battleactions Engine, part 5
                include "code\gameflow\battle\battleactions\castspell.asm"    ; Write Battlescene Script : Cast Spell
                includeIfStandard "code\gameflow\battle\battleactions\calculatespelldamage-standard.asm"
                include "code\gameflow\battle\battleactions\useitem.asm"    ; Write Battlescene Script : Use Item
                includeIfStandard "code\gameflow\battle\battleactions\breakuseditem-standard.asm"
                include "data\stats\items\itembreakmessages.asm"    ; Item break messages
                includeIfStandard "code\gameflow\battle\battleactions\dropenemyitem-standard.asm"
                include "data\battles\global\enemyitemdrops.asm"    ; Enemy item drops
                align
                include "data\stats\enemies\enemygold.asm"    ; Enemy gold amounts
                include "code\gameflow\battle\battleactions\battleactionsengine_6.asm"    ; Battleactions Engine, part 6
                includeIfStandard "data\stats\allies\classes\healerclasses-standard.asm"
                includeIfStandard "data\stats\items\cutoffweapons-standard.asm"
                includeIfStandard "data\stats\spells\invocations-standard.asm"
                alignIfStandard
                
                ; Battlefield engine
                include "code\gameflow\battle\battlefield\battlefieldengine_1.asm"    ; Battlefield engine
                include "data\stats\spells\spellelements.asm"    ; Spell elements table
                align
                include "code\gameflow\battle\battlefield\battlefieldengine_2.asm"    ; Battlefield engine
                includeIfStandard "code\gameflow\battle\battlefield\getattackrange-standard.asm"
                includeIfStandard "data\stats\unarmedattackranges-standard.asm"
                alignIfStandard
                include "code\gameflow\battle\battlefield\battlefieldengine_3.asm"    ; Battlefield engine
                include "code\gameflow\battle\battlefield\determinehealingspelllevel-aienhancements.asm"
                include "code\gameflow\battle\battlefield\battlefieldengine_4.asm"    ; Battlefield engine
                includeIfStandard "code\gameflow\battle\battlefield\useableaiactions-standard.asm"
                includeIfStandard "data\battles\global\aiexcludedactions-standard.asm"
                alignIfStandard
                include "code\gameflow\battle\battlefield\battlefieldengine_5.asm"    ; Battlefield engine
                include "code\gameflow\battle\battlefield\doescombatantrequirehealing-aienhancements.asm"
                include "code\gameflow\battle\battlefield\battlefieldengine_6.asm"    ; Battlefield engine
                include "data\battles\global\landeffectsettingsandmovecosts.asm"    ; Land effect settings and move costs table
                include "data\battles\global\aipriority.asm"    ; AI priority data
                include "code\gameflow\battle\battlefield\battlefieldengine_7.asm"    ; Battlefield engine
                
                ; AI engine
                include "code\gameflow\battle\ai\aiengine_1.asm"    ; AI engine
                include "data\battles\global\aicommandsets.asm"    ; AI commands data
                include "data\battles\global\swarmbattles.asm"    ; Parameters for battles implementing swarm AI
                include "code\gameflow\battle\ai\handleaicommand.asm"    ; Handle AI Command function
                include "code\gameflow\battle\ai\aicommandheal-aienhancements.asm"
                include "code\gameflow\battle\ai\aicommandattack.asm"    ; AI command : Attack
                include "code\gameflow\battle\ai\aicommandspecialmove.asm"    ; AI command : Special Move
                include "code\gameflow\battle\ai\aicommandsupport.asm"    ; AI command : Support
                include "code\gameflow\battle\ai\determineaibattleaction.asm"    ; Determine AI Battleaction function
                include "code\gameflow\battle\ai\aicommandmove.asm"    ; AI command : Move
                include "code\gameflow\battle\ai\aiengine_2.asm"    ; AI engine
                include "data\battles\global\krakenmovecosts.asm"    ; Kraken move costs table
