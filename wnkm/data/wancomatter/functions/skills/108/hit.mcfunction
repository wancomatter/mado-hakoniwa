execute as @e[tag=hit,limit=1,sort=nearest] run tag @s add hit2
tag @e[tag=hit] remove hit

execute at @e[tag=hit2,limit=1] run playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 1 0.8
execute at @e[tag=hit2,limit=1] run playsound minecraft:entity.player.attack.strong master @a ~ ~ ~ 1 0.7
execute at @e[tag=hit2,limit=1] run particle item iron_block ~ ~1 ~ 0.4 0.4 0.4 0.2 40 normal @a[distance=1..]
execute at @e[tag=hit2,limit=1] run particle crit ~ ~1 ~ 0.4 0.4 0.4 1 40 normal @a
data merge storage wnkm:storage_damage {Damage:9.5f,WeaponNumber:108,DamageType:0b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @s playerNumber
execute as @e[tag=hit2] run function wancomatter:general/damagetaken/storage_damage
tag @e[tag=hit2] remove hit2

tag @s add is_hit
kill @s
