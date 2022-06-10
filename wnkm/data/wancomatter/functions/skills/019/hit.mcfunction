particle minecraft:explosion ~ ~0.5 ~ 1 1 1 1 10
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1.4 1.6
execute positioned ~ ~ ~ as @e[distance=..2.2,scores={maxHP=1..}] unless score @s teamNumber = @e[tag=now,limit=1] teamNumber run tag @s add hit
execute positioned ~ ~1 ~ as @e[distance=..2.2,scores={maxHP=1..}] unless score @s teamNumber = @e[tag=now,limit=1] teamNumber run tag @s add hit

data merge storage wnkm:storage_damage {Damage:4.5f,WeaponNumber:19,DamageType:1b,isMultiDamage:1b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @s playerNumber
execute as @e[tag=hit] run function wancomatter:general/damagetaken/storage_damage
tag @e[tag=hit] remove hit

execute as @e[distance=..2.2,tag=antares_bit_shot] run kill @s
kill @s