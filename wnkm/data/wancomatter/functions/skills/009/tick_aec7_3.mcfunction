playsound minecraft:entity.generic.explode master @a ~ ~-20 ~ 10 0.5
playsound minecraft:entity.wither.death master @a ~ ~-20 ~ 10 0.5
playsound minecraft:entity.generic.explode master @a ~ ~-20 ~ 5 0.5
playsound minecraft:entity.wither.death master @a ~ ~-20 ~ 5 0.5
#particle minecraft:explosion_emitter ~ ~ ~ 5 5 5 1 30

summon area_effect_cloud ~ ~ ~ {Tags:["first","betelgeuse_AEC8"],Radius:0f,Duration:4,Age:0}
summon area_effect_cloud ~ ~ ~ {Tags:["first","betelgeuse_AEC8"],Radius:0f,Duration:4,Age:0}
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
