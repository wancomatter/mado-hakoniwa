scoreboard players add @s counter 1
execute if score @s counter matches ..4 run tp @s ~ ~0.15 ~
execute if score @s counter matches 6.. run tp @s ~ ~-0.06 ~
execute if score @s counter matches 20.. run kill @s