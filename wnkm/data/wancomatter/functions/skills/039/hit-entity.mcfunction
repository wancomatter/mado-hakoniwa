data merge storage wnkm:storage_damage {Damage:15.0f,WeaponNumber:39,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @s playerNumber
execute as @e[tag=shiden-hit] run function wancomatter:general/damagetaken/storage_damage
tag @e[tag=shiden-hit] remove shiden-hit