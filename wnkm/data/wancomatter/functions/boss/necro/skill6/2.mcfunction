execute as @e[tag=necro_stand,tag=!necro_stand_b] run function wancomatter:boss/necro/pose_first
execute as @e[tag=necro_stand,tag=!necro_stand_b] run scoreboard players set @s counter 10

execute as @e[tag=necro_stand_r] run scoreboard players remove @s Cooldown4 10
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown5 0
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown6 0

#execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown4 0
#execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown5 0
#execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown6 0

scoreboard players remove @s Cooldown8_max 1
scoreboard players set @s Cooldown6_max 0

execute at @e[tag=necro_s6_random_target_AEC,limit=1,sort=random] run summon area_effect_cloud ~ ~ ~ {Tags:["necro_s6_target","necro_s6_target_AEC"],Duration:1}
execute facing entity @e[tag=necro_s6_target,limit=1] feet rotated ~ 0 run function wancomatter:boss/necro/skill6/2_use

execute as @a[scores={maxHP=1..},gamemode=!spectator,limit=1,sort=random] run tag @s add necro_s6_target_player
execute unless entity @e[tag=necro_s6_target_player,limit=1] as @a[limit=1,sort=random] run tag @s add necro_s6_target_player
execute at @e[tag=necro_s6_target_player,limit=1] run function wancomatter:boss/necro/skill6/2_target

