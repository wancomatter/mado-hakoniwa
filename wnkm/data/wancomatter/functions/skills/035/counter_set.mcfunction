scoreboard players add #dummy counter 1
scoreboard players operation @s counter = #dummy counter
tag @s remove 035-
execute as @e[tag=035-,type=shulker,limit=1,sort=arbitrary] run function wancomatter:skills/035/counter_set