scoreboard players add @s counter 1
tp @s ^ ^ ^1.1
particle minecraft:dust 1 0.270 0.204 0.7 ~ ~0.9 ~ 0.2 0.2 0.2 1 4 normal @a
particle minecraft:dust 1 0.270 0.204 0.7 ~ ~0.9 ~ 0.2 0.2 0.2 1 1 force @a

tag @s add now
execute positioned ~ ~0.5 ~ as @e[distance=..13,tag=largeEntity,scores={maxHP=1..}] unless score @s teamNumber = @e[tag=now,limit=1] teamNumber at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=now,distance=..2.1] run tag @s add hit
execute positioned ~ ~0.5 ~ as @e[distance=..13,tag=largeEntity,scores={maxHP=1..}] unless score @s teamNumber = @e[tag=now,limit=1] teamNumber at @s anchored feet positioned ^ ^ ^ if entity @e[tag=now,distance=..2.1] run tag @s add hit
execute positioned ~ ~0.5 ~ as @e[distance=..4,scores={maxHP=1..}] unless score @s teamNumber = @e[tag=now,limit=1] teamNumber at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=now,distance=..1.1] run tag @s add hit
execute positioned ~ ~0.5 ~ as @e[distance=..4,scores={maxHP=1..}] unless score @s teamNumber = @e[tag=now,limit=1] teamNumber at @s anchored feet positioned ^ ^ ^ if entity @e[tag=now,distance=..1.1] run tag @s add hit
execute unless block ~ ~0.5 ~ #wancomatter:air run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function wancomatter:skills/019/hit
tag @s remove now

execute if score @s counter matches 100.. run kill @s
