data merge storage wnkm:storage_damage {Damage:3.0f,WeaponNumber:18,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get #dummy playerNumber
#execute if score @s Mana matches ..2 run data modify storage wnkm:storage_damage Damage set value 3.0f
execute if score @s Mana matches 3..5 run data modify storage wnkm:storage_damage Damage set value 6.0f
execute if score @s Mana matches 6.. run data modify storage wnkm:storage_damage Damage set value 9.0f
execute as @e[tag=hit] run function wancomatter:general/damagetaken/storage_damage
tag @e[tag=hit] remove hit
