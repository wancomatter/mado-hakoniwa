playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1.1 0.5
particle minecraft:explosion ~ ~ ~ 1 0 1 1 4 normal @a
particle minecraft:explosion ~ ~ ~ 1 0 1 1 1 force @a
particle minecraft:poof ~ ~0.6 ~ 0 1.2 0 0.7 28 normal @a
particle minecraft:poof ~ ~0.6 ~ 0 1.2 0 0.7 7 force @a

scoreboard players operation #dummy teamNumber = @s teamNumber
tag @s add onG-stoneblast
execute as @e[distance=..14,tag=largeEntity,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=onG-stoneblast,distance=..3] run tag @s add stoneblast-hit
execute as @e[distance=..14,tag=largeEntity,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored feet positioned ^ ^ ^ if entity @e[tag=onG-stoneblast,distance=..3] run tag @s add stoneblast-hit
execute as @e[distance=..4,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=onG-stoneblast,distance=..1.6] run tag @s add stoneblast-hit
execute as @e[distance=..4,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored feet positioned ^ ^ ^ if entity @e[tag=onG-stoneblast,distance=..1.6] run tag @s add stoneblast-hit
execute if entity @e[tag=stoneblast-hit,limit=1] run function wancomatter:skills/004/hit-entity
tag @s remove onG-stoneblast

kill @s