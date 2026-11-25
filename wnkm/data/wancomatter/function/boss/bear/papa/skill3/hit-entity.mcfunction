
execute unless score #difficult counter matches 2..4 run effect give @a[tag=hit] minecraft:slowness 9 1
execute if score #difficult counter matches 2 run effect give @a[tag=hit] minecraft:slowness 13 1
execute if score #difficult counter matches 3 run effect give @a[tag=hit] minecraft:slowness 20 1
execute if score #difficult counter matches 4 run effect give @a[tag=hit] minecraft:slowness 30 1
data merge storage wnkm:storage_damage {Damage:12.0f,WeaponNumber:-4,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @e[tag=bear_p,limit=1] playerNumber
execute if score #difficult counter matches 2 run data modify storage wnkm:storage_damage Damage set value 16.0f
execute if score #difficult counter matches 3 run data modify storage wnkm:storage_damage Damage set value 24.0f
execute if score #difficult counter matches 4 run data modify storage wnkm:storage_damage Damage set value 36.0f
execute as @e[tag=hit] run function wancomatter:general/damagetaken/storage_damage
tag @e[tag=hit] remove hit
