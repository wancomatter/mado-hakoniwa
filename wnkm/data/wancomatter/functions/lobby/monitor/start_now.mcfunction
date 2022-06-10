scoreboard players reset #monitor playerNumber
scoreboard players reset #monitor counter
execute as @e[tag=monitorUIslime] run tp @s 0 -10 0
execute as @e[tag=monitorUIslime] run data merge entity @s {Size:0,Health:0,DeathTime:19s}
kill @e[tag=monitorUI]
scoreboard players reset #autostart counter
effect clear @s minecraft:levitation
bossbar remove wnkm:autostart

title @a times 0 140 20
title @a title {"text":"Now Loading......","color":"white"}
scoreboard players set #start_map_load counter -1
function wancomatter:lobby/monitor/start_map_load_schedule
execute unless score #stagechanged counter matches 1 run function wancomatter:lobby/monitor/start_map_load
