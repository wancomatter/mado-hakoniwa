particle minecraft:portal ~ ~0.3 ~ 0.3 0.3 0.3 1 8 normal @a
particle minecraft:portal ~ ~0.3 ~ 0.3 0.3 0.3 1 2 force @a
particle minecraft:end_rod ~ ~0.5 ~ 0 0 0 0 1 force @a
execute positioned ^ ^ ^0.5 unless entity @s[dx=0] unless entity @s[distance=..0.5] run function wancomatter:boss/necro/phase2/tp_particle
