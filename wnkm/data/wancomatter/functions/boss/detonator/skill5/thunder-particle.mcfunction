scoreboard players add @s subcounter 1
execute if score @s counter matches 31..33 positioned ~ ~0.25 ~ run particle minecraft:dust 1 1 0 0.8 ^1 ^ ^ 0.03 0.03 0.03 1 4 force @a
execute if score @s counter matches 34..36 positioned ~ ~0.25 ~ run particle minecraft:dust 1 1 0 0.8 ^2 ^ ^ 0.03 0.03 0.03 1 4 force @a
execute if score @s counter matches 37..39 positioned ~ ~0.25 ~ run particle minecraft:dust 1 1 0 0.8 ^3 ^ ^ 0.03 0.03 0.03 1 4 force @a
execute if score @s counter matches 40..42 positioned ~ ~0.25 ~ run particle minecraft:dust 1 1 0 0.8 ^4 ^ ^ 0.03 0.03 0.03 1 4 force @a
execute if score @s counter matches 43..45 positioned ~ ~0.25 ~ run particle minecraft:dust 1 1 0 0.8 ^5 ^ ^ 0.03 0.03 0.03 1 4 force @a
execute if score @s counter matches 46..48 positioned ~ ~0.25 ~ run particle minecraft:dust 1 1 0 0.8 ^6 ^ ^ 0.03 0.03 0.03 1 4 force @a
execute if score @s counter matches 49..51 positioned ~ ~0.25 ~ run particle minecraft:dust 1 1 0 0.8 ^7 ^ ^ 0.03 0.03 0.03 1 4 force @a
execute if score @s counter matches 52.. positioned ~ ~0.25 ~ run particle minecraft:dust 1 1 0 0.8 ^8 ^ ^ 0.03 0.03 0.03 1 4 force @a

execute unless score @s subcounter matches 37.. rotated ~10 ~ run function wancomatter:boss/detonator/skill5/thunder-particle