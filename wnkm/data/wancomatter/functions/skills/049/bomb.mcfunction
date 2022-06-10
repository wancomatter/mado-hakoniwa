playsound minecraft:entity.creeper.primed master @a ~ ~ ~ 1 0.5
particle minecraft:smoke ~ ~ ~ 0.5 0.5 0.5 0.1 80 normal @a
particle minecraft:smoke ~ ~ ~ 0.5 0.5 0.5 0.1 20 force @a

execute store result score @s playerNumber run data get entity @s Effects[0].Duration
scoreboard players reset #dummy
tag @s add grenadeAEC
data remove entity @s Effects[0]