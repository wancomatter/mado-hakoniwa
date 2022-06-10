scoreboard players add @s counter 1
execute if entity @s[scores={counter=..29}] at @s run function wancomatter:skills/011/tick3
execute if entity @s[scores={counter=30}] at @s run function wancomatter:skills/011/active
execute if entity @s[scores={counter=31..}] at @s run function wancomatter:skills/011/circle

execute if score @s counter matches 200.. run kill @s
