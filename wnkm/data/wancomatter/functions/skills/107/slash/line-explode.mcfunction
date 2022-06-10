particle flash ^ ^ ^0.2 2 2 2 0 1 normal @a
particle flash ^ ^ ^0.4 2 2 2 0 1 normal @a
particle flash ^ ^ ^0.6 2 2 2 0 1 normal @a
particle flash ^ ^ ^0.8 2 2 2 0 1 normal @a
particle flash ^ ^ ^1.0 2 2 2 0 1 force @a
particle explosion ^ ^ ^0.2 0.5 0.5 0.5 0 1 normal @a
particle explosion ^ ^ ^0.4 0.5 0.5 0.5 0 1 normal @a
particle explosion ^ ^ ^0.6 0.5 0.5 0.5 0 1 normal @a
particle explosion ^ ^ ^0.8 0.5 0.5 0.5 0 1 normal @a
particle explosion ^ ^ ^1.0 0.5 0.5 0.5 0 1 force @a

execute as @e[distance=..3.3,tag=largeEntity,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add kusaSlash-hit
execute as @e[distance=..2.3,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add kusaSlash-hit
execute unless block ^ ^ ^1 #wancomatter:air run scoreboard players set #dummy counter 0
execute if block ^ ^ ^1 #wancomatter:air run tp @s ^ ^ ^1

scoreboard players add #dummy subcounter 1
execute if score #dummy subcounter matches 7.. run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.6 0.5
execute if score #dummy subcounter matches 7.. run scoreboard players set #dummy subcounter 0
scoreboard players remove #dummy counter 1
execute if score #dummy counter matches 1.. at @s run function wancomatter:skills/107/slash/line-explode