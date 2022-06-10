execute positioned ~ 8.02 ~ run particle minecraft:dust 0.4 0 0.45 2.5 ^ ^0.5 ^0.001 0 0 0 0 1 force @a
execute positioned ~ 8.02 ~ run particle minecraft:dust 0.4 0 0.45 2.5 ^ ^0.5 ^0.401 0 0 0 0 1 normal @a
execute positioned ~ 8.02 ~ run particle minecraft:dust 0.4 0 0.45 2.5 ^ ^0.5 ^0.801 0 0 0 0 1 normal @a
execute positioned ^ ^ ^1.2 unless entity @e[y=-8.02,tag=necro_s5_target_pos,distance=..1.2] if entity @s[distance=..35] run function wancomatter:boss/necro/skill5/line_loop
