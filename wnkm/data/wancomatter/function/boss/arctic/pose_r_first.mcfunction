execute store result score @s Cooldown7_max run data get entity @s Pose.RightArm[0] 1
execute store result score @s Cooldown8_max run data get entity @s Pose.RightArm[1] 1
execute store result score @s Cooldown9_max run data get entity @s Pose.RightArm[2] 1
execute run scoreboard players operation @s Cooldown4_max = @s Cooldown7_max
execute run scoreboard players operation @s Cooldown5_max = @s Cooldown8_max
execute run scoreboard players operation @s Cooldown6_max = @s Cooldown9_max
#scoreboard players remove @s Cooldown4_max XX
#scoreboard players remove @s Cooldown5_max XX
#scoreboard players remove @s Cooldown6_max XX
