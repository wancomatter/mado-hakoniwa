execute if score @s counter matches 10 run particle minecraft:block blue_wool ^1 ^ ^ 0 0 0 1 1 force @a
execute if score @s counter matches 11 run particle minecraft:block blue_wool ^2 ^ ^ 0 0 0 1 1 force @a
execute if score @s counter matches 12 run particle minecraft:block blue_wool ^3 ^ ^ 0 0 0 1 1 force @a
execute if score @s counter matches 13 run particle minecraft:block blue_wool ^4 ^ ^ 0 0 0 1 1 force @a
execute if score @s counter matches 14 run particle minecraft:block blue_wool ^5 ^ ^ 0 0 0 1 1 force @a
execute if score @s counter matches 15 run particle minecraft:block blue_wool ^6 ^ ^ 0 0 0 1 1 force @a
execute if score @s counter matches 16 run particle minecraft:block blue_wool ^7 ^ ^ 0 0 0 1 1 force @a
execute if score @s counter matches 17 run particle minecraft:block blue_wool ^8 ^ ^ 0 0 0 1 1 force @a
execute if score @s counter matches 18 run particle minecraft:block blue_wool ^9 ^ ^ 0 0 0 1 1 force @a
execute if score @s counter matches 19 run particle minecraft:block blue_wool ^10 ^ ^ 0 0 0 1 1 force @a
execute if score @s counter matches 19 run particle minecraft:dust 0.2 0.3 1 2 ^10 ^ ^ 0 0 0 1 1 force @a
scoreboard players add @s dummy 1
execute if score @s dummy matches ..35 rotated ~10 ~ run function wancomatter:skills/014/heal-particle