
; ASM FILE data\stats\items\shopinventories.asm :
; 0x20878..0x20981 : Shop inventories
list_ShopInventories:
                
; Syntax        shopInventory [ITEM_]enum,..[ITEM_]enum
;
; Note: Constant names ("enums"), shorthands (defined by macro), and numerical indexes are interchangeable.
                
                ; Weapon shop Granseal
                shopInventory SHORT_SWORD, &
                              SHORT_SPEAR, &
                              SHORT_AXE, &
                              WOODEN_ROD, &
                              SHORT_KNIFE
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                
                ; Weapon shop Galam 0
                shopInventory SHORT_SWORD, &
                              SHORT_SPEAR, &
                              BRONZE_LANCE, &
                              SHORT_AXE, &
                              WOODEN_ROD, &
                              SHORT_ROD, &
                              SHORT_KNIFE
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                
                ; Weapon shop New Granseal 0
                shopInventory SHORT_SWORD, &
                              MIDDLE_SWORD, &
                              BRONZE_LANCE, &
                              SPEAR, &
                              SHORT_AXE, &
                              HAND_AXE, &
                              WOODEN_ROD, &
                              SHORT_ROD, &
                              SHORT_KNIFE
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                
                ; Weapon shop Ribble
                shopInventory SHORT_SWORD, &
                              MIDDLE_SWORD, &
                              BRONZE_LANCE, &
                              SPEAR, &
                              SHORT_AXE, &
                              HAND_AXE, &
                              WOODEN_ROD, &
                              SHORT_ROD, &
                              SHORT_KNIFE, &
                              DAGGER, &
                              WOODEN_ARROW
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                
                ; Weapon shop Polca
                shopInventory MIDDLE_SWORD, &
                              LONG_SWORD, &
                              BRONZE_LANCE, &
                              SPEAR, &
                              SHORT_AXE, &
                              HAND_AXE, &
                              SHORT_ROD, &
                              BRONZE_ROD, &
                              SHORT_KNIFE, &
                              DAGGER, &
                              WOODEN_ARROW
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                
                ; Weapon shop Bedoe
                shopInventory MIDDLE_SWORD, &
                              LONG_SWORD, &
                              SPEAR, &
                              STEEL_LANCE, &
                              HAND_AXE, &
                              MIDDLE_AXE, &
                              SHORT_ROD, &
                              BRONZE_ROD, &
                              DAGGER, &
                              KNIFE, &
                              WOODEN_ARROW, &
                              IRON_ARROW
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                
                ; Weapon shop Hassan 0
                shopInventory LONG_SWORD, &
                              STEEL_SWORD, &
                              SPEAR, &
                              STEEL_LANCE, &
                              MIDDLE_AXE, &
                              POWER_AXE, &
                              IRON_ROD, &
                              POWER_STICK, &
                              KNIFE, &
                              THIEVES_DAGGER, &
                              IRON_ARROW, &
                              STEEL_ARROW
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                
                ; Weapon shop Hassan 1
                shopInventory BROAD_SWORD, &
                              BATTLE_AXE, &
                              POWER_SPEAR, &
                              ROBIN_ARROW, &
                              FLAIL, &
                              LEATHER_GLOVE
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                
                ; Weapon shop New Granseal 1
                shopInventory BROAD_SWORD, &
                              BUSTER_SWORD, &
                              HEAVY_LANCE, &
                              LARGE_AXE, &
                              ROBIN_ARROW, &
                              ASSAULT_SHELL, &
                              FLAIL, &
                              GUARDIAN_STAFF, &
                              LEATHER_GLOVE, &
                              POWER_GLOVE
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                
                ; Weapon shop Ketto
                shopInventory BROAD_SWORD, &
                              BUSTER_SWORD, &
                              HEAVY_LANCE, &
                              JAVELIN, &
                              LARGE_AXE, &
                              ROBIN_ARROW, &
                              ASSAULT_SHELL, &
                              GUARDIAN_STAFF, &
                              INDRA_STAFF, &
                              POWER_GLOVE
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                
                ; Weapon shop Pacalon
                shopInventory BUSTER_SWORD, &
                              GREAT_SWORD, &
                              HEAVY_LANCE, &
                              JAVELIN, &
                              LARGE_AXE, &
                              ASSAULT_SHELL, &
                              GREAT_SHOT, &
                              GUARDIAN_STAFF, &
                              INDRA_STAFF, &
                              POWER_GLOVE
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                
                ; Weapon shop Tristan
                shopInventory BUSTER_SWORD, &
                              GREAT_SWORD, &
                              JAVELIN, &
                              CHROME_LANCE, &
                              LARGE_AXE, &
                              GREAT_AXE, &
                              ASSAULT_SHELL, &
                              GREAT_SHOT, &
                              GUARDIAN_STAFF, &
                              INDRA_STAFF, &
                              POWER_GLOVE, &
                              BRASS_KNUCKLES
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                
                ; Weapon shop Moun
                shopInventory BUSTER_SWORD, &
                              GREAT_SWORD, &
                              JAVELIN, &
                              CHROME_LANCE, &
                              LARGE_AXE, &
                              GREAT_AXE, &
                              ASSAULT_SHELL, &
                              GREAT_SHOT, &
                              GUARDIAN_STAFF, &
                              INDRA_STAFF, &
                              BRASS_KNUCKLES, &
                              IRON_KNUCKLES
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                
                ; Weapon shop Roft
                shopInventory BUSTER_SWORD, &
                              GREAT_SWORD, &
                              JAVELIN, &
                              CHROME_LANCE, &
                              LARGE_AXE, &
                              GREAT_AXE, &
                              ASSAULT_SHELL, &
                              GREAT_SHOT, &
                              GUARDIAN_STAFF, &
                              INDRA_STAFF, &
                              BRASS_KNUCKLES, &
                              IRON_KNUCKLES
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                
                ; Weapon shop Galam 1
                shopInventory BUSTER_SWORD, &
                              GREAT_SWORD, &
                              JAVELIN, &
                              CHROME_LANCE, &
                              LARGE_AXE, &
                              GREAT_AXE, &
                              ASSAULT_SHELL, &
                              GREAT_SHOT, &
                              GUARDIAN_STAFF, &
                              INDRA_STAFF, &
                              BRASS_KNUCKLES, &
                              IRON_KNUCKLES
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                
                ; Item shop Granseal
                shopInventory MEDICAL_HERB, &
                              HEALING_SEED, &
                              ANTIDOTE, &
                              ANGEL_WING
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                
                ; Item shop Galam 0
                shopInventory MEDICAL_HERB, &
                              HEALING_SEED, &
                              ANTIDOTE, &
                              ANGEL_WING
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                
                ; Item shop New Granseal 0
                shopInventory MEDICAL_HERB, &
                              HEALING_SEED, &
                              ANTIDOTE, &
                              ANGEL_WING
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                
                ; Item shop Ribble
                shopInventory MEDICAL_HERB, &
                              HEALING_SEED, &
                              HEALING_DROP, &
                              ANTIDOTE, &
                              FAIRY_POWDER, &
                              ANGEL_WING
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                
                ; Item shop Polca
                shopInventory MEDICAL_HERB, &
                              HEALING_SEED, &
                              HEALING_DROP, &
                              ANTIDOTE, &
                              FAIRY_POWDER, &
                              ANGEL_WING
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                
                ; Item shop Bedoe
                shopInventory MEDICAL_HERB, &
                              HEALING_SEED, &
                              HEALING_DROP, &
                              ANTIDOTE, &
                              FAIRY_POWDER, &
                              ANGEL_WING
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                
                ; Item shop Hassan
                shopInventory MEDICAL_HERB, &
                              HEALING_SEED, &
                              HEALING_DROP, &
                              ANTIDOTE, &
                              FAIRY_POWDER, &
                              ANGEL_WING
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                
                ; Item shop Miniatures
                shopInventory MEDICAL_HERB, &
                              HEALING_SEED, &
                              HEALING_DROP, &
                              ANTIDOTE, &
                              FAIRY_POWDER, &
                              ANGEL_WING
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                
                ; Item shop New Granseal 1
                shopInventory MEDICAL_HERB, &
                              HEALING_SEED, &
                              HEALING_DROP, &
                              ANTIDOTE, &
                              FAIRY_POWDER, &
                              ANGEL_WING
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                
                ; Item shop ???
                shopInventory MEDICAL_HERB, &
                              HEALING_SEED, &
                              HEALING_DROP, &
                              ANTIDOTE, &
                              FAIRY_POWDER, &
                              ANGEL_WING
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                
                ; Item shop Pacalon
                shopInventory MEDICAL_HERB, &
                              HEALING_SEED, &
                              HEALING_DROP, &
                              ANTIDOTE, &
                              FAIRY_POWDER, &
                              ANGEL_WING
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                
                ; Item shop Tristan
                shopInventory MEDICAL_HERB, &
                              HEALING_SEED, &
                              HEALING_DROP, &
                              ANTIDOTE, &
                              FAIRY_POWDER, &
                              ANGEL_WING
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                
                ; Item shop Moun & Kett0
                shopInventory MEDICAL_HERB, &
                              HEALING_SEED, &
                              HEALING_DROP, &
                              ANTIDOTE, &
                              FAIRY_POWDER, &
                              ANGEL_WING
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                
                ; Item shop Dwarven Village & Roft
                shopInventory MEDICAL_HERB, &
                              HEALING_SEED, &
                              HEALING_DROP, &
                              ANTIDOTE, &
                              FAIRY_POWDER, &
                              ANGEL_WING
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                
                ; Item shop Gallam 1
                shopInventory MEDICAL_HERB, &
                              HEALING_SEED, &
                              HEALING_DROP, &
                              ANTIDOTE, &
                              FAIRY_POWDER, &
                              ANGEL_WING
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                
                ; Other shop 
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                
                ; Other shop 
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
                            dc.b 255
