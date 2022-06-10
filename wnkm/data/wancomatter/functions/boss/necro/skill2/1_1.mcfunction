execute unless score #difficult counter matches 2..4 run tp @s ~ ~ ~ ~0.50 ~
execute if score #difficult counter matches 2 run tp @s ~ ~ ~ ~0.60 ~
execute if score #difficult counter matches 3 run tp @s ~ ~ ~ ~0.75 ~
execute if score #difficult counter matches 4 run tp @s ~ ~ ~ ~0.90 ~
execute unless entity @s[scores={Cooldown1=103..}] store result entity @e[tag=necro_stand,tag=necro_stand_r,limit=1] Pose.Head[0] float -1.07 run scoreboard players get @s Cooldown1
execute if entity @s[scores={Cooldown1=103}] as @e[tag=117horse,scores={subcounter2=1}] run data merge entity @s {Glowing:1b}
execute if score @s[scores={Cooldown1=103..}] counter matches 10 run function wancomatter:boss/necro/skill2/pose
execute if score @s[scores={Cooldown1=103..}] counter matches 17 run function wancomatter:boss/necro/skill2/damage
execute if score @s[scores={Cooldown1=103..}] counter matches 27 run function wancomatter:boss/necro/skill2/pose
execute if score @s[scores={Cooldown1=103..}] counter matches 34 run function wancomatter:boss/necro/skill2/damage
execute if score @s[scores={Cooldown1=103..}] counter matches 44 run function wancomatter:boss/necro/skill2/pose
execute if score @s[scores={Cooldown1=103..}] counter matches 51 run function wancomatter:boss/necro/skill2/damage
execute if score @s counter matches 01..25 at @s run tp @s ~ ~ ~ ~ ~-0.09
execute if score @s counter matches 26..50 at @s run tp @s ~ ~ ~ ~ ~0.09
execute if score @s counter matches 51.. run scoreboard players set @s counter 0
tag @s add now
execute at @s rotated ~ ~ run function wancomatter:boss/necro/skill2/loop1
tag @s remove now

