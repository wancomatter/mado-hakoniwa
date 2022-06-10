scoreboard players set @s Cooldown6 70

execute unless score #difficult counter matches 2..4 run scoreboard players set @s Cooldown7_max 80
execute unless score #difficult counter matches 2..4 run scoreboard players set @s Cooldown8_max 3

execute if score #difficult counter matches 2 run scoreboard players set @s Cooldown7_max 40
execute if score #difficult counter matches 2 run scoreboard players set @s Cooldown8_max 5

execute if score #difficult counter matches 3 run scoreboard players set @s Cooldown7_max 30
execute if score #difficult counter matches 3 run scoreboard players set @s Cooldown8_max 6

execute if score #difficult counter matches 4 run scoreboard players set @s Cooldown7_max 20
execute if score #difficult counter matches 4 run scoreboard players set @s Cooldown8_max 10

scoreboard players operation @s Cooldown7 = @s Cooldown7_max
scoreboard players remove @s Cooldown7 13
scoreboard players operation @s Cooldown6_max = @s Cooldown7_max
scoreboard players remove @s Cooldown6_max 16