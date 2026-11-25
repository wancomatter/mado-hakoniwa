scoreboard players remove @s Mana 15

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
data modify block 1024 0 1024 Items[0].id set value crossbow
data modify block 1024 0 1024 Items[0].components."minecraft:charged_projectiles"[{Count:1b}].id set from entity @s Inventory[{components:{"minecraft:custom_data":{EggArrow:1b}}}].id
data modify block 1024 0 1024 Items[0].components."minecraft:charged_projectiles"[0].components."minecraft:custom_data" set from entity @s Inventory[{components:{"minecraft:custom_data":{EggArrow:1b}}}].components."minecraft:custom_data"
data modify block 1024 0 1024 Items[0].components."minecraft:custom_data".bowgunStorage set from block 1024 0 1024 Items[0].components."minecraft:charged_projectiles"[0]
data modify block 1024 0 1024 Items[0].components."minecraft:custom_data".bowgunStorage.count set from entity @s Inventory[{components:{"minecraft:custom_data":{EggArrow:1b}}}].count
data modify block 1024 0 1024 Items[0].components."minecraft:custom_data".bowgunStorage.maxCount set from entity @s Inventory[{components:{"minecraft:custom_data":{EggArrow:1b}}}].count
data remove block 1024 0 1024 Items[0].components."minecraft:unbreakable"
data modify block 1024 0 1024 Items[0].components."minecraft:damage" set value 1
data modify block 1024 0 1024 Items[0].components."minecraft:custom_data".bowgunCharged set value 1b
execute if data block 1024 0 1024 {Items:[{components:{"minecraft:custom_data":{bowgunStorage:{Count:1b}}}}]} run data modify block 1024 0 1024 Items[0].components."minecraft:custom_data".bowgunCharged set value 2b
data modify block 1024 0 1024 Items[0].components."minecraft:custom_data".Charged set value 1b

item replace entity @s weapon.mainhand from block 1024 0 1024 container.0
clear @s #minecraft:arrows[custom_data~{EggArrow:1b}]
scoreboard players reset @s crossbow_sneak
