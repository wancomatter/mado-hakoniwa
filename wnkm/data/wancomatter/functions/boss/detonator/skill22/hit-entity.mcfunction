execute at @e[tag=b1s22shot-hit] run summon lightning_bolt ~ 9.2 ~
execute at @e[tag=b1s22shot-hit] run summon lightning_bolt ~ 9.2 ~
execute at @e[tag=b1s22shot-hit] run summon lightning_bolt ~ 9.2 ~
data merge storage wnkm:storage_damage {Damage:15.0f,WeaponNumber:-32,DamageType:2b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @e[tag=detonator,limit=1] playerNumber
execute if score #difficult counter matches 2 run data modify storage wnkm:storage_damage Damage set value 18.0f
execute if score #difficult counter matches 3 run data modify storage wnkm:storage_damage Damage set value 24.0f
execute if score #difficult counter matches 4 run data modify storage wnkm:storage_damage Damage set value 36.0f
execute as @e[tag=b1s22shot-hit] run function wancomatter:general/damagetaken/storage_damage
tag @e[tag=b1s22shot-hit] remove b1s22shot-hit
