execute unless score #difficult counter matches 2..4 run tp @s ~ ~ ~ ~-0.50 ~
execute if score #difficult counter matches 2 run tp @s ~ ~ ~ ~-0.60 ~
execute if score #difficult counter matches 3 run tp @s ~ ~ ~ ~-0.75 ~
execute if score #difficult counter matches 4 run tp @s ~ ~ ~ ~-0.90 ~
execute if score @s counter matches 01..25 at @s run tp @s ~ ~ ~ ~ ~-0.09
execute if score @s counter matches 26..50 at @s run tp @s ~ ~ ~ ~ ~0.09
execute if score @s counter matches 51.. run scoreboard players set @s counter 0
tag @s add now
execute at @s rotated ~ ~ run function wancomatter:boss/necro/skill2/loop3
tag @s remove now

