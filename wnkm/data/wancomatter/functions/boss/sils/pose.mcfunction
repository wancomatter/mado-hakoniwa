execute run scoreboard players operation @s Cooldown4 /= #2 counter
execute run scoreboard players operation @s Cooldown5 /= #2 counter
execute run scoreboard players operation @s Cooldown6 /= #2 counter
execute store result entity @s Pose.RightArm[0] float 1 run scoreboard players operation @s Cooldown7 -= @s Cooldown4
execute store result entity @s Pose.RightArm[1] float 1 run scoreboard players operation @s Cooldown8 -= @s Cooldown5
execute store result entity @s Pose.RightArm[2] float 1 run scoreboard players operation @s Cooldown9 -= @s Cooldown6

execute run scoreboard players operation @s Cooldown4_max /= #2 counter
execute run scoreboard players operation @s Cooldown5_max /= #2 counter
execute run scoreboard players operation @s Cooldown6_max /= #2 counter
execute store result entity @s Pose.LeftArm[0] float 1 run scoreboard players operation @s Cooldown1_max -= @s Cooldown4_max
execute store result entity @s Pose.LeftArm[1] float 1 run scoreboard players operation @s Cooldown2_max -= @s Cooldown5_max
execute store result entity @s Pose.LeftArm[2] float 1 run scoreboard players operation @s Cooldown3_max -= @s Cooldown6_max
scoreboard players remove @s Cooldown7_max 1
