summon area_effect_cloud ~ ~ ~ {Tags:["betelgeuse_AEC6"],Duration:61,Age:0,Radius:0f}
tp @s ~ ~ ~
execute rotated ~60 0 run summon area_effect_cloud ^ ^ ^13 {Tags:["first","betelgeuse_AEC5"],Duration:60,Age:0,Radius:0f}
execute rotated ~-60 0 run summon area_effect_cloud ^ ^ ^13 {Tags:["first","betelgeuse_AEC5"],Duration:60,Age:0,Radius:0f}
execute rotated ~180 0 run summon area_effect_cloud ^ ^ ^13 {Tags:["first","betelgeuse_AEC5"],Duration:60,Age:0,Radius:0f}
execute rotated ~120 0 run summon area_effect_cloud ^ ^ ^13 {Tags:["first","betelgeuse_AEC5"],Duration:60,Age:0,Radius:0f}
execute rotated ~-120 0 run summon area_effect_cloud ^ ^ ^13 {Tags:["first","betelgeuse_AEC5"],Duration:60,Age:0,Radius:0f}
execute rotated ~0 0 run summon area_effect_cloud ^ ^ ^13 {Tags:["first","betelgeuse_AEC5"],Duration:60,Age:0,Radius:0f}
scoreboard players set @e[tag=first] counter -30
execute rotated ~30 0 run summon area_effect_cloud ^ ^ ^0.1 {Tags:["first","betelgeuse_AEC5"],Duration:60,Age:0,Radius:0f}
execute rotated ~90 0 run summon area_effect_cloud ^ ^ ^0.1 {Tags:["first","betelgeuse_AEC5"],Duration:60,Age:0,Radius:0f}
execute rotated ~150 0 run summon area_effect_cloud ^ ^ ^0.1 {Tags:["first","betelgeuse_AEC5"],Duration:60,Age:0,Radius:0f}
execute rotated ~210 0 run summon area_effect_cloud ^ ^ ^0.1 {Tags:["first","betelgeuse_AEC5"],Duration:60,Age:0,Radius:0f}
execute rotated ~270 0 run summon area_effect_cloud ^ ^ ^0.1 {Tags:["first","betelgeuse_AEC5"],Duration:60,Age:0,Radius:0f}
execute rotated ~330 0 run summon area_effect_cloud ^ ^ ^0.1 {Tags:["first","betelgeuse_AEC5"],Duration:60,Age:0,Radius:0f}
scoreboard players add @e[tag=first] counter 60
scoreboard players set @e[tag=first] subcounter2 1
scoreboard players set @e[tag=first,scores={subcounter2=1},sort=random,limit=3] subcounter2 2
scoreboard players set @e[tag=first,scores={subcounter2=1},sort=random,limit=3] subcounter2 3
scoreboard players set @e[tag=first,scores={subcounter2=1},sort=random,limit=3] subcounter2 4
execute as @e[tag=first] at @s facing entity @e[tag=this,limit=1] feet run tp @s ~ ~ ~ ~-90 20
execute as @e[tag=first] store result score @s subcounter run data get entity @s Rotation[0] 12.5
tag @e[tag=first] remove first
