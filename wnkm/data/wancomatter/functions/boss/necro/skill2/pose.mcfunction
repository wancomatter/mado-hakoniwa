execute as @e[tag=necro_stand,tag=necro_stand_r] run function wancomatter:boss/necro/pose_first
execute as @e[tag=necro_stand,tag=necro_stand_r] run scoreboard players set @s counter 6

execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown4 110
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown5 0
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown6 0
