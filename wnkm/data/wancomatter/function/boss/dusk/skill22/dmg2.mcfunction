data merge storage wnkm:storage_damage {Damage:10.0f,WeaponNumber:-52,DamageType:2b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @e[tag=dusk,limit=1] playerNumber
execute if score #difficult counter matches 2 run data modify storage wnkm:storage_damage Damage set value 13.4f
execute if score #difficult counter matches 3 run data modify storage wnkm:storage_damage Damage set value 20.0f
execute if score #difficult counter matches 4 run data modify storage wnkm:storage_damage Damage set value 30.0f
function wancomatter:general/damagetaken/storage_damage
tag @s remove hit
