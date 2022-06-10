tag @s add it

execute as @e[distance=..3.3,scores={maxHP=1..}] unless score @s teamNumber = @e[tag=it,limit=1] teamNumber run tag @s add hit
particle explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a
tp @s ^ ^ ^4.25
execute store result entity @s Pos[1] double 0.01 run scoreboard players remove @s subcounter 425

execute at @s as @e[distance=..3.0,scores={maxHP=1..}] unless score @s teamNumber = @e[tag=it,limit=1] teamNumber run tag @s add hit
execute at @s run particle explosion_emitter ~ ~ ~ 0 0 0 1 1 normal @a
execute at @s run tp @s ^ ^ ^4.25
execute store result entity @s Pos[1] double 0.01 run scoreboard players remove @s subcounter 425

execute at @s as @e[distance=..3.0,scores={maxHP=1..}] unless score @s teamNumber = @e[tag=it,limit=1] teamNumber run tag @s add hit
execute at @s run particle explosion_emitter ~ ~ ~ 0 0 0 1 1 normal @a
execute at @s run tp @s ^ ^ ^4.25
execute store result entity @s Pos[1] double 0.01 run scoreboard players remove @s subcounter 425

execute if entity @e[tag=hit,limit=1] as @e[tag=hit] at @s run function wancomatter:skills/009/hit
tag @s remove it
