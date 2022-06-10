scoreboard players add @s Cooldown5_max 1
particle minecraft:lava ~ ~ ~ 0 0 0 1 3 force @a
particle minecraft:lava ~ ~ ~ 0 0 0 1 5 normal @a
execute if score @s Cooldown5_max matches 1..5 run particle minecraft:sweep_attack ~ ~2 ~ 2 3 2 1 20 normal @a
execute if score @s Cooldown5_max matches 1..5 run particle minecraft:sweep_attack ~ ~2 ~ 2 3 2 1 20 force @a
execute if score @s Cooldown5_max matches 13 run function wancomatter:boss/dusk/skill5/leap
execute if score @s Cooldown5_max matches 24 run effect give @s minecraft:luck 1 9 true
execute if score @s Cooldown5_max matches 24.. if data entity @s {OnGround:1b} run function wancomatter:boss/dusk/skill5/attack
execute if score @s Cooldown5_max matches 50.. run function wancomatter:boss/dusk/skill5/end