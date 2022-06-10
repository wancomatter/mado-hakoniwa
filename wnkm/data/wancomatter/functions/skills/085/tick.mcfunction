scoreboard players add @s counter 1
particle minecraft:dust 0 0.66 0 2 ~ ~ ~ 0 0 0 0.1 1 force @a
execute if score @s counter matches 60.. run kill @s