tp @s @s
execute if entity @s[type=!player] run data remove entity @s Motion
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["081"],Duration:1}
summon minecraft:area_effect_cloud ~ ~-20 ~ {Tags:["081"],Duration:1}
execute as @e[tag=hit,type=player,tag=!projectile_wall] at @e[tag=081,limit=2] at @e[tag=081,limit=2] at @e[tag=081,limit=2] at @e[tag=081,limit=2] at @e[tag=081,limit=2] at @e[tag=081,limit=2] at @s facing entity @e[tag=081,limit=1,sort=nearest] feet rotated ~ 0 run summon minecraft:slime ^ ^ ^0.2 {Size:0,NoAI:1b,DeathTime:16s,Silent:1b,Tags:["kill"],ActiveEffects:[{Id:14b,Duration:2147483647,ShowParticles:0b}]}
execute as @e[tag=hit,type=!player] at @s run function wancomatter:skills/081/motion
effect give @e[tag=hit] minecraft:levitation 1 10 true
scoreboard players set @e[tag=hit] levitateOperate 3

execute store result score #dummy Cooldown1 run data get entity @s Pos[0] 10
execute store result score #dummy Cooldown2 run data get entity @s Pos[1] 10
execute store result score #dummy Cooldown3 run data get entity @s Pos[2] 10
scoreboard players operation #dummy Cooldown1 -= #dummy Cooldown1_max
scoreboard players operation #dummy Cooldown2 -= #dummy Cooldown2_max
scoreboard players operation #dummy Cooldown3 -= #dummy Cooldown3_max
scoreboard players operation #dummy Cooldown1 *= #dummy Cooldown1
scoreboard players operation #dummy Cooldown2 *= #dummy Cooldown2
scoreboard players operation #dummy Cooldown3 *= #dummy Cooldown3
scoreboard players operation #dummy Cooldown1 += #dummy Cooldown2
scoreboard players operation #dummy Cooldown1 += #dummy Cooldown3
scoreboard players remove #dummy Cooldown1 3800
execute unless score #dummy Cooldown1 matches ..-1 run scoreboard players set #dummy Cooldown1 0
execute if score #dummy Cooldown1 matches ..-1 run scoreboard players operation #dummy Cooldown1 *= #-1 counter
scoreboard players operation #dummy Cooldown1 /= #16 counter
execute if score #dummy Cooldown1 matches 201.. run scoreboard players set #dummy Cooldown1 200

data merge storage wnkm:storage_damage {Damage:1.0f,WeaponNumber:81,DamageType:2b,isMultiDamage:0b,isKnockbackDamage:1b}
execute store result storage wnkm:storage_damage attackerPlayerNumber int 1 run scoreboard players get @e[tag=now,limit=1,sort=nearest] playerNumber
execute store result storage wnkm:storage_damage Damage float 0.1 run scoreboard players get #dummy Cooldown1
execute as @e[tag=hit] run function wancomatter:general/damagetaken/storage_damage
tag @s remove hit