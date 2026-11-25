execute unless score @s subcounter2 matches 20.. run effect give @e[tag=dusk] minecraft:slowness 1 9
execute if score @s subcounter2 matches 30.. run function wancomatter:boss/dusk/skill7/30-
execute unless score @s subcounter2 matches 30.. run scoreboard players add @s subcounter2 1
