scoreboard players set @s hurtWeaponNumber -45
scoreboard players operation @s hurtByNumber = @e[tag=dusk,limit=1] playerNumber
advancement revoke @s only wancomatter:boss/dusk/s5