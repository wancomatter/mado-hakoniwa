scoreboard players add #dummy dummy 1
particle minecraft:falling_dust packed_ice ^ ^ ^5.5 0.2 0.5 0.2 0 7 force @a
execute rotated ~5 ~ run particle minecraft:falling_dust packed_ice ^ ^ ^5.5 0.2 0.5 0.2 0 7 normal @a
execute rotated ~10 ~ run particle minecraft:falling_dust packed_ice ^ ^ ^5.5 0.2 0.5 0.2 0 7 normal @a
execute rotated ~15 ~ run particle minecraft:falling_dust packed_ice ^ ^ ^5.5 0.2 0.5 0.2 0 7 normal @a
execute unless score #dummy dummy matches 18.. rotated ~20 ~ run function wancomatter:skills/062/attack-particle