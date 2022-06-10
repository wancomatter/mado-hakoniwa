execute as @e[distance=..8.5,scores={maxHP=1..},tag=!user] if score @s teamNumber = @a[tag=user,limit=1] teamNumber run tag @s add hit
execute if entity @e[tag=hit,limit=1] as @e[tag=hit] at @s run function wancomatter:skills/092/buff

playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 2 2
summon area_effect_cloud ~ ~0.4 ~ {Duration:1,Age:0,Radius:0f,Tags:["this"],Rotation:[10f,0f]}
summon area_effect_cloud ~ ~1.2 ~ {Duration:1,Age:0,Radius:0f,Tags:["this"],Rotation:[10f,0f]}
summon area_effect_cloud ~ ~2.0 ~ {Duration:1,Age:0,Radius:0f,Tags:["this"],Rotation:[10f,0f]}
summon area_effect_cloud ~ ~2.8 ~ {Duration:1,Age:0,Radius:0f,Tags:["this"],Rotation:[10f,0f]}
summon area_effect_cloud ~ ~3.6 ~ {Duration:1,Age:0,Radius:0f,Tags:["this"],Rotation:[10f,0f]}
summon area_effect_cloud ~ ~4.4 ~ {Duration:1,Age:0,Radius:0f,Tags:["this"],Rotation:[10f,0f]}
execute as @e[tag=this] store result score @s counter run data get entity @s UUID[1] 0.00002
execute as @e[tag=this] store result score @s subcounter run data get entity @s UUID[2] 0.00002
execute as @e[tag=this] run scoreboard players operation @s counter *= @s subcounter
execute as @e[tag=this] store result entity @s Rotation[0] float 1 run scoreboard players operation @s counter %= #360 counter
execute at @e[tag=this] run function wancomatter:skills/092/end_particle
kill @e[tag=this]

particle end_rod ~ ~ ~ 0 0 0 0.5 100 normal @a
particle minecraft:dust 0 0.871 0.969 1 ~ ~ ~ 4.41 4.41 4.41 0 150 force @a
particle minecraft:dust 0 0.871 0.969 1 ~ ~ ~ 4.41 4.41 4.41 0 600 normal @a

tag @a[tag=user] remove vega_user
tag @a[tag=user] remove user


kill @s