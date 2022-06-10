scoreboard players add @s counter 1
execute if score @s counter matches 1 run function wancomatter:skills/009/tick_aec7_1
execute if score @s counter matches 1 run function wancomatter:skills/009/tick_aec7_2
execute if score @s counter matches 4 run function wancomatter:skills/009/tick_aec7_2
execute if score @s counter matches 7 run function wancomatter:skills/009/tick_aec7_2
execute if score @s counter matches 10 run function wancomatter:skills/009/tick_aec7_2
execute if score @s counter matches 13 run function wancomatter:skills/009/tick_aec7_2
execute if score @s counter matches 16 run function wancomatter:skills/009/tick_aec7_2
execute if score @s counter matches 18 run function wancomatter:skills/009/tick_aec7_2
execute if score @s counter matches 23 run function wancomatter:skills/009/tick_aec7_3
execute if score @s counter matches 24 run function wancomatter:skills/009/tick_aec7_4
execute if score @s counter matches 25 run function wancomatter:skills/009/tick_aec7_5
execute if score @s counter matches 26 run function wancomatter:skills/009/tick_aec7_6
execute if score @s counter matches 28 run function wancomatter:skills/009/tick_aec7_7

execute if score @s counter matches ..18 run particle minecraft:flame ~ ~ ~ 0 0 0 0.3 60 normal @a
execute if score @s counter matches ..18 run particle minecraft:flame ~ ~ ~ 0 0 0 0.3 20 force @a
execute if score @s counter matches ..17 run tp @s ~ ~2 ~

