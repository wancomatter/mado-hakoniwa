scoreboard players add @s subcounter2 1
execute if score @s subcounter2 matches 3.. run particle minecraft:lava ~ ~ ~ 0 0 0 0 1 force @a
execute if score @s subcounter2 matches 3.. run scoreboard players set @s subcounter2 0
particle minecraft:flame ~ ~ ~ 0 0 0 0 1 normal @a
particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force @a
#particle minecraft:lava ~ ~ ~ 0.1 0.1 0.1 0 2 normal @a

execute if data entity @s {OnGround:1b} run scoreboard players set @s counter 60
execute if score @s counter matches 59 run kill @s
execute if score @s counter matches 60 run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 0.6
execute if score @s counter matches 60 run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 1.2
execute if score @s counter matches 60 run particle minecraft:explosion ~ ~ ~ 0.1 0.1 0.1 0 5 normal @a
execute if score @s counter matches 60 run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force @a
execute if score @s counter matches 60 run data modify entity @s Marker set value 1b
