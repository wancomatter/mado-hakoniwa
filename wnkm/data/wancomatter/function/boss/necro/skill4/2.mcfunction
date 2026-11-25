execute as @e[tag=necro_stand,tag=!necro_stand_b] run function wancomatter:boss/necro/pose_first
execute as @e[tag=necro_stand,tag=!necro_stand_b] run scoreboard players set @s counter 10

#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown4 0
execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown5 10
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown6 0

#execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown4 0
execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown5 10
#execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown6 0

execute at @e[tag=necro] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 3 1
execute at @e[tag=necro] run particle minecraft:dragon_breath ~ ~ ~ 0 0 0 1 1000 normal @a
execute at @e[tag=necro] run particle minecraft:dragon_breath ~ ~ ~ 0 0 0 1 250 force @a
