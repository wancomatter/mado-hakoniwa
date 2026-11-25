data merge storage wnkm:storage_damage {Damage:1.0f,WeaponNumber:69,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @e[tag=097,limit=1] playerNumber
execute store result storage wnkm:storage_damage Damage float 0.1 run scoreboard players get @e[tag=097,limit=1,sort=nearest] Cooldown3
execute as @e[tag=hit] run function wancomatter:general/damagetaken/storage_damage
tag @s remove hit
