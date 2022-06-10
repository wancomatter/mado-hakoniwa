particle minecraft:lava ~ ~ ~ 0 0 0 1 1 force @a
particle minecraft:flame ~ ~ ~ 0 0 0 0.1 4 normal @a
playsound minecraft:entity.blaze.ambient master @a ~ ~ ~ 0.5 1
scoreboard players add @s counter 1

scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber

tag @s add now-fireball
execute as @e[distance=..13,tag=largeEntity,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=now-fireball,distance=..2.1] run tag @s add fireball-hit
execute as @e[distance=..13,tag=largeEntity,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored feet positioned ^ ^ ^ if entity @e[tag=now-fireball,distance=..2.1] run tag @s add fireball-hit
execute as @e[distance=..4,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored eyes positioned ^ ^ ^ if entity @e[tag=now-fireball,distance=..0.9] run tag @s add fireball-hit
execute as @e[distance=..4,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber at @s anchored feet positioned ^ ^ ^ if entity @e[tag=now-fireball,distance=..0.9] run tag @s add fireball-hit
execute if entity @e[tag=fireball-hit,limit=1] run function wancomatter:skills/008/hit-entity

execute unless block ^ ^ ^0.45 #wancomatter:air run function wancomatter:skills/008/hit-block
execute unless score @s counter matches 101.. positioned ^ ^ ^0.45 if entity @e[tag=wall_entity,limit=1,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=wall_entity,limit=1,dx=0] at @s run function wancomatter:skills/008/hit-block
tp @s ^ ^ ^0.45
execute unless score @s counter matches 101.. unless block ^ ^ ^0.90 #wancomatter:air run function wancomatter:skills/008/hit-block
execute unless score @s counter matches 101.. positioned ^ ^ ^0.90 if entity @e[tag=wall_entity,limit=1,dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @e[tag=wall_entity,limit=1,dx=0] at @s run function wancomatter:skills/008/hit-block
tp @s ^ ^ ^0.9
scoreboard players reset #dummy
tag @s remove now-fireball

execute if score @s counter matches 100.. run kill @s