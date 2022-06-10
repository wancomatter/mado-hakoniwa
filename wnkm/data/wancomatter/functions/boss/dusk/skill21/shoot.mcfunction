execute store result score @s subcounter run data get entity @s Rotation[0] 10
scoreboard players remove @s subcounter 150
scoreboard players operation @s subcounter2 = @s subcounter
scoreboard players add @s subcounter2 3600
execute unless score #difficult counter matches 2..4 run scoreboard players set @s dummy 600
execute if score #difficult counter matches 2 run scoreboard players set @s dummy 600
execute if score #difficult counter matches 3 run scoreboard players set @s dummy 600
execute if score #difficult counter matches 4 run scoreboard players set @s dummy 600
execute positioned 0 7 0 run function wancomatter:boss/dusk/skill21/shoot-loop