data merge storage wnkm:storage_damage {Damage:12.0f,WeaponNumber:70,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:0b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @e[tag=this,limit=1] playerNumber
execute as @e[tag=suirou-hit] run function wancomatter:general/damagetaken/storage_damage

particle minecraft:dust 0 0 1 2 ^1 ^ ^1 0 1.5 0 1 100 force @a
particle minecraft:dust 0 0 1 2 ^-1 ^ ^1 0 1.5 0 1 100 force @a
particle minecraft:dust 0 0 1 2 ^-1 ^ ^-1 0 1.5 0 1 100 force @a
particle minecraft:dust 0 0 1 2 ^1 ^ ^-1 0 1.5 0 1 100 force @a
particle minecraft:dust 0 0 1 2 ^1.414 ^ ^ 0 1.5 0 1 100 normal @a
particle minecraft:dust 0 0 1 2 ^-1.414 ^ ^ 0 1.5 0 1 100 normal @a
particle minecraft:dust 0 0 1 2 ^ ^ ^1.414 0 1.5 0 1 100 normal @a
particle minecraft:dust 0 0 1 2 ^ ^ ^-1.414 0 1.5 0 1 100 normal @a
tp @s ~ ~ ~
tag @e[tag=suirou-hit,limit=1,sort=nearest] add suirou-hitting
tag @e[tag=suirou-hit] remove suirou-hit
scoreboard players set @s counter 100