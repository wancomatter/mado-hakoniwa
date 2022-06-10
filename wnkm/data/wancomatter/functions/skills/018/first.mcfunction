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
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:5,Age:4,WaitTime:1,Radius:0.2f,Particle:"dust 0 0 0 0",Effects:[{Id:24,Amplifier:0b,Duration:60,Ambient:1b},{Id:25,Amplifier:0b,Duration:60,Ambient:1b},{Id:25,Amplifier:11b,Duration:5,Ambient:1b}]}

summon marker ~ ~ ~ {Tags:["star_feather","first"]}
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
