effect give @s slowness 1 3
data merge storage wnkm:storage_damage {Damage:2.5f,WeaponNumber:144,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:0b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get #dummy playerNumber
function wancomatter:general/damagetaken/storage_damage
tag @s remove hit
