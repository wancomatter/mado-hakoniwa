data merge storage wnkm:storage_damage {Damage:3.0f,WeaponNumber:27,DamageType:1b,isMultiDamage:1b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @s ownerNumber
execute as @e[tag=hit,limit=1,sort=nearest] at @s run function wancomatter:general/damagetaken/storage_damage

tag @e[tag=hit] remove hit
scoreboard players add @s counter 100