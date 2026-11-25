playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1.2 2
playsound minecraft:entity.player.splash.high_speed master @a ~ ~ ~ 1.5 2
particle minecraft:splash ~ ~ ~ 0.7 0.7 0.7 1 100
summon minecraft:area_effect_cloud ~ ~0.3 ~ {Duration:6,Tags:["zipped_water_AEC","wnkm.owned","wnkm.round"],potion_duration_scale:0.25f}
execute as @e[tag=hit] run tp @s @s
execute at @e[tag=hit] run summon minecraft:area_effect_cloud ~ ~ ~ {Age:4,Duration:5,Effects:[{Amplifier:10b,Duration:6,Id:25,ShowParticles:0b}],Particle:"dust 0 0 0 0",Radius:0.4f,WaitTime:1,custom_particle:{color:[0.0f,0.0f,0.0f],scale:0.0f,type:"minecraft:dust"},potion_contents:{custom_effects:[{amplifier:10b,duration:6,id:"minecraft:levitation",show_particles:0b}]},potion_duration_scale:0.25f,Tags:["wnkm.owned","wnkm.round"]}

data merge storage wnkm:storage_damage {Damage:7.0f,WeaponNumber:90,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @s playerNumber
execute as @e[tag=hit] run function wancomatter:general/damagetaken/storage_damage
tag @e[tag=hit] remove hit

kill @s
