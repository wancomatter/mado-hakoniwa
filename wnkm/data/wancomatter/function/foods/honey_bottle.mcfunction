execute unless data entity @s[gamemode=!spectator] {active_effects:[{id:"minecraft:unluck"}]} run tag @s add diet
execute if entity @s[tag=diet] run scoreboard players add @s Mana 15
execute if entity @s[tag=diet] run effect give @s minecraft:unluck 40 0
execute if entity @s[tag=diet] run effect give @s minecraft:strength 25 1
tag @s[tag=diet] remove diet

fill 1024 0 1024 1024 0 1024 minecraft:shulker_box{lock:{components:{"minecraft:custom_name":"wnkm"}}}
loot replace block 1024 0 1024 container.0 loot wancomatter:items/foods/honey_bottle
data modify block 1024 0 1024 Items[0].components."minecraft:custom_data".Owner set from entity @s UUID
loot give @s mine 1024 0 1024 stick[custom_data={inv_copy:1b}]
clear @s minecraft:honey_bottle[custom_data~{Soulbound:1b}] 0
setblock 1024 0 1024 minecraft:air
advancement revoke @s only wancomatter:foods/honey_bottle
tag @s add eat_honey_bottle
