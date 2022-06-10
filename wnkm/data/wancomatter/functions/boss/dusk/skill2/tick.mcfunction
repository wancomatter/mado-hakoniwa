scoreboard players add @s counter 1

execute if score @s counter matches 3.. run function wancomatter:boss/dusk/skill2/set_arrow

execute if score @s subcounter matches 3.. as @e[tag=dusk] run data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set value 0.24d
execute if score @s subcounter matches 3.. run kill @s