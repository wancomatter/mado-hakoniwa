execute store result entity @s Rotation[0] float 0.10 run scoreboard players operation @s Cooldown1 += @s subcounter
execute store result entity @e[tag=necro_stand_rod,limit=1] Rotation[0] float -0.15 run scoreboard players get @s Cooldown1
scoreboard players add @s subcounter 1
scoreboard players remove @s counter 1
execute if score @s counter matches ..0 run function wancomatter:boss/necro/skill7/circle_end
