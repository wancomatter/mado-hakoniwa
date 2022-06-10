tp @e[tag=necro] ~ ~ ~
effect clear @e[tag=necro] luck
execute as @e[tag=necro_stand] run data merge entity @s {Glowing:1b}
particle smoke ~ ~1 ~ 0 0 0 0.1 120 normal @a
particle smoke ~ ~1 ~ 0 0 0 0.1 30 force @a
playsound minecraft:block.lava.extinguish master @a ~ ~ ~ 4.3 1



kill @s

