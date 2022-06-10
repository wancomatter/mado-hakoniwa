#kill-log95番に騎士盾が何故かあるので94番で代用
data merge storage wnkm:storage_damage {Damage:3.5f,WeaponNumber:94,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get #dummy playerNumber
function wancomatter:general/damagetaken/storage_damage
tag @s remove hit
