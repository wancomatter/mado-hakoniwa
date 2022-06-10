data merge storage wnkm:storage_damage {Damage:2.5f,WeaponNumber:7,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:0b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @s playerNumber
execute as @e[tag=tornado-hit,tag=!tornado-hit-user] run function wancomatter:general/damagetaken/storage_damage
effect give @e[tag=tornado-hit] minecraft:levitation 1 10
scoreboard players reset #dummy counter
scoreboard players set @e[tag=tornado-hit] levitateOperate 2
tag @e[tag=tornado-hit-user] remove tornado-hit-user
tag @e[tag=tornado-hit] remove tornado-hit