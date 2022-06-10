execute unless data entity @s[gamemode=!spectator] {ActiveEffects:[{Id:27b}]} run tag @s add diet
execute if entity @s[tag=diet] run effect give @s minecraft:unluck 15 0
execute if entity @s[tag=diet] as @e[tag=bread_AEC] if score @s playerNumber = @a[tag=diet,limit=1,sort=nearest] playerNumber run kill @s
execute if entity @s[tag=diet] run summon area_effect_cloud ~ ~ ~ {Tags:["ini","stable","bread_AEC"],Duration:305}
execute if entity @s[tag=diet] run scoreboard players operation @e[tag=ini,limit=1,sort=nearest] playerNumber = @s playerNumber
execute if entity @s[tag=diet] run tag @e[tag=ini] remove ini
execute if entity @s[tag=diet] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 2
execute if entity @s[tag=diet] run particle minecraft:composter ~ ~1 ~ 1 1 1 1 80 normal @a
execute if entity @s[tag=diet] run particle minecraft:composter ~ ~1 ~ 1 1 1 1 20 force @a
execute if entity @s[tag=diet] run tag @s add eat_bread
tag @s[tag=diet] remove diet

fill 0 0 0 0 0 0 minecraft:shulker_box{Lock:"wnkm"}
loot replace block 0 0 0 container.0 loot wancomatter:items/foods/bread
data modify block 0 0 0 Items[0].tag.Owner set from entity @s UUID
loot give @s mine 0 0 0 minecraft:air{inv_copy:1b}
clear @s minecraft:bread{Soulbound:1b} 0
setblock 0 0 0 minecraft:air
advancement revoke @s only wancomatter:foods/bread
