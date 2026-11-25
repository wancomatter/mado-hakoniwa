scoreboard players set @s hurtWeaponNumber -65
scoreboard players operation @s hurtByNumber = @e[tag=necro,limit=1] playerNumber
execute unless score #difficult counter matches 4 run scoreboard players operation @s damageTaken *= #3 counter
execute if score #difficult counter matches 4 run scoreboard players operation @s damageTaken *= #4 counter
scoreboard players operation @s damageTaken /= #2 counter
advancement revoke @s only wancomatter:boss/necro/s5
