execute if score @s counter matches 1 run execute rotated ~0.00 0 run particle minecraft:witch ^0.5 ^ ^ 0.1 0.1 0.1 1 4 normal @a
execute if score @s counter matches 1 run execute rotated ~0.00 0 run particle minecraft:witch ^0.5 ^ ^ 0 0 0 1 1 force @a
execute if score @s counter matches 2 run execute rotated ~2.00 0 run particle minecraft:witch ^1.0 ^ ^ 0.1 0.1 0.1 1 4 normal @a
execute if score @s counter matches 2 run execute rotated ~2.00 0 run particle minecraft:witch ^1.0 ^ ^ 0 0 0 1 1 force @a
execute if score @s counter matches 3 run execute rotated ~4.00 0 run particle minecraft:witch ^1.5 ^ ^ 0.1 0.1 0.1 1 4 normal @a
execute if score @s counter matches 3 run execute rotated ~4.00 0 run particle minecraft:witch ^1.5 ^ ^ 0 0 0 1 1 force @a
execute if score @s counter matches 4 run execute rotated ~6.00 0 run particle minecraft:witch ^2.0 ^ ^ 0.1 0.1 0.1 1 4 normal @a
execute if score @s counter matches 5 run execute rotated ~6.00 0 run particle minecraft:witch ^2.0 ^ ^ 0 0 0 1 1 force @a
execute if score @s counter matches 6 run execute rotated ~8.00 0 run particle minecraft:witch ^2.5 ^ ^ 0.1 0.1 0.1 1 4 normal @a
execute if score @s counter matches 7 run execute rotated ~8.00 0 run particle minecraft:witch ^2.5 ^ ^ 0 0 0 1 1 force @a
execute if score @s counter matches 8 run execute rotated ~10.0 0 run particle minecraft:witch ^3.0 ^ ^ 0.1 0.1 0.1 1 4 normal @a
execute if score @s counter matches 9 run execute rotated ~10.0 0 run particle minecraft:witch ^3.0 ^ ^ 0 0 0 1 1 force @a
execute if score @s counter matches 10 run execute rotated ~12.0 0 run particle minecraft:witch ^3.5 ^ ^ 0.1 0.1 0.1 1 4 normal @a
execute if score @s counter matches 11 run execute rotated ~12.0 0 run particle minecraft:witch ^3.5 ^ ^ 0 0 0 1 1 force @a
execute if score @s counter matches 12 run execute rotated ~14.0 0 run particle minecraft:witch ^4.0 ^ ^ 0.1 0.1 0.1 1 4 normal @a
execute if score @s counter matches 13 run execute rotated ~14.0 0 run particle minecraft:witch ^4.0 ^ ^ 0 0 0 1 1 force @a
execute if score @s counter matches 14 run execute rotated ~16.0 0 run particle minecraft:witch ^4.5 ^ ^ 0.1 0.1 0.1 1 4 normal @a
execute if score @s counter matches 15 run execute rotated ~16.0 0 run particle minecraft:witch ^4.5 ^ ^ 0 0 0 1 1 force @a
execute if score @s counter matches 16 run execute rotated ~18.0 0 run particle minecraft:witch ^5.0 ^ ^ 0.1 0.1 0.1 1 4 normal @a
execute if score @s counter matches 17 run execute rotated ~18.0 0 run particle minecraft:witch ^5.0 ^ ^ 0 0 0 1 1 force @a
execute if score @s counter matches 18 run execute rotated ~18.0 0 run particle minecraft:witch ^5.5 ^ ^ 0.1 0.1 0.1 1 4 normal @a
execute if score @s counter matches 19 run execute rotated ~18.0 0 run particle minecraft:witch ^5.5 ^ ^ 0 0 0 1 1 force @a
scoreboard players remove @s dummy 1
execute if score @s dummy matches 1.. rotated ~15 0 run function wancomatter:skills/080/dark/particle_tick