execute rotated ~0.00 0 run particle minecraft:item packed_ice ~ ~0.5 ~ ^10000 ^ ^ 0.000011 0 force @a
execute rotated ~2.00 0 run particle minecraft:item packed_ice ~ ~0.5 ~ ^10000 ^ ^ 0.000022 0 force @a
execute rotated ~4.00 0 run particle minecraft:item packed_ice ~ ~0.5 ~ ^10000 ^ ^ 0.000033 0 force @a
execute rotated ~6.00 0 run particle minecraft:item packed_ice ~ ~0.5 ~ ^10000 ^ ^ 0.000044 0 force @a
execute rotated ~8.00 0 run particle minecraft:item packed_ice ~ ~0.5 ~ ^10000 ^ ^ 0.000055 0 force @a
execute rotated ~10.0 0 run particle minecraft:item packed_ice ~ ~0.5 ~ ^10000 ^ ^ 0.000066 0 force @a
execute rotated ~12.0 0 run particle minecraft:item packed_ice ~ ~0.5 ~ ^10000 ^ ^ 0.000077 0 force @a
execute rotated ~14.0 0 run particle minecraft:item packed_ice ~ ~0.5 ~ ^10000 ^ ^ 0.000088 0 force @a
execute rotated ~16.0 0 run particle minecraft:item packed_ice ~ ~0.5 ~ ^10000 ^ ^ 0.000099 0 force @a
execute rotated ~18.0 0 run particle minecraft:item packed_ice ~ ~0.5 ~ ^10000 ^ ^ 0.000110 0 force @a
scoreboard players remove @s dummy 1
execute if score @s dummy matches 1.. rotated ~15 0 run function wancomatter:skills/062/particle