particle minecraft:dust 0.2 1 1 1.5 ~ ~ ~ 0.1 0.1 0.1 1 2 normal @a
particle minecraft:end_rod ~ ~ ~ 0.25 0.25 0.25 0.01 4 normal @a
particle minecraft:end_rod ~ ~ ~ 0 0 0 0.01 1 force @a

tag @s add now
execute unless score @s counter matches 80.. as @e[distance=..3.3,scores={maxHP=1..}] unless score @s teamNumber = @e[tag=now,limit=1,sort=nearest] teamNumber at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=now,distance=..1.5] run tag @s add hit
execute unless score @s counter matches 80.. as @e[distance=..3.3,scores={maxHP=1..}] unless score @s teamNumber = @e[tag=now,limit=1,sort=nearest] teamNumber at @s anchored feet positioned ^ ^ ^ if entity @e[tag=now,distance=..1.5] run tag @s add hit
execute unless score @s counter matches 80.. unless block ~ ~ ~ #wancomatter:air run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function wancomatter:skills/071/hit
tag @s remove now

scoreboard players add @s counter 1
tp @s ^ ^ ^1.5 ~ ~1.1
execute if score @s counter matches 80.. run kill @s