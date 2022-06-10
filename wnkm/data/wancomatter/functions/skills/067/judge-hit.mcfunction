particle minecraft:cloud ~ ~ ~ 0 0 0 0 1 force @a
particle minecraft:cloud ~ ~ ~ 0 0 0 0 1 normal @a
execute positioned ~-0.2 ~-0.2 ~-0.2 as @e[dx=0,scores={maxHP=1..}] positioned ~-0.6 ~-0.6 ~-0.6 if entity @s[dx=0] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function wancomatter:skills/067/hit-entity
execute unless block ~ ~ ~ #wancomatter:air run function wancomatter:skills/067/end
