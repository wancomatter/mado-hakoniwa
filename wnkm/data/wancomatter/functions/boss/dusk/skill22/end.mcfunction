scoreboard players reset @s Cooldown3_max
scoreboard players reset @s Cooldown2_max
execute unless score #difficult counter matches 4 run kill @e[tag=b3s22charge]
execute unless score #difficult counter matches 4 run kill @e[tag=b3s22block]
execute unless score #difficult counter matches 4 run kill @e[tag=b3s22hitbox]
tag @e[tag=b3s22] remove b3s22

