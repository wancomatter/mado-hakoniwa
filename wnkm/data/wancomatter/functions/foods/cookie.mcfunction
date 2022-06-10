execute unless data entity @s[gamemode=!spectator] {ActiveEffects:[{Id:27b}]} run tag @s add diet
execute if entity @s[tag=diet] run scoreboard players add @s Mana 4
tag @s[tag=diet] remove diet

fill 0 0 0 0 0 0 minecraft:shulker_box{Lock:"wnkm"}
loot replace block 0 0 0 container.0 loot wancomatter:items/foods/cookie
data modify block 0 0 0 Items[0].tag.Owner set from entity @s UUID
loot give @s mine 0 0 0 minecraft:air{inv_copy:1b}
clear @s minecraft:cookie{Soulbound:1b} 0
setblock 0 0 0 minecraft:air
advancement revoke @s only wancomatter:foods/cookie
