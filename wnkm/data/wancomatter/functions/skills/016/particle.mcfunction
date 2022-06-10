execute rotated ~ -75 run particle minecraft:end_rod ^ ^ ^5 0 0 0 0 1 force @a
execute rotated ~ -60 run particle minecraft:end_rod ^ ^ ^5 0 0 0 0 1 force @a
execute rotated ~ -45 run particle minecraft:end_rod ^ ^ ^5 0 0 0 0 1 force @a
execute rotated ~ -30 run particle minecraft:end_rod ^ ^ ^5 0 0 0 0 1 force @a
execute rotated ~ -15 run particle minecraft:end_rod ^ ^ ^5 0 0 0 0 1 force @a
execute rotated ~ 0 run particle minecraft:end_rod ^ ^ ^5 0 0 0 0 1 force @a
execute rotated ~ 15 run particle minecraft:end_rod ^ ^ ^5 0 0 0 0 1 force @a
execute rotated ~ 30 run particle minecraft:end_rod ^ ^ ^5 0 0 0 0 1 force @a
execute rotated ~ 45 run particle minecraft:end_rod ^ ^ ^5 0 0 0 0 1 force @a
execute rotated ~ 60 run particle minecraft:end_rod ^ ^ ^5 0 0 0 0 1 force @a
execute rotated ~ 75 run particle minecraft:end_rod ^ ^ ^5 0 0 0 0 1 force @a
scoreboard players add #dummy subcounter 1
execute unless score #dummy subcounter matches 24.. rotated ~15 ~ run function wancomatter:skills/016/particle