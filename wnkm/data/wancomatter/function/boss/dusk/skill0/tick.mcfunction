scoreboard players add @s counter 1
execute if score @s counter matches 40 run function wancomatter:boss/dusk/skill0/tick40
execute if score @s counter matches 45 if score #difficult counter matches 3..4 run function wancomatter:boss/dusk/skill0/tick45
execute if score @s counter matches 45..51 if score #difficult counter matches 3..4 run function wancomatter:boss/dusk/skill0/circle_first
execute if score @s counter matches 51 if score #difficult counter matches 3..4 run function wancomatter:boss/dusk/skill0/tick51
execute if score @s counter matches 101.. run kill @s
