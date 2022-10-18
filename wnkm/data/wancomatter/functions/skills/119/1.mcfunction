scoreboard players add @s counter 1
execute if entity @s[tag=flying_shield_core] run function wancomatter:skills/118/check_reflect
execute if score @s counter matches 39 if entity @s[tag=flying_shield_core] run function wancomatter:skills/118/2
execute if score @s counter matches 40.. run function wancomatter:skills/118/push
execute if score @s counter matches 80.. run function wancomatter:skills/118/kill