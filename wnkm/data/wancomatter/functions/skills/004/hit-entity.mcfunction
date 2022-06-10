data merge storage wnkm:storage_damage {Damage:9.6f,WeaponNumber:4,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @s playerNumber
execute as @e[tag=stoneblast-hit] run function wancomatter:general/damagetaken/storage_damage
tag @e[tag=stoneblast-hit] remove stoneblast-hit
kill @s