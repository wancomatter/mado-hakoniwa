tp @s ^ ^ ^0.5
scoreboard players add @s counter 1
execute if score @s counter matches ..10 run function wancomatter:skills/091/tick_aec_1
execute if score @s counter matches 10 run function wancomatter:skills/091/tick_aec_2
execute if score @s counter matches 11.. run function wancomatter:skills/091/tick_aec_3
