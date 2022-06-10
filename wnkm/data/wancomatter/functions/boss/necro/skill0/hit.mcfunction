execute as @e[scores={maxHP=1..},distance=..3.3] unless score @s teamNumber = #necroBoss teamNumber run tag @s add hit
data merge storage wnkm:storage_damage {Damage:4.5f,WeaponNumber:-60,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @e[tag=necro,limit=1] playerNumber
execute if score #difficult counter matches 2 run data modify storage wnkm:storage_damage Damage set value 6.0f
execute if score #difficult counter matches 3 run data modify storage wnkm:storage_damage Damage set value 9.0f
execute if score #difficult counter matches 4 run data modify storage wnkm:storage_damage Damage set value 13.5f
execute as @e[tag=hit] run function wancomatter:general/damagetaken/storage_damage
tag @e[tag=hit] remove hit


execute unless score #difficult counter matches 2..4 run scoreboard players set @s damageTaken 45
execute if score #difficult counter matches 2 run scoreboard players set @s damageTaken 60
execute if score #difficult counter matches 3 run scoreboard players set @s damageTaken 90
execute if score #difficult counter matches 4 run scoreboard players set @s damageTaken 135
tag @s add magicDamage
scoreboard players set @s hurtByNumber -60
tag @s remove hit