scoreboard players add @s counter 1
particle minecraft:end_rod ~ ~ ~ 0.03 0.03 0.03 0.03 1 force @a
particle minecraft:end_rod ~ ~ ~ 0.03 0.03 0.03 0.03 2 normal @a
particle minecraft:flame ~ ~ ~ 0.03 0.03 0.03 0.03 1 force @a
particle minecraft:flame ~ ~ ~ 0.03 0.03 0.03 0.03 2 normal @a
particle minecraft:dragon_breath ~ ~ ~ 0.03 0.03 0.03 0.03 1 force @a
particle minecraft:dragon_breath ~ ~ ~ 0.03 0.03 0.03 0.03 2 normal @a
execute unless score @s counter matches 100.. unless block ^ ^ ^0.8 #wancomatter:air run scoreboard players set @s counter 200

execute if score @s counter matches 200 run function wancomatter:boss/dusk/skill22/explosion
execute if score @s counter matches 200..400 run scoreboard players add @s subcounter 1
execute if score @s counter matches 200..400 unless score @s subcounter matches 20.. at @s run function wancomatter:boss/dusk/skill22/spread
execute if score @s counter matches 200..400 if score @s subcounter matches 20.. run function wancomatter:boss/dusk/skill22/spread_to_p_root

#1.0842021724855044340074528008699
execute unless score @s counter matches 100.. run tp @s ^ ^ ^0.8
execute if score @s counter matches 100..150 run kill @s
execute if score @s counter matches 350 if score #difficult counter matches 4 if entity @e[tag=b3s22charge,limit=1] as @e[tag=dusk] at @s run function wancomatter:boss/dusk/skill22/re-first
execute if score @s counter matches 400.. run kill @s