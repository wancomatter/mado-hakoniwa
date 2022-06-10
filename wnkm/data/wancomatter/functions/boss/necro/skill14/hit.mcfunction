execute unless score #difficult counter matches 4 run effect give @s slowness 7 1
execute if score #difficult counter matches 4 run effect give @s slowness 10 1
data merge storage wnkm:storage_damage {Damage:9.0f,WeaponNumber:-76,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @e[tag=necro,limit=1] playerNumber
execute if score #difficult counter matches 2 run data modify storage wnkm:storage_damage Damage set value 12.0f
execute if score #difficult counter matches 3 run data modify storage wnkm:storage_damage Damage set value 20.0f
execute if score #difficult counter matches 4 run data modify storage wnkm:storage_damage Damage set value 25.0f
function wancomatter:general/damagetaken/storage_damage
tag @s remove hit
