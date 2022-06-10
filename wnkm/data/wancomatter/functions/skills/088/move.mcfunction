particle minecraft:dust 1 0.2 1 1.5 ~ ~ ~ 0.1 0.1 0.1 1 4 normal @a
particle minecraft:dust 1 1 0.2 1.5 ~ ~ ~ 0 0 0 1 1 force @a
particle minecraft:firework ~ ~ ~ 0 0 0 0.3 3 force @a

execute as @e[distance=..3.3,scores={maxHP=1..}] unless score @s teamNumber = @e[tag=now,limit=1,sort=nearest] teamNumber at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=now,distance=..1.5] run tag @s add hit
execute as @e[distance=..3.3,scores={maxHP=1..}] unless score @s teamNumber = @e[tag=now,limit=1,sort=nearest] teamNumber at @s anchored feet positioned ^ ^ ^ if entity @e[tag=now,distance=..1.5] run tag @s add hit
execute unless block ~ ~ ~ #wancomatter:air run scoreboard players set @s counter 200
execute if entity @e[tag=hit,limit=1] run function wancomatter:skills/088/hit

tp @s ^ ^ ^1.1 ~ ~0.55
