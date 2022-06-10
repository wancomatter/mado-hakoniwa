scoreboard players add @s counter 1
particle minecraft:rain ~ ~4 ~ 4 4 4 1 16 normal @a
particle minecraft:rain ~ ~4 ~ 4 4 4 1 4 force @a
execute if score @s counter matches 12 run particle minecraft:block blue_wool ~ ~ ~ 0 0 0 1 1 force @a
execute if score @s counter matches 1 run playsound minecraft:weather.rain master @a ~ ~ ~ 1.5 0.5
execute if score @s counter matches 10.. rotated as @s run function wancomatter:skills/014/heal-particle
execute if score @s counter matches 10.. run scoreboard players set @s dummy 0
execute if score @s counter matches 20.. run function wancomatter:skills/014/heal
execute if score @s subcounter matches 10.. run kill @s