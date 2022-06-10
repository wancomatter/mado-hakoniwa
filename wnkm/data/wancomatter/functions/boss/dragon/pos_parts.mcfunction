#execute store success score @s subcounter run data modify entity @s Rotation set from entity @e[tag=this,limit=1] Rotation
#execute unless score @s subcounter matches 0 run scoreboard players set @s subcounter2 10

# パーツ毎のPose.Head[0]についての管理
# Cooldown7 -> 前tickの値
# Cooldown1 -> 自動緩急調整の
# Cooldown4 -> 自動緩急調整の
# CooldownX -> 自動緩急調整の持続時間

#execute if entity @s[tag=dragon1_stand_body] run tp @s ^ ^ ^ ~ ~
execute if entity @s[tag=dragon1_stand_head] run tp @s ^ ^0.75 ^2 ~ ~
execute if entity @s[tag=dragon1_stand_legL] run tp @s ^-0.3 ^0.32 ^2.3 ~ ~
execute if entity @s[tag=dragon1_stand_legR] run tp @s ^0.3 ^0.32 ^2.3 ~ ~
execute if entity @s[tag=dragon1_stand_legB] run tp @s ^ ^0.2 ^ ~ ~
execute if entity @s[tag=dragon1_stand_wingL] run tp @s ^0.45 ^0.9 ^ ~ ~
execute if entity @s[tag=dragon1_stand_wingR] run tp @s ^-0.45 ^0.9 ^ ~ ~
execute if entity @s[tag=dragon1_stand_tail] run tp @s ^ ^0.15 ^-2.7 ~ ~

execute unless data entity @s Pose.Head run data modify entity @s Pose.Head set value [0.001f,0.001f,0.001f]
#execute store result entity @s Pose.Head[0] float 0.01 run scoreboard players operation 