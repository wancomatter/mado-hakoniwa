scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber

execute positioned ~-0.5 ~-1.63 ~-0.5 as @e[dx=0.0,dy=2.4,dz=0.0,scores={maxHP=1..}] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
execute as @e[distance=..1.0,scores={maxHP=1..},tag=!hit] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
execute positioned ~ ~1 ~ as @e[distance=..0.7,scores={maxHP=1..},tag=!hit] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
execute positioned ~ ~1.5 ~ as @e[distance=..0.5,scores={maxHP=1..},tag=!hit] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
execute positioned ~ ~1.8 ~ as @e[distance=..0.35,scores={maxHP=1..},tag=!hit] unless score @s teamNumber = #dummy teamNumber run tag @s add hit
execute if entity @e[tag=hit,limit=1] as @e[tag=hit] at @s run function wancomatter:skills/063/hit-entity
scoreboard players reset #dummy

particle minecraft:block dirt ~ ~1.6 ~ 0.4 0 0.4 1 2 normal @a
particle minecraft:block dirt ~ ~1.6 ~ 0.4 0 0.4 1 1 force @a

scoreboard players add @s counter 1
execute if score @s counter matches 2 run playsound minecraft:block.gravel.break master @a ~ ~ ~ 0.4 0.5
execute if score @s counter matches 6 run playsound minecraft:block.gravel.break master @a ~ ~ ~ 0.8 0.5
execute if score @s counter matches 10 run playsound minecraft:block.gravel.break master @a ~ ~ ~ 1.2 0.5
execute if score @s counter matches 14 run playsound minecraft:block.gravel.break master @a ~ ~ ~ 0.8 0.5
execute if score @s counter matches 18 run playsound minecraft:block.gravel.break master @a ~ ~ ~ 0.4 0.5
execute if score @s counter matches 1..9 run tp @s ~ ~0.5 ~ ~13 ~
execute if score @s counter matches 10 run tp @s ~ ~0.25 ~ ~13 ~
execute if score @s counter matches 11 run tp @s ~ ~-0.25 ~ ~13 ~
execute if score @s counter matches 12..20 run tp @s ~ ~-0.5 ~ ~13 ~
execute if score @s counter matches 21.. run kill @s