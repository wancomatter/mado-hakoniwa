execute as @e[tag=necro_stand,tag=!necro_stand_b] run function wancomatter:boss/necro/pose_first
execute as @e[tag=necro_stand,tag=!necro_stand_b] run scoreboard players set @s counter 10

execute as @e[tag=necro_stand_r] run scoreboard players remove @s Cooldown4 20
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown5 40
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown6 0

execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown4 20
#execute as @e[tag=necro_stand_l] run scoreboard players remove @s Cooldown5 40
#execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown6 0

summon minecraft:armor_stand ~ 7.0 ~ {Tags:["first","necro_s10_circle"],Invisible:1b,NoGravity:1b,Marker:1b,Fire:32767s,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{CustomModelData:105}}]}
execute at @e[tag=first,limit=1] run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 5 0.8
tag @e[tag=first] remove first

