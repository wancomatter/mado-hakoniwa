scoreboard players set #dummy CooldownX 100
scoreboard players set #dummy CooldownX_max 100
scoreboard players operation #dummy CooldownX_max *= #dummy counter
scoreboard players operation #dummy CooldownX += #dummy CooldownX_max
scoreboard players operation @s Mana -= #dummy Mana
scoreboard players operation @s CooldownX = #dummy CooldownX
scoreboard players operation @s CooldownX_max = #dummy CooldownX

playsound minecraft:block.portal.trigger master @a ~ ~ ~ 1 1.13
playsound minecraft:block.portal.trigger master @a ~ ~ ~ 1 1.30
playsound minecraft:block.portal.trigger master @a ~ ~ ~ 1 1.54

tp @s @s
summon minecraft:area_effect_cloud ~ ~ ~ {Age:4,Duration:5,Effects:[{Ambient:1b,Amplifier:0b,Duration:60,Id:24},{Ambient:1b,Amplifier:0b,Duration:60,Id:25},{Ambient:1b,Amplifier:11b,Duration:5,Id:25}],Particle:"dust 0 0 0 0",Radius:0.2f,WaitTime:1,custom_particle:{color:[0.0f,0.0f,0.0f],scale:0.0f,type:"minecraft:dust"},potion_contents:{custom_effects:[{ambient:1b,amplifier:0b,duration:60,id:"minecraft:glowing"},{ambient:1b,amplifier:0b,duration:60,id:"minecraft:levitation"},{ambient:1b,amplifier:11b,duration:5,id:"minecraft:levitation"}]},potion_duration_scale:0.25f,Tags:["wnkm.owned","wnkm.round"]}

summon marker ~ ~ ~ {Tags:["star_feather","first","wnkm.owned","wnkm.round"]}
execute if score #dummy counter matches 9 run scoreboard players set #dummy counter 10
scoreboard players operation @e[tag=first] Mana = #dummy counter
scoreboard players operation @e[tag=first] subcounter = #dummy counter
scoreboard players add @e[tag=first] subcounter 10
scoreboard players operation @e[tag=first] subcounter /= #2 counter
scoreboard players operation @e[tag=first] subcounter2 = #dummy counter
execute as @e[tag=first] if score @s subcounter2 matches 10 run scoreboard players add @s subcounter2 1
scoreboard players add @e[tag=first] subcounter2 49
scoreboard players operation @e[tag=first] playerNumber = @s playerNumber
scoreboard players operation @e[tag=first] teamNumber = @s teamNumber
tag @e[tag=first] remove first

tag @s add star_feather_p
scoreboard players reset #dummy
