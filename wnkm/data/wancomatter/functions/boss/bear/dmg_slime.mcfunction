execute unless score #difficult counter matches 4 run scoreboard players operation @s damageTaken *= #3 counter
execute if score #difficult counter matches 4 run scoreboard players operation @s damageTaken *= #7 counter
execute if score #difficult counter matches 4 run scoreboard players operation @s damageTaken /= #2 counter
scoreboard players set @s hurtWeaponNumber -7
scoreboard players operation @s hurtByNumber = @e[tag=bear_c,limit=1] playerNumber
advancement revoke @s only wancomatter:boss/bear_fannel_slime