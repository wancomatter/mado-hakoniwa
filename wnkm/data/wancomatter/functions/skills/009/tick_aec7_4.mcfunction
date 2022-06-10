playsound minecraft:entity.generic.explode master @a ~ ~-20 ~ 8 0.5
playsound minecraft:entity.wither.death master @a ~ ~-20 ~ 8 0.5

summon area_effect_cloud ~ ~ ~ {Tags:["first","betelgeuse_AEC8"],Radius:0f,Duration:4,Age:0}
summon area_effect_cloud ~ ~ ~ {Tags:["first","betelgeuse_AEC8"],Radius:0f,Duration:4,Age:0}
summon area_effect_cloud ~ ~ ~ {Tags:["first","betelgeuse_AEC8"],Radius:0f,Duration:4,Age:0}
summon area_effect_cloud ~ ~ ~ {Tags:["first","betelgeuse_AEC8"],Radius:0f,Duration:4,Age:0}
summon area_effect_cloud ~ ~ ~ {Tags:["first","betelgeuse_AEC8"],Radius:0f,Duration:4,Age:0}
summon area_effect_cloud ~ ~ ~ {Tags:["first","betelgeuse_AEC8"],Radius:0f,Duration:4,Age:0}

execute as @e[tag=first] run function wancomatter:skills/009/aec8
scoreboard players operation @e[tag=first] playerNumber = @s playerNumber
scoreboard players operation @e[tag=first] teamNumber = @s teamNumber
tag @e[tag=first] remove first
