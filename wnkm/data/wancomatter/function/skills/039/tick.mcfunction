scoreboard players add @s counter 1
scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber

execute unless score @s counter matches 35.. run function wancomatter:skills/039/charge-tick
execute if score @s counter matches 35..99 run function wancomatter:skills/039/shot-tick
execute if score @s counter matches 100.. run function wancomatter:skills/039/thunder-tick


scoreboard players reset #dummy
execute if score @s counter matches 75..99 run kill @s
execute if score @s counter matches 112.. run kill @s
