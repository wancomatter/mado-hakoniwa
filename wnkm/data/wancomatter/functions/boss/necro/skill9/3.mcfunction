scoreboard players add @s counter 1
particle minecraft:flash ~ ~ ~ 0 0 0 1 1 force @a
particle witch ~ ~ ~ 0.6 0.6 0.6 1 12 normal @a
particle witch ~ ~ ~ 0.4 0.4 0.4 1 3 force @a
execute as @e[distance=..2.3,scores={maxHP=1..}] unless score @s teamNumber = #necroBoss teamNumber run tag @s add hit
execute positioned ^ ^ ^-0.9 as @e[distance=..2.3,scores={maxHP=1..}] unless score @s teamNumber = #necroBoss teamNumber run tag @s add hit
execute if entity @a[tag=hit,limit=1] run scoreboard players set @s counter 100
execute if entity @a[tag=hit,limit=1] as @e[tag=hit] at @s run function wancomatter:boss/necro/skill9/hit
execute unless score #difficult counter matches 2..4 run tp @s ^ ^ ^0.90
execute if score #difficult counter matches 2 run tp @s ^ ^ ^1.20
execute if score #difficult counter matches 3 run tp @s ^ ^ ^1.80
execute if score #difficult counter matches 4 run tp @s ^ ^ ^2.40
execute if score @s counter matches 41.. run kill @s
