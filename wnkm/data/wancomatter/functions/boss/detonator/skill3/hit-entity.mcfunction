data merge storage wnkm:storage_damage {Damage:18.0f,WeaponNumber:-23,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @e[tag=detonator,limit=1] playerNumber
execute if score #difficult counter matches 2 run data modify storage wnkm:storage_damage Damage set value 24.0f
execute if score #difficult counter matches 3 run data modify storage wnkm:storage_damage Damage set value 36.0f
execute if score #difficult counter matches 4 run data modify storage wnkm:storage_damage Damage set value 54.0f
function wancomatter:general/damagetaken/storage_damage
