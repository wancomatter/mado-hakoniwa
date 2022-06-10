scoreboard players add @s subcounter 1
execute if score @s subcounter matches 1 store result score @s Cooldown1_max run data get entity @s Pose.RightArm[0] 1
execute if score @s subcounter matches 1 store result score @s Cooldown2_max run data get entity @s Pose.RightArm[1] 1
execute if score @s subcounter matches 1 store result score @s Cooldown3_max run data get entity @s Pose.RightArm[2] 1
execute if score @s subcounter matches 1 run scoreboard players operation @s Cooldown4_max = @s Cooldown1_max
execute if score @s subcounter matches 1 run scoreboard players operation @s Cooldown5_max = @s Cooldown2_max
execute if score @s subcounter matches 1 run scoreboard players operation @s Cooldown6_max = @s Cooldown3_max
execute if score @s subcounter matches 1 run scoreboard players remove @s Cooldown4_max 30
execute if score @s subcounter matches 1 run scoreboard players add @s Cooldown5_max 5
execute if score @s subcounter matches 1 run scoreboard players remove @s Cooldown6_max 20

execute if score @s subcounter matches 1 run data modify entity @s Pose.LeftArm set value [5.0f,0.0f,0.0f]
execute if score @s subcounter matches 6 run data modify entity @s Pose.LeftArm set value [9.0f,0.0f,0.0f]
execute if score @s subcounter matches 7 run data modify entity @s Pose.LeftArm set value [13.0f,0.0f,0.0f]
execute if score @s subcounter matches 8 run data modify entity @s Pose.LeftArm set value [16.0f,0.0f,0.0f]
execute if score @s subcounter matches 9 run data modify entity @s Pose.LeftArm set value [18.0f,0.0f,0.0f]
execute if score @s subcounter matches 10 run data modify entity @s Pose.LeftArm set value [19.0f,0.0f,0.0f]
execute if score @s subcounter matches 11 run data modify entity @s Pose.LeftArm set value [20.0f,0.0f,0.0f]

execute if score @s subcounter matches 1..5 run scoreboard players operation @s Cooldown4_max /= #2 counter
execute if score @s subcounter matches 1..5 run scoreboard players operation @s Cooldown5_max /= #2 counter
execute if score @s subcounter matches 1..5 run scoreboard players operation @s Cooldown6_max /= #2 counter
execute if score @s subcounter matches 1..5 store result entity @s Pose.RightArm[0] float 1 run scoreboard players operation @s Cooldown1_max -= @s Cooldown4_max
execute if score @s subcounter matches 1..5 store result entity @s Pose.RightArm[1] float 1 run scoreboard players operation @s Cooldown2_max -= @s Cooldown5_max
execute if score @s subcounter matches 1..5 store result entity @s Pose.RightArm[2] float 1 run scoreboard players operation @s Cooldown3_max -= @s Cooldown6_max


execute if score @s subcounter matches 8..11 run particle sweep_attack ^-0.4 ^1 ^0.7 0.2 0.1 0.2 0 3 force @a
execute if score @s subcounter matches 8..11 run particle sweep_attack ^-0.4 ^1 ^1.2 0.2 0.1 0.2 0 3 force @a
execute if score @s subcounter matches 12..14 run particle sweep_attack ^-0.4 ^1.2 ^0.66 0.2 0.1 0.2 0 3 force @a
execute if score @s subcounter matches 12..14 run particle sweep_attack ^-0.4 ^1.7 ^1.0 0.2 0.1 0.2 0 3 force @a
execute if score @s subcounter matches 8..9 run playsound minecraft:entity.player.attack.knockback master @a ~ ~ ~ 1.5 0.8
execute if score @s subcounter matches 11..12 run playsound minecraft:entity.player.attack.knockback master @a ~ ~ ~ 1.5 0.8
execute if score @s subcounter matches 6 run data modify entity @s Pose.RightArm set value [20.0f,-5.0f,16.0f]
execute if score @s subcounter matches 7 run data modify entity @s Pose.RightArm set value [10.0f,-5.0f,13.6f]
execute if score @s subcounter matches 8 run data modify entity @s Pose.RightArm set value [3.3f,-5.0f,12.0f]
execute if score @s subcounter matches 9 run data modify entity @s Pose.RightArm set value [-3.3f,-5.0f,11.0f]
execute if score @s subcounter matches 10 run data modify entity @s Pose.RightArm set value [-10.0f,-5.0f,10.f]
execute if score @s subcounter matches 11 run data modify entity @s Pose.RightArm set value [-16.6f,-5.0f,9.0f]
execute if score @s subcounter matches 12 run data modify entity @s Pose.RightArm set value [-26.6f,-5.0f,9.0f]
execute if score @s subcounter matches 13 run data modify entity @s Pose.RightArm set value [-40.0f,-5.0f,9.0f]
execute if score @s subcounter matches 14 run data modify entity @s Pose.RightArm set value [-55.0f,-5.0f,9.0f]
execute if score @s subcounter matches 15 run data modify entity @s Pose.RightArm set value [-68.5f,-5.0f,9.0f]
execute if score @s subcounter matches 16 run data modify entity @s Pose.RightArm set value [-80.0f,-5.0f,9.0f]

execute if score @s subcounter matches 16.. run scoreboard players reset @s subcounter2
execute if score @s subcounter matches 16.. run scoreboard players reset @s subcounter
