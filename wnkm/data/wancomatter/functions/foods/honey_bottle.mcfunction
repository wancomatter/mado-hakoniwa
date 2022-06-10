execute unless data entity @s[gamemode=!spectator] {ActiveEffects:[{Id:27b}]} run tag @s add diet
execute if entity @s[tag=diet] run scoreboard players add @s Mana 15
execute if entity @s[tag=diet] run effect give @s minecraft:unluck 40 0
execute if entity @s[tag=diet] run effect give @s minecraft:strength 25 1
tag @s[tag=diet] remove diet

fill 0 0 0 0 0 0 minecraft:shulker_box{Lock:"wnkm"}
loot replace block 0 0 0 container.0 loot wancomatter:items/foods/honey_bottle
data modify block 0 0 0 Items[0].tag.Owner set from entity @s UUID
loot give @s mine 0 0 0 minecraft:air{inv_copy:1b}
clear @s minecraft:honey_bottle{Soulbound:1b} 0
setblock 0 0 0 minecraft:air
advancement revoke @s only wancomatter:foods/honey_bottle
tag @s add eat_honey_bottle
