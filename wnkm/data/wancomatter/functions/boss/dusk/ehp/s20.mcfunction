scoreboard players set @s hurtWeaponNumber -50
scoreboard players operation @s hurtByNumber = @e[tag=dusk,limit=1] playerNumber
advancement revoke @s only wancomatter:boss/dusk/s20