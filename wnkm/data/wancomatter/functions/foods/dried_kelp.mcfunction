execute unless data entity @s[gamemode=!spectator] {ActiveEffects:[{Id:27}]} run tag @s add diet
execute if entity @s[tag=diet] run scoreboard players set #dummy HPheal 20
execute if entity @s[tag=diet] run scoreboard players operation #dummy HPheal *= @s healPower
execute if entity @s[tag=diet] run scoreboard players operation #dummy HPheal /= #100 counter
execute if entity @s[tag=diet] run scoreboard players operation @s HPheal += #dummy HPheal
execute if entity @s[tag=diet] run scoreboard players reset #dummy HPheal
execute if entity @s[tag=diet] run scoreboard players add @s Mana 3
execute if entity @s[tag=diet] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.2f,Duration:5,Age:4,WaitTime:1,Particle:"dust 0 0 0 0",Effects:[{Id:27,Amplifier:0b,Duration:34}]}
tag @s[tag=diet] remove diet

fill 0 0 0 0 0 0 minecraft:shulker_box{Lock:"wnkm"}
loot replace block 0 0 0 container.0 loot wancomatter:items/foods/dried_kelp
data modify block 0 0 0 Items[0].tag.Owner set from entity @s UUID
loot give @s mine 0 0 0 minecraft:air{inv_copy:1b}
clear @s minecraft:dried_kelp{Soulbound:1b} 0
setblock 0 0 0 minecraft:air
advancement revoke @s only wancomatter:foods/dried_kelp
