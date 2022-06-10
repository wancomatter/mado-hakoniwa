execute if score @s Cooldown8_max matches 1.. run scoreboard players add @s Cooldown6_max 1
execute if score @s Cooldown7 = @s Cooldown6_max run function wancomatter:boss/necro/skill6/2_pose
execute if score @s Cooldown7_max <= @s Cooldown6_max run function wancomatter:boss/necro/skill6/2

execute unless score @s Cooldown8_max matches 1.. run scoreboard players remove @s Cooldown6 1
execute if score @s Cooldown6 matches 0 run function wancomatter:boss/necro/skill6/end