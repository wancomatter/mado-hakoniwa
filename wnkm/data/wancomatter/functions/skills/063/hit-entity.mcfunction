data merge storage wnkm:storage_damage {Damage:6.0f,WeaponNumber:63,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get #dummy playerNumber
execute as @s run function wancomatter:general/damagetaken/storage_damage
tag @s remove hit
