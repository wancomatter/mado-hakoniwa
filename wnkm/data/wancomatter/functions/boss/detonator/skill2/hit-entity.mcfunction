data merge storage wnkm:storage_damage {Damage:13.0f,WeaponNumber:-22,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @e[tag=detonator,limit=1] playerNumber
execute as @e[tag=b1s2shot-hit] run function wancomatter:general/damagetaken/storage_damage
tag @e[tag=b1s2shot-hit] remove b1s2shot-hit