data merge storage wnkm:storage_damage {Damage:9.0f,WeaponNumber:-26,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @e[tag=detonator,limit=1] playerNumber
execute if score #difficult counter matches 2 run data modify storage wnkm:storage_damage Damage set value 12.0f
execute if score #difficult counter matches 3 run data modify storage wnkm:storage_damage Damage set value 18.0f
execute if score #difficult counter matches 4 run data modify storage wnkm:storage_damage Damage set value 27.0f
execute as @e[tag=b1s6shot-hit] run function wancomatter:general/damagetaken/storage_damage
tag @e[tag=b1s6shot-hit] remove b1s6shot-hit
