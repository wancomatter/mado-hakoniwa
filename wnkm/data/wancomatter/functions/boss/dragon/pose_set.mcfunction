#data merge storage wnkm:boss {pose:{x:0,y:0,z:0,time:10}}

execute unless data entity @s Pose.Head run data modify entity @s Pose.Head set value [0.001f,0.001f,0.001f]
#execute store result score @s Cooldown1 run data get entity @s Pose.Head[0] 100
execute store result score @s Cooldown2 run data get entity @s Pose.Head[1] 100
execute store result score @s Cooldown3 run data get entity @s Pose.Head[2] 100
#execute store result score #bosspose Cooldown4 run data get storage wnkm:boss pose.x 100
execute store result score #bosspose Cooldown5 run data get storage wnkm:boss pose.y 100
execute store result score #bosspose Cooldown6 run data get storage wnkm:boss pose.z 100
execute store result score @s CooldownX run data get storage wnkm:boss pose.time 1
#scoreboard players operation @s Cooldown4 = @s Cooldown1
scoreboard players operation @s Cooldown5 = @s Cooldown2
scoreboard players operation @s Cooldown6 = @s Cooldown3
#scoreboard players operation @s Cooldown4 -= #bosspose Cooldown4
scoreboard players operation @s Cooldown5 -= #bosspose Cooldown5
scoreboard players operation @s Cooldown6 -= #bosspose Cooldown6
scoreboard players reset #bosspose
