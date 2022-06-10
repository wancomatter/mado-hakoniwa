scoreboard players remove #dummy counter 1
execute unless block ^ ^ ^0.6 #wancomatter:air run scoreboard players set #dummy counter 0
execute unless score #dummy counter matches 1.. run tp @e[tag=104highlight_AEC] ~ ~ ~
particle dust 0.3 0.03 0.3 0.6 ^-0.1 ^ ^ 0.0 0.0 0.0 0 1 force @s
execute if score #dummy counter matches 1.. positioned ^ ^ ^0.6 run function wancomatter:skills/104/highlight_loop

