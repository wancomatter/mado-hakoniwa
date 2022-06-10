execute run scoreboard players operation @s Cooldown4 /= #2 counter
execute run scoreboard players operation @s Cooldown5 /= #2 counter
execute run scoreboard players operation @s Cooldown6 /= #2 counter
execute store result entity @s Pose.Head[0] float 1 run scoreboard players operation @s Cooldown1 -= @s Cooldown4
execute store result entity @s Pose.Head[1] float 1 run scoreboard players operation @s Cooldown2 -= @s Cooldown5
execute store result entity @s Pose.Head[2] float 1 run scoreboard players operation @s Cooldown3 -= @s Cooldown6
scoreboard players remove @s counter 1