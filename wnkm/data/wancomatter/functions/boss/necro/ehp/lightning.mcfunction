execute unless entity @e[tag=necro_s5_flag,limit=1] run scoreboard players set @s WeaponNumber -75
execute unless entity @e[tag=necro_s5_flag,limit=1] if score #difficult counter matches 2 run scoreboard players operation @s damageTaken *= #3 counter
execute unless entity @e[tag=necro_s5_flag,limit=1] if score #difficult counter matches 3 run scoreboard players operation @s damageTaken *= #4 counter
execute unless entity @e[tag=necro_s5_flag,limit=1] if score #difficult counter matches 4 run scoreboard players operation @s damageTaken *= #5 counter
execute unless entity @e[tag=necro_s5_flag,limit=1] if score #difficult counter matches 2..4 run scoreboard players operation @s damageTaken /= #2 counter
scoreboard players operation @s hurtByNumber = @e[tag=necro,limit=1] playerNumber
execute if entity @e[tag=necro_s5_flag,limit=1] run scoreboard players set @s WeaponNumber -65
