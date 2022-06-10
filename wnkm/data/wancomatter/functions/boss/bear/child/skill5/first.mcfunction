scoreboard players set @s Cooldown5 600
tag @s add usedskill

particle minecraft:end_rod 0.5 7.0 0.5 17 0 17 0.05 450 force @a
particle minecraft:end_rod 0.5 7.0 0.5 17 0 17 0.05 1800 normal @a
playsound minecraft:entity.wither.ambient master @a 0.5 7.0 0.5 3 0.5
execute unless score #difficult counter matches 2..4 run summon area_effect_cloud 0.5 7.0 0.5 {Tags:["bear_s5AEC"],Duration:170,Rotation:[0f,0f]}
execute if score #difficult counter matches 2 run summon area_effect_cloud 0.5 7.0 0.5 {Tags:["bear_s5AEC"],Duration:250,Rotation:[75f,0f]}
execute if score #difficult counter matches 3 run summon area_effect_cloud 0.5 7.0 0.5 {Tags:["bear_s5AEC"],Duration:335,Rotation:[45f,0f]}
execute if score #difficult counter matches 4 run summon area_effect_cloud 0.5 7.0 0.5 {Tags:["bear_s5AEC"],Duration:500,Rotation:[0f,0f]}

