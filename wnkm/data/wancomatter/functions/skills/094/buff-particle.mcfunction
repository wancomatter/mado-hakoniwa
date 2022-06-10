execute if score @s counter matches 1 run particle minecraft:block lime_wool ^1 ^ ^ 0 0 0 1 2 force @a
execute if score @s counter matches 2 run particle minecraft:block lime_wool ^2 ^ ^ 0 0 0 1 2 force @a
execute if score @s counter matches 3 run particle minecraft:block lime_wool ^3 ^ ^ 0 0 0 1 2 force @a
execute if score @s counter matches 4 run particle minecraft:block lime_wool ^4 ^ ^ 0 0 0 1 2 force @a
execute if score @s counter matches 5 run particle minecraft:block lime_wool ^5 ^ ^ 0 0 0 1 2 force @a
execute if score @s counter matches 6 run particle minecraft:block lime_wool ^6 ^ ^ 0 0 0 1 2 force @a
execute if score @s counter matches 7 run particle minecraft:block lime_wool ^7 ^ ^ 0 0 0 1 2 force @a
execute if score @s counter matches 8 run particle minecraft:block lime_wool ^8 ^ ^ 0 0 0 1 2 force @a
execute if score @s counter matches 9 run particle minecraft:block lime_wool ^9 ^ ^ 0 0 0 1 2 force @a
execute if score @s counter matches 10 run particle minecraft:block lime_wool ^10 ^ ^ 0 0 0 1 2 force @a
execute if score @s counter matches 11 run particle minecraft:block lime_wool ^11 ^ ^ 0 0 0 1 2 force @a
scoreboard players add @s dummy 1
execute if score @s dummy matches ..35 rotated ~10 ~ run function wancomatter:skills/094/buff-particle