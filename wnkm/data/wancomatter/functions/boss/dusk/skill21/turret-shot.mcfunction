summon minecraft:armor_stand ~ ~ ~ {Tags:["this","b3s21shot","b3s21wait","b3s21L"],Marker:1b,NoGravity:1b,Invisible:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:soul_sand",Count:1b}]}
summon minecraft:armor_stand ~ ~ ~ {Tags:["this","b3s21shot","b3s21wait","b3s21R"],Marker:1b,NoGravity:1b,Invisible:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:soul_sand",Count:1b}]}
execute as @e[tag=this,tag=b3s21L] rotated ~-90 0 run tp @s ^ ^ ^-0.2 ~ ~
execute as @e[tag=this,tag=b3s21R] rotated ~90 0 run tp @s ^ ^ ^-0.2 ~ ~
scoreboard players operation @e[tag=this] teamNumber = @s teamNumber
tag @e[tag=this] remove this
particle minecraft:flash ~ ~0.5 ~ 0 0 0 1 1 force @a
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 4 2
execute unless score #difficult counter matches 2..4 run scoreboard players set @s subcounter 0