particle dust 0.33 0.33 1 1 ~ ~ ~ 0 0 0 1 1 force @a
particle dust 0.33 0.33 1 1 ~ ~ ~ 0.03 0.03 0.03 1 2 normal @a
particle minecraft:dolphin ~ ~ ~ 0.2 0.2 0.2 1 10 force @a
particle minecraft:dolphin ~ ~ ~ 0.2 0.2 0.2 1 40 normal @a
scoreboard players add @s counter 1

scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber

tag @s add now
execute as @e[distance=..10,tag=largeEntity,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=now,distance=..2.7] run tag @s add hit
execute as @e[distance=..10,tag=largeEntity,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored feet positioned ^ ^ ^ if entity @e[tag=now,distance=..2.7] run tag @s add hit
execute as @e[distance=..3,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=now,distance=..1.5] run tag @s add hit
execute as @e[distance=..3,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored feet positioned ^ ^ ^ if entity @e[tag=now,distance=..1.5] run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function wancomatter:skills/090/hit-entity
execute unless block ^ ^ ^0.5 #wancomatter:air run kill @s
tag @s remove now
tp @s ^ ^ ^0.75
scoreboard players reset #dummy

execute if score @s counter matches 40.. run kill @s