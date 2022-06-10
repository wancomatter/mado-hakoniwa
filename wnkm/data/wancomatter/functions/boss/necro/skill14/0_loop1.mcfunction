summon minecraft:armor_stand ~ ~ ~ {Tags:["necro_s14_barrier","first"],ArmorItems:[{},{},{},{id:"minecraft:stone_hoe",Count:1b,tag:{CustomModelData:1}}],Pose:{Head:[0f,180f,0f]},Invisible:1b,NoGravity:1b,Marker:1b,Glowing:1b,Team:"Purple",Small:1b,Fire:32767s,Rotation:[0f,0f]}
tp @e[tag=first,limit=1] ~ ~ ~ ~ 0
scoreboard players operation @e[tag=first,limit=1] subcounter = #dummy dummy
scoreboard players add #dummy dummy 1
tag @e[tag=first] remove first
execute unless score #dummy dummy matches 4.. rotated ~120 0 run function wancomatter:boss/necro/skill14/0_loop1
