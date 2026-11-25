scoreboard players add @s counter 1
scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber

particle minecraft:soul ~ ~ ~ 0.1 0.1 0.1 0.05 4 normal @a
particle minecraft:soul ~ ~ ~ 0.0 0.0 0.0 0.00 1 force @a
execute rotated ~ 0 positioned ^ ^ ^2 run function wancomatter:skills/013/particle
playsound minecraft:entity.illusioner.prepare_blindness master @a ~ ~ ~ 1 2
tp @s ^ ^ ^0.7
tag @s add now
execute as @e[distance=..10,tag=largeEntity,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=now,distance=..3.25] run tag @s add hit
execute as @e[distance=..10,tag=largeEntity,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored feet positioned ^ ^ ^ if entity @e[tag=now,distance=..3.25] run tag @s add hit
execute as @e[distance=..4,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=now,distance=..2.25] run tag @s add hit
execute as @e[distance=..4,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored feet positioned ^ ^ ^ if entity @e[tag=now,distance=..2.25] run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function wancomatter:skills/013/bomb
tag @s remove now
scoreboard players reset #dummy
execute unless block ~ ~ ~ #wancomatter:air run kill @s
execute if score @s counter matches 30.. run kill @s
