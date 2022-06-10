scoreboard players add @s counter 1
scoreboard players add @s subcounter 1
execute store result entity @s Rotation[0] float -7 run scoreboard players get @s counter
execute at @s positioned ~ ~0.3 ~ run function wancomatter:skills/arrow/09/2-circle
execute if score @s counter matches 12.. at @s run function wancomatter:skills/arrow/09/2-20
execute if score @s subcounter matches 12.. at @s run function wancomatter:skills/arrow/09/dmg