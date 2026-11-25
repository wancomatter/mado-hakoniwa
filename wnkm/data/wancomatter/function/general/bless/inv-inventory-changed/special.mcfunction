execute if data entity @s {Inventory:[{id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{invisibleFlag:1b,invisibleItem:[{Slot:2b,tag:{blessarm:1b}}]}}}]} run tag @s add blessarm
execute if data entity @s {Inventory:[{id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{invisibleFlag:1b,invisibleItem:[{Slot:2b,tag:{lightarm:1b}}]}}}]} run tag @s add lightarm
execute if data entity @s {Inventory:[{id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{invisibleFlag:1b,invisibleItem:[{Slot:1b,tag:{bear_legs:1b}}]}}}]} run tag @s add bear_legs
execute if data entity @s {Inventory:[{id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{invisibleFlag:1b,invisibleItem:[{Slot:1b,tag:{rabbitfoot:1b}}]}}}]} run tag @s add rabbitfoot
execute if data entity @s {Inventory:[{id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{invisibleFlag:1b,invisibleItem:[{Slot:1b,tag:{earth_legs:1b}}]}}}]} run tag @s add earth_legs
execute if data entity @s {Inventory:[{id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{invisibleFlag:1b,invisibleItem:[{Slot:0b,tag:{floatboots:1b}}]}}}]} run tag @s add floatboots
execute if data entity @s {Inventory:[{id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{invisibleFlag:1b,invisibleItem:[{Slot:0b,tag:{resistboots:1b}}]}}}]} run tag @s add resistboots
execute if data entity @s {Inventory:[{id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{invisibleFlag:1b,invisibleItem:[{Slot:0b,tag:{ice_boots:1b}}]}}}]} run tag @s add ice_boots
execute if data entity @s {Inventory:[{id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{invisibleFlag:1b,invisibleItem:[{Slot:0b,tag:{sliding_boots:1b}}]}}}]} run tag @s add sliding_boots

execute if data entity @s Inventory[{id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{invisibleFlag:1b}}}].components."minecraft:custom_data".invisibleItem[].components."minecraft:attribute_modifiers"[{type:"minecraft:movement_speed"}] run function wancomatter:general/bless/inv-inventory-changed/speed
execute if data entity @s Inventory[{id:"minecraft:stone_hoe",components:{"minecraft:custom_data":{invisibleFlag:1b}}}].components."minecraft:custom_data".invisibleItem[].components."minecraft:attribute_modifiers"[{type:"minecraft:attack_damage"}] run function wancomatter:general/bless/inv-inventory-changed/atk_dmg
