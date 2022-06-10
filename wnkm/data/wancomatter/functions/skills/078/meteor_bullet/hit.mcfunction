scoreboard players operation #dummy playerNumber = @s playerNumber
scoreboard players operation #dummy teamNumber = @s teamNumber

effect give @e[tag=hit] slowness 4 0
effect give @e[tag=hit] blindness 1 0
execute as @e[tag=hit] if score @s teamNumber = #dummy teamNumber run tag @s remove hit

data merge storage wnkm:storage_damage {Damage:16.0f,WeaponNumber:78,DamageType:2b,isMultiDamage:1b,isKnockbackDamage:0b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get #dummy playerNumber
execute as @e[tag=hit] run function wancomatter:general/damagetaken/storage_damage
execute if entity @e[tag=hit] as @a if score @s playerNumber = #dummy playerNumber run playsound minecraft:entity.arrow.hit_player master @s ~ -20 ~ 0 0.5 0.6
tag @e[tag=hit] remove hit
scoreboard players reset #dummy