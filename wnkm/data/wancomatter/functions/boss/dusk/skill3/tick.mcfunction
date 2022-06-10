scoreboard players add @s counter 1

execute if score @s counter matches 11 as @e[tag=dusk,limit=1,sort=nearest] positioned as @s run function wancomatter:boss/dusk/skill3/ready
execute if score @s counter matches ..13 as @e[tag=dusk,limit=1,sort=nearest] at @s run function wancomatter:boss/dusk/skill3/charge
execute if score @s counter matches 14.. run tag @s add this
execute if score @s counter matches 14.. as @e[tag=dusk,limit=1,sort=nearest] positioned as @s run function wancomatter:boss/dusk/skill3/rush
execute if score @s counter matches 14.. run tag @s remove this
execute if score @s counter matches 28.. as @e[tag=dusk] run data modify entity @s Attributes[{Name:"generic.movement_speed"}].Base set value 0.24d
execute if score @s counter matches 28.. run kill @s