execute rotated ~0 ~-0 run particle minecraft:end_rod ~ ~ ~ ^ ^ ^1000000 0.000001 0 force
execute rotated ~21 ~-7 run particle minecraft:end_rod ~ ~ ~ ^ ^ ^1000000 0.000001 0 force
execute rotated ~42 ~-14 run particle minecraft:end_rod ~ ~ ~ ^ ^ ^1000000 0.000001 0 force
execute rotated ~63 ~-21 run particle minecraft:end_rod ~ ~ ~ ^ ^ ^1000000 0.000001 0 force
execute rotated ~84 ~-28 run particle minecraft:end_rod ~ ~ ~ ^ ^ ^1000000 0.000001 0 force
execute rotated ~105 ~-35 run particle minecraft:end_rod ~ ~ ~ ^ ^ ^1000000 0.000001 0 force
execute rotated ~126 ~-42 run particle minecraft:end_rod ~ ~ ~ ^ ^ ^1000000 0.000001 0 force

execute rotated ~ 0 run tp @s ^ ^ ^0.85 ~ ~-0.8
execute store result entity @s Rotation[0] float 0.08 run scoreboard players operation @s subcounter += @s counter
scoreboard players add @s counter 1
#particle minecraft:dust 1 0.871 0.969 1 ~ ~ ~ 0.03 0.03 0.03 0 1 normal @a
scoreboard players remove @s subcounter2 1
execute if score @s subcounter2 matches 0 run particle flash ~ ~ ~ 0 0 0 1 2 force @a
execute if score @s subcounter2 matches 0 run scoreboard players set @s subcounter2 4