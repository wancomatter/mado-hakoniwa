execute unless data entity @s[gamemode=!spectator] {active_effects:[{id:"minecraft:unluck"}]} run tag @s add diet
execute if entity @s[tag=diet] run scoreboard players set #dummy HPheal 20
execute if entity @s[tag=diet] run scoreboard players operation #dummy HPheal *= @s healPower
execute if entity @s[tag=diet] run scoreboard players operation #dummy HPheal /= #100 counter
execute if entity @s[tag=diet] run scoreboard players operation @s HPheal += #dummy HPheal
execute if entity @s[tag=diet] run scoreboard players reset #dummy HPheal
execute if entity @s[tag=diet] run scoreboard players add @s Mana 3
execute if entity @s[tag=diet] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:4,Duration:5,Effects:[{Amplifier:0b,Duration:34,Id:27}],Particle:"dust 0 0 0 0",Radius:0.2f,WaitTime:1,custom_particle:{color:[0.0f,0.0f,0.0f],scale:0.0f,type:"minecraft:dust"},potion_contents:{custom_effects:[{amplifier:0b,duration:34,id:"minecraft:unluck"}]},potion_duration_scale:0.25f,Tags:["wnkm.owned"]}
tag @s[tag=diet] remove diet

fill 1024 0 1024 1024 0 1024 minecraft:shulker_box{lock:{components:{"minecraft:custom_name":"wnkm"}}}
loot replace block 1024 0 1024 container.0 loot wancomatter:items/foods/dried_kelp
data modify block 1024 0 1024 Items[0].components."minecraft:custom_data".Owner set from entity @s UUID
loot give @s mine 1024 0 1024 stick[custom_data={inv_copy:1b}]
clear @s minecraft:dried_kelp[custom_data~{Soulbound:1b}] 0
setblock 1024 0 1024 minecraft:air
advancement revoke @s only wancomatter:foods/dried_kelp
