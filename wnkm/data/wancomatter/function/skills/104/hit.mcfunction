data merge storage wnkm:storage_damage {Damage:6.0f,WeaponNumber:104,DamageType:2b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get #dummy playerNumber
function wancomatter:general/damagetaken/storage_damage
tag @s remove hit
