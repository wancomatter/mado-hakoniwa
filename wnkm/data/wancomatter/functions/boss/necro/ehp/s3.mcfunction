scoreboard players set @s hurtWeaponNumber -63
scoreboard players operation @s hurtByNumber = @e[tag=necro,limit=1] playerNumber
advancement revoke @s only wancomatter:boss/necro/s3