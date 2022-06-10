scoreboard players add @s Cooldown8_max 1
execute if score @s Cooldown8_max matches 14 run function wancomatter:boss/detonator/skill8/spread_root
execute if score @s Cooldown8_max matches 28 run function wancomatter:boss/detonator/skill8/spread_root
#execute if score @s Cooldown8_max matches 42 run function wancomatter:boss/detonator/skill8/spread_root
execute if score @s Cooldown8_max matches 42.. run tag @s remove b1s8
execute if score @s Cooldown8_max matches 42.. run scoreboard players reset @s Cooldown8_max