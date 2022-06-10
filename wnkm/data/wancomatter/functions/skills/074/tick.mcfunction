scoreboard players add @s counter 1
scoreboard players remove @s subcounter 1
execute if score @s counter matches 25 run function wancomatter:skills/074/explode
execute if score @s counter matches ..24 if score @s subcounter matches ..0 run function wancomatter:skills/074/tick1
execute if score @s counter matches 25.. if score @s subcounter matches ..0 run function wancomatter:skills/074/tick2
