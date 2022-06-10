scoreboard players add #dummy dummy 1
particle minecraft:explosion ^ ^ ^6.0 0 0 0 1 1 force @a
execute rotated ~5 ~ run particle minecraft:explosion ^ ^ ^6.0 0 0 0 1 1 normal @a
execute rotated ~10 ~ run particle minecraft:explosion ^ ^ ^6.0 0 0 0 1 1 normal @a
execute rotated ~15 ~ run particle minecraft:explosion ^ ^ ^6.0 0 0 0 1 1 normal @a
execute unless score #dummy dummy matches 18.. rotated ~20 ~ run function wancomatter:skills/080/dark/attack-particle