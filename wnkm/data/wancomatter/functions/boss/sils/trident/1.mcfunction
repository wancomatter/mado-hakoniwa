function wancomatter:boss/sils/pose_first
scoreboard players remove @s Cooldown4 30
scoreboard players remove @s Cooldown5 20
scoreboard players remove @s Cooldown6 170
#
scoreboard players add @s Cooldown4_max 50
scoreboard players remove @s Cooldown5_max 20
scoreboard players add @s Cooldown6_max 20
scoreboard players set @s Cooldown7_max 7


playsound minecraft:item.trident.riptide_1 master @a ~ ~ ~ 4 1.8
particle minecraft:cloud ~ ~1 ~ 0.1 0.7 0.1 1 200
