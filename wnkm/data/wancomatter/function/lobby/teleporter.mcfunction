scoreboard players add @s teleporter 2
scoreboard players operation @s dummy = @s teleporter
scoreboard players operation @s dummy %= #5 counter
execute if score @s dummy matches 2 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 0.6 1
execute if score @s teleporter matches 20.. run tp @s ~ ~6 ~
execute if score @s teleporter matches 20.. at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1
execute if score @s teleporter matches 20.. run scoreboard players reset @s teleporter
