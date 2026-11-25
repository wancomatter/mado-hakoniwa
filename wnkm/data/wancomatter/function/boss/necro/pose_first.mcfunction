execute unless data entity @s Pose.Head run data modify entity @s Pose.Head set value [0.0f,0.1f,0.0f]
execute store result score @s Cooldown1 run data get entity @s Pose.Head[0] 1
execute store result score @s Cooldown2 run data get entity @s Pose.Head[1] 1
execute store result score @s Cooldown3 run data get entity @s Pose.Head[2] 1
scoreboard players operation @s Cooldown4 = @s Cooldown1
scoreboard players operation @s Cooldown5 = @s Cooldown2
scoreboard players operation @s Cooldown6 = @s Cooldown3
