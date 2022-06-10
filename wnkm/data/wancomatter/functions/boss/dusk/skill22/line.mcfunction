scoreboard players add @s dummy 1
particle minecraft:dust 1 0.35 0.2 1.6 ^ ^ ^0.5 0.03 0.03 0.03 1 1 force @a
execute positioned ^ ^ ^0.5 if block ~ ~ ~ #wancomatter:air run function wancomatter:boss/dusk/skill22/line