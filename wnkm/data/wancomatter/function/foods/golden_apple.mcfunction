execute unless data entity @s[gamemode=!spectator] {active_effects:[{id:"minecraft:unluck"}]} run tag @s add diet
execute if entity @s[tag=diet] run scoreboard players set #dummy HPheal 200
execute if entity @s[tag=diet] run scoreboard players operation #dummy HPheal *= @s healPower
execute if entity @s[tag=diet] run scoreboard players operation #dummy HPheal /= #100 counter
execute if entity @s[tag=diet] run scoreboard players operation @s HPheal += #dummy HPheal
execute if entity @s[tag=diet] run scoreboard players reset #dummy HPheal
execute if entity @s[tag=diet] run scoreboard players add @s Mana 30
execute if entity @s[tag=diet] run effect give @s minecraft:unluck 120 0
execute if entity @s[tag=diet] run effect give @s minecraft:luck 60 1
tag @s[tag=diet] remove diet
tag @s add eat_golden_apple

fill 1024 0 1024 1024 0 1024 minecraft:shulker_box{lock:{components:{"minecraft:custom_name":"wnkm"}}}
loot replace block 1024 0 1024 container.0 loot wancomatter:items/foods/golden_apple
data modify block 1024 0 1024 Items[0].components."minecraft:custom_data".Owner set from entity @s UUID
loot give @s mine 1024 0 1024 stick[custom_data={inv_copy:1b}]
clear @s minecraft:golden_apple[custom_data~{Soulbound:1b}] 0
setblock 1024 0 1024 minecraft:air
advancement revoke @s only wancomatter:foods/golden_apple
