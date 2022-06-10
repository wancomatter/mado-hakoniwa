#data merge storage wnkm:boss {pose:{x:0,y:0,z:0,time:10}}

execute unless data entity @s Pose.Head run data modify entity @s Pose.Head set value [0.001f,0.001f,0.001f]
#execute store result score #bosspose Cooldown1 run data get entity @s Pose.Head[0] 100
execute store result score #bosspose Cooldown2 run data get entity @s Pose.Head[1] 100
execute store result score #bosspose Cooldown3 run data get entity @s Pose.Head[2] 100
#execute store result score #bosspose Cooldown4 run data get storage wnkm:boss pose.x 100
execute store result score #bosspose Cooldown5 run data get storage wnkm:boss pose.y 100
execute store result score #bosspose Cooldown6 run data get storage wnkm:boss pose.z 100
#execute store result entity @s Pose.Head[0] float 0.01 run scoreboard players operation #bosspose Cooldown1 += #bosspose Cooldown4
execute store result entity @s Pose.Head[1] float 0.01 run scoreboard players operation #bosspose Cooldown2 += #bosspose Cooldown5
execute store result entity @s Pose.Head[2] float 0.01 run scoreboard players operation #bosspose Cooldown3 += #bosspose Cooldown6
scoreboard players reset #bosspose
