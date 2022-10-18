execute as @e[type=marker,tag=fire_whip] at @s run function wancomatter:skills/023/1.tick

execute if entity @e[type=marker,tag=fire_whip,limit=1] run schedule function wancomatter:skills/023/schedule 1t replace