effect give @a[tag=hit,limit=1,sort=nearest] minecraft:slowness 1 3
data merge storage wnkm:storage_damage {Damage:6.0f,WeaponNumber:-5,DamageType:1b,isMultiDamage:1b,isKnockbackDamage:0b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @e[tag=bear_p,limit=1] playerNumber
execute if score #difficult counter matches 2 run data modify storage wnkm:storage_damage Damage set value 8.0f
execute if score #difficult counter matches 3 run data modify storage wnkm:storage_damage Damage set value 12.0f
execute if score #difficult counter matches 4 run data modify storage wnkm:storage_damage Damage set value 18.0f
execute as @a[tag=hit,limit=1,sort=nearest] run function wancomatter:general/damagetaken/storage_damage

summon armor_stand ~ ~ ~ {Tags:["this","bear_plant_hit_stand"],Invisible:1b,Marker:1b,NoGravity:1b}
scoreboard players operation @e[tag=this] playerNumber = @a[tag=hit,limit=1,sort=nearest] playerNumber
tag @a[tag=this] remove this
tag @a[tag=hit] add bear_plant_hitting
tag @a[tag=hit] remove hit
particle minecraft:dust 0.4 0.9 1 2 ^1 ^ ^1 0 1.5 0 1 100 force @a
particle minecraft:dust 0.4 0.9 1 2 ^-1 ^ ^1 0 1.5 0 1 100 force @a
particle minecraft:dust 0.4 0.9 1 2 ^-1 ^ ^-1 0 1.5 0 1 100 force @a
particle minecraft:dust 0.4 0.9 1 2 ^1 ^ ^-1 0 1.5 0 1 100 force @a
particle minecraft:dust 0.4 0.9 1 2 ^1.414 ^ ^ 0 1.5 0 1 100 normal @a
particle minecraft:dust 0.4 0.9 1 2 ^-1.414 ^ ^ 0 1.5 0 1 100 normal @a
particle minecraft:dust 0.4 0.9 1 2 ^ ^ ^1.414 0 1.5 0 1 100 normal @a
particle minecraft:dust 0.4 0.9 1 2 ^ ^ ^-1.414 0 1.5 0 1 100 normal @a
playsound minecraft:block.glass.break master @a ~ ~ ~ 1.2 0.5
playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 0.9 2
kill @s