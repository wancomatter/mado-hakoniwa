function wancomatter:boss/sils/pose_first
scoreboard players add @s Cooldown4 120
scoreboard players add @s Cooldown5 10
scoreboard players add @s Cooldown6 10
#
scoreboard players add @s Cooldown4_max 20

scoreboard players add @s Cooldown6_max 70
scoreboard players set @s Cooldown7_max 10


data modify entity @s HandItems set value [{id:"minecraft:trident",Count:1b},{}]

summon minecraft:armor_stand ~ ~1 ~ {Tags:["this"],Marker:1b,NoGravity:1b,Invisible:1b}
execute unless entity @e[tag=target,limit=1] positioned as @a[sort=nearest,limit=1,scores={maxHP=1..}] run summon area_effect_cloud ~ ~0.5 ~ {Duration:2,Tags:["target"]}
execute as @e[tag=this] at @s facing entity @e[tag=target,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ 0
execute as @e[tag=this] at @s facing ^1 ^ ^ run summon armor_stand ^ ^ ^0.5 {Tags:["this2","sils_gate"],Marker:1b,NoGravity:1b,Invisible:1b,DeathTime:4s}
execute as @e[tag=this] at @s facing ^-1 ^ ^ run summon armor_stand ^ ^ ^0.5 {Tags:["this2","sils_gate"],Marker:1b,NoGravity:1b,Invisible:1b,DeathTime:3s}
execute as @e[tag=this] at @s facing ^1 ^1 ^ run summon armor_stand ^ ^ ^0.5 {Tags:["this2","sils_gate"],Marker:1b,NoGravity:1b,Invisible:1b,DeathTime:2s}
execute as @e[tag=this] at @s facing ^-1 ^1 ^ run summon armor_stand ^ ^ ^0.5 {Tags:["this2","sils_gate"],Marker:1b,NoGravity:1b,Invisible:1b,DeathTime:1s}
execute as @e[tag=this] at @s facing ^ ^1 ^ run summon armor_stand ^ ^ ^0.5 {Tags:["this2","sils_gate","sils_sound"],Marker:1b,NoGravity:1b,Invisible:1b,DeathTime:0s}
execute as @e[tag=this] at @s as @e[tag=this2] facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~
execute as @e[tag=this2] store result score @s subcounter2 run data get entity @s DeathTime 1
tag @e[tag=this2] remove this2
kill @e[tag=target]
kill @e[tag=this]
particle minecraft:dust 0.1 0.1 1 1 ~ ~0.3 ~ 2 0.3 2 1 100 force @a
particle minecraft:dust 0.1 0.1 1 1 ~ ~0.3 ~ 0.8 1.5 0.8 1 300 normal @a
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 5 2