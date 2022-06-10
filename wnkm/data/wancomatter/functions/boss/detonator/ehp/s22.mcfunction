scoreboard players set @s hurtWeaponNumber -32
scoreboard players operation @s hurtByNumber = @e[tag=detonator,limit=1] playerNumber
advancement revoke @s only wancomatter:boss/detonator/s22