execute run scoreboard players operation @s Cooldown4_max /= #2 counter
execute run scoreboard players operation @s Cooldown5_max /= #2 counter
execute run scoreboard players operation @s Cooldown6_max /= #2 counter
execute store result entity @s Pose.RightArm[0] float 1 run scoreboard players operation @s Cooldown7_max -= @s Cooldown4_max
execute store result entity @s Pose.RightArm[1] float 1 run scoreboard players operation @s Cooldown8_max -= @s Cooldown5_max
execute store result entity @s Pose.RightArm[2] float 1 run scoreboard players operation @s Cooldown9_max -= @s Cooldown6_max
