scoreboard players add @s subcounter 1
execute if score @s counter_1 matches ..0 run execute positioned ^ ^ ^6.8 as @e[type=skeleton_horse,tag=117horse1,limit=1,distance=..3.0] if score @s subcounter = @e[tag=now,limit=1] subcounter run tag @s add 117ready
execute positioned ^ ^ ^16.8 as @e[type=skeleton_horse,tag=117horse1,limit=1,distance=..3.0] if score @s subcounter = @e[tag=now,limit=1] subcounter run tp @s ~ ~ ~ ~90 0

execute rotated ~00 ~ positioned ^ ^ ^16.8 facing entity @s feet run particle minecraft:dragon_breath ~ ~1 ~ ^300000 ^ ^1000000 0.00000088 0 force @a

execute rotated ~36 ~ run function wancomatter:boss/necro/skill2/loop2
execute unless score @s subcounter matches 5.. rotated ~72 ~ run function wancomatter:boss/necro/skill2/loop1
