particle minecraft:smoke ~ ~ ~ 0 0 0 0 1 force @a
#particle minecraft:smoke ~ ~ ~ 0 0 0 0.03 2 normal @a
execute positioned ~-0.15 ~-0.15 ~-0.15 as @e[dx=0,scores={maxHP=1..}] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function wancomatter:skills/025/hit-entity
execute unless block ~ ~ ~ #wancomatter:air run function wancomatter:skills/025/end
