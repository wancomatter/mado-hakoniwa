execute store result entity @e[tag=necro,limit=1] Pos[0] double 0.01 run scoreboard players get @s Cooldown1
execute store result entity @e[tag=necro,limit=1] Pos[1] double 0.01 run scoreboard players get @s Cooldown2
execute store result entity @e[tag=necro,limit=1] Pos[2] double 0.01 run scoreboard players get @s Cooldown3
effect clear @e[tag=necro] luck
execute as @e[tag=necro_stand] run data merge entity @s {Glowing:1b}


particle smoke ~ ~1 ~ 0.3 0.5 0.3 0 40 normal @a
particle smoke ~ ~1 ~ 0.3 0.5 0.3 0 10 force @a
playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 3.5 2

kill @s