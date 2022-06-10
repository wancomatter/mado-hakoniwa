data merge storage wnkm:storage_damage {Damage:12.0f,WeaponNumber:-47,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @e[tag=dusk,limit=1] playerNumber
execute if score #difficult counter matches 2 run data modify storage wnkm:storage_damage Damage set value 15.0f
execute if score #difficult counter matches 3 run data modify storage wnkm:storage_damage Damage set value 20.0f
execute if score #difficult counter matches 4 run data modify storage wnkm:storage_damage Damage set value 27.0f
execute as @e[tag=hit] run function wancomatter:general/damagetaken/storage_damage
tag @e[tag=hit] remove hit