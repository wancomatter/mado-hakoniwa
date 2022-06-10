execute as @e[tag=arctic_stand,scores={subcounter2=1..}] run function wancomatter:boss/arctic/pose_r
execute as @e[tag=arctic_stand,scores={subcounter2=1..}] run function wancomatter:boss/arctic/pose_l
execute as @e[tag=arctic_stand,scores={subcounter2=1..}] run scoreboard players remove @s subcounter2 1
execute as @e[tag=b4axe1] at @s run function wancomatter:boss/arctic/1/tick1


execute as @e[tag=b4slime] run function wancomatter:boss/arctic/tick_slime
