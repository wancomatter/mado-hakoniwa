clear @s minecraft:honey_bottle[custom_data~{Soulbound:1b}] 1
tag @s remove eat_honey_bottle
tag @s add clear_bottle

execute unless data entity @s Inventory[{id:"minecraft:honey_bottle"}] run tag @s add flag
execute if entity @s[tag=flag] run fill 1024 0 1024 1024 0 1024 minecraft:shulker_box{lock:{components:{"minecraft:custom_name":"wnkm"}}}
execute if entity @s[tag=flag] run loot replace block 1024 0 1024 container.0 loot wancomatter:items/foods/honey_bottle
execute if entity @s[tag=flag] run data modify block 1024 0 1024 Items[0].components."minecraft:custom_data".Owner set from entity @s UUID
execute if entity @s[tag=flag] run loot give @s mine 1024 0 1024 stick[custom_data={inv_copy:1b}]
execute if entity @s[tag=flag] run setblock 1024 0 1024 minecraft:air
execute if entity @s[tag=flag] run tag @s remove flag
