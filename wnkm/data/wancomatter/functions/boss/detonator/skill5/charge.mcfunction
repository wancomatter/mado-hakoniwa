scoreboard players add @s Cooldown5_max 1
particle minecraft:smoke ~ ~5 ~ 2 2 2 1 20 normal @a
particle minecraft:smoke ~ ~5 ~ 2 2 2 1 4 force @a
particle minecraft:large_smoke ~ ~5 ~ 0.5 0.5 0.5 0 8 normal @a
particle minecraft:large_smoke ~ ~5 ~ 0.5 0.5 0.5 0 2 force @a
execute if score @s Cooldown5_max matches 15.. run function wancomatter:boss/detonator/skill5/discharge20
execute if score @s Cooldown5_max matches 15.. run tag @s remove b1s5
execute if score @s Cooldown5_max matches 15.. run scoreboard players reset @s Cooldown5_max