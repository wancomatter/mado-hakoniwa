scoreboard players set #dummy counter 6
scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber

execute unless block ^ ^ ^0.3 #wancomatter:air run scoreboard players set #dummy counter 0
execute if score #dummy counter matches 1.. run function wancomatter:skills/061/flying_loop
scoreboard players reset #dummy
