execute unless data entity @s[gamemode=!spectator] {ActiveEffects:[{Id:27b}]} run tag @s add diet
execute if entity @s[tag=diet] run scoreboard players add @s Mana 10
execute if entity @s[tag=diet] run effect give @s minecraft:unluck 30 0
execute if entity @s[tag=diet] run summon area_effect_cloud ~ ~ ~ {Tags:["ini","stable","pumpkin_pie_AEC"],Duration:400}
execute if entity @s[tag=diet] run scoreboard players operation @e[tag=ini,limit=1,sort=nearest] playerNumber = @s playerNumber
execute if entity @s[tag=diet] run tag @e[tag=ini] remove ini
execute if entity @s[tag=diet] run playsound minecraft:entity.illusioner.prepare_blindness master @a ~ ~ ~ 1 0.5
execute if entity @s[tag=diet] run playsound minecraft:entity.illusioner.prepare_blindness master @a ~ ~ ~ 1 0.5
execute if entity @s[tag=diet] run particle minecraft:portal ~ ~1 ~ 1.2 1.2 1.2 0.02 500 normal @a
execute if entity @s[tag=diet] run particle minecraft:portal ~ ~1 ~ 1.2 1.2 1.2 0.02 125 force @a
execute if entity @s[tag=diet] run tag @s add eat_pumpkin_pie
tag @s[tag=diet] remove diet

fill 0 0 0 0 0 0 minecraft:shulker_box{Lock:"wnkm"}
loot replace block 0 0 0 container.0 loot wancomatter:items/foods/pumpkin_pie
data modify block 0 0 0 Items[0].tag.Owner set from entity @s UUID
loot give @s mine 0 0 0 minecraft:air{inv_copy:1b}
clear @s minecraft:pumpkin_pie{Soulbound:1b} 0
setblock 0 0 0 minecraft:air
advancement revoke @s only wancomatter:foods/pumpkin_pie
