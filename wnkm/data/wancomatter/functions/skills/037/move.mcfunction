particle minecraft:block oak_log ~ ~0.6 ~ 0.4 0 0.4 1 4 normal @a
particle minecraft:happy_villager ~ ~0.6 ~ 0 0 0 0 1 force @a

execute as @e[distance=..1.5,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add drainplant-hit
execute if entity @e[tag=drainplant-hit,limit=1] at @e[tag=drainplant-hit,limit=1,sort=nearest] run function wancomatter:skills/037/hit-entity

execute if block ~ ~ ~ #wancomatter:air run scoreboard players set @s counter 100
execute unless block ^ ^2 ^0.6 #wancomatter:air run scoreboard players set @s counter 100
tp @s ^ ^ ^0.6
execute positioned ^ ^ ^0.6 if block ~ ~ ~ #wancomatter:air unless block ~ ~-1 ~ #wancomatter:air run tp @s ~ ~-1 ~
execute positioned ^ ^1 ^0.6 unless block ~ ~ ~ #wancomatter:air run tp @s ~ ~ ~


