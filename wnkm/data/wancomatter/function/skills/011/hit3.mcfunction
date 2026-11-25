
data merge storage wnkm:storage_damage {Damage:0.1f,WeaponNumber:11,DamageType:2b,isMultiDamage:1b,isKnockbackDamage:0b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get #dummy playerNumber
function wancomatter:general/damagetaken/storage_damage
tag @s remove hit2
