scoreboard players remove @s dummy 1
execute if entity @e[tag=!hit,distance=..1.6,scores={maxHP=1..},limit=1] as @e[tag=!hit,distance=..2.1,scores={maxHP=1..}] unless score @s teamNumber = #necroBoss teamNumber run tag @s add hit
particle minecraft:sweep_attack ~ ~0.2 ~ 0.2 0.1 0.2 1 4 normal @a
particle minecraft:sweep_attack ~ ~0.2 ~ 0.1 0 0.1 1 1 force @a
particle minecraft:dragon_breath ~ ~-0.1 ~ 0.2 0.2 0.2 0.10 12 normal @a
execute unless score @s dummy matches 1.. run tp @s ^ ^-0.5 ^
execute if score @s dummy matches 1.. positioned ^ ^ ^0.4 run function wancomatter:boss/necro/skill1/sword/2-loop
