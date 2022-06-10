scoreboard players add @s subcounter 1
execute if score @s counter_1 matches ..0 run execute positioned ^ ^ ^18.3 as @e[type=skeleton_horse,tag=117horse3,limit=1,distance=..3.0] if score @s subcounter = @e[tag=now,limit=1] subcounter run tag @s add 117ready
execute positioned ^ ^ ^18.3 as @e[type=skeleton_horse,tag=117horse3,limit=1,distance=..3.0] if score @s subcounter = @e[tag=now,limit=1] subcounter run tp @s ~ ~ ~ ~-90 0

execute rotated ~00 ~ positioned ^ ^ ^18.3 facing entity @s feet run particle minecraft:dragon_breath ~ ~1 ~ ^-300000 ^ ^1000000 0.00000093 0 force @a

execute rotated ~36 ~ run function wancomatter:boss/necro/skill2/loop4
execute unless score @s subcounter matches 5.. rotated ~72 ~ run function wancomatter:boss/necro/skill2/loop3
