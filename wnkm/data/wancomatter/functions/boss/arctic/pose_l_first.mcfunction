execute store result score @s Cooldown1 run data get entity @s Pose.LeftArm[0] 1
execute store result score @s Cooldown2 run data get entity @s Pose.LeftArm[1] 1
execute store result score @s Cooldown3 run data get entity @s Pose.LeftArm[2] 1
execute run scoreboard players operation @s Cooldown4 = @s Cooldown1
execute run scoreboard players operation @s Cooldown5 = @s Cooldown2
execute run scoreboard players operation @s Cooldown6 = @s Cooldown3
#scoreboard players remove @s Cooldown7_max XX
#scoreboard players remove @s Cooldown8_max XX
#scoreboard players remove @s Cooldown9_max XX
