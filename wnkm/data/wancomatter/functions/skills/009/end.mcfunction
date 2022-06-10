summon area_effect_cloud ~ ~ ~ {Tags:["first","betelgeuse_AEC7"],Duration:30,Age:0,Radius:0f}
scoreboard players operation @e[tag=first] playerNumber = @s playerNumber
scoreboard players operation @e[tag=first] teamNumber = @s teamNumber
tag @e[tag=first] remove first

execute as @e[distance=..13.1,scores={maxHP=1..},tag=!user] if score @s teamNumber = @a[tag=user,limit=1] teamNumber run tag @s add hit
execute if entity @e[tag=hit,limit=1] as @e[tag=hit] at @s run function wancomatter:skills/009/buff

playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 10 0.5
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 5 0.5
summon area_effect_cloud ~ ~0.4 ~ {Duration:1,Age:0,Radius:0f,Tags:["this"],Rotation:[10f,0f]}
summon area_effect_cloud ~ ~1.2 ~ {Duration:1,Age:0,Radius:0f,Tags:["this"],Rotation:[10f,0f]}
summon area_effect_cloud ~ ~2.0 ~ {Duration:1,Age:0,Radius:0f,Tags:["this"],Rotation:[10f,0f]}
summon area_effect_cloud ~ ~2.8 ~ {Duration:1,Age:0,Radius:0f,Tags:["this"],Rotation:[10f,0f]}
summon area_effect_cloud ~ ~3.6 ~ {Duration:1,Age:0,Radius:0f,Tags:["this"],Rotation:[10f,0f]}
summon area_effect_cloud ~ ~4.4 ~ {Duration:1,Age:0,Radius:0f,Tags:["this"],Rotation:[10f,0f]}
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
execute at @e[tag=this] run function wancomatter:skills/009/end_particle
kill @e[tag=this]

tag @a[tag=user] remove betelgeuse_user
tag @a[tag=user] remove user

kill @s

particle end_rod ~ ~ ~ 0 0 0 0.5 100 normal @a
particle minecraft:dust 1 0.576 0.208 1 ~ ~ ~ 4.41 4.41 4.41 0 150 force @a
particle minecraft:dust 1 0.576 0.208 1 ~ ~ ~ 4.41 4.41 4.41 0 600 normal @a