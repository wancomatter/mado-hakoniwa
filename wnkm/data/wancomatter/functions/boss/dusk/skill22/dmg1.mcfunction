data merge storage wnkm:storage_damage {Damage:30.0f,WeaponNumber:-52,DamageType:2b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @e[tag=dusk,limit=1] playerNumber
execute if score #difficult counter matches 2 run data modify storage wnkm:storage_damage Damage set value 40.0f
execute if score #difficult counter matches 3 run data modify storage wnkm:storage_damage Damage set value 60.0f
execute if score #difficult counter matches 4 run data modify storage wnkm:storage_damage Damage set value 90.0f
function wancomatter:general/damagetaken/storage_damage
tag @s remove hit
