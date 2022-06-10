execute if entity @e[tag=b1stormbolt,limit=1] run scoreboard players set @s hurtWeaponNumber -21
execute if entity @e[tag=b1lightning,limit=1] run scoreboard players set @s hurtWeaponNumber -25
execute if entity @e[tag=b1stormbolt,limit=1] if entity @e[tag=b1lightning,limit=1] run scoreboard players set @s hurtWeaponNumber -20
scoreboard players operation @s hurtByNumber = @e[tag=detonator,limit=1] playerNumber