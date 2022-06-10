data merge storage wnkm:storage_damage {Damage:8.5f,WeaponNumber:114,DamageType:0b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get #dummy playerNumber
execute if entity @s[type=player] run tag @s add scythe_attacked
function wancomatter:general/damagetaken/storage_damage
tag @s remove hit2