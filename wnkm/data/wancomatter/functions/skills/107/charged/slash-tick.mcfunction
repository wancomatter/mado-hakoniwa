scoreboard players add @s counter 1
tag @s add now-kusaNagiSweep
tp @s ^ ^ ^0.375
execute at @s run function wancomatter:skills/107/charged/judge-hit
tp @s ^ ^ ^0.75
execute at @s run function wancomatter:skills/107/charged/judge-hit
tp @s ^ ^ ^1.125
execute at @s run function wancomatter:skills/107/charged/judge-hit
tp @s ^ ^ ^1.5
execute at @s run function wancomatter:skills/107/charged/judge-hit
tag @s remove now-kusaNagiSweep
execute if entity @e[tag=kusaNagiSweep-hit] run tag @e[tag=kusaNagiSweep-hit] remove kusaNagiSweep-hit
particle minecraft:dust 1 1 1 1 ^ ^ ^0.25 0.2 0.2 0.2 0 2 normal @a
particle minecraft:dust 1 1 1 1 ^ ^ ^0.50 0.2 0.2 0.2 0 2 normal @a
particle minecraft:dust 1 1 1 1 ^ ^ ^0.75 0.2 0.2 0.2 0 2 force @a
particle minecraft:dust 1 1 1 1 ^ ^ ^1.00 0.2 0.2 0.2 0 2 normal @a
particle minecraft:dust 1 1 1 1 ^ ^ ^1.25 0.2 0.2 0.2 0 2 normal @a
particle minecraft:dust 1 1 1 1 ^ ^ ^1.50 0.2 0.2 0.2 0 2 force @a


execute if score @s counter matches 10.. run kill @s