data merge storage wnkm:storage_damage {Damage:11.0f,WeaponNumber:46,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @s playerNumber
execute as @e[tag=hit] run function wancomatter:general/damagetaken/storage_damage
#tag @e[tag=hit] add reserveHurtBy
tag @e[tag=hit] remove hit
