scoreboard players remove @s Mana 2
scoreboard players operation #dummy playerNumber = @s playerNumber
particle minecraft:block stone ~ ~ ~ 0.8 0.8 0.8 1 40 normal @a
particle minecraft:block stone ~ ~ ~ 0.8 0.8 0.8 1 10 force @a
playsound minecraft:block.stone.place master @a ~ ~ ~ 1 2

#シュルカー上限超えの場合の処理
execute as @e[tag=set_stone] if score @s ownerNumber = #dummy playerNumber run scoreboard players add #dummy subcounter 1
execute if score #dummy subcounter matches 10.. as @e[tag=set_stone,limit=9,sort=nearest] if score @s ownerNumber = #dummy playerNumber run tag @s add saved_set_stone
execute if score #dummy subcounter matches 10.. as @e[tag=set_stone,tag=!saved_set_stone] if score @s ownerNumber = #dummy playerNumber run kill @s
tag @e[tag=saved_set_stone] remove saved_set_stone

summon minecraft:shulker ~ ~ ~ {Color:0b,Silent:1b,NoAI:1b,Tags:["111Init","set_stone","wall_entity","mob","mobInit"],Health:1000f,Attributes:[{Name:"generic.max_health",Base:1000d},{Name:"generic.armor",Base:20}],ActiveEffects:[{Id:13,Amplifier:0b,Duration:2147483647,ShowParticles:0b}],AbsorptionAmount:80}
scoreboard players operation @e[tag=111Init,limit=1] ownerNumber = #dummy playerNumber
scoreboard players operation @e[tag=111Init,limit=1] teamNumber = @s teamNumber

execute if score @s teamNumber matches 1 run team join Red @e[tag=111Init]
execute if score @s teamNumber matches 2 run team join Aqua @e[tag=111Init]
execute if score @s teamNumber matches 3 run team join Yellow @e[tag=111Init]
execute if score @s teamNumber matches 4 run team join Green @e[tag=111Init]
execute if score @s teamNumber matches 5 run team join Purple @e[tag=111Init]
execute if score @s teamNumber matches 6 run team join White @e[tag=111Init]
execute if score @s teamNumber matches 7 run team join Black @e[tag=111Init]
execute if score @s teamNumber matches 8 run team join Blue @e[tag=111Init]
execute if score @s teamNumber matches 9 run team join Pink @e[tag=111Init]
execute if score @s teamNumber matches 10 run team join Gold @e[tag=111Init]
execute if score @s teamNumber matches 11 run team join Gray @e[tag=111Init]
execute if score @s teamNumber matches 12 run team join DarkRed @e[tag=111Init]
execute if score @s teamNumber matches 13 run team join DarkAqua @e[tag=111Init]
execute if score @s teamNumber matches 14 run team join DarkGreen @e[tag=111Init]
execute if score @s teamNumber matches 15 run team join DarkBlue @e[tag=111Init]
execute if score @s teamNumber matches 16 run team join DarkGray @e[tag=111Init]
execute if score @s teamNumber matches 17 run team join noPush @e[tag=111Init]
execute if score @s teamNumber matches 1 as @e[tag=111Init] run data merge entity @s {Color:14b}
execute if score @s teamNumber matches 2 as @e[tag=111Init] run data merge entity @s {Color:3b}
execute if score @s teamNumber matches 3 as @e[tag=111Init] run data merge entity @s {Color:4b}
execute if score @s teamNumber matches 4 as @e[tag=111Init] run data merge entity @s {Color:5b}
execute if score @s teamNumber matches 5 as @e[tag=111Init] run data merge entity @s {Color:10b}
execute if score @s teamNumber matches 6 as @e[tag=111Init] run data merge entity @s {Color:0b}
execute if score @s teamNumber matches 7 as @e[tag=111Init] run data merge entity @s {Color:15b}
execute if score @s teamNumber matches 8 as @e[tag=111Init] run data merge entity @s {Color:11b}
execute if score @s teamNumber matches 9 as @e[tag=111Init] run data merge entity @s {Color:6b}
execute if score @s teamNumber matches 10 as @e[tag=111Init] run data merge entity @s {Color:1b}
execute if score @s teamNumber matches 11 as @e[tag=111Init] run data merge entity @s {Color:8b}
execute if score @s teamNumber matches 12 as @e[tag=111Init] run data merge entity @s {Color:2b}
execute if score @s teamNumber matches 13 as @e[tag=111Init] run data merge entity @s {Color:9b}
execute if score @s teamNumber matches 14 as @e[tag=111Init] run data merge entity @s {Color:13b}
execute if score @s teamNumber matches 15 as @e[tag=111Init] run data merge entity @s {Color:11b}
execute if score @s teamNumber matches 16 as @e[tag=111Init] run data merge entity @s {Color:7b}

tag @e[tag=111Init] remove 111Init
scoreboard players reset #dummy