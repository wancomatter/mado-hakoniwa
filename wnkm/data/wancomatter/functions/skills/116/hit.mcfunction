execute as @e[tag=hit,limit=1,sort=nearest] run tag @s add hit2
tag @e[tag=hit] remove hit

execute at @e[tag=hit2,limit=1] run playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 0.5 1.47
execute at @e[tag=hit2,limit=1] run particle item diamond_block ~ ~1 ~ 0.4 0.4 0.4 0.1 40 normal @a[distance=1..]
data merge storage wnkm:storage_damage {Damage:3.5f,WeaponNumber:116,DamageType:0b,isMultiDamage:1b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @s playerNumber
execute as @e[tag=hit2] run function wancomatter:general/damagetaken/storage_damage
tag @e[tag=hit2] remove hit2

tag @s add is_hit
kill @s
