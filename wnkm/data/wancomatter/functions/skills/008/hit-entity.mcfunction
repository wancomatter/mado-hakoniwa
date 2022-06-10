data merge storage wnkm:storage_damage {Damage:6.5f,WeaponNumber:8,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @s playerNumber
execute as @e[tag=fireball-hit] run function wancomatter:general/damagetaken/storage_damage
tag @e[tag=fireball-hit] remove fireball-hit