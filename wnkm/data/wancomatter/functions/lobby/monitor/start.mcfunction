scoreboard players reset #monitor playerNumber
scoreboard players reset #monitor counter
execute as @e[tag=monitorUIslime] run data merge entity @s {Size:0,Health:0,DeathTime:19s}
kill @e[tag=monitorUI]
effect clear @s minecraft:levitation
