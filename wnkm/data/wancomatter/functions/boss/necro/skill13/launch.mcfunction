execute as @e[tag=necro_stand,tag=!necro_stand_b] run function wancomatter:boss/necro/pose_first
execute as @e[tag=necro_stand,tag=!necro_stand_b] run scoreboard players set @s counter 10

execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown4 30
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown5 0
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown6 0

execute as @e[tag=necro_stand_l] run scoreboard players remove @s Cooldown4 10
#execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown5 0
#execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown6 0

playsound minecraft:entity.illusioner.prepare_blindness master @a ~ ~ ~ 3 2
summon armor_stand ~ ~-1 ~ {Tags:["necro_s13_fire","first"],Marker:1b,Invisible:1b,NoGravity:1b,Rotation:[0f,33f]}
data modify entity @e[tag=first,limit=1] Rotation[0] set from entity @s Pose.Head[1]
tag @e[tag=first] remove first

