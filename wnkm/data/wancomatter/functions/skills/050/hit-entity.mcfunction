data merge storage wnkm:storage_damage {Damage:6.0f,WeaponNumber:50,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @s playerNumber
execute if entity @e[tag=boss,tag=hit,limit=1] run scoreboard players add @s boss_hate 1000
execute if entity @e[tag=boss,tag=hit,limit=1] run scoreboard players add @s boss_hate2 1000
execute as @e[tag=hit] run function wancomatter:general/damagetaken/storage_damage
tag @e[tag=hit] remove hit