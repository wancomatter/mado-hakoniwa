scoreboard players remove @s Mana 7
scoreboard players set @s CooldownX 240
scoreboard players set @s CooldownX_max 240
summon minecraft:area_effect_cloud ~ ~0.2 ~ {Tags:["first","shadow"],Duration:1000}

execute positioned ~ ~0.2 ~ run tp @e[tag=first,limit=1] ~ ~ ~ ~ 0
execute as @e[tag=first] at @s run function wancomatter:skills/037/check
execute at @e[tag=first] run particle minecraft:explosion ^ ^1 ^2 0.2 0 0.2 1 4 normal @a
execute at @e[tag=first] run particle minecraft:explosion ^ ^1 ^2 0.2 0 0.2 1 1 force @a
execute at @e[tag=first] run particle minecraft:explosion ^ ^1 ^3.5 0.2 0 0.2 1 4 normal @a
execute at @e[tag=first] run particle minecraft:explosion ^ ^1 ^3.5 0.2 0 0.2 1 1 force @a
execute at @e[tag=first] run playsound minecraft:entity.zombie.ambient master @a ^ ^ ^2 1.5 0.5
gamemode spectator @s
execute at @e[tag=first] run tp @s ~ ~ ~
tp @s @s
execute store result score @e[tag=first,limit=1] subcounter2 run data get entity @s Pos[1] 10
scoreboard players operation @e[tag=first,limit=1] teamNumber = @s teamNumber
scoreboard players operation @e[tag=first,limit=1] playerNumber = @s playerNumber
tag @e[tag=first] remove first
