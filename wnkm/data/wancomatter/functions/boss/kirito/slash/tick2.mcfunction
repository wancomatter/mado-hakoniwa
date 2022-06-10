scoreboard players add @s subcounter 1
execute if score @s subcounter matches 1 store result score @s Cooldown1_max run data get entity @s Pose.RightArm[0] 1
execute if score @s subcounter matches 1 store result score @s Cooldown2_max run data get entity @s Pose.RightArm[1] 1
execute if score @s subcounter matches 1 store result score @s Cooldown3_max run data get entity @s Pose.RightArm[2] 1
execute if score @s subcounter matches 1 run scoreboard players operation @s Cooldown4_max = @s Cooldown1_max
execute if score @s subcounter matches 1 run scoreboard players operation @s Cooldown5_max = @s Cooldown2_max
execute if score @s subcounter matches 1 run scoreboard players operation @s Cooldown6_max = @s Cooldown3_max
execute if score @s subcounter matches 1 run scoreboard players add @s Cooldown4_max 130
execute if score @s subcounter matches 1 run scoreboard players remove @s Cooldown5_max 5
execute if score @s subcounter matches 1 run scoreboard players remove @s Cooldown6_max 90

execute if score @s subcounter matches 5 store result score @s Cooldown1_max run data get entity @s Pose.RightArm[0] 1
execute if score @s subcounter matches 5 run scoreboard players operation @s Cooldown4_max = @s Cooldown1_max
execute if score @s subcounter matches 5 run scoreboard players remove @s Cooldown4_max 10
execute if score @s subcounter matches 5 run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1.5 0.7
execute if score @s subcounter matches 5 run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1.5 0.7
execute if score @s subcounter matches 5..7 run particle sweep_attack ^ ^1.3 ^1.0 0.3 0.1 0.3 0 5 force @a

execute if score @s subcounter matches 1 run data modify entity @s Pose.LeftArm set value [5.0f,0.0f,0.0f]
#execute if score @s subcounter matches 6 run data modify entity @s Pose.LeftArm set value [9.0f,0.0f,0.0f]
#execute if score @s subcounter matches 7 run data modify entity @s Pose.LeftArm set value [13.0f,0.0f,0.0f]
#execute if score @s subcounter matches 8 run data modify entity @s Pose.LeftArm set value [16.0f,0.0f,0.0f]
#execute if score @s subcounter matches 9 run data modify entity @s Pose.LeftArm set value [18.0f,0.0f,0.0f]
#execute if score @s subcounter matches 10 run data modify entity @s Pose.LeftArm set value [19.0f,0.0f,0.0f]
#execute if score @s subcounter matches 11 run data modify entity @s Pose.LeftArm set value [20.0f,0.0f,0.0f]

scoreboard players operation @s Cooldown4_max /= #2 counter
scoreboard players operation @s Cooldown5_max /= #2 counter
scoreboard players operation @s Cooldown6_max /= #2 counter
execute store result entity @s Pose.RightArm[0] float 1 run scoreboard players operation @s Cooldown1_max -= @s Cooldown4_max
execute store result entity @s Pose.RightArm[1] float 1 run scoreboard players operation @s Cooldown2_max -= @s Cooldown5_max
execute store result entity @s Pose.RightArm[2] float 1 run scoreboard players operation @s Cooldown3_max -= @s Cooldown6_max



execute if score @s subcounter matches 11.. run scoreboard players reset @s subcounter2
execute if score @s subcounter matches 11.. run scoreboard players reset @s subcounter
