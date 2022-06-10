scoreboard players add @s subcounter2 1
execute if score @s subcounter2 matches 5.. run function wancomatter:skills/arrow/07/arrowrain
execute if score @s subcounter2 matches 5.. run scoreboard players reset #dummy
scoreboard players reset @s subcounter
execute if score @s counter matches 1200.. run kill @s
