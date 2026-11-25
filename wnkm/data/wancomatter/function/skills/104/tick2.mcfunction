execute positioned ^ ^ ^0.7 if block ~ ~ ~ #wancomatter:air if block ~ ~1 ~ #wancomatter:air positioned ^ ^ ^-0.3 if block ~ ~1 ~ #wancomatter:air if block ~ ~1 ~ #wancomatter:air run tp @s ~ ~ ~
execute at @s positioned ^ ^ ^0.5 if block ~ ~ ~ #wancomatter:air if block ~ ~1 ~ #wancomatter:air positioned ^ ^ ^-0.3 if block ~ ~1 ~ #wancomatter:air if block ~ ~1 ~ #wancomatter:air run tp @s ~ ~ ~
execute positioned ^ ^ ^2 run particle minecraft:sweep_attack ~ ~0.3 ~ 0.6 0.3 0.6 1 2 normal @a
execute positioned ^ ^ ^2 run particle minecraft:sweep_attack ~ ~0.3 ~ 0.2 0.1 0.2 1 1 normal @a
execute positioned ^ ^ ^2 run particle minecraft:sweep_attack ~ ~0.3 ~ 0.1 0 0.1 1 1 force @a
execute positioned ^ ^ ^2 run particle minecraft:dragon_breath ~ ~ ~ 0.2 0.2 0.2 0.10 5 normal @a
execute positioned ^ ^ ^2 as @e[distance=..3.3,tag=largeEntity,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
execute positioned ^ ^ ^2 as @e[distance=..2.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
