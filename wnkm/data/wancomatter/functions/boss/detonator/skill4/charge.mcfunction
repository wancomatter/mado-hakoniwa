scoreboard players add @s Cooldown4_max 1
execute if score @s Cooldown4_max matches 40.. run function wancomatter:boss/detonator/skill4/discharge20
execute if score @s Cooldown4_max matches 40.. run tag @s remove b1s4
execute if score @s Cooldown4_max matches 40.. run scoreboard players reset @s Cooldown4_max