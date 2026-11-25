scoreboard players add @s counter 1
execute if score @s counter matches 8 run function wancomatter:boss/necro/skill5/2
execute if score @s counter matches 9..19 run function wancomatter:boss/necro/skill5/3
execute if score @s counter matches 20 run tp @s ^6 ^ ^
execute if score @s counter matches 25.. run function wancomatter:boss/necro/skill5/4
