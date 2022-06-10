execute as @e[tag=GreL-hit] at @s run tp @s @s
execute positioned as @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["GreL_discharge","kill"],Marker:1b,NoGravity:1b,Invisible:1b}
execute positioned as @s run summon minecraft:armor_stand ~ -5 ~ {Tags:["GreL_discharge","kill"],Marker:1b,NoGravity:1b,Invisible:1b}
execute as @e[tag=GreL-hit] at @e[tag=GreL_discharge] at @e[tag=GreL_discharge] at @e[tag=GreL_discharge] at @e[tag=GreL_discharge] at @s facing entity @e[tag=GreL_discharge,limit=1,sort=nearest] feet rotated ~ 0 run summon minecraft:slime ^ ^ ^0.2 {Size:0,NoAI:1b,DeathTime:16s,Silent:1b,Tags:["034slime"],ActiveEffects:[{Id:14,Duration:2147483647,ShowParticles:0b}]}
#execute as @e[tag=GreL-hit] at @e[tag=GreL_discharge] at @e[tag=GreL_discharge] at @s facing entity @e[tag=GreL_discharge,limit=1,sort=nearest] feet rotated ~ 0 run summon minecraft:slime ^ ^ ^0.2 {Size:0,NoAI:1b,DeathTime:16s,Silent:1b,Tags:["kill"],ActiveEffects:[{Id:14,Duration:2147483647,ShowParticles:0b}]}
execute as @e[tag=GreL-hit] at @e[tag=GreL_discharge] as @s at @s rotated ~ 0 run summon minecraft:slime ^ ^ ^0.2 {Size:0,NoAI:1b,DeathTime:16s,Silent:1b,Tags:["034slime"],ActiveEffects:[{Id:14,Duration:2147483647,ShowParticles:0b}]}
execute as @e[tag=GreL-hit] run effect give @s minecraft:levitation 1 15 true
execute as @e[tag=GreL-hit] run scoreboard players set @s levitateOperate 4
schedule function wancomatter:skills/034/schedule 2t replace

data merge storage wnkm:storage_damage {Damage:11.0f,WeaponNumber:34,DamageType:1b,isMultiDamage:0b,isKnockbackDamage:0b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @s playerNumber
execute as @e[tag=GreL-hit] run function wancomatter:general/damagetaken/storage_damage

tag @e[tag=GreL-hit-user] remove GreL-hit-user
tag @e[tag=GreL-hit] remove GreL-hit