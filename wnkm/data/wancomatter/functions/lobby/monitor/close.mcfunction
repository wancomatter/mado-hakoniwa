scoreboard players reset #monitor playerNumber
scoreboard players reset #monitor counter
execute as @e[tag=monitorUIslime] run tp @s 0 -10 0
execute as @e[tag=monitorUIslime] run data merge entity @s {Size:0,Health:0,DeathTime:19s}
kill @e[tag=monitorUI]
effect clear @s minecraft:levitation
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1.2 1