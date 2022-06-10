execute store result score @s Cooldown7 run data get entity @s Pose.RightArm[0] 1
execute store result score @s Cooldown8 run data get entity @s Pose.RightArm[1] 1
execute store result score @s Cooldown9 run data get entity @s Pose.RightArm[2] 1
scoreboard players operation @s Cooldown4 = @s Cooldown7
scoreboard players operation @s Cooldown5 = @s Cooldown8
scoreboard players operation @s Cooldown6 = @s Cooldown9
#scoreboard players remove @s Cooldown4 XX
#scoreboard players remove @s Cooldown5 XX
#scoreboard players remove @s Cooldown6 XX

execute store result score @s Cooldown1_max run data get entity @s Pose.LeftArm[0] 1
execute store result score @s Cooldown2_max run data get entity @s Pose.LeftArm[1] 1
execute store result score @s Cooldown3_max run data get entity @s Pose.LeftArm[2] 1
scoreboard players operation @s Cooldown4_max = @s Cooldown1_max
scoreboard players operation @s Cooldown5_max = @s Cooldown2_max
scoreboard players operation @s Cooldown6_max = @s Cooldown3_max
#scoreboard players remove @s Cooldown4_max XX
#scoreboard players remove @s Cooldown5_max XX
#scoreboard players remove @s Cooldown6_max XX
