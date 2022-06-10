execute at @e[tag=Braze-hit] run particle minecraft:flame ~ ~1 ~ 0 0 0 1 80 normal @a
execute at @e[tag=Braze-hit] run particle minecraft:flame ~ ~1 ~ 0 0 0 1 20 force @a
execute at @e[tag=Braze-hit] run particle minecraft:explosion ~ ~1 ~ 0 0 0 1 1 force @a
execute at @e[tag=Braze-hit] run particle minecraft:explosion ~ ~1 ~ 0.1 0.1 0.1 1 3 normal @a
execute at @e[tag=Braze-hit] run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 1.5 1

data merge storage wnkm:storage_damage {Damage:13.5f,WeaponNumber:17,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @s playerNumber
execute as @e[tag=Braze-hit] run function wancomatter:general/damagetaken/storage_damage
tag @e[tag=Braze-hit] remove Braze-hit
kill @s