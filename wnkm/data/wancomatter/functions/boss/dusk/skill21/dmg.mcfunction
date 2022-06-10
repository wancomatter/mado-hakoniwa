execute as @a[tag=hit] if entity @s[gamemode=spectator] run tag @s remove hit

execute positioned as @e[tag=hit] run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a
execute positioned as @e[tag=hit] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 1.6
execute positioned as @e[tag=hit] run kill @e[distance=..3,tag=b3s21shot]

data merge storage wnkm:storage_damage {Damage:20.0f,WeaponNumber:-51,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @e[tag=dusk,limit=1] playerNumber
execute if score #difficult counter matches 2 run data modify storage wnkm:storage_damage Damage set value 25.0f
execute if score #difficult counter matches 3 run data modify storage wnkm:storage_damage Damage set value 30.0f
execute if score #difficult counter matches 4 run data modify storage wnkm:storage_damage Damage set value 36.0f
execute as @e[tag=hit] run function wancomatter:general/damagetaken/storage_damage
tag @e[tag=hit] remove hit
