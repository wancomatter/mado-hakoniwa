execute if score @s counter_1 matches ..0 run execute positioned ^ ^1 ^22.3 as @e[type=skeleton_horse,tag=117horse4,limit=1,distance=..3.0] if score @s subcounter = @e[tag=now,limit=1] subcounter run tag @s add 117ready
execute positioned ^ ^1 ^22.3 as @e[type=skeleton_horse,tag=117horse4,limit=1,distance=..3.0] if score @s subcounter = @e[tag=now,limit=1] subcounter run tp @s ~ ~ ~ ~-90 0

execute positioned ^ ^1 ^22.3 facing entity @s feet run particle minecraft:dragon_breath ~ ~1 ~ ^-300000 ^ ^1000000 0.00000113 0 force @a

