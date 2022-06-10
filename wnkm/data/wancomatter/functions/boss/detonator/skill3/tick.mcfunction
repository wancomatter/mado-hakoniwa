scoreboard players add @s counter 1
execute if score @s counter matches 16.. run scoreboard players add @s subcounter 1
execute if score @s counter matches 1..21 run tp @s ^ ^ ^1
execute if score @s counter matches 1..21 run particle minecraft:large_smoke ^ ^ ^0.5 0 0 0 0 1 force @a

execute if score @s counter matches 22.. run particle minecraft:large_smoke ~ ~ ~ 4 1 4 0 4 normal @a
execute if score @s counter matches 22.. run particle minecraft:large_smoke ~ ~ ~ 4 1 4 0 1 force @a
execute if score @s counter matches 22.. run particle minecraft:dust 0 0 0 2 ~ ~ ~ 2 0.5 2 0 1 force @a
execute if score @s counter matches 22.. run particle minecraft:dust 0 0 0 2 ~ ~ ~ 2 0.5 2 0 1 normal @a

execute if score @s subcounter >= @s subcounter2 run function wancomatter:boss/detonator/skill3/thunder

execute if score @s counter matches 400.. run kill @s