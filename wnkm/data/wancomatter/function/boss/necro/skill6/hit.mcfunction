execute unless score #difficult counter matches 2..4 run effect give @s wither 5 1
execute if score #difficult counter matches 2 run effect give @s wither 7 1
execute if score #difficult counter matches 3 run effect give @s wither 10 1
execute if score #difficult counter matches 4 run effect give @s wither 7 2
data merge storage wnkm:storage_damage {Damage:18.0f,WeaponNumber:-66,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @e[tag=necro,limit=1] playerNumber
execute if score #difficult counter matches 2 run data modify storage wnkm:storage_damage Damage set value 22.0f
execute if score #difficult counter matches 3 run data modify storage wnkm:storage_damage Damage set value 25.0f
execute if score #difficult counter matches 4 run data modify storage wnkm:storage_damage Damage set value 27.0f
function wancomatter:general/damagetaken/storage_damage
