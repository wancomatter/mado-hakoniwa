tp @s 0 13.1 0 ~0.5 ~
scoreboard players add @s counter 1
execute if score @s counter matches 01..25 at @s run tp @s ~ ~ ~ ~ ~-0.1
execute if score @s counter matches 26..50 at @s run tp @s ~ ~ ~ ~ ~0.1
execute if score @s counter matches 50.. run scoreboard players set @s counter 0
scoreboard players set @s dummy 0
execute at @s rotated ~ ~ run function wancomatter:game/pvp/jumphorse/stand_o1_loop