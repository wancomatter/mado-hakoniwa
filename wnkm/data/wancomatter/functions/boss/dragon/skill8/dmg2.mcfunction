data merge storage wnkm:storage_damage {Damage:15.0f,WeaponNumber:-88,DamageType:1b,isMultiDamage:1b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @s playerNumber
execute if score #difficult counter matches 3 run data modify storage wnkm:storage_damage Damage set value 20.0f
execute if score #difficult counter matches 4 run data modify storage wnkm:storage_damage Damage set value 25.0f
execute as @e[tag=hit] run function wancomatter:general/damagetaken/storage_damage
tag @e[tag=hit] remove hit
scoreboard players set @s counter 200