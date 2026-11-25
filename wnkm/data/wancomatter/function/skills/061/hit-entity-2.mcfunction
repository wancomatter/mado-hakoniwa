data merge storage wnkm:storage_damage {Damage:5.0f,WeaponNumber:61,DamageType:2b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @s playerNumber
execute as @e[tag=hit2] run function wancomatter:general/damagetaken/storage_damage
tag @e[tag=hit2] remove hit2
