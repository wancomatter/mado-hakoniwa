scoreboard players set @s hurtWeaponNumber -24
scoreboard players operation @s hurtByNumber = @e[tag=detonator,limit=1] playerNumber
advancement revoke @s only wancomatter:boss/detonator/s4