function wancomatter:boss/sils/pose_first
scoreboard players add @s Cooldown4 10
scoreboard players add @s Cooldown5 20
scoreboard players add @s Cooldown6 5
#
scoreboard players add @s Cooldown4_max 40
scoreboard players remove @s Cooldown5_max 30
scoreboard players remove @s Cooldown6_max 20
scoreboard players set @s Cooldown7_max 10


data remove entity @s Pose.LeftLeg
data remove entity @s Pose.RightLeg

execute facing entity @a[sort=nearest,limit=1,distance=..7,scores={maxHP=1..}] feet run tp @s ~ ~ ~ ~ 0
execute at @s run summon armor_stand ^-0.1 ^0.8 ^1.3 {Tags:["sils_axe1"],Marker:1b,Invisible:1b,NoGravity:1b}