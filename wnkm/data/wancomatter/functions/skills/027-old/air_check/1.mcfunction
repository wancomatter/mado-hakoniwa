scoreboard players add #distance counter 1
execute unless block ~ ~ ~ #wancomatter:air run tag @s add not_air
execute if entity @s[tag=!not_air] unless entity @s[distance=..0.1] positioned ^ ^ ^0.1 run function wancomatter:skills/027/air_check/1