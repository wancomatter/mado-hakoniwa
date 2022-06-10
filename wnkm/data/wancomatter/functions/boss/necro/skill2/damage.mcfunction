execute as @e[tag=necro_stand,tag=necro_stand_r] run data modify entity @s Pose.Head set value [-110.0f,0.0f,0.0f]
execute as @e[tag=necro_stand,tag=necro_stand_r] run function wancomatter:boss/necro/pose_first
execute as @e[tag=necro_stand,tag=necro_stand_r] run scoreboard players set @s counter 10

execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown4 20
execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown5 20
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown6 0

playsound minecraft:entity.skeleton_horse.hurt master @a ^8.8 ^ ^ 2.5 0.5
playsound minecraft:entity.skeleton_horse.hurt master @a ^-8.8 ^ ^ 2.5 0.5
particle minecraft:large_smoke ~ ~2 ~ 0 0 0 0.4 120 normal @a
particle minecraft:large_smoke ~ ~2 ~ 0 0 0 0.4 30 force @a

scoreboard players add @s subcounter2 1
scoreboard players operation #dummy subcounter2 = @s subcounter2
execute as @e[tag=117horse] if score @s subcounter2 = #dummy subcounter2 run tag @s add 117ready
scoreboard players add #dummy subcounter2 1
execute as @e[tag=117horse] if score @s subcounter2 = #dummy subcounter2 run data merge entity @s {Glowing:1b}
scoreboard players reset #dummy subcounter2

execute if entity @e[tag=117ready,limit=1] as @e[tag=117ready] at @s run function wancomatter:boss/necro/skill2/2