scoreboard players add @s counter 1
execute if score @s counter matches 5 run function wancomatter:skills/023/blindness
execute if score @s counter matches 5.. run kill @s

effect give @a minecraft:blindness 2 0