scoreboard players add #dummy dummy 1
particle minecraft:block iron_block ^ ^ ^2.5 0.1 0.4 0.1 0 3 force @a
execute rotated ~5 ~ run particle minecraft:block iron_block ^ ^ ^2.5 0.1 0.4 0.1 0 3 normal @a
execute rotated ~10 ~ run particle minecraft:block iron_block ^ ^ ^2.5 0.1 0.4 0.1 0 3 normal @a
execute rotated ~15 ~ run particle minecraft:block iron_block ^ ^ ^2.5 0.1 0.4 0.1 0 3 normal @a
execute unless score #dummy dummy matches 18.. rotated ~20 ~ run function wancomatter:skills/052/particle2