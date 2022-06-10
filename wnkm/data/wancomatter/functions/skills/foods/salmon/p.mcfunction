particle dust 0.968 0.576 0.514 1 ~ ~ ~ 1 1 1 1 4 normal @a
particle dust 0.968 0.576 0.514 1 ~ ~ ~ 1 1 1 1 1 force @a
execute if score #dummy counter matches 398 run function wancomatter:skills/foods/salmon/end
scoreboard players operation #dummy counter %= #5 counter
execute if score #dummy counter matches 1 run scoreboard players add @s HPCount 1