scoreboard players add @s counter 1
execute if score @s counter matches 70 run playsound minecraft:ui.button.click master @a ~ ~ ~ 0.8 2
execute if score @s counter matches 70 run particle minecraft:smoke ~ ~0.3 ~ 0 0 0 0.1 50 normal @a
execute if score @s counter matches 75 run playsound minecraft:ui.button.click master @a ~ ~ ~ 0.8 2
execute if score @s counter matches 75 run particle minecraft:smoke ~ ~0.3 ~ 0 0 0 0.1 50 normal @a
execute unless data entity @s {OnGround:1b} run particle minecraft:smoke ~ ~0.3 ~ 0 0 0 0.03 5 force @a
execute if score @s counter matches 80.. run function wancomatter:skills/081/explode
