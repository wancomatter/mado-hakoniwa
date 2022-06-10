execute store result score #dummy dummy run data get entity @s Fire
execute if score #dummy dummy matches 1.. facing entity @e[tag=now,limit=1,sort=nearest] feet rotated ~ 0 run summon arrow ^ ^0.6 ^1 {Tags:["first","blue_fire_arrow"],damage:4.5d,Fire:32767s,PierceLevel:127b,life:1200s,SoundEvent:"minecraft:ui.toast.out"}
execute unless score #dummy dummy matches 1.. facing entity @e[tag=now,limit=1,sort=nearest] feet rotated ~ 0 run summon arrow ^ ^0.6 ^1 {Tags:["first","blue_fire_arrow"],damage:0.1d,Fire:32767s,PierceLevel:127b,life:1200s,SoundEvent:"minecraft:ui.toast.out"}
execute at @e[tag=first] facing entity @s feet rotated ~ 10 positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^0.7 {Tags:["vector"],Duration:1}
execute as @e[tag=first] run data modify entity @s Motion set from entity @e[tag=vector,limit=1] Pos
execute as @e[tag=first] run data modify entity @s Owner set from entity @a[tag=user,limit=1] UUID
kill @e[tag=vector]
tag @e[tag=first] remove first

tp @s @s
execute if entity @s[type=!player] run data remove entity @s Motion
attribute @s minecraft:generic.knockback_resistance modifier add 0-0-31-31-31 "instant_kb_resist" 1.0 add
scoreboard players set @s instantKB_resist 1
tag @s remove hit