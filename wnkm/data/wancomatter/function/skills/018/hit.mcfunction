data merge storage wnkm:storage_damage {Damage:8.0f,WeaponNumber:18,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get #dummy playerNumber

#execute if score @s Mana matches ..1 run data modify storage wnkm:storage_damage Damage set value 8.0f
execute if score @s Mana matches 2..4 run data modify storage wnkm:storage_damage Damage set value 10.0f
execute if score @s Mana matches 5..6 run data modify storage wnkm:storage_damage Damage set value 12.0f
execute if score @s Mana matches 7 run data modify storage wnkm:storage_damage Damage set value 15.0f
execute if score @s Mana matches 8 run data modify storage wnkm:storage_damage Damage set value 18.0f
execute if score @s Mana matches 9.. run data modify storage wnkm:storage_damage Damage set value 50.0f

#execute unless score @s Mana matches 9.. run tag @e[tag=hit] add magicDamage
execute if score @s Mana matches 9.. run data modify storage wnkm:storage_damage DamageType set value 2b
execute as @e[tag=hit] run function wancomatter:general/damagetaken/storage_damage
tag @e[tag=hit] remove hit
