playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1.2 2
playsound minecraft:entity.player.splash.high_speed master @a ~ ~ ~ 1.5 2
particle minecraft:splash ~ ~ ~ 0.7 0.7 0.7 1 100
summon minecraft:area_effect_cloud ~ ~0.3 ~ {Tags:["zipped_water_AEC"],Duration:6}
execute as @e[tag=hit] run tp @s @s
execute at @e[tag=hit] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:5,Age:4,WaitTime:1,Radius:0.4f,Particle:"dust 0 0 0 0",Effects:[{Id:25,Amplifier:10b,Duration:6,ShowParticles:0b}]}

data merge storage wnkm:storage_damage {Damage:7.0f,WeaponNumber:90,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @s playerNumber
execute as @e[tag=hit] run function wancomatter:general/damagetaken/storage_damage
tag @e[tag=hit] remove hit

kill @s