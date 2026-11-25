execute as @e[tag=necro_stand,tag=!necro_stand_b] run function wancomatter:boss/necro/pose_first
execute as @e[tag=necro_stand,tag=!necro_stand_b] run scoreboard players set @s counter 8

execute as @e[tag=necro_stand_r] run scoreboard players remove @s Cooldown4 20
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown5 0
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown6 0

execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown4 10
#execute as @e[tag=necro_stand_l] run scoreboard players remove @s Cooldown5 0
#execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown6 0

summon area_effect_cloud ~ ~ ~ {Duration:30,Tags:["necro_s5_flag","wnkm.owned","wnkm.round"],potion_duration_scale:0.25f}
execute at @e[tag=necro_s5pigman,tag=!necro_s5pigman_center,scores={dummy=1}] run summon lightning_bolt ~ ~ ~ {Tags:["wnkm.owned","wnkm.round"]}
execute at @e[tag=necro_s5pigman,tag=!necro_s5pigman_center] run summon creeper ~ ~-20.3 ~ {ExplosionRadius:1,Fuse:0,Tags:["first","necro_s5_explosion","wnkm.owned","wnkm.round"],powered:1b}
execute as @e[tag=first] at @s run tp @s ~ ~20 ~
tag @e[tag=first] remove first
scoreboard players set @e[tag=necro] instantDMGshield 100
scoreboard players set @e[tag=necro] instantDMGS_time 8

kill @e[tag=necro_s5_target_pos]
kill @e[tag=necro_s5pigman]
