particle minecraft:enchant ~ ~1.5 ~ 0 0 0 2 80 normal @a
particle minecraft:enchant ~ ~1.5 ~ 0 0 0 2 20 force @a
playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 10 2

summon armor_stand ^ ^1 ^3.3 {Invisible:1b,Small:1b,Invulnerable:1b,Tags:["necro_s6_shot","first"]}
execute as @e[tag=first] positioned as @s run tp @s ~ ~ ~ ~ 0
execute facing entity @e[tag=necro_s6_target,limit=1] feet positioned 0.0 -0.6 0.0 run summon area_effect_cloud ^ ^ ^0.5 {Tags:["vector"],Duration:1}
data modify entity @e[tag=first,limit=1] Motion set from entity @e[tag=vector,limit=1] Pos
execute if entity @s[tag=necro_s6_target_AEC] run kill @e[tag=necro_s6_random_target_AEC,limit=4,sort=nearest,distance=..3.7]
kill @e[tag=necro_s6_target]
kill @e[tag=vector]
tag @e[tag=first] remove first
