scoreboard players remove @s Mana 10

playsound minecraft:item.crossbow.loading_end master @a ~ ~ ~ 1.2 0.8
playsound minecraft:item.crossbow.loading_end master @a ~ ~ ~ 1.2 0.8
playsound minecraft:item.crossbow.loading_end master @a ~ ~ ~ 1.2 0.8
title @s times 0 15 10
title @s subtitle {"text":"reload completed","color":"blue","underlined":true}
title @s title ""

fill 1024 0 1024 1024 0 1024 shulker_box{lock:{components:{"minecraft:custom_name":"wnkm"}}}
loot replace block 1024 0 1024 container.0 loot wancomatter:inv_copy_stone_1
data modify block 1024 0 1024 Items[{Slot:0b}].components."minecraft:custom_data".Item set from entity @s SelectedItem
data modify block 1024 0 1024 Items[{Slot:0b}].components."minecraft:custom_data".Item.Slot set value 0b
data modify block 1024 0 1024 Items[{Slot:0b}] set from block 1024 0 1024 Items[{Slot:0b}].components."minecraft:custom_data".Item
data modify block 1024 0 1024 Items[0].id set value spyglass
data modify block 1024 0 1024 Items[0].components."minecraft:charged_projectiles"[{Count:1b}].id set from entity @s Inventory[{components:{"minecraft:custom_data":{EggArrow:1b}}}].id
data modify block 1024 0 1024 Items[0].components."minecraft:charged_projectiles"[0].components."minecraft:custom_data" set from entity @s Inventory[{components:{"minecraft:custom_data":{EggArrow:1b}}}].components."minecraft:custom_data"
data modify block 1024 0 1024 Items[0].components."minecraft:custom_data".Charged set value 1b

item replace entity @s weapon.mainhand from block 1024 0 1024 container.0
clear @s #minecraft:arrows[custom_data~{EggArrow:1b}] 2
scoreboard players reset @s crossbow_sneak
tag @s add has_charged_ballista
tag @s add complete_charge_ballista
summon minecraft:area_effect_cloud ~ ~ ~ {Age:0,Duration:5,Tags:["complete_charge_ballista_AEC","wnkm.owned","wnkm.round"],potion_duration_scale:0.25f}
advancement grant @s only wancomatter:using_item/ballista_scope
