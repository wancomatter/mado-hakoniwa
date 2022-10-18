execute as @a if score @s playerNumber = #work playerNumber run scoreboard players operation #work teamNumber = @s teamNumber
scoreboard players operation @s playerNumber = #work playerNumber
scoreboard players operation @s teamNumber = #work teamNumber
tp @s ~ ~ ~ ~180 ~
execute store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]
tag @s remove hit
scoreboard players reset #work