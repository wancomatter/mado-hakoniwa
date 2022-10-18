summon armor_stand ~ ~ ~ {Tags:["080darkattack","first"],Invisible:1b,Marker:1b,NoGravity:1b}
scoreboard players operation @e[tag=first] playerNumber = @s playerNumber
scoreboard players operation @e[tag=first] teamNumber = @s teamNumber
tag @e[tag=first] remove first
particle minecraft:dragon_breath ~ ~1 ~ 0.2 0.4 0.2 0.1 240 normal @a
particle minecraft:dragon_breath ~ ~1 ~ 0.2 0.4 0.2 0.1 60 force @a
particle minecraft:end_rod ~ ~1 ~ 0.2 0.2 0.2 0.5 180 normal @a
particle minecraft:end_rod ~ ~1 ~ 0.2 0.2 0.2 0.5 45 force @a
playsound minecraft:entity.skeleton_horse.death master @a ~ ~ ~ 2 0.95
playsound minecraft:item.totem.use master @a ~ ~ ~ 2 1.7