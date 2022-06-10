execute unless data entity @s[gamemode=!spectator] {ActiveEffects:[{Id:27b}]} run tag @s add diet
execute if entity @s[tag=diet] run scoreboard players set #dummy HPheal 50
execute if entity @s[tag=diet] run scoreboard players operation #dummy HPheal *= @s healPower
execute if entity @s[tag=diet] run scoreboard players operation #dummy HPheal /= #100 counter
execute if entity @s[tag=diet] run scoreboard players operation @s HPheal += #dummy HPheal
execute if entity @s[tag=diet] run scoreboard players reset #dummy HPheal
execute if entity @s[tag=diet] run scoreboard players add @s Mana 5
execute if entity @s[tag=diet] run effect give @s minecraft:unluck 30 0
execute if entity @s[tag=diet] run tag @s add eat_golden_carrot
tag @s[tag=diet] remove diet

fill 0 0 0 0 0 0 minecraft:shulker_box{Lock:"wnkm"}
loot replace block 0 0 0 container.0 loot wancomatter:items/foods/golden_carrot
data modify block 0 0 0 Items[0].tag.Owner set from entity @s UUID
loot give @s mine 0 0 0 minecraft:air{inv_copy:1b}
clear @s minecraft:golden_carrot{Soulbound:1b} 0
setblock 0 0 0 minecraft:air
advancement revoke @s only wancomatter:foods/golden_carrot
