execute as @e[tag=necro_stand,tag=!necro_stand_b] run function wancomatter:boss/necro/pose_first
execute as @e[tag=necro_stand,tag=!necro_stand_b] run scoreboard players set @s counter 10

execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown4 100
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown5 40
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown6 0

execute as @e[tag=necro_stand_l] run scoreboard players remove @s Cooldown4 20
#execute as @e[tag=necro_stand_l] run scoreboard players remove @s Cooldown5 40
#execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown6 0

summon minecraft:area_effect_cloud ~ 7.0 ~ {Tags:["necro_s8_stand1"],Duration:35}
summon minecraft:area_effect_cloud ~ 7.0 ~ {Tags:["necro_s8_stand2"],Duration:35}
tag @e[tag=first] remove first

kill @e[tag=necro_s8skeleton]
