tag @s add usedskill
execute as @e[tag=necro_stand,tag=!necro_stand_b] run function wancomatter:boss/necro/pose_first
execute as @e[tag=necro_stand,tag=!necro_stand_b] run scoreboard players set @s counter 10

execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown4 20
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown5 40
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown6 0

execute as @e[tag=necro_stand_l] run scoreboard players remove @s Cooldown4 20
#execute as @e[tag=necro_stand_l] run scoreboard players remove @s Cooldown5 40
#execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown6 0

particle minecraft:dragon_breath ~ ~0.5 ~ 1 1 1 1 800 normal @a
particle minecraft:dragon_breath ~ ~0.5 ~ 1 1 1 1 200 force @a
particle minecraft:end_rod ~ ~0.5 ~ 1 1 1 1 400 normal @a
particle minecraft:end_rod ~ ~0.5 ~ 1 1 1 1 100 force @a
playsound minecraft:entity.skeleton_horse.death master @a ~ ~ ~ 4 0.5

summon minecraft:area_effect_cloud ~ 7.3 ~ {Tags:["first","necro_s12AEC","necro_s12AEC_base"],Duration:72,Rotation:[0f,0f]}
summon minecraft:area_effect_cloud ~ 7.3 ~ {Tags:["first","necro_s12AEC"],Duration:72,Rotation:[90f,0f]}
summon minecraft:area_effect_cloud ~ 7.3 ~ {Tags:["first","necro_s12AEC"],Duration:72,Rotation:[180f,0f]}
summon minecraft:area_effect_cloud ~ 7.3 ~ {Tags:["first","necro_s12AEC"],Duration:72,Rotation:[270f,0f]}

schedule function wancomatter:boss/necro/skill12/2 35t
schedule function wancomatter:boss/necro/skill12/2_2 50t
schedule function wancomatter:boss/necro/skill12/3 65t
schedule function wancomatter:boss/necro/skill12/end 75t