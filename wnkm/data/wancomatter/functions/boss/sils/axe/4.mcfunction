function wancomatter:boss/sils/pose_first
scoreboard players add @s Cooldown4 110
scoreboard players remove @s Cooldown5 10
scoreboard players add @s Cooldown6 100
#
scoreboard players add @s Cooldown4_max 40
scoreboard players add @s Cooldown5_max 30
scoreboard players remove @s Cooldown6_max 15
scoreboard players set @s Cooldown7_max 10


data modify entity @s Pose.LeftLeg set value [5f,0f,0f]
data modify entity @s Pose.RightLeg set value [-15f,0f,0f]