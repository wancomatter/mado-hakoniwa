execute if score @s counter matches 1 run execute rotated ~0.00 0 run particle minecraft:dust 0.667 0.667 1 1.3 ^0.55 ^ ^ 0.1 0.1 0.1 1 4 normal @a
execute if score @s counter matches 1 run execute rotated ~0.00 0 run particle minecraft:dust 0.667 0.667 1 1.3 ^0.55 ^ ^ 0 0 0 1 1 force @a
execute if score @s counter matches 2 run execute rotated ~2.00 0 run particle minecraft:dust 0.667 0.667 1 1.3 ^1.10 ^ ^ 0.1 0.1 0.1 1 4 normal @a
execute if score @s counter matches 2 run execute rotated ~2.00 0 run particle minecraft:dust 0.667 0.667 1 1.3 ^1.10 ^ ^ 0 0 0 1 1 force @a
execute if score @s counter matches 3 run execute rotated ~4.00 0 run particle minecraft:dust 0.667 0.667 1 1.3 ^1.65 ^ ^ 0.1 0.1 0.1 1 4 normal @a
execute if score @s counter matches 3 run execute rotated ~4.00 0 run particle minecraft:dust 0.667 0.667 1 1.3 ^1.65 ^ ^ 0 0 0 1 1 force @a
execute if score @s counter matches 4 run execute rotated ~6.00 0 run particle minecraft:dust 0.667 0.667 1 1.3 ^2.20 ^ ^ 0.1 0.1 0.1 1 4 normal @a
execute if score @s counter matches 4 run execute rotated ~6.00 0 run particle minecraft:dust 0.667 0.667 1 1.3 ^2.20 ^ ^ 0 0 0 1 1 force @a
execute if score @s counter matches 5 run execute rotated ~8.00 0 run particle minecraft:dust 0.667 0.667 1 1.3 ^2.75 ^ ^ 0.1 0.1 0.1 1 4 normal @a
execute if score @s counter matches 5 run execute rotated ~8.00 0 run particle minecraft:dust 0.667 0.667 1 1.3 ^2.75 ^ ^ 0 0 0 1 1 force @a
execute if score @s counter matches 6 run execute rotated ~10.0 0 run particle minecraft:dust 0.667 0.667 1 1.3 ^3.30 ^ ^ 0.1 0.1 0.1 1 4 normal @a
execute if score @s counter matches 6 run execute rotated ~10.0 0 run particle minecraft:dust 0.667 0.667 1 1.3 ^3.30 ^ ^ 0 0 0 1 1 force @a
execute if score @s counter matches 7 run execute rotated ~12.0 0 run particle minecraft:dust 0.667 0.667 1 1.3 ^3.85 ^ ^ 0.1 0.1 0.1 1 4 normal @a
execute if score @s counter matches 7 run execute rotated ~12.0 0 run particle minecraft:dust 0.667 0.667 1 1.3 ^3.85 ^ ^ 0 0 0 1 1 force @a
execute if score @s counter matches 8 run execute rotated ~14.0 0 run particle minecraft:dust 0.667 0.667 1 1.3 ^4.40 ^ ^ 0.1 0.1 0.1 1 4 normal @a
execute if score @s counter matches 8 run execute rotated ~14.0 0 run particle minecraft:dust 0.667 0.667 1 1.3 ^4.40 ^ ^ 0 0 0 1 1 force @a
execute if score @s counter matches 9 run execute rotated ~16.0 0 run particle minecraft:dust 0.667 0.667 1 1.3 ^4.95 ^ ^ 0.1 0.1 0.1 1 4 normal @a
execute if score @s counter matches 9 run execute rotated ~16.0 0 run particle minecraft:dust 0.667 0.667 1 1.3 ^4.95 ^ ^ 0 0 0 1 1 force @a
execute if score @s counter matches 10 run execute rotated ~18.0 0 run particle minecraft:dust 0.667 0.667 1 1.3 ^5.50 ^ ^ 0.1 0.1 0.1 1 4 normal @a
execute if score @s counter matches 10 run execute rotated ~18.0 0 run particle minecraft:dust 0.667 0.667 1 1.3 ^5.50 ^ ^ 0 0 0 1 1 force @a
execute if score @s counter matches 11 run execute rotated ~18.0 0 run particle minecraft:dust 0.667 0.667 1 1.3 ^6.05 ^ ^ 0.1 0.1 0.1 1 4 normal @a
execute if score @s counter matches 11 run execute rotated ~18.0 0 run particle minecraft:dust 0.667 0.667 1 1.3 ^6.05 ^ ^ 0 0 0 1 1 force @a
scoreboard players remove @s dummy 1
execute if score @s dummy matches 1.. rotated ~15 0 run function wancomatter:skills/062/particle_tick