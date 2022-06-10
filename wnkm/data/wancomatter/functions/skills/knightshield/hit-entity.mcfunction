scoreboard players set @e[tag=hit] damageTaken 30
scoreboard players operation @e[tag=hit] hurtByNumber = @s playerNumber
execute as @e[tag=hit] at @s run tp @s @s
execute as @e[tag=hit,type=!player] run data remove entity @s Motion
execute positioned as @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["ks_AEC","kill"],Duration:1}
execute positioned as @s run summon minecraft:area_effect_cloud ~ -5 ~ {Tags:["ks_AEC","kill"],Duration:1}
execute as @e[tag=hit] at @e[tag=ks_AEC] at @s facing entity @e[tag=ks_AEC,limit=1,sort=nearest] feet rotated ~ 0 run summon minecraft:slime ^ ^ ^0.2 {Size:0,NoAI:1b,DeathTime:18s,Silent:1b,Tags:["kill"],ActiveEffects:[{Id:14b,Duration:2147483647,ShowParticles:0b}]}
effect give @e[tag=hit] minecraft:levitation 1 7 true
effect give @e[tag=hit] minecraft:slowness 2 1
effect give @e[tag=hit] minecraft:weakness 2 1
scoreboard players set @e[tag=hit] levitateOperate 4
kill @e[tag=kill]
scoreboard players set @e[tag=hit] hurtWeaponNumber 95
tag @e[tag=hit] add pysicalDamage
tag @e[tag=hit] remove hit