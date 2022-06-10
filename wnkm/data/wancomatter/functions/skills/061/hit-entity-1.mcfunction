data merge storage wnkm:storage_damage {Damage:6.5f,WeaponNumber:61,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @s playerNumber
execute as @e[tag=hit] run function wancomatter:general/damagetaken/storage_damage
tag @e[tag=hit] remove hit
scoreboard players set @s[scores={counter=..9}] counter 10
scoreboard players set #dummy counter 0

execute as @a[tag=denkou_addable] if score @s playerNumber = #dummy playerNumber run playsound minecraft:entity.arrow.hit_player master @s ~ -100 ~ 1 0.5 1