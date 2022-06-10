data merge storage wnkm:storage_damage {Damage:1.0f,WeaponNumber:47,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:0b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @s playerNumber
scoreboard players set @s dummy 78
execute store result storage wnkm:storage_damage Damage float 0.1 run scoreboard players operation @s dummy -= @s counter
effect give @e[tag=blizzard-hit] minecraft:slowness 3 3
execute as @e[tag=blizzard-hit] run function wancomatter:general/damagetaken/storage_damage
tag @e[tag=blizzard-hit] remove blizzard-hit