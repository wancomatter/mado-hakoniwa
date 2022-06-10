scoreboard players add @s counter 1
execute if score @s counter matches 2.. run scoreboard players set @s counter 0

execute if score @s counter matches 1 run particle minecraft:sweep_attack ~ ~-0.3 ~ 0 0 0 1 1 force @a
execute unless score @s counter matches 1 run particle minecraft:sweep_attack ~ ~-0.3 ~ 0 0 0 1 1 normal @a
particle block diamond_block ~ ~-0.3 ~ 0 0 0 1 2 normal @a

scoreboard players operation #dummy teamNumber = @s teamNumber
execute positioned ~-0.5 ~ ~-0.5 as @e[dx=0,dy=0,dz=0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
scoreboard players reset #dummy teamNumber
execute if entity @e[tag=hit,limit=1] run function wancomatter:skills/116/hit

tp @s ^ ^ ^0.75
execute unless entity @s[tag=is_hit] if score @s counter matches 1.. at @s run function wancomatter:skills/116/tick