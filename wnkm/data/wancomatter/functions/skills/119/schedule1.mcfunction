execute as @e[tag=flying_shield] at @s run function wancomatter:skills/118/1

execute if entity @e[tag=flying_shield,limit=1] run schedule function wancomatter:skills/118/schedule1 1t replace
