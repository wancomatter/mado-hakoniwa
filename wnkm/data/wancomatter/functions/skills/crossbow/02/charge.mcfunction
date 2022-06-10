scoreboard players remove @s Mana 10

playsound minecraft:item.crossbow.loading_end master @a ~ ~ ~ 1.2 0.8
playsound minecraft:item.crossbow.loading_end master @a ~ ~ ~ 1.2 0.8
playsound minecraft:item.crossbow.loading_end master @a ~ ~ ~ 1.2 0.8
title @s times 0 15 10
title @s subtitle {"text":"reload completed","color":"blue","underlined":true}
title @s title ""

fill 0 0 0 0 0 0 shulker_box{Lock:"wnkm"}
loot replace block 0 0 0 container.0 loot wancomatter:inv_copy_stone_1
data modify block 0 0 0 Items[{Slot:0b}].tag.Item set from entity @s SelectedItem
data modify block 0 0 0 Items[{Slot:0b}].tag.Item.Slot set value 0b
data modify block 0 0 0 Items[{Slot:0b}] set from block 0 0 0 Items[{Slot:0b}].tag.Item
data modify block 0 0 0 Items[0].id set value spyglass
data modify block 0 0 0 Items[0].tag.ChargedProjectiles[{Count:1b}].id set from entity @s Inventory[{tag:{EggArrow:1b}}].id
data modify block 0 0 0 Items[0].tag.ChargedProjectiles[0].tag set from entity @s Inventory[{tag:{EggArrow:1b}}].tag
data modify block 0 0 0 Items[0].tag.Charged set value 1b

loot replace entity @s weapon.mainhand 1 mine 0 0 0 minecraft:air{inv_copy:1b}
clear @s #minecraft:arrows{EggArrow:1b} 2
scoreboard players reset @s crossbow_sneak
tag @s add has_charged_ballista
tag @s add complete_charge_ballista
summon minecraft:area_effect_cloud ~ ~ ~ {Age:0,Duration:5,Tags:["complete_charge_ballista_AEC"]}
advancement grant @s only wancomatter:using_item/ballista_scope
