scoreboard players add @s counter 1
function wancomatter:skills/027/shot/particle
execute if score @s counter matches ..20 run function wancomatter:skills/027/shot/charge
execute if score @s counter matches 21.. run function wancomatter:skills/027/shot/2
execute if score @s counter matches 61.. run kill @s