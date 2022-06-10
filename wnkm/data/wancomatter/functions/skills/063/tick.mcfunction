execute if block ~ ~ ~ #wancomatter:air run scoreboard players set @s counter 80
execute unless block ^ ^2 ^1.0 #wancomatter:air run scoreboard players set @s counter 80
execute if score @s counter matches 3.. run summon armor_stand ~ ~-2.55 ~ {Tags:["first","stone_pillar_dmg"],NoGravity:1b,Fire:32767s,Small:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{CustomModelData:63}}]}
scoreboard players operation @e[tag=first,limit=1,sort=nearest] playerNumber = @s playerNumber
scoreboard players operation @e[tag=first,limit=1,sort=nearest] teamNumber = @s teamNumber
tag @e[tag=first] remove first
tp @s ^ ^ ^1.0
execute positioned ^ ^ ^1.0 if block ~ ~ ~ #wancomatter:air unless block ~ ~-1 ~ #wancomatter:air run tp @s ~ ~-1 ~
execute positioned ^ ^1 ^1.0 unless block ~ ~ ~ #wancomatter:air run tp @s ~ ~ ~

scoreboard players add @s counter 1
execute if score @s counter matches 60.. run kill @s