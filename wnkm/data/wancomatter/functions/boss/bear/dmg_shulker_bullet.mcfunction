#6+4, 10+8, 14+10, 18+17
execute unless score #difficult counter matches 2..4 run scoreboard players operation @s damageTaken *= #3 counter
execute if score #difficult counter matches 2 run scoreboard players operation @s damageTaken *= #5 counter
execute if score #difficult counter matches 3 run scoreboard players operation @s damageTaken *= #7 counter
execute if score #difficult counter matches 4 run scoreboard players operation @s damageTaken *= #9 counter
scoreboard players operation @s damageTaken /= #2 counter
effect clear @s levitation
execute unless score #difficult counter matches 2..4 run effect give @s levitation 3 2
execute if score #difficult counter matches 2 run effect give @s levitation 4 2
execute if score #difficult counter matches 3 run effect give @s levitation 4 3
execute if score #difficult counter matches 4 run effect give @s levitation 6 3
scoreboard players set @s hurtWeaponNumber -11
scoreboard players operation @s hurtByNumber = @e[tag=bear_c,limit=1] playerNumber
advancement revoke @s only wancomatter:boss/bear_shulker_bullet
