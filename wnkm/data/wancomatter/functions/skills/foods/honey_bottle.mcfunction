clear @s minecraft:honey_bottle{Soulbound:1b} 1
tag @s remove eat_honey_bottle
tag @s add clear_bottle

execute unless data entity @s Inventory[{id:"minecraft:honey_bottle"}] run tag @s add flag
execute if entity @s[tag=flag] run fill 0 0 0 0 0 0 minecraft:shulker_box{Lock:"wnkm"}
execute if entity @s[tag=flag] run loot replace block 0 0 0 container.0 loot wancomatter:items/foods/honey_bottle
execute if entity @s[tag=flag] run data modify block 0 0 0 Items[0].tag.Owner set from entity @s UUID
execute if entity @s[tag=flag] run loot give @s mine 0 0 0 minecraft:air{inv_copy:1b}
execute if entity @s[tag=flag] run setblock 0 0 0 minecraft:air
execute if entity @s[tag=flag] run tag @s remove flag
