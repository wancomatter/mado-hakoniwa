execute as @e[tag=hit] at @s run tp @s @s
execute as @e[tag=hit,type=!player] run data remove entity @s Motion
execute positioned as @s run summon minecraft:marker ~ ~ ~ {Tags:["053","wnkm.owned","wnkm.round"]}
execute positioned as @s run summon minecraft:marker ~ -5 ~ {Tags:["053","wnkm.owned","wnkm.round"]}
execute as @e[tag=hit,tag=!projectile_wall] at @e[tag=053] at @e[tag=053] at @e[tag=053] at @e[tag=053] at @e[tag=053] at @s facing entity @e[tag=053,limit=1,sort=nearest] feet rotated ~ 0 run summon minecraft:slime ^ ^ ^0.2 {ActiveEffects:[{Duration:2147483647,Id:14,ShowParticles:0b}],DeathTime:16s,NoAI:1b,Silent:1b,Size:0,Tags:["053slime","wnkm.owned","wnkm.round"],active_effects:[{duration:2147483647,id:"minecraft:invisibility",show_particles:0b}]}
kill @e[tag=053]
schedule function wancomatter:skills/053/schedule 2t replace
effect give @e[tag=hit] minecraft:levitation 1 16 true
scoreboard players set @e[tag=hit] levitateOperate 4

data merge storage wnkm:storage_damage {Damage:7.0f,WeaponNumber:53,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @s playerNumber
execute as @e[tag=hit] run function wancomatter:general/damagetaken/storage_damage
tag @e[tag=hit] remove hit
