scoreboard players set @s hurtWeaponNumber -64
scoreboard players operation @s hurtByNumber = @e[tag=necro,limit=1] playerNumber
advancement revoke @s only wancomatter:boss/necro/s4