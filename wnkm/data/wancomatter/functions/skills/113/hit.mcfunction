data merge storage wnkm:storage_damage {Damage:1.0f,WeaponNumber:113,DamageType:0b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @a[tag=user,limit=1,sort=nearest] playerNumber
execute store result storage wnkm:storage_damage Damage float 0.1 run scoreboard players get @s subcounter2
execute if entity @s[tag=109stream7] run data modify storage wnkm:storage_damage DamageType set value 2b
execute as @e[tag=hit] run function wancomatter:general/damagetaken/storage_damage
tag @e[tag=hit] remove hit
