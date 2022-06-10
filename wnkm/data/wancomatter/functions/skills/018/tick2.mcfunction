scoreboard players add @s counter 1
execute if score @s counter matches 31..50 run function wancomatter:skills/018/tick_aec
execute if score @s counter matches 51.. run kill @s
