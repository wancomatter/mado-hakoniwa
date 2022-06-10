scoreboard players add @s counter 1
execute unless score #difficult counter matches 3..4 unless score @s counter matches 60.. run tp @s ^ ^ ^1.5 ~6 ~
execute unless score #difficult counter matches 3..4 if score @s counter matches 60.. run tp @s ^ ^ ^2 ~6 ~
execute if score #difficult counter matches 3..4 unless score @s counter matches 60.. run tp @s ^ ^ ^2 ~6 ~
execute if score #difficult counter matches 3..4 if score @s counter matches 60.. run tp @s ^ ^ ^2.5 ~6 ~
execute unless score #difficult counter matches 2..4 if score @s counter matches 41..70 run scoreboard players add @s subcounter 1
execute unless score #difficult counter matches 2..4 if score @s counter matches 41..70 if score @s subcounter matches 2.. run function wancomatter:boss/dusk/skill21/turret-shot
execute if score #difficult counter matches 2 if score @s counter matches 41..63 run function wancomatter:boss/dusk/skill21/turret-shot
execute if score #difficult counter matches 3 if score @s counter matches 41..70 run function wancomatter:boss/dusk/skill21/turret-shot
execute if score #difficult counter matches 4 if score @s counter matches 33..70 run function wancomatter:boss/dusk/skill21/turret-shot
particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.1 12 force @a
particle minecraft:end_rod ~ ~0.1 ~ 0 0 0 0 1 force @a
execute if score @s counter matches 81.. run kill @s