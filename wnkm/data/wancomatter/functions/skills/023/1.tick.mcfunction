scoreboard players add @s counter 1
scoreboard players add @s subcounter2 1
execute if score @s counter matches 1..47 run function wancomatter:skills/023/2.whip
execute if score @s subcounter2 matches 12.. run function wancomatter:skills/023/4.attack
#execute if score @s counter matches 48.. run kill @s