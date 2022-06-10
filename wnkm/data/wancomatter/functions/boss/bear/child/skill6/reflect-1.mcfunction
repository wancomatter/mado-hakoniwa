execute if score @s subcounter matches 1 store result score @s Cooldown1 run data get entity @s Rotation[0] 100
execute if score @s subcounter matches 2 store result score @s Cooldown1 run data get entity @s Rotation[0] 100
execute if score @s subcounter matches 5 store result score @s Cooldown1 run data get entity @s Rotation[0] 100
execute if score @s subcounter matches 6 store result score @s Cooldown1 run data get entity @s Rotation[0] 100
execute if score @s subcounter matches 3 store result score @s Cooldown2 run data get entity @s Rotation[1] 100
execute if score @s subcounter matches 4 store result score @s Cooldown2 run data get entity @s Rotation[1] 100

execute if score @s Cooldown1 matches 18000.. run scoreboard players remove @s Cooldown1 36000
execute if score @s Cooldown1 matches ..-18000 run scoreboard players add @s Cooldown1 36000

execute if score @s subcounter matches 1..4 run scoreboard players set @s Cooldown4 -1
execute if score @s subcounter matches 5..6 run scoreboard players set @s Cooldown4 18000

execute if score @s subcounter matches 1..2 store result entity @s Rotation[0] float 0.01 run scoreboard players operation @s Cooldown1 *= @s Cooldown4
execute if score @s subcounter matches 5..6 store result entity @s Rotation[0] float 0.01 run scoreboard players operation @s Cooldown4 -= @s Cooldown1
execute if score @s subcounter matches 3..4 store result entity @s Rotation[1] float 0.01 run scoreboard players operation @s Cooldown2 *= @s Cooldown4
tp @s @s

execute if score @s subcounter matches 1.. run scoreboard players reset @s Cooldown4
execute if score @s subcounter matches 3..4 run scoreboard players reset @s Cooldown2
execute if score @s subcounter matches 1.. run scoreboard players reset @s Cooldown1
execute if score @s subcounter matches 1.. unless score @s Cooldown9 matches 3.. at @s run function wancomatter:boss/bear/child/skill6/reflect-2
execute if score @s subcounter matches 1.. run scoreboard players reset @s subcounter
