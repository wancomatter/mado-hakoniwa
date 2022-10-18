data merge storage wnkm:storage_damage {Damage:4.0f,WeaponNumber:23,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @e[tag=me,limit=1,sort=nearest] playerNumber
function wancomatter:general/damagetaken/storage_damage
