execute if score #difficult counter matches 2 run tag @a[distance=..7.5,scores={maxHP=1..}] add hit
execute if score #difficult counter matches 3 run tag @a[distance=..9.0,scores={maxHP=1..}] add hit
execute if score #difficult counter matches 4 run tag @a[distance=..10.5,scores={maxHP=1..}] add hit
data merge storage wnkm:storage_damage {Damage:4.5f,WeaponNumber:-9,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @e[tag=bear_c,limit=1] playerNumber
execute if score #difficult counter matches 2 run data modify storage wnkm:storage_damage Damage set value 6.0f
execute if score #difficult counter matches 3 run data modify storage wnkm:storage_damage Damage set value 8.0f
execute if score #difficult counter matches 4 run data modify storage wnkm:storage_damage Damage set value 12.0f
execute as @e[tag=hit] run function wancomatter:general/damagetaken/storage_damage
tag @a[tag=hit] remove hit
scoreboard players set @s subcounter 0