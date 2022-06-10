data merge storage wnkm:storage_damage {Damage:3.5f,WeaponNumber:117,DamageType:0b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @s playerNumber
execute as @e[tag=hit,limit=1] run function wancomatter:general/damagetaken/storage_damage
tag @e[tag=hit] remove hit

execute unless score @s subcounter matches 1.. run function wancomatter:skills/117/hit-moon
