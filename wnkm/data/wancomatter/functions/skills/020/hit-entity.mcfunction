data merge storage wnkm:storage_damage {Damage:1.0f,WeaponNumber:20,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @s playerNumber

scoreboard players set @s dummy 10
scoreboard players operation @s dummy += @s subcounter
scoreboard players operation @s dummy *= #12 counter
scoreboard players operation @s dummy /= #5 counter
execute store result storage wnkm:storage_damage Damage float 0.1 run scoreboard players get @s dummy
execute as @e[tag=windcut-hit,limit=1,sort=nearest] run function wancomatter:general/damagetaken/storage_damage

tag @e[tag=windcut-hit] remove windcut-hit
kill @s