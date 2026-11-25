#particle dust 1 1 1 0.66 ~ ~ ~ 0 0 0 0 1 force @a
#particle dust 1 1 1 0.90 ~ ~ ~ 0 0 0 0 2 normal @a
particle electric_spark ~ ~ ~ 0 0 0 0.4 4 normal @a
particle electric_spark ^ ^ ^ ^200000 ^ ^-500000 0.000002 0 force @a
particle electric_spark ^ ^ ^ ^-200000 ^ ^-500000 0.000002 0 force @a
particle electric_spark ^ ^ ^ ^ ^200000 ^-500000 0.000002 0 force @a
particle electric_spark ^ ^ ^ ^ ^-200000 ^-500000 0.000002 0 force @a
particle electric_spark ^ ^ ^ ^200000 ^ ^-500000 0.000003 0 force @a
particle electric_spark ^ ^ ^ ^-200000 ^ ^-500000 0.000003 0 force @a
particle electric_spark ^ ^ ^ ^ ^200000 ^-500000 0.000003 0 force @a
particle electric_spark ^ ^ ^ ^ ^-200000 ^-500000 0.000003 0 force @a
particle electric_spark ^ ^ ^ ^200000 ^ ^-500000 0.000004 0 force @a
particle electric_spark ^ ^ ^ ^-200000 ^ ^-500000 0.000004 0 force @a
particle electric_spark ^ ^ ^ ^ ^200000 ^-500000 0.000004 0 force @a
particle electric_spark ^ ^ ^ ^ ^-200000 ^-500000 0.000004 0 force @a
#particle dust 0.2 1 1 0.90 ~ ~ ~ 0 0 0 1 1 normal @a
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
execute if entity @e[tag=hit,limit=1] run function wancomatter:skills/024/2.hit-entity
execute unless block ~ ~ ~ #wancomatter:air run function wancomatter:skills/024/end
