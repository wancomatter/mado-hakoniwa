particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0 1 force @a
particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 0.1 4 normal @a
execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[dx=0,scores={maxHP=1..}] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function wancomatter:skills/086/hit-entity
execute unless block ~ ~ ~ #wancomatter:air run function wancomatter:skills/086/end
