particle minecraft:composter ~ ~ ~ 0 0 0 1 2 force @a
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 0.5 1
scoreboard players add @s counter 1

scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber

tag @s add now
execute as @e[distance=..10,tag=largeEntity,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=now,distance=..2.1] run tag @s add hit
execute as @e[distance=..10,tag=largeEntity,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored feet positioned ^ ^ ^ if entity @e[tag=now,distance=..2.1] run tag @s add hit
execute as @e[distance=..3,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=now,distance=..1.0] run tag @s add hit
execute as @e[distance=..3,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored feet positioned ^ ^ ^ if entity @e[tag=now,distance=..1.0] run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function wancomatter:skills/087/hit-entity
execute unless block ^ ^ ^0.05 #wancomatter:air run kill @s
execute unless block ^ ^ ^0.6 #wancomatter:air run kill @s
tag @s remove now
tp @s ^ ^ ^1.1
scoreboard players reset #dummy

execute if score @s counter matches 70.. run kill @s