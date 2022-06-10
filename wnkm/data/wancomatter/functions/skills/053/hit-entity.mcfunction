execute as @e[tag=hit] at @s run tp @s @s
execute as @e[tag=hit,type=!player] run data remove entity @s Motion
execute positioned as @s run summon minecraft:marker ~ ~ ~ {Tags:["053"]}
execute positioned as @s run summon minecraft:marker ~ -5 ~ {Tags:["053"]}
execute as @e[tag=hit,tag=!projectile_wall] at @e[tag=053] at @e[tag=053] at @e[tag=053] at @e[tag=053] at @e[tag=053] at @s facing entity @e[tag=053,limit=1,sort=nearest] feet rotated ~ 0 run summon minecraft:slime ^ ^ ^0.2 {Size:0,NoAI:1b,DeathTime:16s,Silent:1b,Tags:["053slime"],ActiveEffects:[{Id:14,Duration:2147483647,ShowParticles:0b}]}
kill @e[tag=053]
schedule function wancomatter:skills/053/schedule 2t replace
effect give @e[tag=hit] minecraft:levitation 1 16 true
scoreboard players set @e[tag=hit] levitateOperate 4

data merge storage wnkm:storage_damage {Damage:7.0f,WeaponNumber:53,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @s playerNumber
execute as @e[tag=hit] run function wancomatter:general/damagetaken/storage_damage
tag @e[tag=hit] remove hit
