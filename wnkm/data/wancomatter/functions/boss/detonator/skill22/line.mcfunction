particle minecraft:dust 1 1 0 0.6 ^ ^0.8 ^0.45 0 0 0 0 1 force @a
particle minecraft:dust 1 1 0 0.6 ^ ^0.8 ^0.90 0 0 0 0 1 normal @a
scoreboard players add @s dummy 1
execute unless score @s dummy matches 80.. positioned ^ ^ ^0.45 if block ~ 10 ~ #wancomatter:air positioned ^ ^ ^0.9 if block ~ 10 ~ #wancomatter:air run function wancomatter:boss/detonator/skill22/line