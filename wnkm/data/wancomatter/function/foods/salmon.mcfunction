execute unless data entity @s[gamemode=!spectator] {active_effects:[{id:"minecraft:unluck"}]} run tag @s add diet
execute if entity @s[tag=diet] run scoreboard players add @s Mana 10
execute if entity @s[tag=diet] run effect give @s minecraft:unluck 30 0
execute if entity @s[tag=diet] run summon area_effect_cloud ~ ~ ~ {Duration:400,Tags:["ini","stable","salmon_AEC","wnkm.owned"],potion_duration_scale:0.25f}
execute if entity @s[tag=diet] run scoreboard players operation @e[tag=ini,limit=1,sort=nearest] playerNumber = @s playerNumber
execute if entity @s[tag=diet] run tag @e[tag=ini] remove ini
execute if entity @s[tag=diet] run playsound minecraft:entity.elder_guardian.ambient master @a ~ ~ ~ 1 2
execute if entity @s[tag=diet] run particle minecraft:splash ~ ~1 ~ 1 1 1 1 300 normal @a
execute if entity @s[tag=diet] run particle minecraft:splash ~ ~1 ~ 1 1 1 1 75 force @a
execute if entity @s[tag=diet] run tag @s add eat_salmon
tag @s[tag=diet] remove diet

fill 1024 0 1024 1024 0 1024 minecraft:shulker_box{lock:{components:{"minecraft:custom_name":"wnkm"}}}
loot replace block 1024 0 1024 container.0 loot wancomatter:items/foods/salmon
data modify block 1024 0 1024 Items[0].components."minecraft:custom_data".Owner set from entity @s UUID
loot give @s mine 1024 0 1024 stick[custom_data={inv_copy:1b}]
clear @s minecraft:salmon[custom_data~{Soulbound:1b}] 0
setblock 1024 0 1024 minecraft:air
advancement revoke @s only wancomatter:foods/salmon
