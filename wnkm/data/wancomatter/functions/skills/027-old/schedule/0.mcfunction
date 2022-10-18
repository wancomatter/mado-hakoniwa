execute as @e[tag=027spirit_target] at @s run function wancomatter:skills/027/schedule/1

execute if entity @e[tag=027spirit_target,limit=1] run schedule function wancomatter:skills/027/schedule/0 1t replace
