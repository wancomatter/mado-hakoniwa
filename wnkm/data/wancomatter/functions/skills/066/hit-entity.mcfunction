scoreboard players set @s counter 80
execute rotated as @a[tag=user,limit=1] positioned as @e[tag=hit,limit=1,sort=nearest] rotated ~ 0 positioned ^ ^ ^2.42 facing entity @e[tag=hit,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ ~
data modify entity @s Rotation[1] set from entity @e[tag=user,limit=1] Rotation[1]
scoreboard players set @s dummy 12
execute at @s unless block ~ ~1 ~ #wancomatter:air rotated ~ 0 run function wancomatter:skills/066/tp
tp @e[tag=user,limit=1] @s

data merge storage wnkm:storage_damage {Damage:7.0f,WeaponNumber:66,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:0b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get #dummy playerNumber
execute as @e[tag=hit,limit=1,sort=nearest] run function wancomatter:general/damagetaken/storage_damage
tag @e[tag=hit] remove hit